package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.Property;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.ArgbEvaluatorCompat;
import com.google.android.material.math.MathUtils;
import com.google.android.material.motion.MotionUtils;

final class CircularIndeterminateRetreatAnimatorDelegate extends IndeterminateAnimatorDelegate<ObjectAnimator> {
    private static final int CONSTANT_ROTATION_DEGREES = 1080;
    private static final int DELAY_GROW_ACTIVE_IN_MS = 0;
    private static final int DELAY_SHRINK_ACTIVE_IN_MS = 3000;
    private static final int DURATION_GROW_ACTIVE_IN_MS = 3000;
    private static final int DURATION_SHRINK_ACTIVE_IN_MS = 3000;
    private static final int DURATION_SPIN_IN_MS = 500;
    private static final int DURATION_TO_COMPLETE_END_IN_MS = 500;
    private static final int DURATION_TO_FADE_IN_MS = 100;
    private static final int SPIN_ROTATION_DEGREES = 90;
    private static final float START_FRACTION = 0.0f;
    private static final int TOTAL_DURATION_IN_MS = 6000;
    private float animationFraction;
    private ObjectAnimator animator;
    Animatable2Compat.AnimationCallback animatorCompleteCallback;
    private final BaseProgressIndicatorSpec baseSpec;
    private ObjectAnimator completeEndAnimator;
    private float completeEndFraction;
    private int indicatorColorIndexOffset;
    private final TimeInterpolator standardInterpolator;
    private static final TimeInterpolator DEFAULT_INTERPOLATOR = AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR;
    private static final int[] DELAY_SPINS_IN_MS = {0, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED, 3000, 4500};
    private static final float[] END_FRACTION_RANGE = {0.1f, 0.87f};
    private static final Property<CircularIndeterminateRetreatAnimatorDelegate, Float> ANIMATION_FRACTION = new Property<CircularIndeterminateRetreatAnimatorDelegate, Float>(Float.class, "animationFraction") {
        @Override
        public Float get(CircularIndeterminateRetreatAnimatorDelegate circularIndeterminateRetreatAnimatorDelegate) {
            return Float.valueOf(circularIndeterminateRetreatAnimatorDelegate.getAnimationFraction());
        }

        @Override
        public void set(CircularIndeterminateRetreatAnimatorDelegate circularIndeterminateRetreatAnimatorDelegate, Float f) {
            circularIndeterminateRetreatAnimatorDelegate.setAnimationFraction(f.floatValue());
        }
    };
    private static final Property<CircularIndeterminateRetreatAnimatorDelegate, Float> COMPLETE_END_FRACTION = new Property<CircularIndeterminateRetreatAnimatorDelegate, Float>(Float.class, "completeEndFraction") {
        @Override
        public Float get(CircularIndeterminateRetreatAnimatorDelegate circularIndeterminateRetreatAnimatorDelegate) {
            return Float.valueOf(circularIndeterminateRetreatAnimatorDelegate.getCompleteEndFraction());
        }

        @Override
        public void set(CircularIndeterminateRetreatAnimatorDelegate circularIndeterminateRetreatAnimatorDelegate, Float f) {
            circularIndeterminateRetreatAnimatorDelegate.setCompleteEndFraction(f.floatValue());
        }
    };

    public CircularIndeterminateRetreatAnimatorDelegate(Context context, CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(1);
        this.indicatorColorIndexOffset = 0;
        this.animatorCompleteCallback = null;
        this.baseSpec = circularProgressIndicatorSpec;
        this.standardInterpolator = MotionUtils.resolveThemeInterpolator(context, R.attr.motionEasingStandardInterpolator, DEFAULT_INTERPOLATOR);
    }

    @Override
    void startAnimator() {
        maybeInitializeAnimators();
        resetPropertiesForNewStart();
        this.animator.start();
    }

