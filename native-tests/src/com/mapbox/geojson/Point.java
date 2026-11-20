package com.mapbox.geojson;
public final class Point {
    private double lat, lng;
    public static Point fromLngLat(double lng, double lat) {
        Point point = new Point(); point.lat=lat; point.lng=lng; return point;
    }
    public double latitude() { return lat; }
    public double longitude() { return lng; }
}
