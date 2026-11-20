package com.rnmapbox.rnmbx.components.images;

import com.facebook.react.bridge.Dynamic;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.viewmanagers.RNMBXImageManagerInterface;
import com.mapbox.maps.ImageStretches;
import com.rnmapbox.rnmbx.components.AbstractEventEmitter;
import com.rnmapbox.rnmbx.utils.ViewTagResolver;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\b\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0014J\u0016\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0018\u00010\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0002H\u0016J\u000e\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0018J\u0018\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001cH\u0017J\u0018\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001cH\u0017J\u0018\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001cH\u0017J\u0018\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001cH\u0017J\u0018\u0010 \u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001cH\u0017J\u0018\u0010!\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001cH\u0017R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\""}, d2 = {"Lcom/rnmapbox/rnmbx/components/images/RNMBXImageManager;", "Lcom/rnmapbox/rnmbx/components/AbstractEventEmitter;", "Lcom/rnmapbox/rnmbx/components/images/RNMBXImage;", "Lcom/facebook/react/viewmanagers/RNMBXImageManagerInterface;", "mContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "viewTagResolver", "Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;)V", "getViewTagResolver", "()Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;", "getName", "", "createViewInstance", "p0", "Lcom/facebook/react/uimanager/ThemedReactContext;", "customEvents", "", "onDropViewInstance", "", "view", "tagAssigned", "reactTag", "", "setName", "image", "value", "Lcom/facebook/react/bridge/Dynamic;", "setSdf", "setStretchX", "setStretchY", "setContent", "setScale", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXImageManager extends AbstractEventEmitter<RNMBXImage> implements RNMBXImageManagerInterface<RNMBXImage> {
    private final ReactApplicationContext mContext;
    private final ViewTagResolver viewTagResolver;

    public RNMBXImageManager(ReactApplicationContext mContext, ViewTagResolver viewTagResolver) {
        super(mContext);
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        Intrinsics.checkNotNullParameter(viewTagResolver, "viewTagResolver");
        this.mContext = mContext;
        this.viewTagResolver = viewTagResolver;
    }

    public final ViewTagResolver getViewTagResolver() {
        return this.viewTagResolver;
    }

    @Override
    public String getName() {
        return "RNMBXImage";
    }

    @Override
    public RNMBXImage createViewInstance(ThemedReactContext p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        return new RNMBXImage(this.mContext, this);
    }

    @Override
    public Map<String, String> customEvents() {
        return new LinkedHashMap();
    }

    @Override
    public void onDropViewInstance(RNMBXImage view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.viewTagResolver.viewRemoved(view.getId());
        super.onDropViewInstance(view);
    }

    public final void tagAssigned(int reactTag) {
        this.viewTagResolver.tagAssigned(reactTag);
    }

    @Override
    @ReactProp(name = "name")
    public void setName(RNMBXImage image, Dynamic value) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(value, "value");
        image.setName(value.asString());
    }

    @Override
    @ReactProp(name = "sdf")
    public void setSdf(RNMBXImage image, Dynamic value) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(value, "value");
        image.setSdf(value.asBoolean());
    }

    @Override
    @ReactProp(name = "stretchX")
    public void setStretchX(RNMBXImage image, Dynamic value) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(value, "value");
        List<ImageStretches> listConvertStretch = RNMBXImagesManager.INSTANCE.convertStretch(value);
        if (listConvertStretch == null) {
            listConvertStretch = CollectionsKt.emptyList();
        }
        image.setStretchX(listConvertStretch);
    }

    @Override
    @ReactProp(name = "stretchY")
    public void setStretchY(RNMBXImage image, Dynamic value) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(value, "value");
        List<ImageStretches> listConvertStretch = RNMBXImagesManager.INSTANCE.convertStretch(value);
        if (listConvertStretch == null) {
            listConvertStretch = CollectionsKt.emptyList();
        }
        image.setStretchY(listConvertStretch);
    }

    @Override
    @ReactProp(name = "content")
    public void setContent(RNMBXImage image, Dynamic value) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(value, "value");
        image.setContent(RNMBXImagesManager.INSTANCE.convertContent(value));
    }

    @Override
    @ReactProp(name = "scale")
    public void setScale(RNMBXImage image, Dynamic value) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(value, "value");
        image.setScale(value.asDouble());
    }
}
