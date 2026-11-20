package com.mapbox.maps;

import com.mapbox.bindgen.PartialEq;
import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class CameraBounds implements Serializable {
    private final CoordinateBounds bounds;
    private final double maxPitch;
    private final double maxZoom;
    private final double minPitch;
    private final double minZoom;

    public CameraBounds(CoordinateBounds coordinateBounds, double d, double d2, double d3, double d4) {
        this.bounds = coordinateBounds;
        this.maxZoom = d;
        this.minZoom = d2;
        this.maxPitch = d3;
        this.minPitch = d4;
    }

    public CoordinateBounds getBounds() {
        return this.bounds;
    }

    public double getMaxZoom() {
        return this.maxZoom;
    }

    public double getMinZoom() {
        return this.minZoom;
    }

    public double getMaxPitch() {
        return this.maxPitch;
    }

    public double getMinPitch() {
        return this.minPitch;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CameraBounds cameraBounds = (CameraBounds) obj;
        return Objects.equals(this.bounds, cameraBounds.bounds) && PartialEq.compare(this.maxZoom, cameraBounds.maxZoom) && PartialEq.compare(this.minZoom, cameraBounds.minZoom) && PartialEq.compare(this.maxPitch, cameraBounds.maxPitch) && PartialEq.compare(this.minPitch, cameraBounds.minPitch);
    }

    public int hashCode() {
        return Objects.hash(this.bounds, Double.valueOf(this.maxZoom), Double.valueOf(this.minZoom), Double.valueOf(this.maxPitch), Double.valueOf(this.minPitch));
    }

    public String toString() {
        return "[bounds: " + RecordUtils.fieldToString(this.bounds) + ", maxZoom: " + RecordUtils.fieldToString(Double.valueOf(this.maxZoom)) + ", minZoom: " + RecordUtils.fieldToString(Double.valueOf(this.minZoom)) + ", maxPitch: " + RecordUtils.fieldToString(Double.valueOf(this.maxPitch)) + ", minPitch: " + RecordUtils.fieldToString(Double.valueOf(this.minPitch)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
