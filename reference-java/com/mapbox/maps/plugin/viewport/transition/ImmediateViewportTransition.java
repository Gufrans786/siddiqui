package com.mapbox.maps.plugin.viewport.transition;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mapbox.common.Cancelable;
import com.mapbox.maps.CameraOptions;
import com.mapbox.maps.ScreenCoordinate;
import com.mapbox.maps.plugin.animation.CameraAnimationsPlugin;
import com.mapbox.maps.plugin.animation.CameraAnimationsUtils;
import com.mapbox.maps.plugin.animation.MapAnimationOptions;
import com.mapbox.maps.plugin.delegates.MapDelegateProvider;
import com.mapbox.maps.plugin.viewport.CompletionListener;
import com.mapbox.maps.plugin.viewport.ViewportPluginImpl;
import com.mapbox.maps.plugin.viewport.state.ViewportState;
import com.mapbox.maps.plugin.viewport.state.ViewportStateDataObserver;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/mapbox/maps/plugin/viewport/transition/ImmediateViewportTransition;", "Lcom/mapbox/maps/plugin/viewport/transition/ViewportTransition;", "delegateProvider", "Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;", "(Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;)V", "cachedAnchor", "Lcom/mapbox/maps/ScreenCoordinate;", "cameraPlugin", "Lcom/mapbox/maps/plugin/animation/CameraAnimationsPlugin;", "run", "Lcom/mapbox/common/Cancelable;", TypedValues.TransitionType.S_TO, "Lcom/mapbox/maps/plugin/viewport/state/ViewportState;", "completionListener", "Lcom/mapbox/maps/plugin/viewport/CompletionListener;", "plugin-viewport_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ImmediateViewportTransition implements ViewportTransition {
    private ScreenCoordinate cachedAnchor;
    private final CameraAnimationsPlugin cameraPlugin;

    public ImmediateViewportTransition(MapDelegateProvider delegateProvider) {
        Intrinsics.checkNotNullParameter(delegateProvider, "delegateProvider");
        this.cameraPlugin = CameraAnimationsUtils.getCamera(delegateProvider.getMapPluginProviderDelegate());
    }

    @Override
    public Cancelable run(ViewportState to, final CompletionListener completionListener) {
        Intrinsics.checkNotNullParameter(to, "to");
        Intrinsics.checkNotNullParameter(completionListener, "completionListener");
        return to.observeDataSource(new ViewportStateDataObserver() {
            @Override
            public final boolean onNewData(CameraOptions cameraOptions) {
                return ImmediateViewportTransition.run$lambda$1(this.f$0, completionListener, cameraOptions);
            }
        });
    }

    public static final boolean run$lambda$1(ImmediateViewportTransition this$0, CompletionListener completionListener, CameraOptions cameraOptions) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(completionListener, "$completionListener");
        Intrinsics.checkNotNullParameter(cameraOptions, "cameraOptions");
        this$0.cachedAnchor = this$0.cameraPlugin.getAnchor();
        this$0.cameraPlugin.setAnchor(null);
        CameraAnimationsPlugin cameraAnimationsPlugin = this$0.cameraPlugin;
        MapAnimationOptions.Companion companion = MapAnimationOptions.INSTANCE;
        MapAnimationOptions.Builder builder = new MapAnimationOptions.Builder();
        builder.startDelay(0L);
        builder.duration(0L);
        builder.owner(ViewportPluginImpl.VIEWPORT_CAMERA_OWNER);
        Unit unit = Unit.INSTANCE;
        CameraAnimationsPlugin.DefaultImpls.easeTo$default(cameraAnimationsPlugin, cameraOptions, builder.build(), null, 4, null);
        this$0.cameraPlugin.setAnchor(this$0.cachedAnchor);
        completionListener.onComplete(true);
        return false;
    }
}
