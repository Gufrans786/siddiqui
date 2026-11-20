package com.facebook.cache.common;

import javax.annotation.Nullable;

public class NoOpCacheEventListener implements CacheEventListener {

    @Nullable
    private static NoOpCacheEventListener sInstance;

    @Override
    public void onCleared() {
    }

    @Override
    public void onEviction(CacheEvent cacheEvent) {
    }

    @Override
    public void onHit(CacheEvent cacheEvent) {
    }

    @Override
    public void onMiss(CacheEvent cacheEvent) {
    }

    @Override
    public void onReadException(CacheEvent cacheEvent) {
    }

    @Override
    public void onWriteAttempt(CacheEvent cacheEvent) {
    }

    @Override
    public void onWriteException(CacheEvent cacheEvent) {
    }

    @Override
    public void onWriteSuccess(CacheEvent cacheEvent) {
    }

    private NoOpCacheEventListener() {
    }

    public static synchronized NoOpCacheEventListener getInstance() {
        if (sInstance == null) {
            sInstance = new NoOpCacheEventListener();
        }
        return sInstance;
    }
}
