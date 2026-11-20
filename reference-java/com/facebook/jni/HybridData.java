package com.facebook.jni;

import com.facebook.soloader.nativeloader.NativeLoader;

public class HybridData {
    private final Destructor mDestructor = new Destructor(this);

    static {
        NativeLoader.loadLibrary("fbjni");
    }

    public synchronized void resetNative() {
        this.mDestructor.destruct();
    }

    public boolean isValid() {
        return this.mDestructor.mNativePointer != 0;
    }

    public static class Destructor extends DestructorThread.Destructor {
        private volatile long mNativePointer;

        static native void deleteNative(long j);

        Destructor(Object obj) {
            super(obj);
        }

        @Override
        protected final void destruct() {
            deleteNative(this.mNativePointer);
            this.mNativePointer = 0L;
        }
    }
}
