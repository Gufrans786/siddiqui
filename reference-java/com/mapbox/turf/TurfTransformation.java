package com.mapbox.turf;

import com.mapbox.geojson.Point;
import com.mapbox.geojson.Polygon;
import java.util.ArrayList;
import java.util.List;

public final class TurfTransformation {
    private static final int DEFAULT_STEPS = 64;
    private static final boolean SIMPLIFY_DEFAULT_HIGH_QUALITY = false;
    private static final double SIMPLIFY_DEFAULT_TOLERANCE = 1.0d;

    private TurfTransformation() {
    }

    public static Polygon circle(Point point, double d) {
        return circle(point, d, 64, "kilometers");
    }

    public static Polygon circle(Point point, double d, String str) {
        return circle(point, d, 64, str);
    }

    public static Polygon circle(Point point, double d, int i, String str) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(TurfMeasurement.destination(point, d, (((double) i2) * 360.0d) / ((double) i), str));
        }
        if (arrayList.size() > 0) {
            arrayList.add((Point) arrayList.get(0));
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(arrayList);
        return Polygon.fromLngLats(arrayList2);
    }

    public static List<Point> simplify(List<Point> list) {
        return simplify(list, 1.0d, false);
    }

    public static List<Point> simplify(List<Point> list, double d) {
        return simplify(list, d, false);
    }

    public static List<Point> simplify(List<Point> list, boolean z) {
        return simplify(list, 1.0d, z);
    }

    public static List<Point> simplify(List<Point> list, double d, boolean z) {
        if (list.size() <= 2) {
            return list;
        }
        double d2 = d * d;
        if (!z) {
            list = simplifyRadial(list, d2);
        }
        return simplifyDouglasPeucker(list, d2);
    }

    private static List<Point> simplifyRadial(List<Point> list, double d) {
        if (list.size() <= 2) {
            return list;
        }
        Point point = list.get(0);
        ArrayList arrayList = new ArrayList();
        arrayList.add(point);
        Point point2 = list.get(1);
        for (int i = 1; i < list.size(); i++) {
            point2 = list.get(i);
            if (squaredDistance(point2, point) > d) {
                arrayList.add(point2);
                point = point2;
            }
        }
        if (point != point2) {
            arrayList.add(point2);
        }
        return arrayList;
    }

    private static double squaredDistance(Point point, Point point2) {
        double dLongitude = point2.longitude() - point.longitude();
        double dLatitude = point2.latitude() - point.latitude();
        return (dLongitude * dLongitude) + (dLatitude * dLatitude);
    }

    private static List<Point> simplifyDouglasPeucker(List<Point> list, double d) {
        if (list.size() <= 2) {
            return list;
        }
        int size = list.size() - 1;
        ArrayList arrayList = new ArrayList();
        arrayList.add(list.get(0));
        simplifyDouglasPeuckerStep(list, 0, size, d, arrayList);
        arrayList.add(list.get(size));
        return arrayList;
    }

    private static void simplifyDouglasPeuckerStep(List<Point> list, int i, int i2, double d, List<Point> list2) {
        int i3 = 0;
        double d2 = d;
        for (int i4 = i + 1; i4 < i2; i4++) {
            double dSquaredSegmentDistance = squaredSegmentDistance(list.get(i4), list.get(i), list.get(i2));
            if (dSquaredSegmentDistance > d2) {
                i3 = i4;
                d2 = dSquaredSegmentDistance;
            }
        }
        if (d2 > d) {
            if (i3 - i > 1) {
                simplifyDouglasPeuckerStep(list, i, i3, d, list2);
            }
            int i5 = i3;
            list2.add(list.get(i5));
            if (i2 - i5 > 1) {
                simplifyDouglasPeuckerStep(list, i5, i2, d, list2);
            }
        }
    }

    private static double squaredSegmentDistance(Point point, Point point2, Point point3) {
        double dLatitude = point2.latitude();
        double dLongitude = point2.longitude();
        double dLatitude2 = point3.latitude() - dLatitude;
        double dLongitude2 = point3.longitude() - dLongitude;
        if (dLatitude2 != 0.0d || dLongitude2 != 0.0d) {
            double dLatitude3 = (((point.latitude() - dLatitude) * dLatitude2) + ((point.longitude() - dLongitude) * dLongitude2)) / ((dLatitude2 * dLatitude2) + (dLongitude2 * dLongitude2));
            if (dLatitude3 > 1.0d) {
                dLatitude = point3.latitude();
                dLongitude = point3.longitude();
            } else if (dLatitude3 > 0.0d) {
                dLatitude += dLatitude2 * dLatitude3;
                dLongitude += dLongitude2 * dLatitude3;
            }
        }
        double dLatitude4 = point.latitude() - dLatitude;
        double dLongitude3 = point.longitude() - dLongitude;
        return (dLatitude4 * dLatitude4) + (dLongitude3 * dLongitude3);
    }
}
