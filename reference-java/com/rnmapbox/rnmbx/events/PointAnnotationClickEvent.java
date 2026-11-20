package com.rnmapbox.rnmbx.events;

import com.facebook.react.bridge.WritableMap;
import com.facebook.react.bridge.WritableNativeMap;
import com.mapbox.maps.ScreenCoordinate;
import com.rnmapbox.rnmbx.components.annotation.RNMBXPointAnnotation;
import com.rnmapbox.rnmbx.events.constants.EventKeys;
import com.rnmapbox.rnmbx.events.constants.EventTypes;
import com.rnmapbox.rnmbx.utils.GeoJSONUtils;
import com.rnmapbox.rnmbx.utils.LatLng;

public class PointAnnotationClickEvent extends MapClickEvent {
    private ScreenCoordinate mScreenPoint;
    private LatLng mTouchedLatLng;
    private RNMBXPointAnnotation mView;

    public PointAnnotationClickEvent(RNMBXPointAnnotation rNMBXPointAnnotation, LatLng latLng, ScreenCoordinate screenCoordinate, String str) {
        super(rNMBXPointAnnotation, latLng, screenCoordinate, str);
        this.mView = rNMBXPointAnnotation;
        this.mTouchedLatLng = latLng;
        this.mScreenPoint = screenCoordinate;
    }

    @Override
    public String getKey() {
        return (getMEventType().equals(EventTypes.ANNOTATION_SELECTED) ? EventKeys.POINT_ANNOTATION_SELECTED : EventKeys.POINT_ANNOTATION_DESELECTED).getValue();
    }

    @Override
    public WritableMap getPayload() {
        WritableNativeMap writableNativeMap = new WritableNativeMap();
        writableNativeMap.putString("id", this.mView.getID());
        writableNativeMap.putDouble("screenPointX", this.mScreenPoint.getX());
        writableNativeMap.putDouble("screenPointY", this.mScreenPoint.getY());
        return GeoJSONUtils.toPointFeature(this.mTouchedLatLng, writableNativeMap);
    }
}
