package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

final class ConfigurationServiceObserverNative implements ConfigurationServiceObserver {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void didEncounterError(ConfigurationServiceError configurationServiceError);

    @Override
    public native void didStartUpdate();

    @Override
    public native void didUpdate(ConfigurationOptions configurationOptions);

    public ConfigurationServiceObserverNative(long j) {
        this.peer = j;
        CleanerService.register(this, new ConfigurationServiceObserverPeerCleaner(j));
    }

    private static class ConfigurationServiceObserverPeerCleaner implements Runnable {
        private long peer;

        public ConfigurationServiceObserverPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            ConfigurationServiceObserverNative.cleanNativePeer(this.peer);
        }
    }
}
