package com.facebook.imagepipeline.memory;

import android.graphics.Bitmap;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.memory.MemoryTrimmableRegistry;
import javax.annotation.Nullable;

public class BucketsBitmapPool extends BasePool<Bitmap> implements BitmapPool {
    @Override
    protected int getBucketedSize(int i) {
        return i;
    }

    @Override
    protected int getSizeInBytes(int i) {
        return i;
    }

    public BucketsBitmapPool(MemoryTrimmableRegistry memoryTrimmableRegistry, PoolParams poolParams, PoolStatsTracker poolStatsTracker, boolean z) {
        super(memoryTrimmableRegistry, poolParams, poolStatsTracker, z);
        initialize();
    }

    @Override
    public Bitmap alloc2(int i) {
        return Bitmap.createBitmap(1, (int) Math.ceil(((double) i) / 2.0d), Bitmap.Config.RGB_565);
    }

    @Override
    public void free(Bitmap bitmap) {
        Preconditions.checkNotNull(bitmap);
        bitmap.recycle();
    }

    @Override
    public int getBucketedSizeForValue(Bitmap bitmap) {
        Preconditions.checkNotNull(bitmap);
        return bitmap.getAllocationByteCount();
    }

    @Override
    public boolean isReusable(Bitmap bitmap) {
        Preconditions.checkNotNull(bitmap);
        return !bitmap.isRecycled() && bitmap.isMutable();
    }

    @Override
    @Nullable
    public Bitmap getValue(Bucket<Bitmap> bucket) {
        Bitmap bitmap = (Bitmap) super.getValue((Bucket) bucket);
        if (bitmap != null) {
            bitmap.eraseColor(0);
        }
        return bitmap;
    }
}
