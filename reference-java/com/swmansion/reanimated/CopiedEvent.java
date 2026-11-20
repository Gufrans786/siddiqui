package com.swmansion.reanimated;

import com.facebook.react.bridge.WritableArray;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.uimanager.events.Event;
import com.facebook.react.uimanager.events.RCTEventEmitter;

public class CopiedEvent {
    private String eventName;
    private WritableMap payload;
    private int targetTag;

    CopiedEvent(Event event) {
        event.dispatch(new RCTEventEmitter() {
            @Override
            public void receiveTouches(String str, WritableArray writableArray, WritableArray writableArray2) {
            }

            @Override
            public void receiveEvent(int i, String str, WritableMap writableMap) {
                CopiedEvent.this.targetTag = i;
                CopiedEvent.this.eventName = str;
                CopiedEvent.this.payload = writableMap.copy();
            }
        });
    }

    public int getTargetTag() {
        return this.targetTag;
    }

    public String getEventName() {
        return this.eventName;
    }

    public WritableMap getPayload() {
        return this.payload;
    }
}
