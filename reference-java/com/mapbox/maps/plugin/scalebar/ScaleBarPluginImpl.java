package com.mapbox.maps.plugin.scalebar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.common.Cancelable;
import com.mapbox.maps.CameraChangedCoalesced;
import com.mapbox.maps.CameraChangedCoalescedCallback;
import com.mapbox.maps.CameraState;
import com.mapbox.maps.Projection;
import com.mapbox.maps.plugin.delegates.MapCameraManagerDelegate;
import com.mapbox.maps.plugin.delegates.MapDelegateProvider;
import com.mapbox.maps.plugin.delegates.MapListenerDelegate;
import com.mapbox.maps.plugin.delegates.MapTransformDelegate;
import com.mapbox.maps.plugin.scalebar.generated.ScaleBarAttributeParser;
import com.mapbox.maps.plugin.scalebar.generated.ScaleBarSettings;
import com.mapbox.maps.plugin.scalebar.generated.ScaleBarSettingsBase;
import com.mapbox.maps.plugin.scalebar.generated.ScaleBarSettingsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u001b\u0012\u0014\b\u0002\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\u0010\u0007J\b\u0010-\u001a\u00020.H\u0014J\"\u0010/\u001a\u0002002\u0006\u00101\u001a\u0002022\b\u00103\u001a\u0004\u0018\u0001042\u0006\u00105\u001a\u00020\u000fH\u0016J\b\u00106\u001a\u00020.H\u0016J\b\u00107\u001a\u00020.H\u0016J\u0012\u00108\u001a\u00020.2\b\b\u0002\u00109\u001a\u00020:H\u0002J\u0010\u0010;\u001a\u00020.2\u0006\u0010<\u001a\u00020=H\u0016J\u0010\u0010>\u001a\u00020.2\u0006\u0010?\u001a\u000200H\u0016J\u0018\u0010@\u001a\u00020.2\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020BH\u0016R\u0014\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\b\n\u0000\u0012\u0004\b\n\u0010\u000bR\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000f8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R*\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\u00158V@VX\u0096\u000e¢\u0006\u0012\u0012\u0004\b\u0017\u0010\u000b\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u001dX\u0094\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u000e\u0010\"\u001a\u00020#X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020'X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082.¢\u0006\u0002\n\u0000R$\u0010*\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\u00158V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b+\u0010\u0019\"\u0004\b,\u0010\u001bR\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006D"}, d2 = {"Lcom/mapbox/maps/plugin/scalebar/ScaleBarPluginImpl;", "Lcom/mapbox/maps/plugin/scalebar/ScaleBarPlugin;", "Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettingsBase;", "viewImplProvider", "Lkotlin/Function1;", "Landroid/content/Context;", "Lcom/mapbox/maps/plugin/scalebar/ScaleBarImpl;", "(Lkotlin/jvm/functions/Function1;)V", "cameraChangedCoalescedCallback", "Lcom/mapbox/maps/CameraChangedCoalescedCallback;", "getCameraChangedCoalescedCallback$annotations", "()V", "cancelable", "Lcom/mapbox/common/Cancelable;", "value", "", "distancePerPixel", "getDistancePerPixel", "()F", "setDistancePerPixel", "(F)V", "", ViewProps.ENABLED, "getEnabled$annotations", "getEnabled", "()Z", "setEnabled", "(Z)V", "internalSettings", "Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings;", "getInternalSettings", "()Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings;", "setInternalSettings", "(Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings;)V", "mapCameraManagerDelegate", "Lcom/mapbox/maps/plugin/delegates/MapCameraManagerDelegate;", "mapListenerDelegate", "Lcom/mapbox/maps/plugin/delegates/MapListenerDelegate;", "mapTransformDelegate", "Lcom/mapbox/maps/plugin/delegates/MapTransformDelegate;", "scaleBar", "Lcom/mapbox/maps/plugin/scalebar/ScaleBar;", "useContinuousRendering", "getUseContinuousRendering", "setUseContinuousRendering", "applySettings", "", "bind", "Landroid/view/View;", "mapView", "Landroid/widget/FrameLayout;", "attrs", "Landroid/util/AttributeSet;", "pixelRatio", "cleanup", "initialize", "invalidateScaleBar", "cameraState", "Lcom/mapbox/maps/CameraState;", "onDelegateProvider", "delegateProvider", "Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;", "onPluginView", "view", "onSizeChanged", "width", "", "height", "plugin-scalebar_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ScaleBarPluginImpl extends ScaleBarSettingsBase implements ScaleBarPlugin {
    private final CameraChangedCoalescedCallback cameraChangedCoalescedCallback;
    private Cancelable cancelable;
    private ScaleBarSettings internalSettings;
    private MapCameraManagerDelegate mapCameraManagerDelegate;
    private MapListenerDelegate mapListenerDelegate;
    private MapTransformDelegate mapTransformDelegate;
    private ScaleBar scaleBar;
    private final Function1<Context, ScaleBarImpl> viewImplProvider;

    public ScaleBarPluginImpl() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    private static void getCameraChangedCoalescedCallback$annotations() {
    }

    public static void getEnabled$annotations() {
    }

    public ScaleBarPluginImpl(AnonymousClass1 anonymousClass1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new Function1<Context, ScaleBarImpl>() {
            @Override
            public final ScaleBarImpl invoke(Context it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return new ScaleBarImpl(it);
            }
        } : anonymousClass1);
    }

    public ScaleBarPluginImpl(Function1<? super Context, ScaleBarImpl> viewImplProvider) {
        Intrinsics.checkNotNullParameter(viewImplProvider, "viewImplProvider");
        this.viewImplProvider = viewImplProvider;
        this.internalSettings = ScaleBarSettingsKt.ScaleBarSettings(new Function1<ScaleBarSettings.Builder, Unit>() {
            public final void invoke2(ScaleBarSettings.Builder ScaleBarSettings) {
                Intrinsics.checkNotNullParameter(ScaleBarSettings, "$this$ScaleBarSettings");
            }

            @Override
            public Unit invoke(ScaleBarSettings.Builder builder) {
                invoke2(builder);
                return Unit.INSTANCE;
            }
        });
        this.cameraChangedCoalescedCallback = new CameraChangedCoalescedCallback() {
            @Override
            public final void run(CameraChangedCoalesced cameraChangedCoalesced) {
                ScaleBarPluginImpl.cameraChangedCoalescedCallback$lambda$0(this.f$0, cameraChangedCoalesced);
            }
        };
    }

    @Override
    protected ScaleBarSettings getInternalSettings() {
        return this.internalSettings;
    }

    @Override
    protected void setInternalSettings(ScaleBarSettings scaleBarSettings) {
        Intrinsics.checkNotNullParameter(scaleBarSettings, "<set-?>");
        this.internalSettings = scaleBarSettings;
    }

    public static final void cameraChangedCoalescedCallback$lambda$0(ScaleBarPluginImpl this$0, CameraChangedCoalesced it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        CameraState cameraState = it.getCameraState();
        Intrinsics.checkNotNullExpressionValue(cameraState, "it.cameraState");
        this$0.invalidateScaleBar(cameraState);
    }

    @Override
    protected void applySettings() {
        ScaleBar scaleBar = this.scaleBar;
        if (scaleBar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scaleBar");
            scaleBar = null;
        }
        scaleBar.setSettings(getInternalSettings());
        invalidateScaleBar$default(this, null, 1, null);
    }

    @Override
    public void onSizeChanged(int width, int height) {
        ScaleBar scaleBar = this.scaleBar;
        if (scaleBar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scaleBar");
            scaleBar = null;
        }
        scaleBar.setMapViewWidth(width);
        if (getEnabled()) {
            invalidateScaleBar$default(this, null, 1, null);
        }
    }

    @Override
    public View bind(FrameLayout mapView, AttributeSet attrs, float pixelRatio) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        ScaleBarAttributeParser scaleBarAttributeParser = ScaleBarAttributeParser.INSTANCE;
        Context context = mapView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "mapView.context");
        setInternalSettings(scaleBarAttributeParser.parseScaleBarSettings(context, attrs, pixelRatio));
        Function1<Context, ScaleBarImpl> function1 = this.viewImplProvider;
        Context context2 = mapView.getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "mapView.context");
        ScaleBarImpl scaleBarImplInvoke = function1.invoke(context2);
        Intrinsics.checkNotNull(scaleBarImplInvoke, "null cannot be cast to non-null type com.mapbox.maps.plugin.scalebar.ScaleBar");
        scaleBarImplInvoke.setPixelRatio(pixelRatio);
        return scaleBarImplInvoke;
    }

    @Override
    public void cleanup() {
        Cancelable cancelable = this.cancelable;
        if (cancelable != null) {
            cancelable.cancel();
        }
    }

    @Override
    public void initialize() {
        applySettings();
        MapListenerDelegate mapListenerDelegate = this.mapListenerDelegate;
        if (mapListenerDelegate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mapListenerDelegate");
            mapListenerDelegate = null;
        }
        this.cancelable = mapListenerDelegate.subscribeCameraChangedCoalesced(this.cameraChangedCoalescedCallback);
    }

    static void invalidateScaleBar$default(ScaleBarPluginImpl scaleBarPluginImpl, CameraState cameraState, int i, Object obj) {
        if ((i & 1) != 0) {
            MapCameraManagerDelegate mapCameraManagerDelegate = scaleBarPluginImpl.mapCameraManagerDelegate;
            if (mapCameraManagerDelegate == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mapCameraManagerDelegate");
                mapCameraManagerDelegate = null;
            }
            cameraState = mapCameraManagerDelegate.getCameraState();
        }
        scaleBarPluginImpl.invalidateScaleBar(cameraState);
    }

    private final void invalidateScaleBar(CameraState cameraState) {
        double metersPerPixelAtLatitude = Projection.getMetersPerPixelAtLatitude(cameraState.getCenter().latitude(), cameraState.getZoom());
        ScaleBar scaleBar = this.scaleBar;
        ScaleBar scaleBar2 = null;
        if (scaleBar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scaleBar");
            scaleBar = null;
        }
        ScaleBar scaleBar3 = this.scaleBar;
        if (scaleBar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scaleBar");
        } else {
            scaleBar2 = scaleBar3;
        }
        scaleBar.setDistancePerPixel((float) (metersPerPixelAtLatitude / ((double) scaleBar2.getPixelRatio())));
    }

    @Override
    public void onDelegateProvider(MapDelegateProvider delegateProvider) {
        Intrinsics.checkNotNullParameter(delegateProvider, "delegateProvider");
        this.mapCameraManagerDelegate = delegateProvider.getMapCameraManagerDelegate();
        this.mapListenerDelegate = delegateProvider.getMapListenerDelegate();
        this.mapTransformDelegate = delegateProvider.getMapTransformDelegate();
    }

    @Override
    public void onPluginView(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        ScaleBar scaleBar = view instanceof ScaleBar ? (ScaleBar) view : null;
        if (scaleBar == null) {
            throw new IllegalArgumentException("The provided view needs to implement ScaleBarContract.ScaleBarView");
        }
        this.scaleBar = scaleBar;
    }

    @Override
    public boolean getEnabled() {
        return getInternalSettings().getEnabled();
    }

    @Override
    public void setEnabled(boolean z) {
        if (getInternalSettings().getEnabled() == z) {
            return;
        }
        ScaleBar scaleBar = null;
        if (z) {
            MapListenerDelegate mapListenerDelegate = this.mapListenerDelegate;
            if (mapListenerDelegate == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mapListenerDelegate");
                mapListenerDelegate = null;
            }
            this.cancelable = mapListenerDelegate.subscribeCameraChangedCoalesced(this.cameraChangedCoalescedCallback);
            invalidateScaleBar$default(this, null, 1, null);
        } else {
            Cancelable cancelable = this.cancelable;
            if (cancelable != null) {
                cancelable.cancel();
            }
        }
        setInternalSettings(getInternalSettings().toBuilder().setEnabled(z).build());
        ScaleBar scaleBar2 = this.scaleBar;
        if (scaleBar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scaleBar");
        } else {
            scaleBar = scaleBar2;
        }
        scaleBar.setEnable(z);
    }

    @Override
    public float getDistancePerPixel() {
        ScaleBar scaleBar = this.scaleBar;
        if (scaleBar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scaleBar");
            scaleBar = null;
        }
        return scaleBar.getDistancePerPixel();
    }

    @Override
    public void setDistancePerPixel(float f) {
        ScaleBar scaleBar = this.scaleBar;
        if (scaleBar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scaleBar");
            scaleBar = null;
        }
        scaleBar.setDistancePerPixel(f);
    }

    @Override
    public boolean getUseContinuousRendering() {
        ScaleBar scaleBar = this.scaleBar;
        if (scaleBar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scaleBar");
            scaleBar = null;
        }
        return scaleBar.getUseContinuousRendering();
    }

    @Override
    public void setUseContinuousRendering(boolean z) {
        ScaleBar scaleBar = this.scaleBar;
        if (scaleBar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scaleBar");
            scaleBar = null;
        }
        scaleBar.setUseContinuousRendering(z);
    }
}
