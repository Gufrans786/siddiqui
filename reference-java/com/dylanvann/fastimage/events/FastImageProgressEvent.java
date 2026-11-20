package com.dylanvann.fastimage.events;

import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.uimanager.events.Event;

public class FastImageProgressEvent extends Event<FastImageProgressEvent> {
    private final int mBytesRead;
    private final int mExpectedLength;

    public FastImageProgressEvent(int i, int i2, int i3, int i4) {
        super(i, i2);
        this.mBytesRead = i3;
        this.mExpectedLength = i4;
    }

    @Override
    public String getEventName() {
        return "onFastImageProgress";
    }

    @Override
    protected WritableMap getEventData() {
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putInt("loaded", this.mBytesRead);
        writableMapCreateMap.putInt("total", this.mExpectedLength);
        return writableMapCreateMap;
    }
}
