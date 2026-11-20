package com.rnmapbox.rnmbx.events;

import android.view.View;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.bridge.WritableNativeMap;
import com.rnmapbox.rnmbx.events.constants.EventKeys;
import com.rnmapbox.rnmbx.events.constants.EventTypes;

public class ImageMissingEvent extends AbstractEvent {
    private String mEventKey;
    private String mImageKey;

    @Override
    public boolean canCoalesce() {
        return false;
    }

    public ImageMissingEvent(View view, String str, String str2, String str3) {
        super(view, str2);
        this.mImageKey = str3;
        this.mEventKey = str;
    }

    @Override
    public String getKey() {
        return this.mEventKey;
    }

    @Override
    public WritableMap getPayload() {
        WritableNativeMap writableNativeMap = new WritableNativeMap();
        writableNativeMap.putString("imageKey", this.mImageKey);
        return writableNativeMap;
    }

    public static ImageMissingEvent makeImageMissingEvent(View view, String str) {
        return new ImageMissingEvent(view, EventKeys.IMAGES_MISSING.getValue(), EventTypes.IMAGES_MISSING, str);
    }
}