    private void maybeInitializeAnimators() {
        if (this.animator == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, ANIMATION_FRACTION, 0.0f, 1.0f);
            this.animator = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration((long) (this.baseSpec.indeterminateAnimatorDurationScale * 6000.0f));
            this.animator.setInterpolator(null);
            this.animator.setRepeatCount(-1);
            this.animator.addListener(new AnimatorListenerAdapter() {
                @Override
                public void onAnimationRepeat(Animator animator) {
                    super.onAnimationRepeat(animator);
                    CircularIndeterminateRetreatAnimatorDelegate circularIndeterminateRetreatAnimatorDelegate = CircularIndeterminateRetreatAnimatorDelegate.this;
                    circularIndeterminateRetreatAnimatorDelegate.indicatorColorIndexOffset = (circularIndeterminateRetreatAnimatorDelegate.indicatorColorIndexOffset + CircularIndeterminateRetreatAnimatorDelegate.DELAY_SPINS_IN_MS.length) % CircularIndeterminateRetreatAnimatorDelegate.this.baseSpec.indicatorColors.length;
                }
            });
        }
        if (this.completeEndAnimator == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, COMPLETE_END_FRACTION, 0.0f, 1.0f);
            this.completeEndAnimator = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration((long) (this.baseSpec.indeterminateAnimatorDurationScale * 500.0f));
            this.completeEndAnimator.addListener(new AnimatorListenerAdapter() {
                @Override
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    CircularIndeterminateRetreatAnimatorDelegate.this.cancelAnimatorImmediately();
                    if (CircularIndeterminateRetreatAnimatorDelegate.this.animatorCompleteCallback != null) {
                        CircularIndeterminateRetreatAnimatorDelegate.this.animatorCompleteCallback.onAnimationEnd(CircularIndeterminateRetreatAnimatorDelegate.this.drawable);
                    }
                }
            });
        }
    }

    private void updateAnimatorsDuration() {
        maybeInitializeAnimators();
        this.animator.setDuration((long) (this.baseSpec.indeterminateAnimatorDurationScale * 6000.0f));
        this.completeEndAnimator.setDuration((long) (this.baseSpec.indeterminateAnimatorDurationScale * 500.0f));
    }

    @Override
    void cancelAnimatorImmediately() {
        ObjectAnimator objectAnimator = this.animator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override
    void requestCancelAnimatorAfterCurrentCycle() {
        ObjectAnimator objectAnimator = this.completeEndAnimator;
        if (objectAnimator == null || objectAnimator.isRunning()) {
            return;
        }
        if (this.drawable.isVisible()) {
            this.completeEndAnimator.start();
        } else {
            cancelAnimatorImmediately();
        }
    }

    @Override
    public void invalidateSpecValues() {
        updateAnimatorsDuration();
        resetPropertiesForNewStart();
    }

    @Override
    public void registerAnimatorsCompleteCallback(Animatable2Compat.AnimationCallback animationCallback) {
        this.animatorCompleteCallback = animationCallback;
    }

    @Override
    public void unregisterAnimatorsCompleteCallback() {
        this.animatorCompleteCallback = null;
    }

    private void updateSegmentPositions(int i) {
        DrawingDelegate.ActiveIndicator activeIndicator = this.activeIndicators.get(0);
        float f = this.animationFraction * 1080.0f;
        float interpolation = 0.0f;
        for (int i2 : DELAY_SPINS_IN_MS) {
            interpolation += this.standardInterpolator.getInterpolation(getFractionInRange(i, i2, 500)) * 90.0f;
        }
        activeIndicator.rotationDegree = f + interpolation;
        float interpolation2 = this.standardInterpolator.getInterpolation(getFractionInRange(i, 0, 3000)) - this.standardInterpolator.getInterpolation(getFractionInRange(i, 3000, 3000));
        activeIndicator.startFraction = 0.0f;
        float[] fArr = END_FRACTION_RANGE;
        activeIndicator.endFraction = MathUtils.lerp(fArr[0], fArr[1], interpolation2);
        if (this.completeEndFraction > 0.0f) {
            activeIndicator.endFraction *= 1.0f - this.completeEndFraction;
        }
    }

    private void maybeUpdateSegmentColors(int i) {
        int i2 = 0;
        while (true) {
            int[] iArr = DELAY_SPINS_IN_MS;
            if (i2 >= iArr.length) {
                return;
            }
            float fractionInRange = getFractionInRange(i, iArr[i2], 100);
            if (fractionInRange >= 0.0f && fractionInRange <= 1.0f) {
                int length = (i2 + this.indicatorColorIndexOffset) % this.baseSpec.indicatorColors.length;
                int length2 = (length + 1) % this.baseSpec.indicatorColors.length;
                int i3 = this.baseSpec.indicatorColors[length];
                int i4 = this.baseSpec.indicatorColors[length2];
                this.activeIndicators.get(0).color = ArgbEvaluatorCompat.getInstance().evaluate(this.standardInterpolator.getInterpolation(fractionInRange), Integer.valueOf(i3), Integer.valueOf(i4)).intValue();
                return;
            }
            i2++;
        }
    }

    @Override
    void resetPropertiesForNewStart() {
        this.indicatorColorIndexOffset = 0;
        this.activeIndicators.get(0).color = this.baseSpec.indicatorColors[0];
        this.completeEndFraction = 0.0f;
    }

    public float getAnimationFraction() {
        return this.animationFraction;
    }

    @Override
    void setAnimationFraction(float f) {
        this.animationFraction = f;
        int i = (int) (f * 6000.0f);
        updateSegmentPositions(i);
        maybeUpdateSegmentColors(i);
        this.drawable.invalidateSelf();
    }

    public float getCompleteEndFraction() {
        return this.completeEndFraction;
    }

    public void setCompleteEndFraction(float f) {
        this.completeEndFraction = f;
    }
}
