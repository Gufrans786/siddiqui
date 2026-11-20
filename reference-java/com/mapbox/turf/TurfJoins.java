package com.mapbox.turf;

import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.geojson.MultiPolygon;
import com.mapbox.geojson.Point;
import com.mapbox.geojson.Polygon;
import java.util.ArrayList;
import java.util.List;

public final class TurfJoins {
    private TurfJoins() {
    }

    public static boolean inside(Point point, Polygon polygon) {
        List<List<Point>> listCoordinates = polygon.coordinates();
        ArrayList arrayList = new ArrayList();
        arrayList.add(listCoordinates);
        return inside(point, MultiPolygon.fromLngLats(arrayList));
    }

    public static boolean inside(Point point, MultiPolygon multiPolygon) {
        List<List<List<Point>>> listCoordinates = multiPolygon.coordinates();
        boolean z = false;
        for (int i = 0; i < listCoordinates.size() && !z; i++) {
            if (inRing(point, listCoordinates.get(i).get(0))) {
                boolean z2 = false;
                for (int i2 = 1; i2 < listCoordinates.get(i).size() && !z2; i2++) {
                    if (inRing(point, listCoordinates.get(i).get(i2))) {
                        z2 = true;
                    }
                }
                if (!z2) {
                    z = true;
                }
            }
        }
        return z;
    }

    public static FeatureCollection pointsWithinPolygon(FeatureCollection featureCollection, FeatureCollection featureCollection2) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < featureCollection2.features().size(); i++) {
            for (int i2 = 0; i2 < featureCollection.features().size(); i2++) {
                Point point = (Point) featureCollection.features().get(i2).geometry();
                if (inside(point, (Polygon) featureCollection2.features().get(i).geometry())) {
                    arrayList.add(Feature.fromGeometry(point));
                }
            }
        }
        return FeatureCollection.fromFeatures(arrayList);
    }

    private static boolean inRing(Point point, List<Point> list) {
        int size = list.size() - 1;
        boolean z = false;
        for (int i = 0; i < list.size(); i++) {
            double dLongitude = list.get(i).longitude();
            double dLatitude = list.get(i).latitude();
            double dLongitude2 = list.get(size).longitude();
            double dLatitude2 = list.get(size).latitude();
            if ((dLatitude > point.latitude()) != (dLatitude2 > point.latitude()) && point.longitude() < (((dLongitude2 - dLongitude) * (point.latitude() - dLatitude)) / (dLatitude2 - dLatitude)) + dLongitude) {
                z = !z;
            }
            size = i;
        }
        return z;
    }
}
