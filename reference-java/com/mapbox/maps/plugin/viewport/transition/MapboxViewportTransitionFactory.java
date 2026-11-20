package com.mapbox.maps.plugin.viewport.transition;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.view.animation.Interpolator;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.geojson.Point;
import com.mapbox.maps.CameraOptions;
import com.mapbox.maps.CameraState;
import com.mapbox.maps.EdgeInsets;
import com.mapbox.maps.plugin.animation.CameraAnimationsPlugin;
import com.mapbox.maps.plugin.animation.CameraAnimationsUtils;
import com.mapbox.maps.plugin.animation.CameraAnimatorOptions;
import com.mapbox.maps.plugin.delegates.MapCameraManagerDelegate;
import com.mapbox.maps.plugin.delegates.MapDelegateProvider;
import com.mapbox.maps.plugin.viewport.ViewportPluginImpl;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0001\u0018\u0000 $2\u00020\u0001:\u0001$B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J,\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u0011H\u0002J,\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u0011H\u0002J,\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u0011H\u0002J,\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u0011H\u0002J,\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u0011H\u0002J\u0016\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u000eJ\u0016\u0010!\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u000eJ\u0016\u0010\"\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020\u000eR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/mapbox/maps/plugin/viewport/transition/MapboxViewportTransitionFactory;", "", "mapDelegateProvider", "Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;", "(Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;)V", "cameraManager", "Lcom/mapbox/maps/plugin/delegates/MapCameraManagerDelegate;", "cameraPlugin", "Lcom/mapbox/maps/plugin/animation/CameraAnimationsPlugin;", "createBearingAnimator", "Landroid/animation/Animator;", "rotation", "", "startDelay", "", TypedValues.TransitionType.S_DURATION, "interpolator", "Landroid/view/animation/Interpolator;", "createCenterAnimator", "center", "Lcom/mapbox/geojson/Point;", "createPaddingAnimator", ViewProps.PADDING, "Lcom/mapbox/maps/EdgeInsets;", "createPitchAnimator", "pitch", "createZoomAnimator", "zoom", "transitionFromHighZoomToLowZoom", "Landroid/animation/AnimatorSet;", "cameraOptions", "Lcom/mapbox/maps/CameraOptions;", "transitionMaxDurationMs", "transitionFromLowZoomToHighZoom", "transitionLinear", "transitionDurationMs", "Companion", "plugin-viewport_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MapboxViewportTransitionFactory {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    private static final long LINEAR_ANIMATION_DURATION_MS = 1000;

    @Deprecated
    private static final Interpolator LINEAR_INTERPOLATOR;

    @Deprecated
    private static final long MAXIMUM_LOW_TO_HIGH_DURATION_MS = 3000;

    @Deprecated
    private static final Interpolator SLOW_OUT_SLOW_IN_INTERPOLATOR;
    private final MapCameraManagerDelegate cameraManager;
    private final CameraAnimationsPlugin cameraPlugin;

    public MapboxViewportTransitionFactory(MapDelegateProvider mapDelegateProvider) {
        Intrinsics.checkNotNullParameter(mapDelegateProvider, "mapDelegateProvider");
        this.cameraManager = mapDelegateProvider.getMapCameraManagerDelegate();
        this.cameraPlugin = CameraAnimationsUtils.getCamera(mapDelegateProvider.getMapPluginProviderDelegate());
    }

    public final AnimatorSet transitionFromLowZoomToHighZoom(CameraOptions cameraOptions, long transitionMaxDurationMs) {
        long j;
        long jCoerceAtMost;
        long j2;
        long j3;
        long j4;
        Intrinsics.checkNotNullParameter(cameraOptions, "cameraOptions");
        ArrayList arrayList = new ArrayList();
        CameraState cameraState = this.cameraManager.getCameraState();
        Point center = cameraOptions.getCenter();
        if (center != null) {
            MapCameraManagerDelegate mapCameraManagerDelegate = this.cameraManager;
            Point center2 = cameraState.getCenter();
            Intrinsics.checkNotNullExpressionValue(center2, "currentMapCameraState.center");
            jCoerceAtMost = RangesKt.coerceAtMost((long) ((TransitionUtilsKt.screenDistanceFromMapCenterToTarget(mapCameraManagerDelegate, center2, center) / 500) * 1000), 3000L);
            j = 1000;
            arrayList.add(createCenterAnimator$default(this, center, 0L, jCoerceAtMost, null, 10, null));
        } else {
            j = 1000;
            jCoerceAtMost = 0;
        }
        Double zoom = cameraOptions.getZoom();
        if (zoom != null) {
            long j5 = jCoerceAtMost / 2;
            long jCoerceAtMost2 = RangesKt.coerceAtMost((long) ((Math.abs(zoom.doubleValue() - cameraState.getZoom()) / 2.2d) * j), 3000L);
            arrayList.add(createZoomAnimator$default(this, zoom.doubleValue(), j5, jCoerceAtMost2, null, 8, null));
            j2 = j5;
            j3 = jCoerceAtMost2;
        } else {
            j2 = 0;
            j3 = 0;
        }
        Double bearing = cameraOptions.getBearing();
        if (bearing != null) {
            j4 = 0;
            arrayList.add(createBearingAnimator$default(this, TransitionUtilsKt.normalizeBearing(cameraState.getBearing(), bearing.doubleValue()), RangesKt.coerceAtLeast((j2 + j3) - 1800, 0L), 1800L, null, 8, null));
        } else {
            j4 = 0;
        }
        long jCoerceAtLeast = RangesKt.coerceAtLeast((j2 + j3) - 1100, j4);
        Double pitch = cameraOptions.getPitch();
        long j6 = 1200;
        if (pitch != null) {
            Animator animatorCreatePitchAnimator$default = createPitchAnimator$default(this, pitch.doubleValue(), jCoerceAtLeast, 1200L, null, 8, null);
            jCoerceAtLeast = jCoerceAtLeast;
            j6 = 1200;
            arrayList.add(animatorCreatePitchAnimator$default);
        }
        EdgeInsets padding = cameraOptions.getPadding();
        if (padding != null) {
            arrayList.add(createPaddingAnimator$default(this, padding, jCoerceAtLeast, j6, null, 8, null));
        }
        return TransitionUtilsKt.constrainDurationTo(TransitionUtilsKt.createAnimatorSet(arrayList), transitionMaxDurationMs);
    }

    public final AnimatorSet transitionFromHighZoomToLowZoom(CameraOptions cameraOptions, long transitionMaxDurationMs) {
        Intrinsics.checkNotNullParameter(cameraOptions, "cameraOptions");
        ArrayList arrayList = new ArrayList();
        CameraState cameraState = this.cameraManager.getCameraState();
        Point center = cameraOptions.getCenter();
        if (center != null) {
            arrayList.add(createCenterAnimator$default(this, center, 800L, 1000L, null, 8, null));
        }
        Double zoom = cameraOptions.getZoom();
        if (zoom != null) {
            arrayList.add(createZoomAnimator$default(this, zoom.doubleValue(), 0L, 1800L, null, 10, null));
        }
        Double bearing = cameraOptions.getBearing();
        if (bearing != null) {
            arrayList.add(createBearingAnimator$default(this, TransitionUtilsKt.normalizeBearing(cameraState.getBearing(), bearing.doubleValue()), 600L, 1200L, null, 8, null));
        }
        Double pitch = cameraOptions.getPitch();
        if (pitch != null) {
            arrayList.add(createPitchAnimator$default(this, pitch.doubleValue(), 0L, 1000L, null, 10, null));
        }
        EdgeInsets padding = cameraOptions.getPadding();
        if (padding != null) {
            arrayList.add(createPaddingAnimator$default(this, padding, 0L, 1200L, null, 10, null));
        }
        return TransitionUtilsKt.constrainDurationTo(TransitionUtilsKt.createAnimatorSet(arrayList), transitionMaxDurationMs);
    }

    public final AnimatorSet transitionLinear(CameraOptions cameraOptions, long transitionDurationMs) {
        Intrinsics.checkNotNullParameter(cameraOptions, "cameraOptions");
        ArrayList arrayList = new ArrayList();
        CameraState cameraState = this.cameraManager.getCameraState();
        Point center = cameraOptions.getCenter();
        if (center != null) {
            arrayList.add(createCenterAnimator$default(this, center, 0L, transitionDurationMs, LINEAR_INTERPOLATOR, 2, null));
        }
        Double zoom = cameraOptions.getZoom();
        if (zoom != null) {
            arrayList.add(createZoomAnimator$default(this, zoom.doubleValue(), 0L, transitionDurationMs, LINEAR_INTERPOLATOR, 2, null));
        }
        Double bearing = cameraOptions.getBearing();
        if (bearing != null) {
            arrayList.add(createBearingAnimator$default(this, TransitionUtilsKt.normalizeBearing(cameraState.getBearing(), bearing.doubleValue()), 0L, 1000L, LINEAR_INTERPOLATOR, 2, null));
        }
        Double pitch = cameraOptions.getPitch();
        if (pitch != null) {
            arrayList.add(createPitchAnimator$default(this, pitch.doubleValue(), 0L, transitionDurationMs, LINEAR_INTERPOLATOR, 2, null));
        }
        EdgeInsets padding = cameraOptions.getPadding();
        if (padding != null) {
            arrayList.add(createPaddingAnimator$default(this, padding, 0L, transitionDurationMs, LINEAR_INTERPOLATOR, 2, null));
        }
        return TransitionUtilsKt.createAnimatorSet(arrayList);
    }

    static Animator createCenterAnimator$default(MapboxViewportTransitionFactory mapboxViewportTransitionFactory, Point point, long j, long j2, Interpolator interpolator, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        long j3 = j;
        if ((i & 8) != 0) {
            interpolator = SLOW_OUT_SLOW_IN_INTERPOLATOR;
        }
        return mapboxViewportTransitionFactory.createCenterAnimator(point, j3, j2, interpolator);
    }

    private final Animator createCenterAnimator(Point center, final long startDelay, final long duration, final Interpolator interpolator) {
        CameraAnimationsPlugin cameraAnimationsPlugin = this.cameraPlugin;
        CameraAnimatorOptions.Companion companion = CameraAnimatorOptions.INSTANCE;
        CameraAnimatorOptions.Builder builder = new CameraAnimatorOptions.Builder(Arrays.copyOf(new Point[]{center}, 1));
        builder.owner(ViewportPluginImpl.VIEWPORT_CAMERA_OWNER);
        return cameraAnimationsPlugin.createCenterAnimator(builder.build(), true, new Function1<ValueAnimator, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(ValueAnimator valueAnimator) {
                invoke2(valueAnimator);
                return Unit.INSTANCE;
            }

            public final void invoke2(ValueAnimator createCenterAnimator) {
                Intrinsics.checkNotNullParameter(createCenterAnimator, "$this$createCenterAnimator");
                createCenterAnimator.setStartDelay(startDelay);
                createCenterAnimator.setDuration(duration);
                createCenterAnimator.setInterpolator(interpolator);
            }
        });
    }

    static Animator createZoomAnimator$default(MapboxViewportTransitionFactory mapboxViewportTransitionFactory, double d, long j, long j2, Interpolator interpolator, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        return mapboxViewportTransitionFactory.createZoomAnimator(d, j, j2, (i & 8) != 0 ? SLOW_OUT_SLOW_IN_INTERPOLATOR : interpolator);
    }

    private final Animator createZoomAnimator(double zoom, final long startDelay, final long duration, final Interpolator interpolator) {
        CameraAnimationsPlugin cameraAnimationsPlugin = this.cameraPlugin;
        CameraAnimatorOptions.Companion companion = CameraAnimatorOptions.INSTANCE;
        CameraAnimatorOptions.Builder builder = new CameraAnimatorOptions.Builder(Arrays.copyOf(new Double[]{Double.valueOf(zoom)}, 1));
        builder.owner(ViewportPluginImpl.VIEWPORT_CAMERA_OWNER);
        return cameraAnimationsPlugin.createZoomAnimator(builder.build(), new Function1<ValueAnimator, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(ValueAnimator valueAnimator) {
                invoke2(valueAnimator);
                return Unit.INSTANCE;
            }

            public final void invoke2(ValueAnimator createZoomAnimator) {
                Intrinsics.checkNotNullParameter(createZoomAnimator, "$this$createZoomAnimator");
                createZoomAnimator.setStartDelay(startDelay);
                createZoomAnimator.setDuration(duration);
                createZoomAnimator.setInterpolator(interpolator);
            }
        });
    }

    static Animator createBearingAnimator$default(MapboxViewportTransitionFactory mapboxViewportTransitionFactory, double d, long j, long j2, Interpolator interpolator, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        return mapboxViewportTransitionFactory.createBearingAnimator(d, j, j2, (i & 8) != 0 ? SLOW_OUT_SLOW_IN_INTERPOLATOR : interpolator);
    }

    private final Animator createBearingAnimator(double rotation, final long startDelay, final long duration, final Interpolator interpolator) {
        CameraAnimationsPlugin cameraAnimationsPlugin = this.cameraPlugin;
        CameraAnimatorOptions.Companion companion = CameraAnimatorOptions.INSTANCE;
        CameraAnimatorOptions.Builder builder = new CameraAnimatorOptions.Builder(Arrays.copyOf(new Double[]{Double.valueOf(rotation)}, 1));
        builder.owner(ViewportPluginImpl.VIEWPORT_CAMERA_OWNER);
        return CameraAnimationsPlugin.DefaultImpls.createBearingAnimator$default(cameraAnimationsPlugin, builder.build(), false, new Function1<ValueAnimator, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(ValueAnimator valueAnimator) {
                invoke2(valueAnimator);
                return Unit.INSTANCE;
            }

            public final void invoke2(ValueAnimator createBearingAnimator) {
                Intrinsics.checkNotNullParameter(createBearingAnimator, "$this$createBearingAnimator");
                createBearingAnimator.setStartDelay(startDelay);
                createBearingAnimator.setDuration(duration);
                createBearingAnimator.setInterpolator(interpolator);
            }
        }, 2, null);
    }

    static Animator createPitchAnimator$default(MapboxViewportTransitionFactory mapboxViewportTransitionFactory, double d, long j, long j2, Interpolator interpolator, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        return mapboxViewportTransitionFactory.createPitchAnimator(d, j, j2, (i & 8) != 0 ? SLOW_OUT_SLOW_IN_INTERPOLATOR : interpolator);
    }

    private final Animator createPitchAnimator(double pitch, final long startDelay, final long duration, final Interpolator interpolator) {
        CameraAnimationsPlugin cameraAnimationsPlugin = this.cameraPlugin;
        CameraAnimatorOptions.Companion companion = CameraAnimatorOptions.INSTANCE;
        CameraAnimatorOptions.Builder builder = new CameraAnimatorOptions.Builder(Arrays.copyOf(new Double[]{Double.valueOf(pitch)}, 1));
        builder.owner(ViewportPluginImpl.VIEWPORT_CAMERA_OWNER);
        return cameraAnimationsPlugin.createPitchAnimator(builder.build(), new Function1<ValueAnimator, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(ValueAnimator valueAnimator) {
                invoke2(valueAnimator);
                return Unit.INSTANCE;
            }

            public final void invoke2(ValueAnimator createPitchAnimator) {
                Intrinsics.checkNotNullParameter(createPitchAnimator, "$this$createPitchAnimator");
                createPitchAnimator.setStartDelay(startDelay);
                createPitchAnimator.setDuration(duration);
                createPitchAnimator.setInterpolator(interpolator);
            }
        });
    }

    static Animator createPaddingAnimator$default(MapboxViewportTransitionFactory mapboxViewportTransitionFactory, EdgeInsets edgeInsets, long j, long j2, Interpolator interpolator, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        long j3 = j;
        if ((i & 8) != 0) {
            interpolator = SLOW_OUT_SLOW_IN_INTERPOLATOR;
        }
        return mapboxViewportTransitionFactory.createPaddingAnimator(edgeInsets, j3, j2, interpolator);
    }

    private final Animator createPaddingAnimator(EdgeInsets padding, final long startDelay, final long duration, final Interpolator interpolator) {
        CameraAnimationsPlugin cameraAnimationsPlugin = this.cameraPlugin;
        CameraAnimatorOptions.Companion companion = CameraAnimatorOptions.INSTANCE;
        CameraAnimatorOptions.Builder builder = new CameraAnimatorOptions.Builder(Arrays.copyOf(new EdgeInsets[]{padding}, 1));
        builder.owner(ViewportPluginImpl.VIEWPORT_CAMERA_OWNER);
        return cameraAnimationsPlugin.createPaddingAnimator(builder.build(), new Function1<ValueAnimator, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(ValueAnimator valueAnimator) {
                invoke2(valueAnimator);
                return Unit.INSTANCE;
            }

            public final void invoke2(ValueAnimator createPaddingAnimator) {
                Intrinsics.checkNotNullParameter(createPaddingAnimator, "$this$createPaddingAnimator");
                createPaddingAnimator.setStartDelay(startDelay);
                createPaddingAnimator.setDuration(duration);
                createPaddingAnimator.setInterpolator(interpolator);
            }
        });
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/mapbox/maps/plugin/viewport/transition/MapboxViewportTransitionFactory$Companion;", "", "()V", "LINEAR_ANIMATION_DURATION_MS", "", "LINEAR_INTERPOLATOR", "Landroid/view/animation/Interpolator;", "MAXIMUM_LOW_TO_HIGH_DURATION_MS", "SLOW_OUT_SLOW_IN_INTERPOLATOR", "plugin-viewport_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        Interpolator interpolatorCreate = PathInterpolatorCompat.create(0.0f, 0.0f, 1.0f, 1.0f);
        Intrinsics.checkNotNullExpressionValue(interpolatorCreate, "create(0f, 0f, 1f, 1f)");
        LINEAR_INTERPOLATOR = interpolatorCreate;
        Interpolator interpolatorCreate2 = PathInterpolatorCompat.create(0.4f, 0.0f, 0.4f, 1.0f);
        Intrinsics.checkNotNullExpressionValue(interpolatorCreate2, "create(0.4f, 0f, 0.4f, 1f)");
        SLOW_OUT_SLOW_IN_INTERPOLATOR = interpolatorCreate2;
    }
}
