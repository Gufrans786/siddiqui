package com.mapbox.maps;

import com.mapbox.bindgen.PartialEq;
import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class ImageStretches implements Serializable {
    private final float first;
    private final float second;

    public ImageStretches(float f, float f2) {
        this.first = f;
        this.second = f2;
    }

    public float getFirst() {
        return this.first;
    }

    public float getSecond() {
        return this.second;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ImageStretches imageStretches = (ImageStretches) obj;
        return PartialEq.compare(this.first, imageStretches.first) && PartialEq.compare(this.second, imageStretches.second);
    }

    public int hashCode() {
        return Objects.hash(Float.valueOf(this.first), Float.valueOf(this.second));
    }

    public String toString() {
        return "[first: " + RecordUtils.fieldToString(Float.valueOf(this.first)) + ", second: " + RecordUtils.fieldToString(Float.valueOf(this.second)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
