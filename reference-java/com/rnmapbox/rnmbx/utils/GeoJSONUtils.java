package com.rnmapbox.rnmbx.utils;

import android.location.Location;
import com.caverock.androidsvg.SVGParser;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.WritableArray;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.bridge.WritableNativeArray;
import com.facebook.react.bridge.WritableNativeMap;
import com.google.gson.JsonObject;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.geojson.Geometry;
import com.mapbox.geojson.GeometryCollection;
import com.mapbox.geojson.LineString;
import com.mapbox.geojson.MultiLineString;
import com.mapbox.geojson.MultiPolygon;
import com.mapbox.geojson.Point;
import com.mapbox.geojson.Polygon;
import com.mapbox.maps.CameraBounds;
import com.mapbox.maps.CoordinateBounds;
import com.mapbox.maps.extension.style.light.LightUtils;
import com.mapbox.turf.TurfMeasurement;
import com.rnmapbox.rnmbx.utils.extensions.PointKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0013\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\nJ\u0018\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0018\u0010\t\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0016\u0010\u0013\u001a\u00020\u000f2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015H\u0002J\u0016\u0010\u0017\u001a\u00020\u000f2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00120\u0015H\u0002J\u001c\u0010\u0019\u001a\u00020\u000f2\u0012\u0010\u0018\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u00150\u0015H\u0002J\"\u0010\u001a\u001a\u00020\u000f2\u0018\u0010\u0018\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u00150\u00150\u0015H\u0002J\u001a\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0005H\u0007J\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J\u000e\u0010 \u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001dJ\u000e\u0010!\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u001dJ\u000e\u0010\"\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u0012J\u0012\u0010\"\u001a\u0004\u0018\u00010\u001d2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0016J\u0014\u0010 \u001a\u0004\u0018\u00010\u00122\b\u0010#\u001a\u0004\u0018\u00010\rH\u0007J\u000e\u0010$\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020&J\u000e\u0010'\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020(J\u000e\u0010)\u001a\u00020\u000f2\u0006\u0010*\u001a\u00020+J\u000e\u0010,\u001a\u00020-2\u0006\u0010*\u001a\u00020+J\u0018\u0010.\u001a\u00020/2\u000e\u00100\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0015H\u0002J\u0010\u00101\u001a\u00020+2\u0006\u00102\u001a\u000203H\u0007J\u0014\u00104\u001a\u0004\u0018\u0001052\b\u00106\u001a\u0004\u0018\u00010\u0016H\u0007J\u0010\u00107\u001a\u0002082\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0010\u00109\u001a\u00020\u00122\u0006\u0010:\u001a\u00020;H\u0007J\u0010\u0010<\u001a\u00020;2\u0006\u0010\u0011\u001a\u00020\u0012H\u0007R\u000e\u0010=\u001a\u00020\rX\u0086T¢\u0006\u0002\n\u0000¨\u0006>"}, d2 = {"Lcom/rnmapbox/rnmbx/utils/GeoJSONUtils;", "", "<init>", "()V", "fromFeature", "Lcom/facebook/react/bridge/WritableMap;", "feature", "Lcom/mapbox/geojson/Feature;", "fromGeometry", "geometry", "Lcom/mapbox/geojson/Geometry;", "multiGeometry", SVGParser.XML_STYLESHEET_ATTR_TYPE, "", "geometries", "Lcom/facebook/react/bridge/WritableArray;", "coordinates", "point", "Lcom/mapbox/geojson/Point;", "fromList", "items", "", "Lcom/facebook/react/bridge/ReadableArray;", "coordinatesL", "points", "coordinatesLL", "coordinatesLLL", "toPointFeature", "latLng", "Lcom/rnmapbox/rnmbx/utils/LatLng;", LightUtils.LIGHT_PROPERTIES, "toGNPointGeometry", "toPointGeometry", "fromLatLng", "toLatLng", "featureJSONString", "fromCoordinateBounds", "bounds", "Lcom/mapbox/maps/CoordinateBounds;", "fromCameraBounds", "Lcom/mapbox/maps/CameraBounds;", "fromLatLngBounds", "latLngBounds", "Lcom/rnmapbox/rnmbx/utils/LatLngBounds;", "fromLatLngBoundsToPolygon", "Lcom/mapbox/geojson/Polygon;", "toGeometryCollection", "Lcom/mapbox/geojson/GeometryCollection;", "features", "toLatLngBounds", "featureCollection", "Lcom/mapbox/geojson/FeatureCollection;", "toLatLngQuad", "Lcom/rnmapbox/rnmbx/utils/LatLngQuad;", "array", "pointToDoubleArray", "", "toPoint", "location", "Landroid/location/Location;", "toLocation", "LOG_TAG", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GeoJSONUtils {
    public static final GeoJSONUtils INSTANCE = new GeoJSONUtils();
    public static final String LOG_TAG = "GeoJSONUtils";

    private GeoJSONUtils() {
    }

    @JvmStatic
    public static final WritableMap fromFeature(Feature feature) {
        Intrinsics.checkNotNullParameter(feature, "feature");
        WritableMap writableMapCreateMap = Arguments.createMap();
        Intrinsics.checkNotNullExpressionValue(writableMapCreateMap, "createMap(...)");
        writableMapCreateMap.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, "Feature");
        writableMapCreateMap.putString("id", feature.id());
        Geometry geometry = feature.geometry();
        if (geometry != null) {
            writableMapCreateMap.putMap("geometry", INSTANCE.fromGeometry(geometry));
        } else {
            Logger.INSTANCE.w(LOG_TAG, "GeoJSONUtils.fromFeature geometry was null for feature: " + feature.toJson());
        }
        JsonObject jsonObjectProperties = feature.properties();
        if (jsonObjectProperties != null) {
            writableMapCreateMap.putMap(LightUtils.LIGHT_PROPERTIES, ConvertUtils.INSTANCE.toWritableMap(jsonObjectProperties));
        }
        return writableMapCreateMap;
    }

    public final WritableMap fromGeometry(Geometry geometry) {
        WritableArray writableArrayCoordinatesLLL;
        Intrinsics.checkNotNullParameter(geometry, "geometry");
        String strType = geometry.type();
        if (strType != null) {
            switch (strType.hashCode()) {
                case -2116761119:
                    if (strType.equals("MultiPolygon")) {
                        List<List<List<Point>>> listCoordinates = ((MultiPolygon) geometry).coordinates();
                        Intrinsics.checkNotNullExpressionValue(listCoordinates, "coordinates(...)");
                        writableArrayCoordinatesLLL = coordinatesLLL(listCoordinates);
                        return geometry(strType, writableArrayCoordinatesLLL);
                    }
                    break;
                case -627102946:
                    if (strType.equals("MultiLineString")) {
                        List<List<Point>> listCoordinates2 = ((MultiLineString) geometry).coordinates();
                        Intrinsics.checkNotNullExpressionValue(listCoordinates2, "coordinates(...)");
                        writableArrayCoordinatesLLL = coordinatesLL(listCoordinates2);
                        return geometry(strType, writableArrayCoordinatesLLL);
                    }
                    break;
                case 77292912:
                    if (strType.equals("Point")) {
                        writableArrayCoordinatesLLL = coordinates((Point) geometry);
                        return geometry(strType, writableArrayCoordinatesLLL);
                    }
                    break;
                case 1267133722:
                    if (strType.equals("Polygon")) {
                        List<List<Point>> listCoordinates3 = ((Polygon) geometry).coordinates();
                        Intrinsics.checkNotNullExpressionValue(listCoordinates3, "coordinates(...)");
                        writableArrayCoordinatesLLL = coordinatesLL(listCoordinates3);
                        return geometry(strType, writableArrayCoordinatesLLL);
                    }
                    break;
                case 1806700869:
                    if (strType.equals("LineString")) {
                        List<Point> listCoordinates4 = ((LineString) geometry).coordinates();
                        Intrinsics.checkNotNullExpressionValue(listCoordinates4, "coordinates(...)");
                        writableArrayCoordinatesLLL = coordinatesL(listCoordinates4);
                        return geometry(strType, writableArrayCoordinatesLLL);
                    }
                    break;
                case 1950410960:
                    if (strType.equals("GeometryCollection")) {
                        List<Geometry> listGeometries = ((GeometryCollection) geometry).geometries();
                        Intrinsics.checkNotNullExpressionValue(listGeometries, "geometries(...)");
                        List<Geometry> list = listGeometries;
                        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                        for (Geometry geometry2 : list) {
                            GeoJSONUtils geoJSONUtils = INSTANCE;
                            Intrinsics.checkNotNull(geometry2);
                            arrayList.add(geoJSONUtils.fromGeometry(geometry2));
                        }
                        WritableArray writableArrayFromList = Arguments.fromList(arrayList);
                        Intrinsics.checkNotNullExpressionValue(writableArrayFromList, "fromList(...)");
                        return multiGeometry(strType, writableArrayFromList);
                    }
                    break;
            }
        }
        Logger.INSTANCE.w(LOG_TAG, "GeoJSONUtils.fromGeometry unsupported type:" + strType);
        return null;
    }

    private final WritableMap multiGeometry(String type, WritableArray geometries) {
        WritableMap writableMapCreateMap = Arguments.createMap();
        Intrinsics.checkNotNullExpressionValue(writableMapCreateMap, "createMap(...)");
        writableMapCreateMap.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, type);
        writableMapCreateMap.putArray("geometries", geometries);
        return writableMapCreateMap;
    }

    private final WritableMap geometry(String type, WritableArray coordinates) {
        WritableMap writableMapCreateMap = Arguments.createMap();
        Intrinsics.checkNotNullExpressionValue(writableMapCreateMap, "createMap(...)");
        writableMapCreateMap.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, type);
        writableMapCreateMap.putArray("coordinates", coordinates);
        return writableMapCreateMap;
    }

    private final WritableArray coordinates(Point point) {
        WritableArray writableArrayFromArray = Arguments.fromArray(pointToDoubleArray(point));
        Intrinsics.checkNotNullExpressionValue(writableArrayFromArray, "fromArray(...)");
        return writableArrayFromArray;
    }

    private final WritableArray fromList(List<? extends ReadableArray> items) {
        WritableNativeArray writableNativeArray = new WritableNativeArray();
        Iterator<T> it = items.iterator();
        while (it.hasNext()) {
            writableNativeArray.pushArray((ReadableArray) it.next());
        }
        return writableNativeArray;
    }

    private final WritableArray coordinatesL(List<Point> points) {
        List<Point> list = points;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(PointKt.toReadableArray((Point) it.next()));
        }
        return fromList(arrayList);
    }

    private final WritableArray coordinatesLL(List<? extends List<Point>> points) {
        List<? extends List<Point>> list = points;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(INSTANCE.coordinatesL((List) it.next()));
        }
        return fromList(arrayList);
    }

    private final WritableArray coordinatesLLL(List<? extends List<? extends List<Point>>> points) {
        List<? extends List<? extends List<Point>>> list = points;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(INSTANCE.coordinatesLL((List) it.next()));
        }
        return fromList(arrayList);
    }

    @JvmStatic
    public static final WritableMap toPointFeature(LatLng latLng, WritableMap properties) {
        Intrinsics.checkNotNullParameter(latLng, "latLng");
        WritableNativeMap writableNativeMap = new WritableNativeMap();
        writableNativeMap.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, "Feature");
        writableNativeMap.putMap("geometry", INSTANCE.toPointGeometry(latLng));
        if (properties != null && properties.hasKey("id")) {
            writableNativeMap.putString("id", properties.getString("id"));
        }
        writableNativeMap.putMap(LightUtils.LIGHT_PROPERTIES, properties);
        return writableNativeMap;
    }

    @JvmStatic
    public static final Point toGNPointGeometry(LatLng latLng) {
        Intrinsics.checkNotNullParameter(latLng, "latLng");
        return Point.fromLngLat(latLng.getLongitude(), latLng.getLatitude());
    }

    public final WritableMap toPointGeometry(LatLng latLng) {
        Intrinsics.checkNotNullParameter(latLng, "latLng");
        WritableNativeMap writableNativeMap = new WritableNativeMap();
        writableNativeMap.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, "Point");
        writableNativeMap.putArray("coordinates", fromLatLng(latLng));
        return writableNativeMap;
    }

    public final WritableArray fromLatLng(LatLng latLng) {
        Intrinsics.checkNotNullParameter(latLng, "latLng");
        double[] dArr = {latLng.getLongitude(), latLng.getLatitude()};
        WritableNativeArray writableNativeArray = new WritableNativeArray();
        writableNativeArray.pushDouble(dArr[0]);
        writableNativeArray.pushDouble(dArr[1]);
        return writableNativeArray;
    }

    public final LatLng toLatLng(Point point) {
        Intrinsics.checkNotNullParameter(point, "point");
        return new LatLng(point.latitude(), point.longitude());
    }

    public final LatLng toLatLng(ReadableArray coordinates) {
        if (coordinates == null || coordinates.size() < 2) {
            return null;
        }
        return new LatLng(coordinates.getDouble(1), coordinates.getDouble(0));
    }

    @JvmStatic
    public static final Point toPointGeometry(String featureJSONString) {
        Intrinsics.checkNotNull(featureJSONString);
        Feature featureFromJson = Feature.fromJson(featureJSONString);
        if (featureFromJson == null) {
            return null;
        }
        return (Point) featureFromJson.geometry();
    }

    public final WritableArray fromCoordinateBounds(CoordinateBounds bounds) {
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        WritableArray writableArrayCreateArray = Arguments.createArray();
        Intrinsics.checkNotNullExpressionValue(writableArrayCreateArray, "createArray(...)");
        Point northeast = bounds.getNortheast();
        Intrinsics.checkNotNullExpressionValue(northeast, "getNortheast(...)");
        Point southwest = bounds.getSouthwest();
        Intrinsics.checkNotNullExpressionValue(southwest, "getSouthwest(...)");
        writableArrayCreateArray.pushArray(fromLatLng(new LatLng(northeast.latitude(), northeast.longitude())));
        writableArrayCreateArray.pushArray(fromLatLng(new LatLng(southwest.latitude(), southwest.longitude())));
        return writableArrayCreateArray;
    }

    public final WritableArray fromCameraBounds(CameraBounds bounds) {
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        CoordinateBounds bounds2 = bounds.getBounds();
        Intrinsics.checkNotNullExpressionValue(bounds2, "getBounds(...)");
        return fromCoordinateBounds(bounds2);
    }

    public final WritableArray fromLatLngBounds(LatLngBounds latLngBounds) {
        Intrinsics.checkNotNullParameter(latLngBounds, "latLngBounds");
        WritableArray writableArrayCreateArray = Arguments.createArray();
        Intrinsics.checkNotNullExpressionValue(writableArrayCreateArray, "createArray(...)");
        for (LatLng latLng : latLngBounds.toLatLngs()) {
            writableArrayCreateArray.pushArray(fromLatLng(latLng));
        }
        return writableArrayCreateArray;
    }

    public final Polygon fromLatLngBoundsToPolygon(LatLngBounds latLngBounds) {
        Intrinsics.checkNotNullParameter(latLngBounds, "latLngBounds");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(Point.fromLngLat(latLngBounds.getLonEast(), latLngBounds.getLatNorth()));
        arrayList2.add(Point.fromLngLat(latLngBounds.getLonEast(), latLngBounds.getLatSouth()));
        arrayList2.add(Point.fromLngLat(latLngBounds.getLonWest(), latLngBounds.getLatSouth()));
        arrayList2.add(Point.fromLngLat(latLngBounds.getLonWest(), latLngBounds.getLatNorth()));
        arrayList2.add(Point.fromLngLat(latLngBounds.getLonEast(), latLngBounds.getLatNorth()));
        arrayList.add(arrayList2);
        Polygon polygonFromLngLats = Polygon.fromLngLats(arrayList);
        Intrinsics.checkNotNullExpressionValue(polygonFromLngLats, "fromLngLats(...)");
        return polygonFromLngLats;
    }

    private final GeometryCollection toGeometryCollection(List<Feature> features) {
        ArrayList arrayList = new ArrayList();
        Intrinsics.checkNotNull(features);
        arrayList.ensureCapacity(features.size());
        Iterator<Feature> it = features.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().geometry());
        }
        GeometryCollection geometryCollectionFromGeometries = GeometryCollection.fromGeometries(arrayList);
        Intrinsics.checkNotNullExpressionValue(geometryCollectionFromGeometries, "fromGeometries(...)");
        return geometryCollectionFromGeometries;
    }

    @JvmStatic
    public static final LatLngBounds toLatLngBounds(FeatureCollection featureCollection) {
        Intrinsics.checkNotNullParameter(featureCollection, "featureCollection");
        double[] dArrBbox = TurfMeasurement.bbox((Geometry) INSTANCE.toGeometryCollection(featureCollection.features()));
        return LatLngBounds.INSTANCE.from(dArrBbox[3], dArrBbox[2], dArrBbox[1], dArrBbox[0]);
    }

    @JvmStatic
    public static final LatLngQuad toLatLngQuad(ReadableArray array) {
        if (array == null || array.size() < 4) {
            return null;
        }
        GeoJSONUtils geoJSONUtils = INSTANCE;
        return new LatLngQuad(geoJSONUtils.toLatLng(array.getArray(0)), geoJSONUtils.toLatLng(array.getArray(1)), geoJSONUtils.toLatLng(array.getArray(2)), geoJSONUtils.toLatLng(array.getArray(3)));
    }

    public final double[] pointToDoubleArray(Point point) {
        if (point == null) {
            return new double[]{0.0d, 0.0d};
        }
        return new double[]{point.longitude(), point.latitude()};
    }

    @JvmStatic
    public static final Point toPoint(Location location) {
        Intrinsics.checkNotNullParameter(location, "location");
        Point pointFromLngLat = Point.fromLngLat(location.getLongitude(), location.getLatitude());
        Intrinsics.checkNotNullExpressionValue(pointFromLngLat, "fromLngLat(...)");
        return pointFromLngLat;
    }

    @JvmStatic
    public static final Location toLocation(Point point) {
        Intrinsics.checkNotNullParameter(point, "point");
        Location location = new Location("gps");
        location.setLatitude(point.latitude());
        location.setLongitude(point.longitude());
        if (point.hasAltitude()) {
            location.setAltitude(point.altitude());
        }
        return location;
    }
}
