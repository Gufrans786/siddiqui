package com.mapbox.maps.plugin.locationcomponent.animators;

import android.animation.ValueAnimator;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mapbox.geojson.Point;
import com.mapbox.maps.plugin.locationcomponent.LocationLayerRenderer;
import com.mapbox.maps.plugin.locationcomponent.OnIndicatorAccuracyRadiusChangedListener;
import com.mapbox.maps.plugin.locationcomponent.OnIndicatorBearingChangedListener;
import com.mapbox.maps.plugin.locationcomponent.OnIndicatorPositionChangedListener;
import com.mapbox.maps.plugin.locationcomponent.generated.LocationComponentSettings;
import com.mapbox.maps.util.MathUtils;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0013\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0001\u0018\u00002\u00020\u0001BG\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0012B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0013J-\u0010\u001c\u001a\u00020\u001d2\n\u0010\u001e\u001a\u00020\u001f\"\u00020 2\u0019\u0010!\u001a\u0015\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u001d\u0018\u00010\"¢\u0006\u0002\b$J-\u0010%\u001a\u00020\u001d2\n\u0010\u001e\u001a\u00020\u001f\"\u00020 2\u0019\u0010!\u001a\u0015\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u001d\u0018\u00010\"¢\u0006\u0002\b$J:\u0010&\u001a\u00020\u001d2\u0012\u0010\u001e\u001a\n\u0012\u0006\b\u0001\u0012\u00020(0'\"\u00020(2\u0019\u0010!\u001a\u0015\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u001d\u0018\u00010\"¢\u0006\u0002\b$¢\u0006\u0002\u0010)J\u000e\u0010*\u001a\u00020\u001d2\u0006\u0010+\u001a\u00020,J\u0006\u0010-\u001a\u00020\u001dJ\u0006\u0010.\u001a\u00020\u001dJ\u000e\u0010/\u001a\u00020\u001d2\u0006\u00100\u001a\u000201JB\u00102\u001a\u00020\u001d2\u0012\u00103\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\u001d0\"2\u0012\u00104\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u001d0\"2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u001d0\"J\u001f\u00106\u001a\u00020\u001d2\u0017\u00107\u001a\u0013\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u001d0\"¢\u0006\u0002\b$J\u001f\u00108\u001a\u00020\u001d2\u0017\u00107\u001a\u0013\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u001d0\"¢\u0006\u0002\b$J\u001f\u00109\u001a\u00020\u001d2\u0017\u00107\u001a\u0013\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u001d0\"¢\u0006\u0002\b$J\u0016\u0010:\u001a\u00020\u001d2\u0006\u0010;\u001a\u00020 2\u0006\u0010+\u001a\u00020,R\u000e\u0010\u0014\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u00168@@@X\u0080\u000e¢\u0006\f\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006<"}, d2 = {"Lcom/mapbox/maps/plugin/locationcomponent/animators/PuckAnimatorManager;", "", "indicatorPositionChangedListener", "Lcom/mapbox/maps/plugin/locationcomponent/OnIndicatorPositionChangedListener;", "indicatorBearingChangedListener", "Lcom/mapbox/maps/plugin/locationcomponent/OnIndicatorBearingChangedListener;", "indicatorAccuracyRadiusChangedListener", "Lcom/mapbox/maps/plugin/locationcomponent/OnIndicatorAccuracyRadiusChangedListener;", "bearingAnimator", "Lcom/mapbox/maps/plugin/locationcomponent/animators/PuckBearingAnimator;", "positionAnimator", "Lcom/mapbox/maps/plugin/locationcomponent/animators/PuckPositionAnimator;", "pulsingAnimator", "Lcom/mapbox/maps/plugin/locationcomponent/animators/PuckPulsingAnimator;", "radiusAnimator", "Lcom/mapbox/maps/plugin/locationcomponent/animators/PuckAccuracyRadiusAnimator;", "pixelRatio", "", "(Lcom/mapbox/maps/plugin/locationcomponent/OnIndicatorPositionChangedListener;Lcom/mapbox/maps/plugin/locationcomponent/OnIndicatorBearingChangedListener;Lcom/mapbox/maps/plugin/locationcomponent/OnIndicatorAccuracyRadiusChangedListener;Lcom/mapbox/maps/plugin/locationcomponent/animators/PuckBearingAnimator;Lcom/mapbox/maps/plugin/locationcomponent/animators/PuckPositionAnimator;Lcom/mapbox/maps/plugin/locationcomponent/animators/PuckPulsingAnimator;Lcom/mapbox/maps/plugin/locationcomponent/animators/PuckAccuracyRadiusAnimator;F)V", "(Lcom/mapbox/maps/plugin/locationcomponent/OnIndicatorPositionChangedListener;Lcom/mapbox/maps/plugin/locationcomponent/OnIndicatorBearingChangedListener;Lcom/mapbox/maps/plugin/locationcomponent/OnIndicatorAccuracyRadiusChangedListener;F)V", "accuracyRadiusAnimator", "value", "", "puckAnimationEnabled", "getPuckAnimationEnabled$plugin_locationcomponent_release", "()Z", "setPuckAnimationEnabled$plugin_locationcomponent_release", "(Z)V", "animateAccuracyRadius", "", "targets", "", "", "options", "Lkotlin/Function1;", "Landroid/animation/ValueAnimator;", "Lkotlin/ExtensionFunctionType;", "animateBearing", "animatePosition", "", "Lcom/mapbox/geojson/Point;", "([Lcom/mapbox/geojson/Point;Lkotlin/jvm/functions/Function1;)V", "applySettings", "settings", "Lcom/mapbox/maps/plugin/locationcomponent/generated/LocationComponentSettings;", "onStart", "onStop", "setLocationLayerRenderer", "renderer", "Lcom/mapbox/maps/plugin/locationcomponent/LocationLayerRenderer;", "setUpdateListeners", "onLocationUpdated", "onBearingUpdated", "onAccuracyRadiusUpdated", "updateAccuracyRadiusAnimator", "block", "updateBearingAnimator", "updatePositionAnimator", "updatePulsingRadius", TypedValues.AttributesType.S_TARGET, "plugin-locationcomponent_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class PuckAnimatorManager {
    private PuckAccuracyRadiusAnimator accuracyRadiusAnimator;
    private PuckBearingAnimator bearingAnimator;
    private PuckPositionAnimator positionAnimator;
    private PuckPulsingAnimator pulsingAnimator;

    public PuckAnimatorManager(OnIndicatorPositionChangedListener indicatorPositionChangedListener, OnIndicatorBearingChangedListener indicatorBearingChangedListener, OnIndicatorAccuracyRadiusChangedListener indicatorAccuracyRadiusChangedListener, float f) {
        Intrinsics.checkNotNullParameter(indicatorPositionChangedListener, "indicatorPositionChangedListener");
        Intrinsics.checkNotNullParameter(indicatorBearingChangedListener, "indicatorBearingChangedListener");
        Intrinsics.checkNotNullParameter(indicatorAccuracyRadiusChangedListener, "indicatorAccuracyRadiusChangedListener");
        this.bearingAnimator = new PuckBearingAnimator(indicatorBearingChangedListener);
        this.positionAnimator = new PuckPositionAnimator(indicatorPositionChangedListener);
        this.accuracyRadiusAnimator = new PuckAccuracyRadiusAnimator(indicatorAccuracyRadiusChangedListener);
        this.pulsingAnimator = new PuckPulsingAnimator(f);
    }

    public final boolean getPuckAnimationEnabled$plugin_locationcomponent_release() {
        return this.bearingAnimator.getEnabled();
    }

    public final void setPuckAnimationEnabled$plugin_locationcomponent_release(boolean z) {
        this.bearingAnimator.setEnabled$plugin_locationcomponent_release(z);
    }

    public PuckAnimatorManager(OnIndicatorPositionChangedListener indicatorPositionChangedListener, OnIndicatorBearingChangedListener indicatorBearingChangedListener, OnIndicatorAccuracyRadiusChangedListener indicatorAccuracyRadiusChangedListener, PuckBearingAnimator bearingAnimator, PuckPositionAnimator positionAnimator, PuckPulsingAnimator pulsingAnimator, PuckAccuracyRadiusAnimator radiusAnimator, float f) {
        this(indicatorPositionChangedListener, indicatorBearingChangedListener, indicatorAccuracyRadiusChangedListener, f);
        Intrinsics.checkNotNullParameter(indicatorPositionChangedListener, "indicatorPositionChangedListener");
        Intrinsics.checkNotNullParameter(indicatorBearingChangedListener, "indicatorBearingChangedListener");
        Intrinsics.checkNotNullParameter(indicatorAccuracyRadiusChangedListener, "indicatorAccuracyRadiusChangedListener");
        Intrinsics.checkNotNullParameter(bearingAnimator, "bearingAnimator");
        Intrinsics.checkNotNullParameter(positionAnimator, "positionAnimator");
        Intrinsics.checkNotNullParameter(pulsingAnimator, "pulsingAnimator");
        Intrinsics.checkNotNullParameter(radiusAnimator, "radiusAnimator");
        this.bearingAnimator = bearingAnimator;
        this.positionAnimator = positionAnimator;
        this.pulsingAnimator = pulsingAnimator;
        this.accuracyRadiusAnimator = radiusAnimator;
    }

    public final void setLocationLayerRenderer(LocationLayerRenderer renderer) {
        Intrinsics.checkNotNullParameter(renderer, "renderer");
        this.bearingAnimator.setLocationLayerRenderer(renderer);
        this.positionAnimator.setLocationLayerRenderer(renderer);
        this.pulsingAnimator.setLocationLayerRenderer(renderer);
        this.accuracyRadiusAnimator.setLocationLayerRenderer(renderer);
    }

    public final void setUpdateListeners(Function1<? super Point, Unit> onLocationUpdated, Function1<? super Double, Unit> onBearingUpdated, Function1<? super Double, Unit> onAccuracyRadiusUpdated) {
        Intrinsics.checkNotNullParameter(onLocationUpdated, "onLocationUpdated");
        Intrinsics.checkNotNullParameter(onBearingUpdated, "onBearingUpdated");
        Intrinsics.checkNotNullParameter(onAccuracyRadiusUpdated, "onAccuracyRadiusUpdated");
        this.positionAnimator.setUpdateListener(onLocationUpdated);
        this.bearingAnimator.setUpdateListener(onBearingUpdated);
        this.accuracyRadiusAnimator.setUpdateListener(onAccuracyRadiusUpdated);
    }

    public final void onStart() {
        if (this.pulsingAnimator.getEnabled()) {
            this.pulsingAnimator.animateInfinite();
        }
    }

    public final void onStop() {
        this.bearingAnimator.cancelRunning();
        this.positionAnimator.cancelRunning();
        this.pulsingAnimator.cancelRunning();
        this.accuracyRadiusAnimator.cancelRunning();
    }

    public final void animateBearing(double[] targets, Function1<? super ValueAnimator, Unit> options) {
        Intrinsics.checkNotNullParameter(targets, "targets");
        PuckBearingAnimator puckBearingAnimator = this.bearingAnimator;
        Double[] typedArray = ArraysKt.toTypedArray(MathUtils.INSTANCE.prepareOptimalBearingPath(targets));
        puckBearingAnimator.animate(Arrays.copyOf(typedArray, typedArray.length), options);
    }

    public final void animatePosition(Point[] targets, Function1<? super ValueAnimator, Unit> options) {
        Intrinsics.checkNotNullParameter(targets, "targets");
        this.positionAnimator.animate(Arrays.copyOf(targets, targets.length), options);
    }

    public final void animateAccuracyRadius(double[] targets, Function1<? super ValueAnimator, Unit> options) {
        Intrinsics.checkNotNullParameter(targets, "targets");
        PuckAccuracyRadiusAnimator puckAccuracyRadiusAnimator = this.accuracyRadiusAnimator;
        Double[] typedArray = ArraysKt.toTypedArray(targets);
        puckAccuracyRadiusAnimator.animate(Arrays.copyOf(typedArray, typedArray.length), options);
    }

    public final void updatePulsingRadius(double target, LocationComponentSettings settings) {
        Intrinsics.checkNotNullParameter(settings, "settings");
        PuckPulsingAnimator puckPulsingAnimator = this.pulsingAnimator;
        puckPulsingAnimator.setEnabled$plugin_locationcomponent_release(settings.getPulsingEnabled());
        if (settings.getPulsingEnabled()) {
            puckPulsingAnimator.setMaxRadius(target);
            puckPulsingAnimator.animateInfinite();
        } else {
            puckPulsingAnimator.cancelRunning();
        }
    }

    public final void applySettings(LocationComponentSettings settings) {
        Intrinsics.checkNotNullParameter(settings, "settings");
        PuckPulsingAnimator puckPulsingAnimator = this.pulsingAnimator;
        puckPulsingAnimator.setEnabled$plugin_locationcomponent_release(settings.getPulsingEnabled());
        puckPulsingAnimator.setMaxRadius(settings.getPulsingMaxRadius());
        puckPulsingAnimator.setPulsingColor(settings.getPulsingColor());
        if (settings.getPulsingEnabled()) {
            puckPulsingAnimator.animateInfinite();
        } else {
            puckPulsingAnimator.cancelRunning();
        }
        PuckAccuracyRadiusAnimator puckAccuracyRadiusAnimator = this.accuracyRadiusAnimator;
        puckAccuracyRadiusAnimator.setEnabled$plugin_locationcomponent_release(settings.getShowAccuracyRing());
        puckAccuracyRadiusAnimator.setAccuracyCircleColor$plugin_locationcomponent_release(settings.getAccuracyRingColor());
        puckAccuracyRadiusAnimator.setAccuracyCircleBorderColor$plugin_locationcomponent_release(settings.getAccuracyRingBorderColor());
    }

    public final void updateBearingAnimator(Function1<? super ValueAnimator, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        this.bearingAnimator.updateOptions(block);
    }

    public final void updatePositionAnimator(Function1<? super ValueAnimator, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        this.positionAnimator.updateOptions(block);
    }

    public final void updateAccuracyRadiusAnimator(Function1<? super ValueAnimator, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        this.accuracyRadiusAnimator.updateOptions(block);
    }
}
