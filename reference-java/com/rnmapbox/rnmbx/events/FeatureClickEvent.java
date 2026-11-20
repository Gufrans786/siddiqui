package com.rnmapbox.rnmbx.events;

import android.graphics.PointF;
import android.view.View;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableArray;
import com.facebook.react.bridge.WritableMap;
import com.mapbox.geojson.Feature;
import com.nimbusds.jose.jwk.JWKParameterNames;
import com.rnmapbox.rnmbx.components.styles.sources.RNMBXSource;
import com.rnmapbox.rnmbx.events.constants.EventKeys;
import com.rnmapbox.rnmbx.events.constants.EventTypes;
import com.rnmapbox.rnmbx.utils.GeoJSONUtils;
import com.rnmapbox.rnmbx.utils.LatLng;
import com.transistorsoft.locationmanager.geofence.TSGeofence;
import java.util.Iterator;
import java.util.List;

public class FeatureClickEvent extends AbstractEvent {
    private String mEventKey;
    private List<Feature> mFeatures;
    private LatLng mLatLng;
    private PointF mPoint;

    public FeatureClickEvent(View view, String str, String str2, List<Feature> list, LatLng latLng, PointF pointF) {
        super(view, str2);
        this.mFeatures = list;
        this.mEventKey = str;
        this.mLatLng = latLng;
        this.mPoint = pointF;
    }

    @Override
    public String getKey() {
        return this.mEventKey;
    }

    @Override
    public WritableMap getPayload() {
        WritableMap writableMapCreateMap = Arguments.createMap();
        WritableArray writableArrayCreateArray = Arguments.createArray();
        Iterator<Feature> it = this.mFeatures.iterator();
        while (it.hasNext()) {
            writableArrayCreateArray.pushMap(GeoJSONUtils.fromFeature(it.next()));
        }
        writableMapCreateMap.putArray("features", writableArrayCreateArray);
        WritableMap writableMapCreateMap2 = Arguments.createMap();
        writableMapCreateMap2.putDouble(TSGeofence.FIELD_LATITUDE, this.mLatLng.getLatitude());
        writableMapCreateMap2.putDouble(TSGeofence.FIELD_LONGITUDE, this.mLatLng.getLongitude());
        writableMapCreateMap.putMap("coordinates", writableMapCreateMap2);
        WritableMap writableMapCreateMap3 = Arguments.createMap();
        writableMapCreateMap3.putDouble("x", this.mPoint.x);
        writableMapCreateMap3.putDouble(JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE, this.mPoint.y);
        writableMapCreateMap.putMap("point", writableMapCreateMap3);
        return writableMapCreateMap;
    }

    public static FeatureClickEvent makeShapeSourceEvent(View view, RNMBXSource.OnPressEvent onPressEvent) {
        return new FeatureClickEvent(view, EventKeys.SHAPE_SOURCE_LAYER_CLICK.getValue(), EventTypes.SHAPE_SOURCE_LAYER_CLICK, onPressEvent.getFeatures(), onPressEvent.getLatLng(), onPressEvent.getScreenPoint());
    }

    public static FeatureClickEvent makeVectorSourceEvent(View view, RNMBXSource.OnPressEvent onPressEvent) {
        return new FeatureClickEvent(view, EventKeys.VECTOR_SOURCE_LAYER_CLICK.getValue(), EventTypes.VECTOR_SOURCE_LAYER_CLICK, onPressEvent.getFeatures(), onPressEvent.getLatLng(), onPressEvent.getScreenPoint());
    }

    public static FeatureClickEvent makeRasterSourceEvent(View view, RNMBXSource.OnPressEvent onPressEvent) {
        return new FeatureClickEvent(view, EventKeys.RASTER_SOURCE_LAYER_CLICK.getValue(), EventTypes.RASTER_SOURCE_LAYER_CLICK, onPressEvent.getFeatures(), onPressEvent.getLatLng(), onPressEvent.getScreenPoint());
    }
}
