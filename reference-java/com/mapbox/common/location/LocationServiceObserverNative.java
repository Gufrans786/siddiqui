package com.mapbox.common.location;

import com.mapbox.bindgen.CleanerService;

final class LocationServiceObserverNative implements LocationServiceObserver {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void onAccuracyAuthorizationChanged(AccuracyAuthorization accuracyAuthorization);

    @Override
    public native void onAvailabilityChanged(boolean z);

    @Override
    public native void onPermissionStatusChanged(PermissionStatus permissionStatus);

    public LocationServiceObserverNative(long j) {
        this.peer = j;
        CleanerService.register(this, new LocationServiceObserverPeerCleaner(j));
    }

    private static class LocationServiceObserverPeerCleaner implements Runnable {
        private long peer;

        public LocationServiceObserverPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            LocationServiceObserverNative.cleanNativePeer(this.peer);
        }
    }
}
