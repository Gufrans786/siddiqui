package com.facebook.drawee.controller;

import android.graphics.drawable.Animatable;
import javax.annotation.Nullable;

public class BaseControllerListener<INFO> implements ControllerListener<INFO> {
    private static final ControllerListener<Object> NO_OP_LISTENER = new BaseControllerListener();

    @Override
    public void onFailure(String str, Throwable th) {
    }

    @Override
    public void onFinalImageSet(String str, @Nullable INFO info, @Nullable Animatable animatable) {
    }

    @Override
    public void onIntermediateImageFailed(String str, Throwable th) {
    }

    @Override
    public void onIntermediateImageSet(String str, @Nullable INFO info) {
    }

    @Override
    public void onRelease(String str) {
    }

    @Override
    public void onSubmit(String str, Object obj) {
    }

    public static <INFO> ControllerListener<INFO> getNoOpListener() {
        return (ControllerListener<INFO>) NO_OP_LISTENER;
    }
}
