package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.Value;

public final class ValueConverter {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public static native Expected<String, Value> fromJson(String str);

    public static native String toJson(Value value);

    public static native String toJson(Value value, int i);

    protected ValueConverter(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new ValueConverterPeerCleaner(j));
    }

    private static class ValueConverterPeerCleaner implements Runnable {
        private long peer;

        public ValueConverterPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            ValueConverter.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
