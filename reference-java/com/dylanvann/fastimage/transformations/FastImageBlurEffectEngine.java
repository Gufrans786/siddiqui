package com.dylanvann.fastimage.transformations;

import android.graphics.Bitmap;
import android.graphics.RenderEffect;
import android.graphics.Shader;
import android.view.View;
import android.widget.ImageView;

public class FastImageBlurEffectEngine {
    private static final float BLUR_MAX_INPUT = 200.0f;
    private static final float BLUR_MIN_INPUT = 0.1f;
    private static final float BLUR_REFERENCE_SIZE = 540.0f;
    private static final int LISTENER_TAG_ID = -559038737;
    private static final int RADIUS_TAG_ID = -1161901314;
    private static final int SOURCE_TAG_ID = -889275714;

    public static Bitmap apply(Bitmap bitmap, float f, ImageView imageView) {
        imageView.setTag(SOURCE_TAG_ID, bitmap);
        imageView.setTag(RADIUS_TAG_ID, Float.valueOf(f));
        ensureDynamicApply(imageView);
        return blur(bitmap, Math.max(0.1f, Math.min(200.0f, f * ((((imageView.getWidth() * (bitmap.getWidth() / BLUR_REFERENCE_SIZE)) / bitmap.getWidth()) + ((imageView.getHeight() * (bitmap.getHeight() / BLUR_REFERENCE_SIZE)) / bitmap.getHeight())) / 2.0f))), imageView);
    }

    static Bitmap blur(Bitmap bitmap, float f, ImageView imageView) {
        imageView.setRenderEffect(RenderEffect.createBlurEffect(f, f, Shader.TileMode.CLAMP));
        imageView.invalidate();
        return bitmap;
    }

    private static void ensureDynamicApply(final ImageView imageView) {
        Object tag = imageView.getTag(LISTENER_TAG_ID);
        if ((tag instanceof Boolean) && ((Boolean) tag).booleanValue()) {
            return;
        }
        imageView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
            @Override
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                FastImageBlurEffectEngine.lambda$ensureDynamicApply$0(imageView, view, i, i2, i3, i4, i5, i6, i7, i8);
            }
        });
        imageView.setTag(LISTENER_TAG_ID, true);
    }

    static void lambda$ensureDynamicApply$0(ImageView imageView, View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (i3 - i == i7 - i5 && i4 - i2 == i8 - i6) {
            return;
        }
        Object tag = imageView.getTag(SOURCE_TAG_ID);
        if (tag instanceof Bitmap) {
            Bitmap bitmap = (Bitmap) tag;
            Object tag2 = imageView.getTag(RADIUS_TAG_ID);
            if (tag2 instanceof Number) {
                apply(bitmap, ((Number) tag2).floatValue(), imageView);
            }
        }
    }

    public static void clean(ImageView imageView) {
        if (imageView == null) {
            return;
        }
        imageView.setRenderEffect(null);
        imageView.invalidate();
        Object tag = imageView.getTag(LISTENER_TAG_ID);
        if (tag instanceof View.OnLayoutChangeListener) {
            imageView.removeOnLayoutChangeListener((View.OnLayoutChangeListener) tag);
        }
        imageView.setTag(SOURCE_TAG_ID, null);
        imageView.setTag(RADIUS_TAG_ID, null);
        imageView.setTag(LISTENER_TAG_ID, null);
    }
}
