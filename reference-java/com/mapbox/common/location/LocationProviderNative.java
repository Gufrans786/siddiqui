package com.mapbox.common.location;

import android.os.Looper;
import com.mapbox.bindgen.CleanerService;
import com.mapbox.common.Cancelable;

final class LocationProviderNative implements LocationProvider {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void addLocationObserver(LocationObserver locationObserver);

    @Override
    public void addLocationObserver(LocationObserver locationObserver, Looper looper) {
    }

    @Override
    public Cancelable getLastLocation(GetLocationCallback getLocationCallback) {
        return null;
    }

    @Override
    public native void removeLocationObserver(LocationObserver locationObserver);

    public LocationProviderNative(long j) {
        this.peer = j;
        CleanerService.register(this, new LocationProviderPeerCleaner(j));
    }

    private static class LocationProviderPeerCleaner implements Runnable {
        private long peer;

        public LocationProviderPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            LocationProviderNative.cleanNativePeer(this.peer);
        }
    }
}
