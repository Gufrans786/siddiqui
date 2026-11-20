package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

public final class HttpServiceFactory {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native HttpServiceInterface getInstance();

    public static native void reset();

    public static native Cancelable setCancellationCallback(HttpServiceCancellationCallback httpServiceCancellationCallback);

    public static native void setHttpServiceInterceptor(HttpServiceInterceptorInterface httpServiceInterceptorInterface);

    public static native void setMaxRequestsPerHost(byte b);

    public static native void setUserDefined(HttpServiceInterface httpServiceInterface);

    protected HttpServiceFactory(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new HttpServiceFactoryPeerCleaner(j));
    }

    private static class HttpServiceFactoryPeerCleaner implements Runnable {
        private long peer;

        public HttpServiceFactoryPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            HttpServiceFactory.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
