package com.mapbox.maps;

import com.mapbox.bindgen.PartialEq;
import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.geojson.Point;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class CameraState implements Serializable {
    private final double bearing;
    private final Point center;
    private final EdgeInsets padding;
    private final double pitch;
    private final double zoom;

    public CameraState(Point point, EdgeInsets edgeInsets, double d, double d2, double d3) {
        this.center = point;
        this.padding = edgeInsets;
        this.zoom = d;
        this.bearing = d2;
        this.pitch = d3;
    }

    public Point getCenter() {
        return this.center;
    }

    public EdgeInsets getPadding() {
        return this.padding;
    }

    public double getZoom() {
        return this.zoom;
    }

    public double getBearing() {
        return this.bearing;
    }

    public double getPitch() {
        return this.pitch;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CameraState cameraState = (CameraState) obj;
        return Objects.equals(this.center, cameraState.center) && Objects.equals(this.padding, cameraState.padding) && PartialEq.compare(this.zoom, cameraState.zoom) && PartialEq.compare(this.bearing, cameraState.bearing) && PartialEq.compare(this.pitch, cameraState.pitch);
    }

    public int hashCode() {
        return Objects.hash(this.center, this.padding, Double.valueOf(this.zoom), Double.valueOf(this.bearing), Double.valueOf(this.pitch));
    }

    public String toString() {
        return "[center: " + RecordUtils.fieldToString(this.center) + ", padding: " + RecordUtils.fieldToString(this.padding) + ", zoom: " + RecordUtils.fieldToString(Double.valueOf(this.zoom)) + ", bearing: " + RecordUtils.fieldToString(Double.valueOf(this.bearing)) + ", pitch: " + RecordUtils.fieldToString(Double.valueOf(this.pitch)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
