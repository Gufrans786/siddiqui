package com.bumptech.glide.integration.webp.decoder;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.integration.webp.WebpHeaderParser;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParserUtils;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.load.resource.bitmap.TransformationUtils;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Queue;

public final class WebpDownsampler {
    private static final int DENSITY_PRECISION_MULTIPLIER = 1000000000;
    private static final int MARK_POSITION = 10485760;
    private static final String TAG = "WebpDownsampler";
    private final BitmapPool bitmapPool;
    private final ArrayPool byteArrayPool;
    private final DisplayMetrics displayMetrics;
    private final List<ImageHeaderParser> parsers;
    public static final Option<Boolean> DISABLE_DECODER = Option.memory("com.bumptech.glide.integration.webp.decoder.WebpDownsampler.DisableDecoder", false);
    public static final Option<Boolean> USE_SYSTEM_DECODER = Option.memory("com.bumptech.glide.integration.webp.decoder.WebpDownsampler.SystemDecoder", true);
    private static final Downsampler.DecodeCallbacks EMPTY_CALLBACKS = new Downsampler.DecodeCallbacks() {
        @Override
        public void onDecodeComplete(BitmapPool bitmapPool, Bitmap bitmap) throws IOException {
        }

        @Override
        public void onObtainBounds() {
        }
    };
    private static final Queue<BitmapFactory.Options> OPTIONS_QUEUE = Util.createQueue(0);

    private static int round(double d) {
        return (int) (d + 0.5d);
    }

    private boolean shouldUsePool(ImageHeaderParser.ImageType imageType) throws IOException {
        return true;
    }

    public WebpDownsampler(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, BitmapPool bitmapPool, ArrayPool arrayPool) {
        this.parsers = list;
        this.displayMetrics = (DisplayMetrics) Preconditions.checkNotNull(displayMetrics);
        this.bitmapPool = (BitmapPool) Preconditions.checkNotNull(bitmapPool);
        this.byteArrayPool = (ArrayPool) Preconditions.checkNotNull(arrayPool);
    }

    public boolean handles(InputStream inputStream, Options options) throws IOException {
        if (((Boolean) options.get(DISABLE_DECODER)).booleanValue()) {
            return false;
        }
        if (((Boolean) options.get(USE_SYSTEM_DECODER)).booleanValue()) {
            if (WebpHeaderParser.sIsExtendedWebpSupported) {
                return false;
            }
            WebpHeaderParser.WebpImageType type = WebpHeaderParser.getType(inputStream, this.byteArrayPool);
            return WebpHeaderParser.isStaticWebpType(type) && type != WebpHeaderParser.WebpImageType.WEBP_SIMPLE;
        }
        return WebpHeaderParser.isStaticWebpType(WebpHeaderParser.getType(inputStream, this.byteArrayPool));
    }

    public boolean handles(ByteBuffer byteBuffer, Options options) throws IOException {
        if (((Boolean) options.get(DISABLE_DECODER)).booleanValue()) {
            return false;
        }
        if (((Boolean) options.get(USE_SYSTEM_DECODER)).booleanValue()) {
            if (WebpHeaderParser.sIsExtendedWebpSupported) {
                return false;
            }
            WebpHeaderParser.WebpImageType type = WebpHeaderParser.getType(byteBuffer);
            return WebpHeaderParser.isStaticWebpType(type) && type != WebpHeaderParser.WebpImageType.WEBP_SIMPLE;
        }
        return WebpHeaderParser.isStaticWebpType(WebpHeaderParser.getType(byteBuffer));
    }

    public Resource<Bitmap> decode(InputStream inputStream, int i, int i2, Options options) throws IOException {
        return decode(inputStream, i, i2, options, EMPTY_CALLBACKS);
    }

