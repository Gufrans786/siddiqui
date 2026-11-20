package com.google.android.material.shape;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;

class ShapeableDelegateV33 extends ShapeableDelegate {
    ShapeableDelegateV33(View view) {
        initMaskOutlineProvider(view);
    }

    @Override
    boolean shouldUseCompatClipping() {
        return this.forceCompatClippingEnabled;
    }

    @Override
    void invalidateClippingMethod(View view) {
        view.setClipToOutline(!shouldUseCompatClipping());
        if (shouldUseCompatClipping()) {
            view.invalidate();
        } else {
            view.invalidateOutline();
        }
    }

    private void initMaskOutlineProvider(View view) {
        view.setOutlineProvider(new ViewOutlineProvider() {
            @Override
            public void getOutline(View view2, Outline outline) {
                if (ShapeableDelegateV33.this.shapePath.isEmpty()) {
                    return;
                }
                outline.setPath(ShapeableDelegateV33.this.shapePath);
            }
        });
    }
}
