package com.google.android.material.behavior;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;

final class HideRightViewOnScrollDelegate extends HideViewOnScrollDelegate {
    @Override
    int getTargetTranslation() {
        return 0;
    }

    @Override
    int getViewEdge() {
        return 0;
    }

    HideRightViewOnScrollDelegate() {
    }

    @Override
    <V extends View> int getSize(V v, ViewGroup.MarginLayoutParams marginLayoutParams) {
        return v.getMeasuredWidth() + marginLayoutParams.rightMargin;
    }

    @Override
    <V extends View> void setAdditionalHiddenOffset(V v, int i, int i2) {
        v.setTranslationX(i + i2);
    }

    @Override
    <V extends View> void setViewTranslation(V v, int i) {
        v.setTranslationX(i);
    }

    @Override
    <V extends View> ViewPropertyAnimator getViewTranslationAnimator(V v, int i) {
        return v.animate().translationX(i);
    }
}
