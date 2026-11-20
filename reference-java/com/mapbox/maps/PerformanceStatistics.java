package com.mapbox.maps;

import com.mapbox.bindgen.PartialEq;
import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class PerformanceStatistics implements Serializable {
    private final double collectionDurationMillis;
    private final CumulativeRenderingStatistics cumulativeStatistics;
    private final DurationStatistics mapRenderDurationStatistics;
    private final PerFrameRenderingStatistics perFrameStatistics;

    public PerformanceStatistics(double d, DurationStatistics durationStatistics, CumulativeRenderingStatistics cumulativeRenderingStatistics, PerFrameRenderingStatistics perFrameRenderingStatistics) {
        this.collectionDurationMillis = d;
        this.mapRenderDurationStatistics = durationStatistics;
        this.cumulativeStatistics = cumulativeRenderingStatistics;
        this.perFrameStatistics = perFrameRenderingStatistics;
    }

    public double getCollectionDurationMillis() {
        return this.collectionDurationMillis;
    }

    public DurationStatistics getMapRenderDurationStatistics() {
        return this.mapRenderDurationStatistics;
    }

    public CumulativeRenderingStatistics getCumulativeStatistics() {
        return this.cumulativeStatistics;
    }

    public PerFrameRenderingStatistics getPerFrameStatistics() {
        return this.perFrameStatistics;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PerformanceStatistics performanceStatistics = (PerformanceStatistics) obj;
        return PartialEq.compare(this.collectionDurationMillis, performanceStatistics.collectionDurationMillis) && Objects.equals(this.mapRenderDurationStatistics, performanceStatistics.mapRenderDurationStatistics) && Objects.equals(this.cumulativeStatistics, performanceStatistics.cumulativeStatistics) && Objects.equals(this.perFrameStatistics, performanceStatistics.perFrameStatistics);
    }

    public int hashCode() {
        return Objects.hash(Double.valueOf(this.collectionDurationMillis), this.mapRenderDurationStatistics, this.cumulativeStatistics, this.perFrameStatistics);
    }

    public String toString() {
        return "[collectionDurationMillis: " + RecordUtils.fieldToString(Double.valueOf(this.collectionDurationMillis)) + ", mapRenderDurationStatistics: " + RecordUtils.fieldToString(this.mapRenderDurationStatistics) + ", cumulativeStatistics: " + RecordUtils.fieldToString(this.cumulativeStatistics) + ", perFrameStatistics: " + RecordUtils.fieldToString(this.perFrameStatistics) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
