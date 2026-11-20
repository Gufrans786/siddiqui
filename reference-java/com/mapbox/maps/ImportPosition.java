package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class ImportPosition implements Serializable {
    private final String above;
    private final Integer at;
    private final String below;

    public ImportPosition(String str, String str2, Integer num) {
        this.above = str;
        this.below = str2;
        this.at = num;
    }

    public String getAbove() {
        return this.above;
    }

    public String getBelow() {
        return this.below;
    }

    public Integer getAt() {
        return this.at;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ImportPosition importPosition = (ImportPosition) obj;
        return Objects.equals(this.above, importPosition.above) && Objects.equals(this.below, importPosition.below) && Objects.equals(this.at, importPosition.at);
    }

    public int hashCode() {
        return Objects.hash(this.above, this.below, this.at);
    }

    public String toString() {
        return "[above: " + RecordUtils.fieldToString(this.above) + ", below: " + RecordUtils.fieldToString(this.below) + ", at: " + RecordUtils.fieldToString(this.at) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
