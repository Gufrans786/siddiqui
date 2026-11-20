package com.rnmapbox.rnmbx.events;

import com.facebook.react.bridge.WritableMap;

public class OfflineEvent extends AbstractEvent {
    private String mEventKey;
    private WritableMap mPayload;

    public OfflineEvent(String str, String str2, WritableMap writableMap) {
        super(str2);
        this.mEventKey = str;
        this.mPayload = writableMap;
    }

    @Override
    public String getKey() {
        return this.mEventKey;
    }

    @Override
    public WritableMap getPayload() {
        return this.mPayload;
    }
}
