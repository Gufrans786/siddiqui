package com.mapbox.maps;

import com.mapbox.bindgen.PartialEq;
import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class ProjectedMeters implements Serializable {
    private final double easting;
    private final double northing;

    public ProjectedMeters(double d, double d2) {
        this.northing = d;
        this.easting = d2;
    }

    public double getNorthing() {
        return this.northing;
    }

    public double getEasting() {
        return this.easting;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ProjectedMeters projectedMeters = (ProjectedMeters) obj;
        return PartialEq.compare(this.northing, projectedMeters.northing) && PartialEq.compare(this.easting, projectedMeters.easting);
    }

    public int hashCode() {
        return Objects.hash(Double.valueOf(this.northing), Double.valueOf(this.easting));
    }

    public String toString() {
        return "[northing: " + RecordUtils.fieldToString(Double.valueOf(this.northing)) + ", easting: " + RecordUtils.fieldToString(Double.valueOf(this.easting)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