    public Resource<Bitmap> decode(InputStream inputStream, int i, int i2, Options options, Downsampler.DecodeCallbacks decodeCallbacks) throws IOException {
        Preconditions.checkArgument(inputStream.markSupported(), "You must provide an InputStream that supports mark()");
        byte[] bArr = (byte[]) this.byteArrayPool.get(65536, byte[].class);
        BitmapFactory.Options defaultOptions = getDefaultOptions();
        defaultOptions.inTempStorage = bArr;
        DecodeFormat decodeFormat = (DecodeFormat) options.get(Downsampler.DECODE_FORMAT);
        try {
            return BitmapResource.obtain(decodeFromWrappedStreams(inputStream, defaultOptions, (DownsampleStrategy) options.get(Downsampler.DOWNSAMPLE_STRATEGY), decodeFormat, options.get(Downsampler.ALLOW_HARDWARE_CONFIG) != null && ((Boolean) options.get(Downsampler.ALLOW_HARDWARE_CONFIG)).booleanValue(), i, i2, ((Boolean) options.get(Downsampler.FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS)).booleanValue(), decodeCallbacks), this.bitmapPool);
        } finally {
            releaseOptions(defaultOptions);
            this.byteArrayPool.put(bArr, byte[].class);
        }
    }

    private Bitmap decodeFromWrappedStreams(InputStream inputStream, BitmapFactory.Options options, DownsampleStrategy downsampleStrategy, DecodeFormat decodeFormat, boolean z, int i, int i2, boolean z2, Downsampler.DecodeCallbacks decodeCallbacks) throws IOException {
        int i3;
        int i4;
        BitmapFactory.Options options2;
        Bitmap bitmap;
        long logTime = LogTime.getLogTime();
        int[] dimensions = getDimensions(inputStream, options, decodeCallbacks, this.bitmapPool);
        int i5 = dimensions[0];
        int i6 = dimensions[1];
        String str = options.outMimeType;
        boolean z3 = (i5 == -1 || i6 == -1) ? false : z;
        int orientation = ImageHeaderParserUtils.getOrientation(this.parsers, inputStream, this.byteArrayPool);
        int exifOrientationDegrees = TransformationUtils.getExifOrientationDegrees(orientation);
        boolean zIsExifOrientationRequired = TransformationUtils.isExifOrientationRequired(orientation);
        int i7 = i == Integer.MIN_VALUE ? i5 : i;
        if (i2 == Integer.MIN_VALUE) {
            i4 = i7;
            i3 = i6;
        } else {
            int i8 = i7;
            i3 = i2;
            i4 = i8;
        }
        ImageHeaderParser.ImageType type = ImageHeaderParserUtils.getType(this.parsers, inputStream, this.byteArrayPool);
        calculateScaling(type, inputStream, decodeCallbacks, this.bitmapPool, downsampleStrategy, exifOrientationDegrees, i5, i6, i4, i3, options);
        int i9 = i4;
        int i10 = i3;
        calculateConfig(inputStream, decodeFormat, z3, zIsExifOrientationRequired, options, i9, i10);
        int i11 = options.inSampleSize;
        if (shouldUsePool(type)) {
            if (z2) {
                options2 = options;
            } else {
                float f = isScaling(options) ? options.inTargetDensity / options.inDensity : 1.0f;
                int i12 = options.inSampleSize;
                float f2 = i5;
                float f3 = i12;
                int iCeil = (int) Math.ceil(f2 / f3);
                int iCeil2 = (int) Math.ceil(i6 / f3);
                int iRound = Math.round(iCeil * f);
                int iRound2 = Math.round(iCeil2 * f);
                if (Log.isLoggable(TAG, 2)) {
                    options2 = options;
                    Log.v(TAG, "Calculated target [" + iRound + "x" + iRound2 + "] for source [" + i5 + "x" + i6 + "], sampleSize: " + i12 + ", targetDensity: " + options2.inTargetDensity + ", density: " + options2.inDensity + ", density multiplier: " + f);
                } else {
                    options2 = options;
                }
                i9 = iRound;
                i10 = iRound2;
            }
            if (i9 > 0 && i10 > 0) {
                setInBitmap(options2, this.bitmapPool, i9, i10);
            }
        } else {
            options2 = options;
        }
        Bitmap bitmapDecodeStream = decodeStream(inputStream, options2, decodeCallbacks, this.bitmapPool);
        decodeCallbacks.onDecodeComplete(this.bitmapPool, bitmapDecodeStream);
        if (Log.isLoggable(TAG, 2)) {
            bitmap = bitmapDecodeStream;
            logDecode(i5, i6, str, options2, bitmap, i, i2, logTime);
        } else {
            bitmap = bitmapDecodeStream;
        }
        if (bitmap == null) {
            return null;
        }
        bitmap.setDensity(this.displayMetrics.densityDpi);
        Bitmap bitmapRotateImageExif = TransformationUtils.rotateImageExif(this.bitmapPool, bitmap, orientation);
        if (!bitmap.equals(bitmapRotateImageExif)) {
            this.bitmapPool.put(bitmap);
        }
        return bitmapRotateImageExif;
    }

