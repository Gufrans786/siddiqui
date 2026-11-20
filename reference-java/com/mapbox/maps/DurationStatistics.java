package com.mapbox.maps;

import com.mapbox.bindgen.PartialEq;
import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class DurationStatistics implements Serializable {
    private final double maxMillis;
    private final double medianMillis;

    public DurationStatistics(double d, double d2) {
        this.maxMillis = d;
        this.medianMillis = d2;
    }

    public double getMaxMillis() {
        return this.maxMillis;
    }

    public double getMedianMillis() {
        return this.medianMillis;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DurationStatistics durationStatistics = (DurationStatistics) obj;
        return PartialEq.compare(this.maxMillis, durationStatistics.maxMillis) && PartialEq.compare(this.medianMillis, durationStatistics.medianMillis);
    }

    public int hashCode() {
        return Objects.hash(Double.valueOf(this.maxMillis), Double.valueOf(this.medianMillis));
    }

    public String toString() {
        return "[maxMillis: " + RecordUtils.fieldToString(Double.valueOf(this.maxMillis)) + ", medianMillis: " + RecordUtils.fieldToString(Double.valueOf(this.medianMillis)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
