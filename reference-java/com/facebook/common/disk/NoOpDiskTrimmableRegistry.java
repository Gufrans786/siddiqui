package com.facebook.common.disk;

import javax.annotation.Nullable;

public class NoOpDiskTrimmableRegistry implements DiskTrimmableRegistry {

    @Nullable
    private static NoOpDiskTrimmableRegistry sInstance;

    @Override
    public void registerDiskTrimmable(DiskTrimmable diskTrimmable) {
    }

    @Override
    public void unregisterDiskTrimmable(DiskTrimmable diskTrimmable) {
    }

    private NoOpDiskTrimmableRegistry() {
    }

    public static synchronized NoOpDiskTrimmableRegistry getInstance() {
        if (sInstance == null) {
            sInstance = new NoOpDiskTrimmableRegistry();
        }
        return sInstance;
    }
}