    static void calculateScaling(ImageHeaderParser.ImageType imageType, InputStream inputStream, Downsampler.DecodeCallbacks decodeCallbacks, BitmapPool bitmapPool, DownsampleStrategy downsampleStrategy, int i, int i2, int i3, int i4, int i5, BitmapFactory.Options options) throws IOException {
        float scaleFactor;
        int iMin;
        boolean z;
        int i6;
        int iFloor;
        int iFloor2;
        if (i2 <= 0 || i3 <= 0) {
            return;
        }
        if (i == 90 || i == 270) {
            scaleFactor = downsampleStrategy.getScaleFactor(i3, i2, i4, i5);
        } else {
            scaleFactor = downsampleStrategy.getScaleFactor(i2, i3, i4, i5);
        }
        if (scaleFactor <= 0.0f) {
            throw new IllegalArgumentException("Cannot scale with factor: " + scaleFactor + " from: " + downsampleStrategy + ", source: [" + i2 + "x" + i3 + "], target: [" + i4 + "x" + i5 + "]");
        }
        DownsampleStrategy.SampleSizeRounding sampleSizeRounding = downsampleStrategy.getSampleSizeRounding(i2, i3, i4, i5);
        if (sampleSizeRounding == null) {
            throw new IllegalArgumentException("Cannot round with null rounding");
        }
        float f = i2;
        float f2 = i3;
        int iRound = i2 / round(scaleFactor * f);
        int iRound2 = i3 / round(scaleFactor * f2);
        if (sampleSizeRounding == DownsampleStrategy.SampleSizeRounding.MEMORY) {
            iMin = Math.max(iRound, iRound2);
        } else {
            iMin = Math.min(iRound, iRound2);
        }
        int iMax = Math.max(1, Integer.highestOneBit(iMin));
        if (sampleSizeRounding == DownsampleStrategy.SampleSizeRounding.MEMORY && iMax < 1.0f / scaleFactor) {
            iMax <<= 1;
        }
        options.inSampleSize = iMax;
        if (imageType == ImageHeaderParser.ImageType.JPEG) {
            float fMin = Math.min(iMax, 8);
            z = true;
            i6 = 0;
            iFloor = (int) Math.ceil(f / fMin);
            iFloor2 = (int) Math.ceil(f2 / fMin);
            int i7 = iMax / 8;
            if (i7 > 0) {
                iFloor /= i7;
                iFloor2 /= i7;
            }
        } else {
            z = true;
            i6 = 0;
            if (imageType == ImageHeaderParser.ImageType.PNG || imageType == ImageHeaderParser.ImageType.PNG_A) {
                float f3 = iMax;
                iFloor = (int) Math.floor(f / f3);
                iFloor2 = (int) Math.floor(f2 / f3);
            } else if (imageType == ImageHeaderParser.ImageType.WEBP || imageType == ImageHeaderParser.ImageType.WEBP_A) {
                float f4 = iMax;
                iFloor = Math.round(f / f4);
                iFloor2 = Math.round(f2 / f4);
            } else if (i2 % iMax != 0 || i3 % iMax != 0) {
                int[] dimensions = getDimensions(inputStream, options, decodeCallbacks, bitmapPool);
                iFloor = dimensions[0];
                iFloor2 = dimensions[1];
            } else {
                iFloor = i2 / iMax;
                iFloor2 = i3 / iMax;
            }
        }
        double scaleFactor2 = downsampleStrategy.getScaleFactor(iFloor, iFloor2, i4, i5);
        options.inTargetDensity = adjustTargetDensityForError(scaleFactor2);
        options.inDensity = 1000000000;
        if (isScaling(options)) {
            options.inScaled = z;
        } else {
            options.inTargetDensity = i6;
            options.inDensity = i6;
        }
        if (Log.isLoggable(TAG, 2)) {
            Log.v(TAG, "Calculate scaling, source: [" + i2 + "x" + i3 + "], target: [" + i4 + "x" + i5 + "], power of two scaled: [" + iFloor + "x" + iFloor2 + "], exact scale factor: " + scaleFactor + ", power of 2 sample size: " + iMax + ", adjusted scale factor: " + scaleFactor2 + ", target density: " + options.inTargetDensity + ", density: " + options.inDensity);
        }
    }

