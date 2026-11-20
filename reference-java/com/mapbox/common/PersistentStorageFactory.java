package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;

public class PersistentStorageFactory {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native Expected<PersistentStorageError, PersistentStorageInterface> getOrCreateByFile(String str);

    public static native Expected<PersistentStorageError, PersistentStorageInterface> getOrCreateByKey(String str);

    protected PersistentStorageFactory(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new PersistentStorageFactoryPeerCleaner(j));
    }

    private static class PersistentStorageFactoryPeerCleaner implements Runnable {
        private long peer;

        public PersistentStorageFactoryPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            PersistentStorageFactory.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
