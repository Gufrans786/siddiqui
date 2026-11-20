package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.None;

final class FeatureStateOperationCallbackNative implements FeatureStateOperationCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<String, None> expected);

    private FeatureStateOperationCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new FeatureStateOperationCallbackPeerCleaner(j));
    }

    private static class FeatureStateOperationCallbackPeerCleaner implements Runnable {
        private long peer;

        public FeatureStateOperationCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            FeatureStateOperationCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
