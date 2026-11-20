package com.dylanvann.fastimage;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.PorterDuff;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.dylanvann.fastimage.events.FastImageProgressEvent;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.common.MapBuilder;
import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.UIManagerHelper;
import com.facebook.react.uimanager.ViewManagerDelegate;
import com.facebook.react.uimanager.ViewProps;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.uimanager.events.EventDispatcher;
import com.facebook.react.viewmanagers.FastImageViewManagerDelegate;
import com.facebook.react.viewmanagers.FastImageViewManagerInterface;
import com.facebook.react.views.imagehelper.ResourceDrawableIdHelper;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import javax.annotation.Nullable;

class FastImageViewManager extends SimpleViewManager<FastImageViewWithUrl> implements FastImageProgressListener, FastImageViewManagerInterface<FastImageViewWithUrl> {
    static final String REACT_CLASS = "FastImageView";
    static final String REACT_ON_LOAD_START_EVENT = "onFastImageLoadStart";
    static final String REACT_ON_PROGRESS_EVENT = "onFastImageProgress";
    private static final Map<String, List<FastImageViewWithUrl>> VIEWS_FOR_URLS = new WeakHashMap();

    @Nullable
    private RequestManager requestManager = null;
    private final ViewManagerDelegate<FastImageViewWithUrl> mDelegate = new FastImageViewManagerDelegate(this);

    @Override
    public float getGranularityPercentage() {
        return 0.5f;
    }

    @Override
    @Nullable
    protected ViewManagerDelegate<FastImageViewWithUrl> getDelegate() {
        return this.mDelegate;
    }

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    public FastImageViewWithUrl createViewInstance(ThemedReactContext themedReactContext) {
        if (isValidContextForGlide(themedReactContext)) {
            this.requestManager = Glide.with(themedReactContext);
        }
        return new FastImageViewWithUrl(themedReactContext);
    }

    @Override
    @ReactProp(name = "source")
    public void setSource(FastImageViewWithUrl fastImageViewWithUrl, @Nullable ReadableMap readableMap) {
        fastImageViewWithUrl.setSource(readableMap);
    }

    @Override
    @ReactProp(name = "defaultSource")
    public void setDefaultSource(FastImageViewWithUrl fastImageViewWithUrl, @Nullable String str) {
        ResourceDrawableIdHelper.getInstance();
        fastImageViewWithUrl.setDefaultSource(ResourceDrawableIdHelper.getResourceDrawable(fastImageViewWithUrl.getContext(), str));
    }

    @Override
    @ReactProp(customType = "Color", name = "tintColor")
    public void setTintColor(FastImageViewWithUrl fastImageViewWithUrl, @Nullable Integer num) {
        if (num == null) {
            fastImageViewWithUrl.clearColorFilter();
        } else {
            fastImageViewWithUrl.setColorFilter(num.intValue(), PorterDuff.Mode.SRC_IN);
        }
    }

    @Override
    @ReactProp(name = ViewProps.RESIZE_MODE)
    public void setResizeMode(FastImageViewWithUrl fastImageViewWithUrl, String str) {
        fastImageViewWithUrl.setScaleType(FastImageViewConverter.getScaleType(str));
    }

    @Override
    @ReactProp(name = "blurRadius")
    public void setBlurRadius(FastImageViewWithUrl fastImageViewWithUrl, int i) {
        fastImageViewWithUrl.setBlurRadius(Integer.valueOf(i));
    }

    @Override
    @ReactProp(name = "transition")
    public void setTransition(FastImageViewWithUrl fastImageViewWithUrl, @Nullable String str) {
        fastImageViewWithUrl.setTransition(str);
    }

    @Override
    public void onDropViewInstance(FastImageViewWithUrl fastImageViewWithUrl) {
        fastImageViewWithUrl.clearView(this.requestManager);
        if (fastImageViewWithUrl.glideUrl != null) {
            String string = fastImageViewWithUrl.glideUrl.toString();
            FastImageOkHttpProgressGlideModule.forget(string);
            Map<String, List<FastImageViewWithUrl>> map = VIEWS_FOR_URLS;
            List<FastImageViewWithUrl> list = map.get(string);
            if (list != null) {
                list.remove(fastImageViewWithUrl);
                if (list.size() == 0) {
                    map.remove(string);
                }
            }
        }
        super.onDropViewInstance(fastImageViewWithUrl);
    }

    @Override
    public Map<String, Object> getExportedCustomDirectEventTypeConstants() {
        return MapBuilder.builder().put(REACT_ON_LOAD_START_EVENT, MapBuilder.of("registrationName", REACT_ON_LOAD_START_EVENT)).put(REACT_ON_PROGRESS_EVENT, MapBuilder.of("registrationName", REACT_ON_PROGRESS_EVENT)).put("onFastImageLoad", MapBuilder.of("registrationName", "onFastImageLoad")).put("onFastImageError", MapBuilder.of("registrationName", "onFastImageError")).put("onFastImageLoadEnd", MapBuilder.of("registrationName", "onFastImageLoadEnd")).build();
    }

    @Override
    public void onProgress(String str, long j, long j2) {
        List<FastImageViewWithUrl> list = VIEWS_FOR_URLS.get(str);
        if (list != null) {
            for (FastImageViewWithUrl fastImageViewWithUrl : list) {
                ThemedReactContext themedReactContext = (ThemedReactContext) fastImageViewWithUrl.getContext();
                EventDispatcher eventDispatcherForReactTag = UIManagerHelper.getEventDispatcherForReactTag(themedReactContext, fastImageViewWithUrl.getId());
                FastImageProgressEvent fastImageProgressEvent = new FastImageProgressEvent(UIManagerHelper.getSurfaceId(themedReactContext), fastImageViewWithUrl.getId(), (int) j, (int) j2);
                if (eventDispatcherForReactTag != null) {
                    eventDispatcherForReactTag.dispatchEvent(fastImageProgressEvent);
                }
            }
        }
    }

    private static boolean isValidContextForGlide(Context context) {
        Activity activityFromContext = getActivityFromContext(context);
        if (activityFromContext == null) {
            return false;
        }
        return !isActivityDestroyed(activityFromContext);
    }

    private static Activity getActivityFromContext(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (!(context instanceof ThemedReactContext)) {
            return null;
        }
        Context baseContext = ((ThemedReactContext) context).getBaseContext();
        if (baseContext instanceof Activity) {
            return (Activity) baseContext;
        }
        if (!(baseContext instanceof ContextWrapper)) {
            return null;
        }
        Context baseContext2 = ((ContextWrapper) baseContext).getBaseContext();
        if (baseContext2 instanceof Activity) {
            return (Activity) baseContext2;
        }
        return null;
    }

    private static boolean isActivityDestroyed(Activity activity) {
        return activity.isDestroyed() || activity.isFinishing();
    }

    @Override
    public void onAfterUpdateTransaction(FastImageViewWithUrl fastImageViewWithUrl) {
        super.onAfterUpdateTransaction(fastImageViewWithUrl);
        fastImageViewWithUrl.onAfterUpdate(this, this.requestManager, VIEWS_FOR_URLS);
    }
}
