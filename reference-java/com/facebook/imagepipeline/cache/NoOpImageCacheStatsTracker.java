package com.facebook.imagepipeline.cache;

import com.facebook.cache.common.CacheKey;
import javax.annotation.Nullable;

public class NoOpImageCacheStatsTracker implements ImageCacheStatsTracker {

    @Nullable
    private static NoOpImageCacheStatsTracker sInstance;

    @Override
    public void onBitmapCacheHit(CacheKey cacheKey) {
    }

    @Override
    public void onBitmapCacheMiss(CacheKey cacheKey) {
    }

    @Override
    public void onBitmapCachePut(CacheKey cacheKey) {
    }

    @Override
    public void onDiskCacheGetFail(CacheKey cacheKey) {
    }

    @Override
    public void onDiskCacheHit(CacheKey cacheKey) {
    }

    @Override
    public void onDiskCacheMiss(CacheKey cacheKey) {
    }

    @Override
    public void onDiskCachePut(CacheKey cacheKey) {
    }

    @Override
    public void onMemoryCacheHit(CacheKey cacheKey) {
    }

    @Override
    public void onMemoryCacheMiss(CacheKey cacheKey) {
    }

    @Override
    public void onMemoryCachePut(CacheKey cacheKey) {
    }

    @Override
    public void onStagingAreaHit(CacheKey cacheKey) {
    }

    @Override
    public void onStagingAreaMiss(CacheKey cacheKey) {
    }

    @Override
    public void registerBitmapMemoryCache(MemoryCache<?, ?> memoryCache) {
    }

    @Override
    public void registerEncodedMemoryCache(MemoryCache<?, ?> memoryCache) {
    }

    private NoOpImageCacheStatsTracker() {
    }

    public static synchronized NoOpImageCacheStatsTracker getInstance() {
        if (sInstance == null) {
            sInstance = new NoOpImageCacheStatsTracker();
        }
        return sInstance;
    }
}
