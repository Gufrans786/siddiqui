package com.dylanvann.fastimage.events;

import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.uimanager.events.Event;

public class FastImageLoadEvent extends Event<FastImageLoadEvent> {
    private final int height;
    private final int width;

    public FastImageLoadEvent(int i, int i2, int i3, int i4) {
        super(i, i2);
        this.width = i3;
        this.height = i4;
    }

    @Override
    public String getEventName() {
        return "onFastImageLoad";
    }

    @Override
    protected WritableMap getEventData() {
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putInt("width", this.width);
        writableMapCreateMap.putInt("height", this.height);
        return writableMapCreateMap;
    }
}
