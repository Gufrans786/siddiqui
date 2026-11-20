package com.mapbox.common.location;

import com.mapbox.bindgen.CleanerService;

public final class LocationServiceFactory {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native void reset();

    protected LocationServiceFactory(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new LocationServiceFactoryPeerCleaner(j));
    }

    public static LocationService getOrCreate() {
        return LocationServiceImpl.createPlatformLocationService();
    }

    private static class LocationServiceFactoryPeerCleaner implements Runnable {
        private long peer;

        public LocationServiceFactoryPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            LocationServiceFactory.cleanNativePeer(this.peer);
        }
    }
}