    private static int adjustTargetDensityForError(double d) {
        int iRound = round(1.0E9d * d);
        return round((d / ((double) (iRound / 1.0E9f))) * ((double) iRound));
    }

    private void calculateConfig(InputStream inputStream, DecodeFormat decodeFormat, boolean z, boolean z2, BitmapFactory.Options options, int i, int i2) throws IOException {
        boolean zHasAlpha;
        if (decodeFormat == DecodeFormat.PREFER_ARGB_8888) {
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            return;
        }
        try {
            zHasAlpha = ImageHeaderParserUtils.getType(this.parsers, inputStream, this.byteArrayPool).hasAlpha();
        } catch (IOException e) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Cannot determine whether the image has alpha or not from header, format " + decodeFormat, e);
            }
            zHasAlpha = false;
        }
        options.inPreferredConfig = zHasAlpha ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
        if (options.inPreferredConfig == Bitmap.Config.RGB_565 || options.inPreferredConfig == Bitmap.Config.ARGB_4444 || options.inPreferredConfig == Bitmap.Config.ALPHA_8) {
            options.inDither = true;
        }
    }

    private static int[] getDimensions(InputStream inputStream, BitmapFactory.Options options, Downsampler.DecodeCallbacks decodeCallbacks, BitmapPool bitmapPool) throws IOException {
        options.inJustDecodeBounds = true;
        decodeStream(inputStream, options, decodeCallbacks, bitmapPool);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    private static android.graphics.Bitmap decodeStream(java.io.InputStream r6, android.graphics.BitmapFactory.Options r7, com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks r8, com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool r9) throws java.io.IOException {
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.integration.webp.decoder.WebpDownsampler.decodeStream(java.io.InputStream, android.graphics.BitmapFactory$Options, com.bumptech.glide.load.resource.bitmap.Downsampler$DecodeCallbacks, com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool):android.graphics.Bitmap");
    }

    private static boolean isScaling(BitmapFactory.Options options) {
        return options.inTargetDensity > 0 && options.inDensity > 0 && options.inTargetDensity != options.inDensity;
    }

    private static void logDecode(int i, int i2, String str, BitmapFactory.Options options, Bitmap bitmap, int i3, int i4, long j) {
        Log.v(TAG, "Decoded " + getBitmapString(bitmap) + " from [" + i + "x" + i2 + "] " + str + " with inBitmap " + getInBitmapString(options) + " for [" + i3 + "x" + i4 + "], sample size: " + options.inSampleSize + ", density: " + options.inDensity + ", target density: " + options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + LogTime.getElapsedMillis(j));
    }

    private static String getInBitmapString(BitmapFactory.Options options) {
        return getBitmapString(options.inBitmap);
    }

    private static String getBitmapString(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + (" (" + bitmap.getAllocationByteCount() + ")");
    }

    private static IOException newIoExceptionForInBitmapAssertion(IllegalArgumentException illegalArgumentException, int i, int i2, String str, BitmapFactory.Options options) {
        return new IOException("Exception decoding bitmap, outWidth: " + i + ", outHeight: " + i2 + ", outMimeType: " + str + ", inBitmap: " + getInBitmapString(options), illegalArgumentException);
    }

    private static void setInBitmap(BitmapFactory.Options options, BitmapPool bitmapPool, int i, int i2) {
        if (Build.VERSION.SDK_INT < 26 || options.inPreferredConfig != Bitmap.Config.HARDWARE) {
            options.inBitmap = bitmapPool.getDirty(i, i2, options.inPreferredConfig);
        }
    }

    private static synchronized BitmapFactory.Options getDefaultOptions() {
        BitmapFactory.Options optionsPoll;
        Queue<BitmapFactory.Options> queue = OPTIONS_QUEUE;
        synchronized (queue) {
            optionsPoll = queue.poll();
        }
        if (optionsPoll == null) {
            optionsPoll = new BitmapFactory.Options();
            resetOptions(optionsPoll);
        }
        return optionsPoll;
    }

    private static void releaseOptions(BitmapFactory.Options options) {
        resetOptions(options);
        Queue<BitmapFactory.Options> queue = OPTIONS_QUEUE;
        synchronized (queue) {
            queue.offer(options);
        }
    }

    private static void resetOptions(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }
}
