package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;

final class ReadStreamNative implements ReadStream {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native boolean isExhausted();

    @Override
    public native boolean isReadable();

    @Override
    public native Expected<String, Long> read(Buffer buffer);

    @Override
    public native long readBytes();

    public ReadStreamNative(long j) {
        this.peer = j;
        CleanerService.register(this, new ReadStreamPeerCleaner(j));
    }

    private static class ReadStreamPeerCleaner implements Runnable {
        private long peer;

        public ReadStreamPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            ReadStreamNative.cleanNativePeer(this.peer);
        }
    }
}
