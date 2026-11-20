package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;

final class CameraChangedCoalescedCallbackNative implements CameraChangedCoalescedCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(CameraChangedCoalesced cameraChangedCoalesced);

    private CameraChangedCoalescedCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new CameraChangedCoalescedCallbackPeerCleaner(j));
    }

    private static class CameraChangedCoalescedCallbackPeerCleaner implements Runnable {
        private long peer;

        public CameraChangedCoalescedCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            CameraChangedCoalescedCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
