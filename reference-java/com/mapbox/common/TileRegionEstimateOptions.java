package com.mapbox.common;

import com.mapbox.bindgen.PartialEq;
import com.mapbox.bindgen.RecordUtils;
import com.mapbox.bindgen.Value;
import java.io.Serializable;
import java.util.Objects;

public class TileRegionEstimateOptions implements Serializable {
    private final float errorMargin;
    private final Value extraOptions;
    private final long preciseEstimationTimeout;
    private final long timeout;

    public TileRegionEstimateOptions(float f, long j, long j2, Value value) {
        this.errorMargin = f;
        this.preciseEstimationTimeout = j;
        this.timeout = j2;
        this.extraOptions = value;
    }

    public TileRegionEstimateOptions(Value value) {
        this.extraOptions = value;
        this.errorMargin = 0.05f;
        this.preciseEstimationTimeout = 5000L;
        this.timeout = 0L;
    }

    public float getErrorMargin() {
        return this.errorMargin;
    }

    public long getPreciseEstimationTimeout() {
        return this.preciseEstimationTimeout;
    }

    public long getTimeout() {
        return this.timeout;
    }

    public Value getExtraOptions() {
        return this.extraOptions;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TileRegionEstimateOptions tileRegionEstimateOptions = (TileRegionEstimateOptions) obj;
        return PartialEq.compare(this.errorMargin, tileRegionEstimateOptions.errorMargin) && this.preciseEstimationTimeout == tileRegionEstimateOptions.preciseEstimationTimeout && this.timeout == tileRegionEstimateOptions.timeout && Objects.equals(this.extraOptions, tileRegionEstimateOptions.extraOptions);
    }

    public int hashCode() {
        return Objects.hash(Float.valueOf(this.errorMargin), Long.valueOf(this.preciseEstimationTimeout), Long.valueOf(this.timeout), this.extraOptions);
    }

    public String toString() {
        return "[errorMargin: " + RecordUtils.fieldToString(Float.valueOf(this.errorMargin)) + ", preciseEstimationTimeout: " + RecordUtils.fieldToString(Long.valueOf(this.preciseEstimationTimeout)) + ", timeout: " + RecordUtils.fieldToString(Long.valueOf(this.timeout)) + ", extraOptions: " + RecordUtils.fieldToString(this.extraOptions) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
