package com.dylanvann.fastimage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import androidx.appcompat.widget.AppCompatImageView;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.resource.drawable.DrawableTransitionOptions;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.Request;
import com.dylanvann.fastimage.events.FastImageErrorEvent;
import com.dylanvann.fastimage.events.FastImageLoadStartEvent;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.UIManagerHelper;
import com.facebook.react.uimanager.events.EventDispatcher;
import com.mapbox.maps.plugin.locationcomponent.ModelSourceWrapper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

class FastImageViewWithUrl extends AppCompatImageView {
    private static final String TAG = "FastImageViewWithUrl";
    public GlideUrl glideUrl;
    private int mBlurRadius;
    private int mBlurRadiusPrevious;
    private Drawable mDefaultSource;
    private boolean mNeedsReload;
    private ReadableMap mSource;
    private String mTransition;

    public FastImageViewWithUrl(Context context) {
        super(context);
        this.mNeedsReload = false;
        this.mSource = null;
        this.mDefaultSource = null;
        this.mBlurRadius = 0;
        this.mBlurRadiusPrevious = 0;
        this.mTransition = "none";
    }

    public void setSource(ReadableMap readableMap) {
        this.mNeedsReload = true;
        this.mSource = readableMap;
    }

    public void setDefaultSource(Drawable drawable) {
        this.mNeedsReload = true;
        this.mDefaultSource = drawable;
    }

    public void setBlurRadius(Integer num) {
        this.mNeedsReload = true;
        this.mBlurRadiusPrevious = this.mBlurRadius;
        this.mBlurRadius = num == null ? 0 : num.intValue();
    }

    public void setTransition(String str) {
        this.mNeedsReload = true;
        if (str == null) {
            this.mTransition = "none";
        } else {
            this.mTransition = str;
        }
    }

    private boolean isNullOrEmpty(String str) {
        return str == null || str.trim().isEmpty();
    }

    public void onAfterUpdate(FastImageViewManager fastImageViewManager, RequestManager requestManager, Map<String, List<FastImageViewWithUrl>> map) {
        if (this.mNeedsReload) {
            ReadableMap readableMap = this.mSource;
            Object sourceForLoad = null;
            if ((readableMap == null || !readableMap.hasKey(ModelSourceWrapper.URL) || isNullOrEmpty(this.mSource.getString(ModelSourceWrapper.URL))) && this.mDefaultSource == null) {
                clearView(requestManager);
                GlideUrl glideUrl = this.glideUrl;
                if (glideUrl != null) {
                    FastImageOkHttpProgressGlideModule.forget(glideUrl.toStringUrl());
                }
                setImageDrawable(null);
                EventDispatcher eventDispatcherForReactTag = UIManagerHelper.getEventDispatcherForReactTag((ThemedReactContext) getContext(), getId());
                FastImageErrorEvent fastImageErrorEvent = new FastImageErrorEvent(UIManagerHelper.getSurfaceId(this), getId(), this.mSource);
                if (eventDispatcherForReactTag != null) {
                    eventDispatcherForReactTag.dispatchEvent(fastImageErrorEvent);
                    return;
                }
                return;
            }
            FastImageSource imageSource = FastImageViewConverter.getImageSource(getContext(), this.mSource);
            if (imageSource != null && imageSource.getUri().toString().length() == 0) {
                EventDispatcher eventDispatcherForReactTag2 = UIManagerHelper.getEventDispatcherForReactTag((ThemedReactContext) getContext(), getId());
                FastImageErrorEvent fastImageErrorEvent2 = new FastImageErrorEvent(UIManagerHelper.getSurfaceId(this), getId(), this.mSource);
                if (eventDispatcherForReactTag2 != null) {
                    eventDispatcherForReactTag2.dispatchEvent(fastImageErrorEvent2);
                }
                clearView(requestManager);
                GlideUrl glideUrl2 = this.glideUrl;
                if (glideUrl2 != null) {
                    FastImageOkHttpProgressGlideModule.forget(glideUrl2.toStringUrl());
                }
                setImageDrawable(null);
                return;
            }
            GlideUrl glideUrl3 = imageSource == null ? null : imageSource.getGlideUrl();
            this.glideUrl = glideUrl3;
            clearView(requestManager);
            String stringUrl = glideUrl3 == null ? null : glideUrl3.toStringUrl();
            if (glideUrl3 != null) {
                FastImageOkHttpProgressGlideModule.expect(stringUrl, fastImageViewManager);
                List<FastImageViewWithUrl> list = map.get(stringUrl);
                if (list != null && !list.contains(this)) {
                    list.add(this);
                } else if (list == null) {
                    map.put(stringUrl, new ArrayList(Collections.singletonList(this)));
                }
            }
            ThemedReactContext themedReactContext = (ThemedReactContext) getContext();
            if (imageSource != null) {
                EventDispatcher eventDispatcherForReactTag3 = UIManagerHelper.getEventDispatcherForReactTag(themedReactContext, getId());
                FastImageLoadStartEvent fastImageLoadStartEvent = new FastImageLoadStartEvent(UIManagerHelper.getSurfaceId(this), getId());
                if (eventDispatcherForReactTag3 != null) {
                    eventDispatcherForReactTag3.dispatchEvent(fastImageLoadStartEvent);
                }
            }
            if (requestManager != null) {
                HashMap map2 = new HashMap();
                map2.put("view", this);
                map2.put("blurRadius", Integer.valueOf(this.mBlurRadius));
                map2.put("blurRadiusShouldClean", Boolean.valueOf(this.mBlurRadiusPrevious > 0 && this.mBlurRadius <= 0));
                if (imageSource != null) {
                    try {
                        sourceForLoad = imageSource.getSourceForLoad();
                    } catch (Exception e) {
                        Log.e(TAG, String.format("Error detecting image type for URI: %s. Exception: %s", imageSource != null ? imageSource.getUri().toString() : AbstractJsonLexerKt.NULL, e.getMessage()), e);
                        return;
                    }
                }
                RequestBuilder<Drawable> requestBuilderApply = requestManager.load(sourceForLoad).apply((BaseRequestOptions<?>) FastImageViewConverter.getOptions(themedReactContext, imageSource, this.mSource, map2).placeholder(this.mDefaultSource).fallback(this.mDefaultSource));
                if (stringUrl != null) {
                    requestBuilderApply.listener(new FastImageRequestListener(stringUrl));
                }
                if ("fade".equals(this.mTransition)) {
                    requestBuilderApply = requestBuilderApply.transition(DrawableTransitionOptions.withCrossFade());
                }
                requestBuilderApply.into(this);
            }
        }
    }

    public void clearView(RequestManager requestManager) {
        if (requestManager == null || getTag() == null || !(getTag() instanceof Request)) {
            return;
        }
        requestManager.clear(this);
    }
}
