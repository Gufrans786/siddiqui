package com.facebook.imagepipeline.memory;

import javax.annotation.Nullable;

public class NoOpPoolStatsTracker implements PoolStatsTracker {

    @Nullable
    private static NoOpPoolStatsTracker sInstance;

    @Override
    public void onAlloc(int i) {
    }

    @Override
    public void onFree(int i) {
    }

    @Override
    public void onHardCapReached() {
    }

    @Override
    public void onSoftCapReached() {
    }

    @Override
    public void onValueRelease(int i) {
    }

    @Override
    public void onValueReuse(int i) {
    }

    @Override
    public void setBasePool(BasePool basePool) {
    }

    private NoOpPoolStatsTracker() {
    }

    public static synchronized NoOpPoolStatsTracker getInstance() {
        if (sInstance == null) {
            sInstance = new NoOpPoolStatsTracker();
        }
        return sInstance;
    }
}
