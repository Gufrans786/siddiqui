package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;

final class CameraChangedCallbackNative implements CameraChangedCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(CameraChanged cameraChanged);

    private CameraChangedCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new CameraChangedCallbackPeerCleaner(j));
    }

    private static class CameraChangedCallbackPeerCleaner implements Runnable {
        private long peer;

        public CameraChangedCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            CameraChangedCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
