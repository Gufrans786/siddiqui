package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.DataRef;

public class Buffer {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    private native void initialize(DataRef dataRef);

    private native DataRef nativeGetData();

    public Buffer(DataRef dataRef) {
        initialize(dataRef);
    }

    protected Buffer(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new BufferPeerCleaner(j));
    }

    public DataRef getData() {
        return nativeGetData();
    }

    private static class BufferPeerCleaner implements Runnable {
        private long peer;

        public BufferPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            Buffer.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
