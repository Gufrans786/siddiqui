package com.facebook.jni;

public class NativeRunnable implements Runnable {
    private final HybridData mHybridData;

    @Override
    public native void run();

    private NativeRunnable(HybridData hybridData) {
        this.mHybridData = hybridData;
    }
}
