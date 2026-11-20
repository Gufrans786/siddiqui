package com.facebook.cache.common;

import javax.annotation.Nullable;

public class NoOpCacheErrorLogger implements CacheErrorLogger {

    @Nullable
    private static NoOpCacheErrorLogger sInstance;

    @Override
    public void logError(CacheErrorLogger.CacheErrorCategory cacheErrorCategory, Class<?> cls, String str, @Nullable Throwable th) {
    }

    private NoOpCacheErrorLogger() {
    }

    public static synchronized NoOpCacheErrorLogger getInstance() {
        if (sInstance == null) {
            sInstance = new NoOpCacheErrorLogger();
        }
        return sInstance;
    }
}
