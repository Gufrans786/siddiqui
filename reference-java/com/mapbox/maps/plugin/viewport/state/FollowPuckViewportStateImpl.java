package com.mapbox.maps.plugin.viewport.state;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import com.mapbox.common.Cancelable;
import com.mapbox.geojson.Point;
import com.mapbox.maps.CameraOptions;
import com.mapbox.maps.MapboxLogger;
import com.mapbox.maps.plugin.animation.CameraAnimationsPlugin;
import com.mapbox.maps.plugin.animation.CameraAnimationsUtils;
import com.mapbox.maps.plugin.delegates.MapDelegateProvider;
import com.mapbox.maps.plugin.locationcomponent.LocationComponentPlugin;
import com.mapbox.maps.plugin.locationcomponent.LocationComponentUtils;
import com.mapbox.maps.plugin.locationcomponent.OnIndicatorBearingChangedListener;
import com.mapbox.maps.plugin.locationcomponent.OnIndicatorPositionChangedListener;
import com.mapbox.maps.plugin.viewport.data.FollowPuckViewportStateBearing;
import com.mapbox.maps.plugin.viewport.data.FollowPuckViewportStateOptions;
import com.mapbox.maps.plugin.viewport.transition.MapboxViewportTransitionFactory;
import com.mapbox.maps.threading.AnimationThreadController;
import java.util.ArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0001\u0018\u0000 A2\u00020\u0001:\u0001AB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010,\u001a\u00020-H\u0002J\b\u0010.\u001a\u00020-H\u0002J\b\u0010/\u001a\u00020-H\u0002J\b\u00100\u001a\u000201H\u0002J\b\u00102\u001a\u00020-H\u0002J\u0018\u00103\u001a\u00020-2\u0006\u00104\u001a\u00020\u000f2\u0006\u00105\u001a\u000201H\u0002J\u0010\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u000fH\u0016J\b\u00109\u001a\u00020-H\u0002J\b\u0010:\u001a\u00020\u0015H\u0002J\u0010\u0010;\u001a\u00020-2\u0006\u0010<\u001a\u00020+H\u0002J\b\u0010=\u001a\u00020-H\u0016J\b\u0010>\u001a\u00020-H\u0016J\b\u0010?\u001a\u00020-H\u0002J\u0010\u0010@\u001a\u00020-2\u0006\u00105\u001a\u000201H\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0014\u001a\u00020\u00158\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u001fR\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010%\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u0005@VX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006B"}, d2 = {"Lcom/mapbox/maps/plugin/viewport/state/FollowPuckViewportStateImpl;", "Lcom/mapbox/maps/plugin/viewport/state/FollowPuckViewportState;", "mapDelegateProvider", "Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;", "initialOptions", "Lcom/mapbox/maps/plugin/viewport/data/FollowPuckViewportStateOptions;", "transitionFactory", "Lcom/mapbox/maps/plugin/viewport/transition/MapboxViewportTransitionFactory;", "(Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;Lcom/mapbox/maps/plugin/viewport/data/FollowPuckViewportStateOptions;Lcom/mapbox/maps/plugin/viewport/transition/MapboxViewportTransitionFactory;)V", "cameraPlugin", "Lcom/mapbox/maps/plugin/animation/CameraAnimationsPlugin;", "cleanUpAnimatorListener", "Landroid/animation/Animator$AnimatorListener;", "dataSourceUpdateObservers", "Ljava/util/concurrent/CopyOnWriteArraySet;", "Lcom/mapbox/maps/plugin/viewport/state/ViewportStateDataObserver;", "indicatorBearingChangedListener", "Lcom/mapbox/maps/plugin/locationcomponent/OnIndicatorBearingChangedListener;", "indicatorPositionChangedListener", "Lcom/mapbox/maps/plugin/locationcomponent/OnIndicatorPositionChangedListener;", "isFollowingStateRunning", "", "isFollowingStateRunning$plugin_viewport_release$annotations", "()V", "isFollowingStateRunning$plugin_viewport_release", "()Z", "setFollowingStateRunning$plugin_viewport_release", "(Z)V", "isObservingLocationUpdates", "lastBearing", "", "Ljava/lang/Double;", "lastLocation", "Lcom/mapbox/geojson/Point;", "locationComponent", "Lcom/mapbox/maps/plugin/locationcomponent/LocationComponentPlugin;", "value", "options", "getOptions", "()Lcom/mapbox/maps/plugin/viewport/data/FollowPuckViewportStateOptions;", "setOptions", "(Lcom/mapbox/maps/plugin/viewport/data/FollowPuckViewportStateOptions;)V", "runningAnimation", "Landroid/animation/AnimatorSet;", "addIndicatorListenerIfNeeded", "", "cancelAnimation", "checkLocationComponentEnablement", "evaluateViewportData", "Lcom/mapbox/maps/CameraOptions;", "notifyLatestViewportData", "notifyViewportStateDataObserver", "observer", "cameraOptions", "observeDataSource", "Lcom/mapbox/common/Cancelable;", "viewportStateDataObserver", "removeIndicatorListenerIfNeeded", "shouldNotifyLatestViewportData", "startAnimation", "animatorSet", "startUpdatingCamera", "stopUpdatingCamera", "unregisterRunningAnimationAnimators", "updateFrame", "Companion", "plugin-viewport_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class FollowPuckViewportStateImpl implements FollowPuckViewportState {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    public static final String TAG = "FollowPuckViewportStateImpl";
    private final CameraAnimationsPlugin cameraPlugin;
    private final Animator.AnimatorListener cleanUpAnimatorListener;
    private final CopyOnWriteArraySet<ViewportStateDataObserver> dataSourceUpdateObservers;
    private final OnIndicatorBearingChangedListener indicatorBearingChangedListener;
    private final OnIndicatorPositionChangedListener indicatorPositionChangedListener;
    private boolean isFollowingStateRunning;
    private boolean isObservingLocationUpdates;
    private Double lastBearing;
    private Point lastLocation;
    private final LocationComponentPlugin locationComponent;
    private FollowPuckViewportStateOptions options;
    private AnimatorSet runningAnimation;
    private final MapboxViewportTransitionFactory transitionFactory;

    public static void isFollowingStateRunning$plugin_viewport_release$annotations() {
    }

    public FollowPuckViewportStateImpl(MapDelegateProvider mapDelegateProvider, FollowPuckViewportStateOptions initialOptions, MapboxViewportTransitionFactory transitionFactory) {
        Intrinsics.checkNotNullParameter(mapDelegateProvider, "mapDelegateProvider");
        Intrinsics.checkNotNullParameter(initialOptions, "initialOptions");
        Intrinsics.checkNotNullParameter(transitionFactory, "transitionFactory");
        this.transitionFactory = transitionFactory;
        this.cleanUpAnimatorListener = new Animator.AnimatorListener() {
            @Override
            public void onAnimationCancel(Animator animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
            }

            @Override
            public void onAnimationRepeat(Animator animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
            }

            @Override
            public void onAnimationStart(Animator animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
            }

            @Override
            public void onAnimationEnd(Animator animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
                this.this$0.unregisterRunningAnimationAnimators();
            }
        };
        this.cameraPlugin = CameraAnimationsUtils.getCamera(mapDelegateProvider.getMapPluginProviderDelegate());
        this.locationComponent = LocationComponentUtils.getLocationComponent(mapDelegateProvider.getMapPluginProviderDelegate());
        this.dataSourceUpdateObservers = new CopyOnWriteArraySet<>();
        this.indicatorPositionChangedListener = new OnIndicatorPositionChangedListener() {
            @Override
            public final void onIndicatorPositionChanged(Point point) {
                FollowPuckViewportStateImpl.indicatorPositionChangedListener$lambda$0(this.f$0, point);
            }
        };
        this.indicatorBearingChangedListener = new OnIndicatorBearingChangedListener() {
            @Override
            public final void onIndicatorBearingChanged(double d) {
                FollowPuckViewportStateImpl.indicatorBearingChangedListener$lambda$1(this.f$0, d);
            }
        };
        this.options = initialOptions;
    }

    public FollowPuckViewportStateImpl(MapDelegateProvider mapDelegateProvider, FollowPuckViewportStateOptions followPuckViewportStateOptions, MapboxViewportTransitionFactory mapboxViewportTransitionFactory, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(mapDelegateProvider, followPuckViewportStateOptions, (i & 4) != 0 ? new MapboxViewportTransitionFactory(mapDelegateProvider) : mapboxViewportTransitionFactory);
    }

    public final boolean getIsFollowingStateRunning() {
        return this.isFollowingStateRunning;
    }

    public final void setFollowingStateRunning$plugin_viewport_release(boolean z) {
        this.isFollowingStateRunning = z;
    }

    public static final void indicatorPositionChangedListener$lambda$0(FollowPuckViewportStateImpl this$0, Point point) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(point, "point");
        this$0.lastLocation = point;
        this$0.notifyLatestViewportData();
    }

    public static final void indicatorBearingChangedListener$lambda$1(FollowPuckViewportStateImpl this$0, double d) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (Intrinsics.areEqual(this$0.getOptions().getBearing(), FollowPuckViewportStateBearing.SyncWithLocationPuck.INSTANCE)) {
            this$0.lastBearing = Double.valueOf(d);
            this$0.notifyLatestViewportData();
        }
    }

    private final void notifyLatestViewportData() {
        if (shouldNotifyLatestViewportData()) {
            CameraOptions cameraOptionsEvaluateViewportData = evaluateViewportData();
            if (this.isFollowingStateRunning) {
                updateFrame(cameraOptionsEvaluateViewportData);
            }
            for (ViewportStateDataObserver it : this.dataSourceUpdateObservers) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                notifyViewportStateDataObserver(it, cameraOptionsEvaluateViewportData);
            }
        }
    }

    private final boolean shouldNotifyLatestViewportData() {
        return this.lastLocation != null;
    }

    private final void notifyViewportStateDataObserver(ViewportStateDataObserver observer, CameraOptions cameraOptions) {
        if (observer.onNewData(cameraOptions)) {
            return;
        }
        this.dataSourceUpdateObservers.remove(observer);
    }

    private final CameraOptions evaluateViewportData() {
        Double d;
        CameraOptions.Builder builder = new CameraOptions.Builder();
        builder.center(this.lastLocation);
        FollowPuckViewportStateBearing bearing = getOptions().getBearing();
        if (bearing instanceof FollowPuckViewportStateBearing.Constant) {
            builder.bearing(Double.valueOf(((FollowPuckViewportStateBearing.Constant) bearing).getBearing()));
        } else if (Intrinsics.areEqual(bearing, FollowPuckViewportStateBearing.SyncWithLocationPuck.INSTANCE) && (d = this.lastBearing) != null) {
            builder.bearing(Double.valueOf(d.doubleValue()));
        }
        builder.zoom(getOptions().getZoom());
        builder.pitch(getOptions().getPitch());
        CameraOptions cameraOptionsBuild = builder.padding(getOptions().getPadding()).build();
        Intrinsics.checkNotNullExpressionValue(cameraOptionsBuild, "with(CameraOptions.Build…ions.padding)\n  }.build()");
        return cameraOptionsBuild;
    }

    private final void addIndicatorListenerIfNeeded() {
        if (this.isObservingLocationUpdates) {
            return;
        }
        this.locationComponent.addOnIndicatorPositionChangedListener(this.indicatorPositionChangedListener);
        this.locationComponent.addOnIndicatorBearingChangedListener(this.indicatorBearingChangedListener);
        this.isObservingLocationUpdates = true;
    }

    private final void removeIndicatorListenerIfNeeded() {
        if (this.isObservingLocationUpdates && this.dataSourceUpdateObservers.isEmpty() && !this.isFollowingStateRunning) {
            this.locationComponent.removeOnIndicatorPositionChangedListener(this.indicatorPositionChangedListener);
            this.locationComponent.removeOnIndicatorBearingChangedListener(this.indicatorBearingChangedListener);
            this.isObservingLocationUpdates = false;
            this.lastBearing = null;
            this.lastLocation = null;
        }
    }

    @Override
    public FollowPuckViewportStateOptions getOptions() {
        return this.options;
    }

    @Override
    public void setOptions(FollowPuckViewportStateOptions value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.options = value;
        notifyLatestViewportData();
    }

    @Override
    public Cancelable observeDataSource(final ViewportStateDataObserver viewportStateDataObserver) {
        Intrinsics.checkNotNullParameter(viewportStateDataObserver, "viewportStateDataObserver");
        checkLocationComponentEnablement();
        addIndicatorListenerIfNeeded();
        this.dataSourceUpdateObservers.add(viewportStateDataObserver);
        if (shouldNotifyLatestViewportData()) {
            notifyViewportStateDataObserver(viewportStateDataObserver, evaluateViewportData());
        }
        return new Cancelable() {
            @Override
            public final void cancel() {
                FollowPuckViewportStateImpl.observeDataSource$lambda$5(this.f$0, viewportStateDataObserver);
            }
        };
    }

    public static final void observeDataSource$lambda$5(FollowPuckViewportStateImpl this$0, ViewportStateDataObserver viewportStateDataObserver) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(viewportStateDataObserver, "$viewportStateDataObserver");
        this$0.dataSourceUpdateObservers.remove(viewportStateDataObserver);
        this$0.removeIndicatorListenerIfNeeded();
    }

    private final void checkLocationComponentEnablement() {
        if (this.locationComponent.getEnabled()) {
            return;
        }
        MapboxLogger.logW(TAG, "Location component is required to be enabled to use FollowPuckViewportState, otherwise there would be no FollowPuckViewportState updates or ViewportTransition updates towards the FollowPuckViewportState.");
    }

    @Override
    public void startUpdatingCamera() {
        checkLocationComponentEnablement();
        addIndicatorListenerIfNeeded();
        this.isFollowingStateRunning = true;
    }

    @Override
    public void stopUpdatingCamera() {
        this.isFollowingStateRunning = false;
        cancelAnimation();
        removeIndicatorListenerIfNeeded();
    }

    private final void cancelAnimation() {
        AnimationThreadController.INSTANCE.postOnAnimatorThread(new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                AnimatorSet animatorSet = FollowPuckViewportStateImpl.this.runningAnimation;
                if (animatorSet != null) {
                    animatorSet.cancel();
                }
            }
        });
    }

    private final void startAnimation(final AnimatorSet animatorSet) {
        cancelAnimation();
        ArrayList<Animator> childAnimations = animatorSet.getChildAnimations();
        Intrinsics.checkNotNullExpressionValue(childAnimations, "animatorSet.childAnimations");
        for (Animator animator : childAnimations) {
            CameraAnimationsPlugin cameraAnimationsPlugin = this.cameraPlugin;
            Intrinsics.checkNotNull(animator, "null cannot be cast to non-null type android.animation.ValueAnimator");
            cameraAnimationsPlugin.registerAnimators((ValueAnimator) animator);
        }
        animatorSet.setDuration(0L);
        AnimationThreadController.INSTANCE.postOnAnimatorThread(new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                animatorSet.start();
                this.runningAnimation = animatorSet;
            }
        });
    }

    public final void unregisterRunningAnimationAnimators() {
        ArrayList<Animator> childAnimations;
        AnimatorSet animatorSet = this.runningAnimation;
        if (animatorSet != null && (childAnimations = animatorSet.getChildAnimations()) != null) {
            for (Animator animator : childAnimations) {
                CameraAnimationsPlugin cameraAnimationsPlugin = this.cameraPlugin;
                Intrinsics.checkNotNull(animator, "null cannot be cast to non-null type android.animation.ValueAnimator");
                CameraAnimationsPlugin.DefaultImpls.unregisterAnimators$default(cameraAnimationsPlugin, new ValueAnimator[]{(ValueAnimator) animator}, false, 2, null);
            }
        }
        this.runningAnimation = null;
    }

    private final void updateFrame(CameraOptions cameraOptions) {
        AnimatorSet animatorSetTransitionLinear = this.transitionFactory.transitionLinear(cameraOptions, 0L);
        animatorSetTransitionLinear.addListener(this.cleanUpAnimatorListener);
        startAnimation(animatorSetTransitionLinear);
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/mapbox/maps/plugin/viewport/state/FollowPuckViewportStateImpl$Companion;", "", "()V", "TAG", "", "plugin-viewport_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
