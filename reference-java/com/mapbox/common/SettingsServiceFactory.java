package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;

public final class SettingsServiceFactory {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native SettingsService getInstance(SettingsServiceStorageType settingsServiceStorageType);

    protected SettingsServiceFactory(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new SettingsServiceFactoryPeerCleaner(j));
    }

    private static class SettingsServiceFactoryPeerCleaner implements Runnable {
        private long peer;

        public SettingsServiceFactoryPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            SettingsServiceFactory.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
