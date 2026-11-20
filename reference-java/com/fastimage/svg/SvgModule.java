package com.fastimage.svg;

import android.content.Context;
import android.graphics.drawable.PictureDrawable;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Registry;
import com.bumptech.glide.module.LibraryGlideModule;
import com.caverock.androidsvg.SVG;
import java.io.InputStream;

public class SvgModule extends LibraryGlideModule {
    @Override
    public void registerComponents(Context context, Glide glide, Registry registry) {
        registry.register(SVG.class, PictureDrawable.class, new SvgDrawableTranscoder()).append(InputStream.class, SVG.class, new SvgDecoder());
    }
}
