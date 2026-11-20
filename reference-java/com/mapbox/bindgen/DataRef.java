package com.mapbox.bindgen;

import java.nio.ByteBuffer;

public class DataRef {
    private ByteBuffer buffer;
    private long peer;

    static native DataRef allocateNativeMemory(int i);

    static native void cleanNativePeer(long j);

    public DataRef(ByteBuffer byteBuffer) {
        if (!byteBuffer.isDirect()) {
            throw new IllegalArgumentException("Buffer must be an instance of class java.nio.DirectByteBuffer(created by ByteBuffer#allocateDirect() or JNI#NewDirectByteBuffer()).");
        }
        this.buffer = byteBuffer;
    }

    public static DataRef allocateNative(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Buffer size must be a non-negative integer");
        }
        return allocateNativeMemory(i);
    }

    private DataRef(long j, ByteBuffer byteBuffer) {
        this.buffer = byteBuffer;
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        CleanerService.register(this.buffer, new DataRefPeerCleaner(j));
    }

    public ByteBuffer getBuffer() {
        return this.buffer.duplicate();
    }

    private static class DataRefPeerCleaner implements Runnable {
        private long peer;

        public DataRefPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            DataRef.cleanNativePeer(this.peer);
        }
    }
}
