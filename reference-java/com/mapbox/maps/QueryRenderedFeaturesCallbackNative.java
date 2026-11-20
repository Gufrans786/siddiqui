package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;
import java.util.List;

final class QueryRenderedFeaturesCallbackNative implements QueryRenderedFeaturesCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<String, List<QueriedRenderedFeature>> expected);

    private QueryRenderedFeaturesCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new QueryRenderedFeaturesCallbackPeerCleaner(j));
    }

    private static class QueryRenderedFeaturesCallbackPeerCleaner implements Runnable {
        private long peer;

        public QueryRenderedFeaturesCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            QueryRenderedFeaturesCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
