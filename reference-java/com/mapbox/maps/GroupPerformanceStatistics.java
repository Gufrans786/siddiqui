package com.mapbox.maps;

import com.mapbox.bindgen.PartialEq;
import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class GroupPerformanceStatistics implements Serializable {
    private final double durationMillis;
    private final String name;

    public GroupPerformanceStatistics(double d, String str) {
        this.durationMillis = d;
        this.name = str;
    }

    public double getDurationMillis() {
        return this.durationMillis;
    }

    public String getName() {
        return this.name;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        GroupPerformanceStatistics groupPerformanceStatistics = (GroupPerformanceStatistics) obj;
        return PartialEq.compare(this.durationMillis, groupPerformanceStatistics.durationMillis) && Objects.equals(this.name, groupPerformanceStatistics.name);
    }

    public int hashCode() {
        return Objects.hash(Double.valueOf(this.durationMillis), this.name);
    }

    public String toString() {
        return "[durationMillis: " + RecordUtils.fieldToString(Double.valueOf(this.durationMillis)) + ", name: " + RecordUtils.fieldToString(this.name) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
