package com.mapbox.common.location;

import com.mapbox.bindgen.CleanerService;
import java.util.List;

final class LocationObserverNative implements LocationObserver {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void onLocationUpdateReceived(List<Location> list);

    public LocationObserverNative(long j) {
        this.peer = j;
        CleanerService.register(this, new LocationObserverPeerCleaner(j));
    }

    private static class LocationObserverPeerCleaner implements Runnable {
        private long peer;

        public LocationObserverPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            LocationObserverNative.cleanNativePeer(this.peer);
        }
    }
}
