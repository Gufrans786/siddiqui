package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;

final class ConfigurationServiceGetConfigCallbackNative implements ConfigurationServiceGetConfigCallback {
    private long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native void run(Expected<ConfigurationServiceError, ConfigurationOptions> expected);

    private ConfigurationServiceGetConfigCallbackNative(long j) {
        this.peer = j;
        CleanerService.register(this, new ConfigurationServiceGetConfigCallbackPeerCleaner(j));
    }

    private static class ConfigurationServiceGetConfigCallbackPeerCleaner implements Runnable {
        private long peer;

        public ConfigurationServiceGetConfigCallbackPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            ConfigurationServiceGetConfigCallbackNative.cleanNativePeer(this.peer);
        }
    }
}
