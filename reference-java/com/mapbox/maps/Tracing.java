package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;

@Deprecated
final class Tracing {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native TracingBackendType getTracingBackendType();

    public static native void setTracingBackendType(TracingBackendType tracingBackendType);

    protected Tracing(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new TracingPeerCleaner(j));
    }

    private static class TracingPeerCleaner implements Runnable {
        private long peer;

        public TracingPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            Tracing.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
