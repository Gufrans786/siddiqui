package com.mapbox.maps;

import com.mapbox.bindgen.PartialEq;
import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class MercatorCoordinate implements Serializable {
    private final double x;
    private final double y;

    public MercatorCoordinate(double d, double d2) {
        this.x = d;
        this.y = d2;
    }

    public double getX() {
        return this.x;
    }

    public double getY() {
        return this.y;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MercatorCoordinate mercatorCoordinate = (MercatorCoordinate) obj;
        return PartialEq.compare(this.x, mercatorCoordinate.x) && PartialEq.compare(this.y, mercatorCoordinate.y);
    }

    public int hashCode() {
        return Objects.hash(Double.valueOf(this.x), Double.valueOf(this.y));
    }

    public String toString() {
        return "[x: " + RecordUtils.fieldToString(Double.valueOf(this.x)) + ", y: " + RecordUtils.fieldToString(Double.valueOf(this.y)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
