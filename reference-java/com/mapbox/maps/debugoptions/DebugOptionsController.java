package com.mapbox.maps.debugoptions;

import android.content.Context;
import android.widget.FrameLayout;
import com.mapbox.common.Cancelable;
import com.mapbox.maps.CameraChangedCoalesced;
import com.mapbox.maps.CameraChangedCoalescedCallback;
import com.mapbox.maps.CameraState;
import com.mapbox.maps.EdgeInsets;
import com.mapbox.maps.MapboxMap;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.Delegates;
import kotlin.properties.ObservableProperty;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;

@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B?\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\f0\b¢\u0006\u0002\u0010\rJ\b\u0010#\u001a\u00020$H\u0002J\b\u0010%\u001a\u00020$H\u0002R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R0\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\f0\bX\u0082\u0004¢\u0006\u0002\n\u0000R+\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u001b8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006&"}, d2 = {"Lcom/mapbox/maps/debugoptions/DebugOptionsController;", "", "mapView", "Landroid/widget/FrameLayout;", "mapboxMap", "Lcom/mapbox/maps/MapboxMap;", "(Landroid/widget/FrameLayout;Lcom/mapbox/maps/MapboxMap;)V", "cameraDebugViewProvider", "Lkotlin/Function1;", "Landroid/content/Context;", "Lcom/mapbox/maps/debugoptions/CameraDebugView;", "paddingDebugViewProvider", "Lcom/mapbox/maps/debugoptions/PaddingDebugView;", "(Landroid/widget/FrameLayout;Lcom/mapbox/maps/MapboxMap;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "cameraDebugView", "cameraSubscriptionCancelable", "Lcom/mapbox/common/Cancelable;", "newValue", "", "Lcom/mapbox/maps/debugoptions/MapViewDebugOptions;", "options", "getOptions", "()Ljava/util/Set;", "setOptions", "(Ljava/util/Set;)V", "paddingDebugView", "<set-?>", "", "started", "getStarted", "()Z", "setStarted", "(Z)V", "started$delegate", "Lkotlin/properties/ReadWriteProperty;", "toggleMapViewDebugOptionsIfNeeded", "", "updateCameraSubscriptionIfNeeded", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class DebugOptionsController {
    static final KProperty<Object>[] $$delegatedProperties = {Reflection.mutableProperty1(new MutablePropertyReference1Impl(DebugOptionsController.class, "started", "getStarted()Z", 0))};
    private CameraDebugView cameraDebugView;
    private final Function1<Context, CameraDebugView> cameraDebugViewProvider;
    private Cancelable cameraSubscriptionCancelable;
    private final FrameLayout mapView;
    private final MapboxMap mapboxMap;
    private Set<MapViewDebugOptions> options;
    private PaddingDebugView paddingDebugView;
    private final Function1<Context, PaddingDebugView> paddingDebugViewProvider;

    private final ReadWriteProperty started;

    public final boolean getStarted() {
        return ((Boolean) this.started.getValue(this, $$delegatedProperties[0])).booleanValue();
    }

    public final void setStarted(boolean z) {
        this.started.setValue(this, $$delegatedProperties[0], Boolean.valueOf(z));
    }

    public final Set<MapViewDebugOptions> getOptions() {
        return this.options;
    }

    public final void setOptions(Set<MapViewDebugOptions> newValue) {
        Intrinsics.checkNotNullParameter(newValue, "newValue");
        this.options = newValue;
        this.mapboxMap.setDebugOptions$maps_sdk_release(MapViewDebugOptionsKt.getNativeDebugOptions(newValue));
        toggleMapViewDebugOptionsIfNeeded();
        updateCameraSubscriptionIfNeeded();
    }

    public DebugOptionsController(FrameLayout mapView, MapboxMap mapboxMap) {
        this(mapView, mapboxMap, new Function1<Context, CameraDebugView>() {
            @Override
            public final CameraDebugView invoke(Context it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return new CameraDebugView(it, null, 0, 6, null);
            }
        }, new Function1<Context, PaddingDebugView>() {
            @Override
            public final PaddingDebugView invoke(Context it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return new PaddingDebugView(it, null, 0, 6, null);
            }
        });
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(mapboxMap, "mapboxMap");
    }

    public DebugOptionsController(FrameLayout mapView, MapboxMap mapboxMap, Function1<? super Context, CameraDebugView> cameraDebugViewProvider, Function1<? super Context, PaddingDebugView> paddingDebugViewProvider) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(mapboxMap, "mapboxMap");
        Intrinsics.checkNotNullParameter(cameraDebugViewProvider, "cameraDebugViewProvider");
        Intrinsics.checkNotNullParameter(paddingDebugViewProvider, "paddingDebugViewProvider");
        Delegates delegates = Delegates.INSTANCE;
        final boolean z = false;
        this.started = new ObservableProperty<Boolean>(z) {
            @Override
            protected void afterChange(KProperty<?> property, Boolean oldValue, Boolean newValue) {
                Intrinsics.checkNotNullParameter(property, "property");
                if (oldValue.booleanValue() != newValue.booleanValue()) {
                    this.updateCameraSubscriptionIfNeeded();
                }
            }
        };
        this.options = SetsKt.emptySet();
        this.mapView = mapView;
        this.mapboxMap = mapboxMap;
        this.cameraDebugViewProvider = cameraDebugViewProvider;
        this.paddingDebugViewProvider = paddingDebugViewProvider;
    }

    public final void updateCameraSubscriptionIfNeeded() {
        boolean z = this.options.contains(MapViewDebugOptions.CAMERA) || this.options.contains(MapViewDebugOptions.PADDING);
        if (getStarted() && z && this.cameraSubscriptionCancelable == null) {
            this.cameraSubscriptionCancelable = this.mapboxMap.subscribeCameraChangedCoalesced(new CameraChangedCoalescedCallback() {
                @Override
                public final void run(CameraChangedCoalesced cameraChangedCoalesced) {
                    DebugOptionsController.updateCameraSubscriptionIfNeeded$lambda$1(this.f$0, cameraChangedCoalesced);
                }
            });
            return;
        }
        Cancelable cancelable = this.cameraSubscriptionCancelable;
        if (cancelable != null) {
            cancelable.cancel();
        }
        this.cameraSubscriptionCancelable = null;
    }

    public static final void updateCameraSubscriptionIfNeeded$lambda$1(DebugOptionsController this$0, CameraChangedCoalesced it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        CameraDebugView cameraDebugView = this$0.cameraDebugView;
        if (cameraDebugView != null) {
            CameraState cameraState = it.getCameraState();
            Intrinsics.checkNotNullExpressionValue(cameraState, "it.cameraState");
            cameraDebugView.update(cameraState);
        }
        PaddingDebugView paddingDebugView = this$0.paddingDebugView;
        if (paddingDebugView != null) {
            EdgeInsets padding = it.getCameraState().getPadding();
            Intrinsics.checkNotNullExpressionValue(padding, "it.cameraState.padding");
            paddingDebugView.update(padding);
        }
    }

    private final void toggleMapViewDebugOptionsIfNeeded() {
        if (this.options.contains(MapViewDebugOptions.CAMERA)) {
            if (this.cameraDebugView == null) {
                Function1<Context, CameraDebugView> function1 = this.cameraDebugViewProvider;
                Context context = this.mapView.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "mapView.context");
                CameraDebugView cameraDebugViewInvoke = function1.invoke(context);
                this.mapView.addView(cameraDebugViewInvoke);
                cameraDebugViewInvoke.update(this.mapboxMap.getCameraState());
                this.cameraDebugView = cameraDebugViewInvoke;
            }
        } else {
            CameraDebugView cameraDebugView = this.cameraDebugView;
            if (cameraDebugView != null) {
                this.mapView.removeView(cameraDebugView);
                this.cameraDebugView = null;
            }
        }
        if (this.options.contains(MapViewDebugOptions.PADDING)) {
            if (this.paddingDebugView == null) {
                Function1<Context, PaddingDebugView> function2 = this.paddingDebugViewProvider;
                Context context2 = this.mapView.getContext();
                Intrinsics.checkNotNullExpressionValue(context2, "mapView.context");
                PaddingDebugView paddingDebugViewInvoke = function2.invoke(context2);
                this.mapView.addView(paddingDebugViewInvoke);
                EdgeInsets padding = this.mapboxMap.getCameraState().getPadding();
                Intrinsics.checkNotNullExpressionValue(padding, "mapboxMap.cameraState.padding");
                paddingDebugViewInvoke.update(padding);
                this.paddingDebugView = paddingDebugViewInvoke;
                return;
            }
            return;
        }
        PaddingDebugView paddingDebugView = this.paddingDebugView;
        if (paddingDebugView != null) {
            this.mapView.removeView(paddingDebugView);
            this.paddingDebugView = null;
        }
    }
}
