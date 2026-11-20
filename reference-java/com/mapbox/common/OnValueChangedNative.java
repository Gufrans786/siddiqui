package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Value;

final class OnValueChangedNative implements OnValueChanged {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(String str, Value value, Value value2);

    private OnValueChangedNative(long j) {
        this.peer = j;
        CleanerService.register(this, new OnValueChangedPeerCleaner(j));
    }

    private static class OnValueChangedPeerCleaner implements Runnable {
        private long peer;

        public OnValueChangedPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            OnValueChangedNative.cleanNativePeer(this.peer);
        }
    }
}
