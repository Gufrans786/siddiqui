package com.mapbox.maps;

import com.mapbox.bindgen.PartialEq;
import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class CoordinateBoundsZoom implements Serializable {
    private final CoordinateBounds bounds;
    private final double zoom;

    public CoordinateBoundsZoom(CoordinateBounds coordinateBounds, double d) {
        this.bounds = coordinateBounds;
        this.zoom = d;
    }

    public CoordinateBounds getBounds() {
        return this.bounds;
    }

    public double getZoom() {
        return this.zoom;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CoordinateBoundsZoom coordinateBoundsZoom = (CoordinateBoundsZoom) obj;
        return Objects.equals(this.bounds, coordinateBoundsZoom.bounds) && PartialEq.compare(this.zoom, coordinateBoundsZoom.zoom);
    }

    public int hashCode() {
        return Objects.hash(this.bounds, Double.valueOf(this.zoom));
    }

    public String toString() {
        return "[bounds: " + RecordUtils.fieldToString(this.bounds) + ", zoom: " + RecordUtils.fieldToString(Double.valueOf(this.zoom)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
