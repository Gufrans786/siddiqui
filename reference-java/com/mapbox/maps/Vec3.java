package com.mapbox.maps;

import com.mapbox.bindgen.PartialEq;
import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class Vec3 implements Serializable {
    private final double x;
    private final double y;
    private final double z;

    public Vec3(double d, double d2, double d3) {
        this.x = d;
        this.y = d2;
        this.z = d3;
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

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Vec3 vec3 = (Vec3) obj;
        return PartialEq.compare(this.x, vec3.x) && PartialEq.compare(this.y, vec3.y) && PartialEq.compare(this.z, vec3.z);
    }

    public int hashCode() {
        return Objects.hash(Double.valueOf(this.x), Double.valueOf(this.y), Double.valueOf(this.z));
    }

    public String toString() {
        return "[x: " + RecordUtils.fieldToString(Double.valueOf(this.x)) + ", y: " + RecordUtils.fieldToString(Double.valueOf(this.y)) + ", z: " + RecordUtils.fieldToString(Double.valueOf(this.z)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
