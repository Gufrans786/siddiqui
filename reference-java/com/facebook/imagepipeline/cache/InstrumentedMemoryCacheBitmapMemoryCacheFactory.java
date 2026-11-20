package com.facebook.imagepipeline.cache;

import com.facebook.cache.common.CacheKey;
import com.facebook.imagepipeline.image.CloseableImage;

public class InstrumentedMemoryCacheBitmapMemoryCacheFactory {
    public static InstrumentedMemoryCache<CacheKey, CloseableImage> get(MemoryCache<CacheKey, CloseableImage> memoryCache, final ImageCacheStatsTracker imageCacheStatsTracker) {
        imageCacheStatsTracker.registerBitmapMemoryCache(memoryCache);
        return new InstrumentedMemoryCache<>(memoryCache, new MemoryCacheTracker<CacheKey>() {
            @Override
            public void onCacheHit(CacheKey cacheKey) {
                imageCacheStatsTracker.onBitmapCacheHit(cacheKey);
            }

            @Override
            public void onCacheMiss(CacheKey cacheKey) {
                imageCacheStatsTracker.onBitmapCacheMiss(cacheKey);
            }

            @Override
            public void onCachePut(CacheKey cacheKey) {
                imageCacheStatsTracker.onBitmapCachePut(cacheKey);
            }
        });
    }
}
