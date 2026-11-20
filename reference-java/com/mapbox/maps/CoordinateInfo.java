package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.geojson.Point;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class CoordinateInfo implements Serializable {
    private final Point coordinate;
    private final boolean isOnSurface;

    public CoordinateInfo(Point point, boolean z) {
        this.coordinate = point;
        this.isOnSurface = z;
    }

    public Point getCoordinate() {
        return this.coordinate;
    }

    public boolean getIsOnSurface() {
        return this.isOnSurface;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CoordinateInfo coordinateInfo = (CoordinateInfo) obj;
        return Objects.equals(this.coordinate, coordinateInfo.coordinate) && this.isOnSurface == coordinateInfo.isOnSurface;
    }

    public int hashCode() {
        return Objects.hash(this.coordinate, Boolean.valueOf(this.isOnSurface));
    }

    public String toString() {
        return "[coordinate: " + RecordUtils.fieldToString(this.coordinate) + ", isOnSurface: " + RecordUtils.fieldToString(Boolean.valueOf(this.isOnSurface)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
