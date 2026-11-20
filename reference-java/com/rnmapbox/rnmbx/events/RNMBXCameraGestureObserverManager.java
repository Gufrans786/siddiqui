package com.rnmapbox.rnmbx.events;

import com.facebook.react.bridge.Dynamic;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReadableType;
import com.facebook.react.module.annotations.ReactModule;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewManagerDelegate;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.viewmanagers.RNMBXCameraGestureObserverManagerDelegate;
import com.facebook.react.viewmanagers.RNMBXCameraGestureObserverManagerInterface;
import com.rnmapbox.rnmbx.components.AbstractEventEmitter;
import com.rnmapbox.rnmbx.rncompat.dynamic.DynamicKt;
import com.rnmapbox.rnmbx.utils.Logger;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

@ReactModule(name = "RNMBXCameraGestureObserver")
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\b\u0007\u0018\u0000 \u001a2\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003:\u0001\u001aB\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u0014J\u001c\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00022\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0017J\u001c\u0010\u0014\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00022\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0017J\u001c\u0010\u0015\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00022\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0017J\u000e\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0014J\u0014\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u0019H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager;", "Lcom/rnmapbox/rnmbx/components/AbstractEventEmitter;", "Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;", "Lcom/facebook/react/viewmanagers/RNMBXCameraGestureObserverManagerInterface;", "mContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "delegate", "Lcom/facebook/react/viewmanagers/RNMBXCameraGestureObserverManagerDelegate;", "getName", "", "createViewInstance", "reactContext", "Lcom/facebook/react/uimanager/ThemedReactContext;", "setQuietPeriodMs", "", "view", "value", "Lcom/facebook/react/bridge/Dynamic;", "setMaxIntervalMs", "setHasOnMapSteady", "getDelegate", "Lcom/facebook/react/uimanager/ViewManagerDelegate;", "customEvents", "", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXCameraGestureObserverManager extends AbstractEventEmitter<RNMBXCameraGestureObserver> implements RNMBXCameraGestureObserverManagerInterface<RNMBXCameraGestureObserver> {
    public static final String REACT_CLASS = "RNMBXCameraGestureObserver";
    private final RNMBXCameraGestureObserverManagerDelegate<RNMBXCameraGestureObserver, RNMBXCameraGestureObserverManager> delegate;
    private final ReactApplicationContext mContext;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ReadableType.values().length];
            try {
                iArr[ReadableType.Number.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReadableType.Null.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public RNMBXCameraGestureObserverManager(ReactApplicationContext mContext) {
        super(mContext);
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        this.mContext = mContext;
        this.delegate = new RNMBXCameraGestureObserverManagerDelegate<>(this);
    }

    @Override
    public String getName() {
        return "RNMBXCameraGestureObserver";
    }

    @Override
    public RNMBXCameraGestureObserver createViewInstance(ThemedReactContext reactContext) {
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        return new RNMBXCameraGestureObserver(reactContext, this);
    }

    @Override
    @ReactProp(name = "quietPeriodMs")
    public void setQuietPeriodMs(RNMBXCameraGestureObserver view, Dynamic value) {
        if (value != null) {
            int i = WhenMappings.$EnumSwitchMapping$0[DynamicKt.getType(value).ordinal()];
            if (i == 1) {
                if (view != null) {
                    view.setQuietPeriodMs(Double.valueOf(value.asDouble()));
                }
            } else if (i != 2) {
                Logger.INSTANCE.e("RNMBXCameraGestureObserver", "Expected Number or null for quietPeriodMs");
            } else if (view != null) {
                view.setQuietPeriodMs(null);
            }
        }
    }

    @Override
    @ReactProp(name = "maxIntervalMs")
    public void setMaxIntervalMs(RNMBXCameraGestureObserver view, Dynamic value) {
        if (value != null) {
            int i = WhenMappings.$EnumSwitchMapping$0[DynamicKt.getType(value).ordinal()];
            if (i == 1) {
                if (view != null) {
                    view.setMaxIntervalMs(Double.valueOf(value.asDouble()));
                }
            } else if (i != 2) {
                Logger.INSTANCE.e("RNMBXCameraGestureObserver", "Expected Number or null for maxIntervalMs");
            } else if (view != null) {
                view.setMaxIntervalMs(null);
            }
        }
    }

    @Override
    @ReactProp(name = "hasOnMapSteady")
    public void setHasOnMapSteady(RNMBXCameraGestureObserver view, Dynamic value) {
        ReadableType type;
        if (Intrinsics.areEqual((value == null || (type = DynamicKt.getType(value)) == null) ? null : type.name(), "Boolean")) {
            if (view != null) {
                view.setHasOnMapSteady(value.asBoolean());
            }
        } else {
            if (value == null) {
                Logger.INSTANCE.e("RNMBXCameraGestureObserver", "Expected Boolean value for hasOnMapSteady");
                return;
            }
            Logger logger = Logger.INSTANCE;
            ReadableType type2 = DynamicKt.getType(value);
            logger.e("RNMBXCameraGestureObserver", "Expected Boolean value for hasOnMapSteady, got " + (type2 != null ? type2.name() : null));
        }
    }

    @Override
    protected ViewManagerDelegate<RNMBXCameraGestureObserver> getDelegate() {
        return this.delegate;
    }

    @Override
    public Map<String, String> customEvents() {
        return MapsKt.mapOf(TuplesKt.to("topOnMapSteady", "onMapSteady"));
    }
}
