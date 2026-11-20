package com.mapbox.maps;

import com.mapbox.bindgen.PartialEq;
import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class DepthRange implements Serializable {
    private final float max;
    private final float min;

    public DepthRange(float f, float f2) {
        this.min = f;
        this.max = f2;
    }

    public float getMin() {
        return this.min;
    }

    public float getMax() {
        return this.max;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DepthRange depthRange = (DepthRange) obj;
        return PartialEq.compare(this.min, depthRange.min) && PartialEq.compare(this.max, depthRange.max);
    }

    public int hashCode() {
        return Objects.hash(Float.valueOf(this.min), Float.valueOf(this.max));
    }

    public String toString() {
        return "[min: " + RecordUtils.fieldToString(Float.valueOf(this.min)) + ", max: " + RecordUtils.fieldToString(Float.valueOf(this.max)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
