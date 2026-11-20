package com.google.android.material.behavior;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;

final class HideBottomViewOnScrollDelegate extends HideViewOnScrollDelegate {
    @Override
    int getTargetTranslation() {
        return 0;
    }

    @Override
    int getViewEdge() {
        return 1;
    }

    HideBottomViewOnScrollDelegate() {
    }

    @Override
    <V extends View> int getSize(V v, ViewGroup.MarginLayoutParams marginLayoutParams) {
        return v.getMeasuredHeight() + marginLayoutParams.bottomMargin;
    }

    @Override
    <V extends View> void setAdditionalHiddenOffset(V v, int i, int i2) {
        v.setTranslationY(i + i2);
    }

    @Override
    <V extends View> void setViewTranslation(V v, int i) {
        v.setTranslationY(i);
    }

    @Override
    <V extends View> ViewPropertyAnimator getViewTranslationAnimator(V v, int i) {
        return v.animate().translationY(i);
    }
}
