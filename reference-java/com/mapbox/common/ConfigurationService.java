package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

public final class ConfigurationService {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native ConfigurationService getOrCreate(EventsServerOptions eventsServerOptions);

    public native void getConfig(ConfigurationServiceGetConfigCallback configurationServiceGetConfigCallback);

    public native void registerObserver(ConfigurationServiceObserver configurationServiceObserver);

    public native void unregisterObserver(ConfigurationServiceObserver configurationServiceObserver);

    protected ConfigurationService(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new ConfigurationServicePeerCleaner(j));
    }

    private static class ConfigurationServicePeerCleaner implements Runnable {
        private long peer;

        public ConfigurationServicePeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            ConfigurationService.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
