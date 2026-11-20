package com.mapbox.maps;

import com.mapbox.bindgen.PartialEq;
import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class EdgeInsets implements Serializable {
    private final double bottom;
    private final double left;
    private final double right;
    private final double top;

    public EdgeInsets(double d, double d2, double d3, double d4) {
        this.top = d;
        this.left = d2;
        this.bottom = d3;
        this.right = d4;
    }

    public double getTop() {
        return this.top;
    }

    public double getLeft() {
        return this.left;
    }

    public double getBottom() {
        return this.bottom;
    }

    public double getRight() {
        return this.right;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        EdgeInsets edgeInsets = (EdgeInsets) obj;
        return PartialEq.compare(this.top, edgeInsets.top) && PartialEq.compare(this.left, edgeInsets.left) && PartialEq.compare(this.bottom, edgeInsets.bottom) && PartialEq.compare(this.right, edgeInsets.right);
    }

    public int hashCode() {
        return Objects.hash(Double.valueOf(this.top), Double.valueOf(this.left), Double.valueOf(this.bottom), Double.valueOf(this.right));
    }

    public String toString() {
        return "[top: " + RecordUtils.fieldToString(Double.valueOf(this.top)) + ", left: " + RecordUtils.fieldToString(Double.valueOf(this.left)) + ", bottom: " + RecordUtils.fieldToString(Double.valueOf(this.bottom)) + ", right: " + RecordUtils.fieldToString(Double.valueOf(this.right)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
