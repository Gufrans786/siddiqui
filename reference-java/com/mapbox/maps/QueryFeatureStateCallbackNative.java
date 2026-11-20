package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.Value;

final class QueryFeatureStateCallbackNative implements QueryFeatureStateCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<String, Value> expected);

    private QueryFeatureStateCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new QueryFeatureStateCallbackPeerCleaner(j));
    }

    private static class QueryFeatureStateCallbackPeerCleaner implements Runnable {
        private long peer;

        public QueryFeatureStateCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            QueryFeatureStateCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
