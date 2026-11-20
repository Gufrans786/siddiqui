package com.horcrux.svg.events;

import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.uimanager.events.Event;
import com.facebook.react.uimanager.events.RCTEventEmitter;
import com.facebook.react.views.imagehelper.ImageSource;
import com.mapbox.maps.plugin.locationcomponent.ModelSourceWrapper;

public class SvgLoadEvent extends Event<SvgLoadEvent> {
    public static final String EVENT_NAME = "topLoad";
    private final float height;
    private final String uri;
    private final float width;

    @Override
    public short getCoalescingKey() {
        return (short) 0;
    }

    public SvgLoadEvent(int i, int i2, ReactContext reactContext, String str, float f, float f2) {
        super(i, i2);
        this.uri = new ImageSource(reactContext, str).getSource();
        this.width = f;
        this.height = f2;
    }

    @Override
    public String getMEventName() {
        return EVENT_NAME;
    }

    @Override
    public void dispatch(RCTEventEmitter rCTEventEmitter) {
        rCTEventEmitter.receiveEvent(getViewTag(), getMEventName(), getEventData());
    }

    @Override
    protected WritableMap getEventData() {
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putDouble("width", this.width);
        writableMapCreateMap.putDouble("height", this.height);
        writableMapCreateMap.putString(ModelSourceWrapper.URL, this.uri);
        WritableMap writableMapCreateMap2 = Arguments.createMap();
        writableMapCreateMap2.putMap("source", writableMapCreateMap);
        return writableMapCreateMap2;
    }
}
