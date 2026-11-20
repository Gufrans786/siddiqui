package com.mapbox.maps.plugin.locationcomponent.animators;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.animation.Interpolator;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.mapbox.maps.plugin.locationcomponent.LocationLayerRenderer;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0001\u0018\u0000 \u00182\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0006\u0010\u0013\u001a\u00020\u0014J\u0018\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0002H\u0016R\u001a\u0010\u0006\u001a\u00020\u0002X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0019"}, d2 = {"Lcom/mapbox/maps/plugin/locationcomponent/animators/PuckPulsingAnimator;", "Lcom/mapbox/maps/plugin/locationcomponent/animators/PuckAnimator;", "", "pixelRatio", "", "(F)V", "maxRadius", "getMaxRadius", "()D", "setMaxRadius", "(D)V", "pulseFadeEnabled", "", "pulsingColor", "", "getPulsingColor", "()I", "setPulsingColor", "(I)V", "animateInfinite", "", "updateLayer", "fraction", "value", "Companion", "plugin-locationcomponent_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class PuckPulsingAnimator extends PuckAnimator<Double> {
    public static final double DEFAULT_RADIUS_DP = 10.0d;
    public static final long PULSING_DEFAULT_DURATION = 3000;
    private static final Interpolator PULSING_DEFAULT_INTERPOLATOR;
    private double maxRadius;
    private final float pixelRatio;
    private boolean pulseFadeEnabled;
    private int pulsingColor;

    public PuckPulsingAnimator() {
        this(0.0f, 1, null);
    }

    @Override
    public void updateLayer(float f, Double d) {
        updateLayer(f, d.doubleValue());
    }

    public PuckPulsingAnimator(float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 1.0f : f);
    }

    public PuckPulsingAnimator(float f) {
        super(Evaluators.INSTANCE.getDOUBLE());
        this.pixelRatio = f;
        this.maxRadius = ((double) f) * 10.0d;
        this.pulsingColor = -16776961;
        this.pulseFadeEnabled = true;
        setDuration(PULSING_DEFAULT_DURATION);
        setRepeatMode(1);
        setRepeatCount(-1);
        setInterpolator(PULSING_DEFAULT_INTERPOLATOR);
    }

    public final double getMaxRadius() {
        return this.maxRadius;
    }

    public final void setMaxRadius(double d) {
        this.maxRadius = d;
    }

    public final int getPulsingColor() {
        return this.pulsingColor;
    }

    public final void setPulsingColor(int i) {
        this.pulsingColor = i;
    }

    public final void animateInfinite() {
        if (this.maxRadius <= 0.0d) {
            this.maxRadius = ((double) this.pixelRatio) * 10.0d;
        }
        if (!isRunning()) {
            PuckAnimator.animate$default(this, new Double[]{Double.valueOf(0.0d), Double.valueOf(this.maxRadius)}, null, 2, null);
        }
        addListener(new AnimatorListenerAdapter() {
            @Override
            public void onAnimationRepeat(Animator animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
                super.onAnimationRepeat(animation);
                PuckPulsingAnimator.this.setObjectValues(Double.valueOf(0.0d), Double.valueOf(PuckPulsingAnimator.this.getMaxRadius()));
            }
        });
    }

    public void updateLayer(float fraction, double value) {
        float fCoerceIn = this.pulseFadeEnabled ? RangesKt.coerceIn(1.0f - ((float) (value / this.maxRadius)), 0.0f, 1.0f) : 1.0f;
        LocationLayerRenderer locationRenderer = getLocationRenderer();
        if (locationRenderer != null) {
            locationRenderer.updatePulsingUi(this.pulsingColor, (float) value, Float.valueOf(fraction > 0.1f ? fCoerceIn : 0.0f));
        }
    }

    static {
        Interpolator interpolatorCreate = PathInterpolatorCompat.create(0.0f, 0.0f, 0.25f, 1.0f);
        Intrinsics.checkNotNullExpressionValue(interpolatorCreate, "create(\n      0.0f,\n    …  0.25f,\n      1.0f\n    )");
        PULSING_DEFAULT_INTERPOLATOR = interpolatorCreate;
    }
}
