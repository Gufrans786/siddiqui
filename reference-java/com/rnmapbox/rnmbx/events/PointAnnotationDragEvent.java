package com.rnmapbox.rnmbx.events;

import android.graphics.PointF;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.bridge.WritableNativeMap;
import com.mapbox.maps.ScreenCoordinate;
import com.rnmapbox.rnmbx.components.annotation.RNMBXPointAnnotation;
import com.rnmapbox.rnmbx.events.constants.EventKeys;
import com.rnmapbox.rnmbx.events.constants.EventTypes;
import com.rnmapbox.rnmbx.utils.GeoJSONUtils;
import com.rnmapbox.rnmbx.utils.LatLng;

public class PointAnnotationDragEvent extends MapClickEvent {
    private PointF mScreenPoint;
    private LatLng mTouchedLatLng;
    RNMBXPointAnnotation mView;

    public PointAnnotationDragEvent(RNMBXPointAnnotation rNMBXPointAnnotation, LatLng latLng, PointF pointF, String str) {
        super(rNMBXPointAnnotation, latLng, new ScreenCoordinate(pointF.x, pointF.y), str);
        this.mView = rNMBXPointAnnotation;
        this.mTouchedLatLng = latLng;
        this.mScreenPoint = pointF;
    }

    @Override
    public String getKey() {
        String type = getMEventType();
        if (type.equals(EventTypes.ANNOTATION_DRAG_START)) {
            return EventKeys.POINT_ANNOTATION_DRAG_START.getValue();
        }
        if (type.equals(EventTypes.ANNOTATION_DRAG_END)) {
            return EventKeys.POINT_ANNOTATION_DRAG_END.getValue();
        }
        return EventKeys.POINT_ANNOTATION_DRAG.getValue();
    }

    @Override
    public WritableMap getPayload() {
        WritableNativeMap writableNativeMap = new WritableNativeMap();
        writableNativeMap.putDouble("screenPointX", this.mScreenPoint.x);
        writableNativeMap.putDouble("screenPointY", this.mScreenPoint.y);
        WritableMap pointFeature = GeoJSONUtils.toPointFeature(this.mTouchedLatLng, writableNativeMap);
        pointFeature.putString("id", this.mView.getID());
        return pointFeature;
    }
}
