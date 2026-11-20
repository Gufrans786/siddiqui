package com.dylanvann.fastimage.events;

import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.uimanager.events.Event;

public class FastImageLoadStartEvent extends Event<FastImageLoadStartEvent> {
    public FastImageLoadStartEvent(int i, int i2) {
        super(i, i2);
    }

    @Override
    public String getEventName() {
        return "onFastImageLoadStart";
    }

    @Override
    protected WritableMap getEventData() {
        return Arguments.createMap();
    }
}
