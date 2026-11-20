package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;

final class QueryFeatureExtensionCallbackNative implements QueryFeatureExtensionCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<String, FeatureExtensionValue> expected);

    private QueryFeatureExtensionCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new QueryFeatureExtensionCallbackPeerCleaner(j));
    }

    private static class QueryFeatureExtensionCallbackPeerCleaner implements Runnable {
        private long peer;

        public QueryFeatureExtensionCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            QueryFeatureExtensionCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
