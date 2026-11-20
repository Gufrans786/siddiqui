package com.bumptech.glide.integration.webp.decoder;

import android.graphics.Bitmap;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import java.io.IOException;
import java.nio.ByteBuffer;

public class ByteBufferAnimatedBitmapDecoder implements ResourceDecoder<ByteBuffer, Bitmap> {
    private final AnimatedWebpBitmapDecoder bitmapDecoder;

    public ByteBufferAnimatedBitmapDecoder(AnimatedWebpBitmapDecoder animatedWebpBitmapDecoder) {
        this.bitmapDecoder = animatedWebpBitmapDecoder;
    }

    @Override
    public boolean handles(ByteBuffer byteBuffer, Options options) throws IOException {
        return this.bitmapDecoder.handles(byteBuffer, options);
    }

    @Override
    public Resource<Bitmap> decode(ByteBuffer byteBuffer, int i, int i2, Options options) throws IOException {
        return this.bitmapDecoder.decode(byteBuffer, i, i2, options);
    }
}
