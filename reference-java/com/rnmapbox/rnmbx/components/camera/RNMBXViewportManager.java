package com.rnmapbox.rnmbx.components.camera;

import com.facebook.react.bridge.Dynamic;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.viewmanagers.RNMBXViewportManagerInterface;
import com.rnmapbox.rnmbx.components.AbstractEventEmitter;
import com.rnmapbox.rnmbx.events.constants.EventKeys;
import com.rnmapbox.rnmbx.events.constants.EventKeysKt;
import com.rnmapbox.rnmbx.utils.ViewTagResolver;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u0000 \u001c2\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003:\u0001\u001cB\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\b\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0014J\u001c\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00022\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0017J\u001a\u0010\u0016\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0014\u001a\u00020\u0017H\u0017J\u0016\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0018\u00010\u0019H\u0016J\u0016\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u0019H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u001d"}, d2 = {"Lcom/rnmapbox/rnmbx/components/camera/RNMBXViewportManager;", "Lcom/rnmapbox/rnmbx/components/AbstractEventEmitter;", "Lcom/rnmapbox/rnmbx/components/camera/RNMBXViewport;", "Lcom/facebook/react/viewmanagers/RNMBXViewportManagerInterface;", "mContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "viewTagResolver", "Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;)V", "getViewTagResolver", "()Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;", "getName", "", "createViewInstance", "reactContext", "Lcom/facebook/react/uimanager/ThemedReactContext;", "setTransitionsToIdleUponUserInteraction", "", "view", "value", "Lcom/facebook/react/bridge/Dynamic;", "setHasStatusChanged", "", "customEvents", "", "getCommandsMap", "", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXViewportManager extends AbstractEventEmitter<RNMBXViewport> implements RNMBXViewportManagerInterface<RNMBXViewport> {
    public static final String REACT_CLASS = "RNMBXViewport";
    private final ReactApplicationContext mContext;
    private final ViewTagResolver viewTagResolver;

    public RNMBXViewportManager(ReactApplicationContext mContext, ViewTagResolver viewTagResolver) {
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
        return "RNMBXViewport";
    }

    @Override
    public RNMBXViewport createViewInstance(ThemedReactContext reactContext) {
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        return new RNMBXViewport(reactContext, this);
    }

    @Override
    @ReactProp(name = "transitionsToIdleUponUserInteraction")
    public void setTransitionsToIdleUponUserInteraction(RNMBXViewport view, Dynamic value) {
        if (view != null) {
            view.setTransitionsToIdleUponUserInteraction(value != null ? Boolean.valueOf(value.asBoolean()) : null);
        }
    }

    @Override
    @ReactProp(name = "hasStatusChanged")
    public void setHasStatusChanged(RNMBXViewport view, boolean value) {
        if (view != null) {
            view.setHasStatusChanged(value);
        }
    }

    @Override
    public Map<String, String> customEvents() {
        return EventKeysKt.eventMapOf(TuplesKt.to(EventKeys.VIEWPORT_STATUS_CHANGE, "onStatusChanged"));
    }

    @Override
    public Map<String, Integer> getCommandsMap() {
        return MapsKt.mapOf(TuplesKt.to("_useCommandName", 1));
    }
}
