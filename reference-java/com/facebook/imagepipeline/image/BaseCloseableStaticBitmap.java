package com.facebook.imagepipeline.image;

import android.graphics.Bitmap;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.references.CloseableReference;
import com.facebook.common.references.ResourceReleaser;
import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.imageutils.BitmapUtil;
import javax.annotation.Nullable;

public class BaseCloseableStaticBitmap extends BaseCloseableImage implements CloseableStaticBitmap {
    private static boolean sUseSimpleCloseableStaticBitmap = false;

    @Nullable
    private volatile Bitmap mBitmap;

    @Nullable
    private CloseableReference<Bitmap> mBitmapReference;
    private final int mExifOrientation;
    private final QualityInfo mQualityInfo;
    private final int mRotationAngle;

    protected BaseCloseableStaticBitmap(Bitmap bitmap, ResourceReleaser<Bitmap> resourceReleaser, QualityInfo qualityInfo, int i, int i2) {
        this.mBitmap = (Bitmap) Preconditions.checkNotNull(bitmap);
        this.mBitmapReference = CloseableReference.of(this.mBitmap, (ResourceReleaser<Bitmap>) Preconditions.checkNotNull(resourceReleaser));
        this.mQualityInfo = qualityInfo;
        this.mRotationAngle = i;
        this.mExifOrientation = i2;
    }

    protected BaseCloseableStaticBitmap(CloseableReference<Bitmap> closeableReference, QualityInfo qualityInfo, int i) {
        this(closeableReference, qualityInfo, i, 0);
    }

    protected BaseCloseableStaticBitmap(CloseableReference<Bitmap> closeableReference, QualityInfo qualityInfo, int i, int i2) {
        CloseableReference<Bitmap> closeableReference2 = (CloseableReference) Preconditions.checkNotNull(closeableReference.cloneOrNull());
        this.mBitmapReference = closeableReference2;
        this.mBitmap = closeableReference2.get();
        this.mQualityInfo = qualityInfo;
        this.mRotationAngle = i;
        this.mExifOrientation = i2;
    }

    @Override
    public void close() {
        CloseableReference<Bitmap> closeableReferenceDetachBitmapReference = detachBitmapReference();
        if (closeableReferenceDetachBitmapReference != null) {
            closeableReferenceDetachBitmapReference.close();
        }
    }

    private synchronized CloseableReference<Bitmap> detachBitmapReference() {
        CloseableReference<Bitmap> closeableReference;
        closeableReference = this.mBitmapReference;
        this.mBitmapReference = null;
        this.mBitmap = null;
        return closeableReference;
    }

    @Override
    public synchronized CloseableReference<Bitmap> convertToBitmapReference() {
        Preconditions.checkNotNull(this.mBitmapReference, "Cannot convert a closed static bitmap");
        return detachBitmapReference();
    }

    @Override
    @Nullable
    public synchronized CloseableReference<Bitmap> cloneUnderlyingBitmapReference() {
        return CloseableReference.cloneOrNull(this.mBitmapReference);
    }

    @Override
    public synchronized boolean getClosed() {
        return this.mBitmapReference == null;
    }

    @Override
    public Bitmap getUnderlyingBitmap() {
        return this.mBitmap;
    }

    @Override
    public int getSizeInBytes() {
        return BitmapUtil.getSizeInBytes(this.mBitmap);
    }

    @Override
    public int getWidth() {
        int i;
        if (this.mRotationAngle % RotationOptions.ROTATE_180 != 0 || (i = this.mExifOrientation) == 5 || i == 7) {
            return getBitmapHeight(this.mBitmap);
        }
        return getBitmapWidth(this.mBitmap);
    }

    @Override
    public int getHeight() {
        int i;
        if (this.mRotationAngle % RotationOptions.ROTATE_180 != 0 || (i = this.mExifOrientation) == 5 || i == 7) {
            return getBitmapWidth(this.mBitmap);
        }
        return getBitmapHeight(this.mBitmap);
    }

    private static int getBitmapWidth(@Nullable Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        return bitmap.getWidth();
    }

    private static int getBitmapHeight(@Nullable Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        return bitmap.getHeight();
    }

    @Override
    public int getRotationAngle() {
        return this.mRotationAngle;
    }

    @Override
    public int getExifOrientation() {
        return this.mExifOrientation;
    }

    @Override
    public QualityInfo getQualityInfo() {
        return this.mQualityInfo;
    }

    public static void setUseSimpleCloseableStaticBitmap(boolean z) {
        sUseSimpleCloseableStaticBitmap = z;
    }

    public static boolean shouldUseSimpleCloseableStaticBitmap() {
        return sUseSimpleCloseableStaticBitmap;
    }
}
