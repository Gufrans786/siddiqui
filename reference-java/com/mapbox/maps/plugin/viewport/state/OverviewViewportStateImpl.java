package com.mapbox.maps.plugin.viewport.state;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import com.mapbox.common.Cancelable;
import com.mapbox.geojson.Geometry;
import com.mapbox.geojson.GeometryCollection;
import com.mapbox.geojson.LineString;
import com.mapbox.geojson.MultiLineString;
import com.mapbox.geojson.MultiPoint;
import com.mapbox.geojson.MultiPolygon;
import com.mapbox.geojson.Point;
import com.mapbox.geojson.Polygon;
import com.mapbox.maps.CameraOptions;
import com.mapbox.maps.plugin.animation.CameraAnimationsPlugin;
import com.mapbox.maps.plugin.animation.CameraAnimationsUtils;
import com.mapbox.maps.plugin.delegates.MapCameraManagerDelegate;
import com.mapbox.maps.plugin.delegates.MapDelegateProvider;
import com.mapbox.maps.plugin.viewport.data.OverviewViewportStateOptions;
import com.mapbox.maps.plugin.viewport.transition.MapboxViewportTransitionFactory;
import com.mapbox.maps.threading.AnimationThreadController;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010'\u001a\u00020(H\u0002J\u001c\u0010)\u001a\u00020\u00152\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020(0+H\u0002J\u0012\u0010,\u001a\u00020(2\b\u0010-\u001a\u0004\u0018\u00010&H\u0002J\b\u0010.\u001a\u00020(H\u0002J\u0010\u0010/\u001a\u00020\u00152\u0006\u00100\u001a\u00020\u000fH\u0016J\u0018\u00101\u001a\u00020(2\u0006\u0010-\u001a\u00020&2\u0006\u00102\u001a\u00020\u0017H\u0002J\b\u00103\u001a\u00020(H\u0016J\b\u00104\u001a\u00020(H\u0016J\u001a\u00105\u001a\u00020(2\u0006\u00106\u001a\u00020\u001e2\b\b\u0002\u00102\u001a\u00020\u0017H\u0002J\u0012\u00107\u001a\b\u0012\u0004\u0012\u00020908*\u00020:H\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u0016\u001a\u00020\u00178\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0018\u0010\u0011\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010 \u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u0005@VX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006;"}, d2 = {"Lcom/mapbox/maps/plugin/viewport/state/OverviewViewportStateImpl;", "Lcom/mapbox/maps/plugin/viewport/state/OverviewViewportState;", "mapDelegateProvider", "Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;", "initialOptions", "Lcom/mapbox/maps/plugin/viewport/data/OverviewViewportStateOptions;", "transitionFactory", "Lcom/mapbox/maps/plugin/viewport/transition/MapboxViewportTransitionFactory;", "(Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;Lcom/mapbox/maps/plugin/viewport/data/OverviewViewportStateOptions;Lcom/mapbox/maps/plugin/viewport/transition/MapboxViewportTransitionFactory;)V", "cameraDelegate", "Lcom/mapbox/maps/plugin/delegates/MapCameraManagerDelegate;", "cameraPlugin", "Lcom/mapbox/maps/plugin/animation/CameraAnimationsPlugin;", "dataSourceUpdateObservers", "Ljava/util/concurrent/CopyOnWriteArraySet;", "Lcom/mapbox/maps/plugin/viewport/state/ViewportStateDataObserver;", "getDataSourceUpdateObservers$plugin_viewport_release$annotations", "()V", "getDataSourceUpdateObservers$plugin_viewport_release", "()Ljava/util/concurrent/CopyOnWriteArraySet;", "evaluateViewportDataCancelable", "Lcom/mapbox/common/Cancelable;", "isOverviewStateRunning", "", "isOverviewStateRunning$plugin_viewport_release$annotations", "isOverviewStateRunning$plugin_viewport_release", "()Z", "setOverviewStateRunning$plugin_viewport_release", "(Z)V", "latestViewportData", "Lcom/mapbox/maps/CameraOptions;", "value", "options", "getOptions", "()Lcom/mapbox/maps/plugin/viewport/data/OverviewViewportStateOptions;", "setOptions", "(Lcom/mapbox/maps/plugin/viewport/data/OverviewViewportStateOptions;)V", "runningAnimation", "Landroid/animation/AnimatorSet;", "cancelAnimation", "", "evaluateViewportData", "callback", "Lkotlin/Function1;", "finishAnimation", "animatorSet", "handleNewData", "observeDataSource", "viewportStateDataObserver", "startAnimation", "instant", "startUpdatingCamera", "stopUpdatingCamera", "updateFrame", "cameraOptions", "extractCoordinates", "", "Lcom/mapbox/geojson/Point;", "Lcom/mapbox/geojson/Geometry;", "plugin-viewport_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class OverviewViewportStateImpl implements OverviewViewportState {
    private final MapCameraManagerDelegate cameraDelegate;
    private final CameraAnimationsPlugin cameraPlugin;
    private final CopyOnWriteArraySet<ViewportStateDataObserver> dataSourceUpdateObservers;
    private Cancelable evaluateViewportDataCancelable;
    private boolean isOverviewStateRunning;
    private CameraOptions latestViewportData;
    private OverviewViewportStateOptions options;
    private AnimatorSet runningAnimation;
    private final MapboxViewportTransitionFactory transitionFactory;

    public static void getDataSourceUpdateObservers$plugin_viewport_release$annotations() {
    }

    public static void isOverviewStateRunning$plugin_viewport_release$annotations() {
    }

    public OverviewViewportStateImpl(MapDelegateProvider mapDelegateProvider, OverviewViewportStateOptions initialOptions, MapboxViewportTransitionFactory transitionFactory) {
        Intrinsics.checkNotNullParameter(mapDelegateProvider, "mapDelegateProvider");
        Intrinsics.checkNotNullParameter(initialOptions, "initialOptions");
        Intrinsics.checkNotNullParameter(transitionFactory, "transitionFactory");
        this.transitionFactory = transitionFactory;
        this.cameraPlugin = CameraAnimationsUtils.getCamera(mapDelegateProvider.getMapPluginProviderDelegate());
        this.cameraDelegate = mapDelegateProvider.getMapCameraManagerDelegate();
        this.dataSourceUpdateObservers = new CopyOnWriteArraySet<>();
        this.options = initialOptions;
        handleNewData();
    }

    public OverviewViewportStateImpl(MapDelegateProvider mapDelegateProvider, OverviewViewportStateOptions overviewViewportStateOptions, MapboxViewportTransitionFactory mapboxViewportTransitionFactory, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(mapDelegateProvider, overviewViewportStateOptions, (i & 4) != 0 ? new MapboxViewportTransitionFactory(mapDelegateProvider) : mapboxViewportTransitionFactory);
    }

    public final CopyOnWriteArraySet<ViewportStateDataObserver> getDataSourceUpdateObservers$plugin_viewport_release() {
        return this.dataSourceUpdateObservers;
    }

    public final boolean getIsOverviewStateRunning() {
        return this.isOverviewStateRunning;
    }

    public final void setOverviewStateRunning$plugin_viewport_release(boolean z) {
        this.isOverviewStateRunning = z;
    }

    @Override
    public OverviewViewportStateOptions getOptions() {
        return this.options;
    }

    @Override
    public void setOptions(OverviewViewportStateOptions value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.options = value;
        handleNewData();
    }

    private final void handleNewData() {
        this.latestViewportData = null;
        Cancelable cancelable = this.evaluateViewportDataCancelable;
        if (cancelable != null) {
            cancelable.cancel();
        }
        this.evaluateViewportDataCancelable = evaluateViewportData(new Function1<CameraOptions, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(CameraOptions cameraOptions) {
                invoke2(cameraOptions);
                return Unit.INSTANCE;
            }

            public final void invoke2(CameraOptions cameraOptions) {
                Intrinsics.checkNotNullParameter(cameraOptions, "cameraOptions");
                OverviewViewportStateImpl.this.latestViewportData = cameraOptions;
                if (OverviewViewportStateImpl.this.getIsOverviewStateRunning()) {
                    OverviewViewportStateImpl.this.updateFrame(cameraOptions, false);
                }
                CopyOnWriteArraySet<ViewportStateDataObserver> dataSourceUpdateObservers$plugin_viewport_release = OverviewViewportStateImpl.this.getDataSourceUpdateObservers$plugin_viewport_release();
                OverviewViewportStateImpl overviewViewportStateImpl = OverviewViewportStateImpl.this;
                for (ViewportStateDataObserver viewportStateDataObserver : dataSourceUpdateObservers$plugin_viewport_release) {
                    if (!viewportStateDataObserver.onNewData(cameraOptions)) {
                        overviewViewportStateImpl.getDataSourceUpdateObservers$plugin_viewport_release().remove(viewportStateDataObserver);
                    }
                }
            }
        });
    }

    private final Cancelable evaluateViewportData(final Function1<? super CameraOptions, Unit> callback) {
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        MapCameraManagerDelegate mapCameraManagerDelegate = this.cameraDelegate;
        List<Point> listExtractCoordinates = extractCoordinates(getOptions().getGeometry());
        CameraOptions.Builder builder = new CameraOptions.Builder();
        builder.padding(getOptions().getPadding());
        builder.bearing(getOptions().getBearing());
        builder.pitch(getOptions().getPitch());
        Unit unit = Unit.INSTANCE;
        CameraOptions cameraOptionsBuild = builder.build();
        Intrinsics.checkNotNullExpressionValue(cameraOptionsBuild, "Builder().apply(block).build()");
        mapCameraManagerDelegate.cameraForCoordinates(listExtractCoordinates, cameraOptionsBuild, getOptions().getGeometryPadding(), getOptions().getMaxZoom(), getOptions().getOffset(), new Function1<CameraOptions, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(CameraOptions cameraOptions) {
                invoke2(cameraOptions);
                return Unit.INSTANCE;
            }

            public final void invoke2(CameraOptions it) {
                Intrinsics.checkNotNullParameter(it, "it");
                if (booleanRef.element) {
                    return;
                }
                callback.invoke(it);
            }
        });
        return new Cancelable() {
            @Override
            public final void cancel() {
                OverviewViewportStateImpl.evaluateViewportData$lambda$1(booleanRef);
            }
        };
    }

    public static final void evaluateViewportData$lambda$1(Ref.BooleanRef cancelled) {
        Intrinsics.checkNotNullParameter(cancelled, "$cancelled");
        cancelled.element = true;
    }

    @Override
    public Cancelable observeDataSource(final ViewportStateDataObserver viewportStateDataObserver) {
        Intrinsics.checkNotNullParameter(viewportStateDataObserver, "viewportStateDataObserver");
        CameraOptions cameraOptions = this.latestViewportData;
        if (cameraOptions == null || viewportStateDataObserver.onNewData(cameraOptions)) {
            this.dataSourceUpdateObservers.add(viewportStateDataObserver);
        }
        return new Cancelable() {
            @Override
            public final void cancel() {
                OverviewViewportStateImpl.observeDataSource$lambda$3(this.f$0, viewportStateDataObserver);
            }
        };
    }

    public static final void observeDataSource$lambda$3(OverviewViewportStateImpl this$0, ViewportStateDataObserver viewportStateDataObserver) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(viewportStateDataObserver, "$viewportStateDataObserver");
        this$0.dataSourceUpdateObservers.remove(viewportStateDataObserver);
    }

    @Override
    public void startUpdatingCamera() {
        this.isOverviewStateRunning = true;
    }

    @Override
    public void stopUpdatingCamera() {
        this.isOverviewStateRunning = false;
        cancelAnimation();
    }

    private final void cancelAnimation() {
        final AnimatorSet animatorSet = this.runningAnimation;
        if (animatorSet != null) {
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
                    animatorSet.cancel();
                    ArrayList<Animator> childAnimations = animatorSet.getChildAnimations();
                    Intrinsics.checkNotNullExpressionValue(childAnimations, "childAnimations");
                    OverviewViewportStateImpl overviewViewportStateImpl = this;
                    for (Animator animator : childAnimations) {
                        CameraAnimationsPlugin cameraAnimationsPlugin = overviewViewportStateImpl.cameraPlugin;
                        Intrinsics.checkNotNull(animator, "null cannot be cast to non-null type android.animation.ValueAnimator");
                        CameraAnimationsPlugin.DefaultImpls.unregisterAnimators$default(cameraAnimationsPlugin, new ValueAnimator[]{(ValueAnimator) animator}, false, 2, null);
                    }
                }
            });
            this.runningAnimation = null;
        }
    }

    private final void startAnimation(final AnimatorSet animatorSet, boolean instant) {
        cancelAnimation();
        ArrayList<Animator> childAnimations = animatorSet.getChildAnimations();
        Intrinsics.checkNotNullExpressionValue(childAnimations, "animatorSet.childAnimations");
        for (Animator animator : childAnimations) {
            CameraAnimationsPlugin cameraAnimationsPlugin = this.cameraPlugin;
            Intrinsics.checkNotNull(animator, "null cannot be cast to non-null type android.animation.ValueAnimator");
            cameraAnimationsPlugin.registerAnimators((ValueAnimator) animator);
        }
        if (instant) {
            animatorSet.setDuration(0L);
        }
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

    public final void finishAnimation(AnimatorSet animatorSet) {
        ArrayList<Animator> childAnimations;
        if (animatorSet != null && (childAnimations = animatorSet.getChildAnimations()) != null) {
            for (Animator animator : childAnimations) {
                CameraAnimationsPlugin cameraAnimationsPlugin = this.cameraPlugin;
                Intrinsics.checkNotNull(animator, "null cannot be cast to non-null type android.animation.ValueAnimator");
                CameraAnimationsPlugin.DefaultImpls.unregisterAnimators$default(cameraAnimationsPlugin, new ValueAnimator[]{(ValueAnimator) animator}, false, 2, null);
            }
        }
        if (Intrinsics.areEqual(this.runningAnimation, animatorSet)) {
            this.runningAnimation = null;
        }
    }

    static void updateFrame$default(OverviewViewportStateImpl overviewViewportStateImpl, CameraOptions cameraOptions, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        overviewViewportStateImpl.updateFrame(cameraOptions, z);
    }

    public final void updateFrame(CameraOptions cameraOptions, boolean instant) {
        final AnimatorSet animatorSetTransitionLinear = this.transitionFactory.transitionLinear(cameraOptions, getOptions().getAnimationDurationMs());
        animatorSetTransitionLinear.addListener(new Animator.AnimatorListener() {
            @Override
            public void onAnimationCancel(Animator animator) {
                Intrinsics.checkNotNullParameter(animator, "animator");
            }

            @Override
            public void onAnimationRepeat(Animator animator) {
                Intrinsics.checkNotNullParameter(animator, "animator");
            }

            @Override
            public void onAnimationStart(Animator animator) {
                Intrinsics.checkNotNullParameter(animator, "animator");
            }

            @Override
            public void onAnimationEnd(Animator animator) {
                Intrinsics.checkNotNullParameter(animator, "animator");
                this.this$0.finishAnimation(animatorSetTransitionLinear);
            }
        });
        startAnimation(animatorSetTransitionLinear, instant);
    }

    private final List<Point> extractCoordinates(Geometry geometry) {
        if (geometry instanceof Point) {
            return CollectionsKt.listOf(geometry);
        }
        if (geometry instanceof LineString) {
            List<Point> listCoordinates = ((LineString) geometry).coordinates();
            Intrinsics.checkNotNullExpressionValue(listCoordinates, "this.coordinates()");
            return listCoordinates;
        }
        if (geometry instanceof Polygon) {
            List<List<Point>> listCoordinates2 = ((Polygon) geometry).coordinates();
            Intrinsics.checkNotNullExpressionValue(listCoordinates2, "this.coordinates()");
            return CollectionsKt.flatten(listCoordinates2);
        }
        if (geometry instanceof MultiPoint) {
            List<Point> listCoordinates3 = ((MultiPoint) geometry).coordinates();
            Intrinsics.checkNotNullExpressionValue(listCoordinates3, "this.coordinates()");
            return listCoordinates3;
        }
        if (geometry instanceof MultiLineString) {
            List<List<Point>> listCoordinates4 = ((MultiLineString) geometry).coordinates();
            Intrinsics.checkNotNullExpressionValue(listCoordinates4, "this.coordinates()");
            return CollectionsKt.flatten(listCoordinates4);
        }
        if (geometry instanceof MultiPolygon) {
            List<List<List<Point>>> listCoordinates5 = ((MultiPolygon) geometry).coordinates();
            Intrinsics.checkNotNullExpressionValue(listCoordinates5, "this.coordinates()");
            return CollectionsKt.flatten(CollectionsKt.flatten(listCoordinates5));
        }
        if (!(geometry instanceof GeometryCollection)) {
            return CollectionsKt.emptyList();
        }
        List<Geometry> listGeometries = ((GeometryCollection) geometry).geometries();
        Intrinsics.checkNotNullExpressionValue(listGeometries, "this.geometries()");
        ArrayList arrayList = new ArrayList();
        for (Geometry it : listGeometries) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            CollectionsKt.addAll(arrayList, extractCoordinates(it));
        }
        return arrayList;
    }
}
