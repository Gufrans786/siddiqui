package com.github.penfeizhou.animation.glide;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.drawable.DrawableResource;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.github.penfeizhou.animation.apng.APNGDrawable;
import com.github.penfeizhou.animation.apng.decode.APNGDecoder;
import com.github.penfeizhou.animation.avif.AVIFDrawable;
import com.github.penfeizhou.animation.avif.decode.AVIFDecoder;
import com.github.penfeizhou.animation.decode.FrameSeqDecoder;
import com.github.penfeizhou.animation.gif.GifDrawable;
import com.github.penfeizhou.animation.gif.decode.GifDecoder;
import com.github.penfeizhou.animation.webp.WebPDrawable;
import com.github.penfeizhou.animation.webp.decode.WebPDecoder;

class FrameDrawableTranscoder implements ResourceTranscoder<FrameSeqDecoder, Drawable> {
    FrameDrawableTranscoder() {
    }

    @Override
    public Resource<Drawable> transcode(Resource<FrameSeqDecoder> resource, Options options) {
        FrameSeqDecoder frameSeqDecoder = resource.get();
        boolean zBooleanValue = ((Boolean) options.get(AnimationDecoderOption.NO_ANIMATION_BOUNDS_MEASURE)).booleanValue();
        if (frameSeqDecoder instanceof APNGDecoder) {
            final APNGDrawable aPNGDrawable = new APNGDrawable((APNGDecoder) frameSeqDecoder);
            aPNGDrawable.setAutoPlay(false);
            aPNGDrawable.setNoMeasure(zBooleanValue);
            return new DrawableResource<Drawable>(aPNGDrawable) {
                @Override
                public Class<Drawable> getResourceClass() {
                    return Drawable.class;
                }

                @Override
                public int getSize() {
                    return aPNGDrawable.getMemorySize();
                }

                @Override
                public void recycle() {
                    aPNGDrawable.stop();
                }

                @Override
                public void initialize() {
                    super.initialize();
                }
            };
        }
        if (frameSeqDecoder instanceof WebPDecoder) {
            final WebPDrawable webPDrawable = new WebPDrawable((WebPDecoder) frameSeqDecoder);
            webPDrawable.setAutoPlay(false);
            webPDrawable.setNoMeasure(zBooleanValue);
            return new DrawableResource<Drawable>(webPDrawable) {
                @Override
                public Class<Drawable> getResourceClass() {
                    return Drawable.class;
                }

                @Override
                public int getSize() {
                    return webPDrawable.getMemorySize();
                }

                @Override
                public void recycle() {
                    webPDrawable.stop();
                }

                @Override
                public void initialize() {
                    super.initialize();
                }
            };
        }
        if (frameSeqDecoder instanceof GifDecoder) {
            final GifDrawable gifDrawable = new GifDrawable((GifDecoder) frameSeqDecoder);
            gifDrawable.setAutoPlay(false);
            gifDrawable.setNoMeasure(zBooleanValue);
            return new DrawableResource<Drawable>(gifDrawable) {
                @Override
                public Class<Drawable> getResourceClass() {
                    return Drawable.class;
                }

                @Override
                public int getSize() {
                    return gifDrawable.getMemorySize();
                }

                @Override
                public void recycle() {
                    gifDrawable.stop();
                }

                @Override
                public void initialize() {
                    super.initialize();
                }
            };
        }
        if (!(frameSeqDecoder instanceof AVIFDecoder)) {
            return null;
        }
        final AVIFDrawable aVIFDrawable = new AVIFDrawable((AVIFDecoder) frameSeqDecoder);
        aVIFDrawable.setAutoPlay(false);
        aVIFDrawable.setNoMeasure(zBooleanValue);
        return new DrawableResource<Drawable>(aVIFDrawable) {
            @Override
            public Class<Drawable> getResourceClass() {
                return Drawable.class;
            }

            @Override
            public int getSize() {
                return aVIFDrawable.getMemorySize();
            }

            @Override
            public void recycle() {
                aVIFDrawable.stop();
            }

            @Override
            public void initialize() {
                super.initialize();
            }
        };
    }
}
