package com.horcrux.svg.events;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.uimanager.PixelUtil;
import com.facebook.react.uimanager.events.Event;
import com.nimbusds.jose.jwk.JWKParameterNames;

public class SvgOnLayoutEvent extends Event<SvgOnLayoutEvent> {
    public static final String EVENT_NAME = "topSvgLayout";
    public int height;
    public int width;
    public int x;
    public int y;

    @Override
    public short getCoalescingKey() {
        return (short) 0;
    }

    public SvgOnLayoutEvent(int i, int i2, int i3, int i4, int i5, int i6) {
        super(i, i2);
        this.x = i3;
        this.y = i4;
        this.width = i5;
        this.height = i6;
    }

    @Override
    public String getMEventName() {
        return EVENT_NAME;
    }

    @Override
    protected WritableMap getEventData() {
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putDouble("x", PixelUtil.toDIPFromPixel(this.x));
        writableMapCreateMap.putDouble(JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE, PixelUtil.toDIPFromPixel(this.y));
        writableMapCreateMap.putDouble("width", PixelUtil.toDIPFromPixel(this.width));
        writableMapCreateMap.putDouble("height", PixelUtil.toDIPFromPixel(this.height));
        WritableMap writableMapCreateMap2 = Arguments.createMap();
        writableMapCreateMap2.putMap("layout", writableMapCreateMap);
        writableMapCreateMap2.putInt(TypedValues.AttributesType.S_TARGET, getViewTag());
        return writableMapCreateMap2;
    }
}
