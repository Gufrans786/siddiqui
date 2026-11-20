package com.dylanvann.fastimage.events;

import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.uimanager.events.Event;

public class FastImageLoadEndEvent extends Event<FastImageLoadEndEvent> {
    public FastImageLoadEndEvent(int i, int i2) {
        super(i, i2);
    }

    @Override
    public String getEventName() {
        return "onFastImageLoadEnd";
    }

    @Override
    protected WritableMap getEventData() {
        return Arguments.createMap();
    }
}
