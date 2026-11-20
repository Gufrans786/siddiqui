package com.oppwa.mobile.connect.checkout.dialog;

import android.animation.ValueAnimator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.oppwa.mobile.connect.R;

class d {
    static void a(final ViewGroup viewGroup, int i, int i2) {
        if (i == i2) {
            return;
        }
        final ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i, i2);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                d.a(valueAnimatorOfInt, viewGroup, valueAnimator);
            }
        });
        valueAnimatorOfInt.setDuration(200L);
        valueAnimatorOfInt.start();
    }

    static void b(Context context, View view) {
        view.startAnimation(a(context, R.anim.opp_show_view));
    }

    public static void a(ValueAnimator valueAnimator, ViewGroup viewGroup, ValueAnimator valueAnimator2) {
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
        layoutParams.height = iIntValue;
        viewGroup.setLayoutParams(layoutParams);
    }

    static void a(Context context, View view) {
        view.startAnimation(a(context, R.anim.opp_hide_view));
    }

    private static Animation a(Context context, int i) {
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(context, i);
        animationLoadAnimation.setDuration(200L);
        return animationLoadAnimation;
    }
}
