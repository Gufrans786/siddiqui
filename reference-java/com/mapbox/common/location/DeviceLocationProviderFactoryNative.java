package com.mapbox.common.location;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;

final class DeviceLocationProviderFactoryNative implements DeviceLocationProviderFactory {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native Expected<LocationError, DeviceLocationProvider> build(LocationProviderRequest locationProviderRequest);

    public DeviceLocationProviderFactoryNative(long j) {
        this.peer = j;
        CleanerService.register(this, new DeviceLocationProviderFactoryPeerCleaner(j));
    }

    private static class DeviceLocationProviderFactoryPeerCleaner implements Runnable {
        private long peer;

        public DeviceLocationProviderFactoryPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            DeviceLocationProviderFactoryNative.cleanNativePeer(this.peer);
        }
    }
}
