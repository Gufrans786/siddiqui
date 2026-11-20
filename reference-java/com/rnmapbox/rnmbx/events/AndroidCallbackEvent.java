package com.rnmapbox.rnmbx.events;

import android.view.View;
import com.facebook.react.bridge.WritableMap;
import com.rnmapbox.rnmbx.events.constants.EventKeys;

public class AndroidCallbackEvent extends AbstractEvent {
    private final WritableMap mPayload;

    @Override
    public boolean canCoalesce() {
        return false;
    }

    public AndroidCallbackEvent(View view, String str, WritableMap writableMap) {
        super(view, str);
        this.mPayload = writableMap;
    }

    @Override
    public String getKey() {
        return EventKeys.MAP_ANDROID_CALLBACK.getValue();
    }

    @Override
    public WritableMap getPayload() {
        return this.mPayload;
    }
}
