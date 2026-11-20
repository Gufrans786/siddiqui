package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class ScreenBox implements Serializable {
    private final ScreenCoordinate max;
    private final ScreenCoordinate min;

    public ScreenBox(ScreenCoordinate screenCoordinate, ScreenCoordinate screenCoordinate2) {
        this.min = screenCoordinate;
        this.max = screenCoordinate2;
    }

    public ScreenCoordinate getMin() {
        return this.min;
    }

    public ScreenCoordinate getMax() {
        return this.max;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ScreenBox screenBox = (ScreenBox) obj;
        return Objects.equals(this.min, screenBox.min) && Objects.equals(this.max, screenBox.max);
    }

    public int hashCode() {
        return Objects.hash(this.min, this.max);
    }

    public String toString() {
        return "[min: " + RecordUtils.fieldToString(this.min) + ", max: " + RecordUtils.fieldToString(this.max) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
