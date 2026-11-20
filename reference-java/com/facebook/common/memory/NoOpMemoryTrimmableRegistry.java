package com.facebook.common.memory;

import javax.annotation.Nullable;

public class NoOpMemoryTrimmableRegistry implements MemoryTrimmableRegistry {

    @Nullable
    private static NoOpMemoryTrimmableRegistry sInstance;

    @Override
    public void registerMemoryTrimmable(MemoryTrimmable memoryTrimmable) {
    }

    @Override
    public void unregisterMemoryTrimmable(MemoryTrimmable memoryTrimmable) {
    }

    public static synchronized NoOpMemoryTrimmableRegistry getInstance() {
        if (sInstance == null) {
            sInstance = new NoOpMemoryTrimmableRegistry();
        }
        return sInstance;
    }
}
