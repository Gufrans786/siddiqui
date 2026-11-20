package com.rnmapbox.rnmbx.events;

import android.view.View;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.bridge.WritableNativeMap;
import com.mapbox.maps.ScreenCoordinate;
import com.rnmapbox.rnmbx.events.constants.EventKeys;
import com.rnmapbox.rnmbx.events.constants.EventTypes;
import com.rnmapbox.rnmbx.utils.GeoJSONUtils;
import com.rnmapbox.rnmbx.utils.LatLng;

public class MapClickEvent extends AbstractEvent {
    private ScreenCoordinate mScreenPoint;
    private LatLng mTouchedLatLng;

    public MapClickEvent(View view, LatLng latLng, ScreenCoordinate screenCoordinate) {
        this(view, latLng, screenCoordinate, EventTypes.MAP_CLICK);
    }

    public MapClickEvent(View view, LatLng latLng, ScreenCoordinate screenCoordinate, String str) {
        super(view, str);
        this.mTouchedLatLng = latLng;
        this.mScreenPoint = screenCoordinate;
    }

    @Override
    public String getKey() {
        if (getMEventType().equals(EventTypes.MAP_LONG_CLICK)) {
            return EventKeys.MAP_LONG_CLICK.getValue();
        }
        return EventKeys.MAP_CLICK.getValue();
    }

    @Override
    public WritableMap getPayload() {
        WritableNativeMap writableNativeMap = new WritableNativeMap();
        writableNativeMap.putDouble("screenPointX", this.mScreenPoint.getX());
        writableNativeMap.putDouble("screenPointY", this.mScreenPoint.getY());
        return GeoJSONUtils.toPointFeature(this.mTouchedLatLng, writableNativeMap);
    }
}
