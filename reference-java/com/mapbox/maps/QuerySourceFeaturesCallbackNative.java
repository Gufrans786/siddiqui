package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;
import java.util.List;

final class QuerySourceFeaturesCallbackNative implements QuerySourceFeaturesCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<String, List<QueriedSourceFeature>> expected);

    private QuerySourceFeaturesCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new QuerySourceFeaturesCallbackPeerCleaner(j));
    }

    private static class QuerySourceFeaturesCallbackPeerCleaner implements Runnable {
        private long peer;

        public QuerySourceFeaturesCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            QuerySourceFeaturesCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
