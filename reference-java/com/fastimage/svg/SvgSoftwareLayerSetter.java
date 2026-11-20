package com.fastimage.svg;

import android.graphics.drawable.PictureDrawable;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.ImageViewTarget;
import com.bumptech.glide.request.target.Target;

public class SvgSoftwareLayerSetter implements RequestListener<PictureDrawable> {
    @Override
    public boolean onLoadFailed(GlideException glideException, Object obj, Target<PictureDrawable> target, boolean z) {
        ((ImageViewTarget) target).getView().setLayerType(0, null);
        return false;
    }

    @Override
    public boolean onResourceReady(PictureDrawable pictureDrawable, Object obj, Target<PictureDrawable> target, DataSource dataSource, boolean z) {
        ((ImageViewTarget) target).getView().setLayerType(1, null);
        return false;
    }
}
