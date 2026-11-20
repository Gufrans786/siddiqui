package com.facebook.cache.common;

public class BaseCacheEventListener implements CacheEventListener {
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
}
