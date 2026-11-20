package com.mapbox.maps;

import com.mapbox.bindgen.PartialEq;
import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class Vec4 implements Serializable {
    private final double w;
    private final double x;
    private final double y;
    private final double z;

    public Vec4(double d, double d2, double d3, double d4) {
        this.x = d;
        this.y = d2;
        this.z = d3;
        this.w = d4;
    }

    public double getX() {
        return this.x;
    }

    public double getY() {
        return this.y;
    }

    public double getZ() {
        return this.z;
    }

    public double getW() {
        return this.w;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Vec4 vec4 = (Vec4) obj;
        return PartialEq.compare(this.x, vec4.x) && PartialEq.compare(this.y, vec4.y) && PartialEq.compare(this.z, vec4.z) && PartialEq.compare(this.w, vec4.w);
    }

    public int hashCode() {
        return Objects.hash(Double.valueOf(this.x), Double.valueOf(this.y), Double.valueOf(this.z), Double.valueOf(this.w));
    }

    public String toString() {
        return "[x: " + RecordUtils.fieldToString(Double.valueOf(this.x)) + ", y: " + RecordUtils.fieldToString(Double.valueOf(this.y)) + ", z: " + RecordUtils.fieldToString(Double.valueOf(this.z)) + ", w: " + RecordUtils.fieldToString(Double.valueOf(this.w)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
