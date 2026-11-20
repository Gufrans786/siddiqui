package com.bumptech.glide;

import android.content.Context;
import android.util.Log;
import com.bumptech.glide.integration.avif.AvifGlideModule;
import com.bumptech.glide.integration.okhttp3.OkHttpLibraryGlideModule;
import com.bumptech.glide.integration.webp.WebpGlideLibraryModule;
import com.dylanvann.fastimage.FastImageGlideModule;
import com.dylanvann.fastimage.FastImageOkHttpProgressGlideModule;
import com.fastimage.svg.SvgModule;
import com.github.penfeizhou.animation.glide.GlideAnimationModule;
import java.util.Collections;
import java.util.Set;

final class GeneratedAppGlideModuleImpl extends GeneratedAppGlideModule {
    private final FastImageGlideModule appGlideModule = new FastImageGlideModule();

    public GeneratedAppGlideModuleImpl(Context context) {
        if (Log.isLoggable("Glide", 3)) {
            Log.d("Glide", "Discovered AppGlideModule from annotation: com.dylanvann.fastimage.FastImageGlideModule");
            Log.d("Glide", "Discovered LibraryGlideModule from annotation: com.bumptech.glide.integration.avif.AvifGlideModule");
            Log.d("Glide", "Discovered LibraryGlideModule from annotation: com.bumptech.glide.integration.okhttp3.OkHttpLibraryGlideModule");
            Log.d("Glide", "Discovered LibraryGlideModule from annotation: com.bumptech.glide.integration.webp.WebpGlideLibraryModule");
            Log.d("Glide", "Discovered LibraryGlideModule from annotation: com.dylanvann.fastimage.FastImageOkHttpProgressGlideModule");
            Log.d("Glide", "Discovered LibraryGlideModule from annotation: com.fastimage.svg.SvgModule");
            Log.d("Glide", "Discovered LibraryGlideModule from annotation: com.github.penfeizhou.animation.glide.GlideAnimationModule");
        }
    }

    @Override
    public void applyOptions(Context context, GlideBuilder glideBuilder) {
        this.appGlideModule.applyOptions(context, glideBuilder);
    }

    @Override
    public void registerComponents(Context context, Glide glide, Registry registry) {
        new AvifGlideModule().registerComponents(context, glide, registry);
        new OkHttpLibraryGlideModule().registerComponents(context, glide, registry);
        new WebpGlideLibraryModule().registerComponents(context, glide, registry);
        new FastImageOkHttpProgressGlideModule().registerComponents(context, glide, registry);
        new SvgModule().registerComponents(context, glide, registry);
        new GlideAnimationModule().registerComponents(context, glide, registry);
        this.appGlideModule.registerComponents(context, glide, registry);
    }

    @Override
    public boolean isManifestParsingEnabled() {
        return this.appGlideModule.isManifestParsingEnabled();
    }

    @Override
    public Set<Class<?>> getExcludedModuleClasses() {
        return Collections.emptySet();
    }

    @Override
    public GeneratedRequestManagerFactory getRequestManagerFactory() {
        return new GeneratedRequestManagerFactory();
    }
}
