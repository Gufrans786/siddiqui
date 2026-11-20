package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.None;
import com.mapbox.bindgen.Value;

public final class SettingsService {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public native Expected<String, None> erase(String str);

    public native Expected<String, Value> get(String str);

    public native Expected<String, Value> get(String str, Value value);

    public native Expected<String, Boolean> has(String str);

    public native int registerObserver(String str, OnValueChanged onValueChanged);

    public native int registerObserverAtSettingsThread(String str, OnValueChanged onValueChanged);

    public native Expected<String, None> set(String str, Value value);

    public native Expected<String, None> setFromFile(String str);

    public native void unregisterObserver(int i);

    protected SettingsService(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new SettingsServicePeerCleaner(j));
    }

    private static class SettingsServicePeerCleaner implements Runnable {
        private long peer;

        public SettingsServicePeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            SettingsService.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
