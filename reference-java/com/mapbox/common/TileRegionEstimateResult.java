package com.mapbox.common;

import com.mapbox.bindgen.PartialEq;
import com.mapbox.bindgen.RecordUtils;
import com.mapbox.bindgen.Value;
import java.io.Serializable;
import java.util.Objects;

public class TileRegionEstimateResult implements Serializable {
    private final double errorMargin;
    private final Value extraData;
    private final long storageSize;
    private final long transferSize;

    public TileRegionEstimateResult(double d, long j, long j2, Value value) {
        this.errorMargin = d;
        this.transferSize = j;
        this.storageSize = j2;
        this.extraData = value;
    }

    public double getErrorMargin() {
        return this.errorMargin;
    }

    public long getTransferSize() {
        return this.transferSize;
    }

    public long getStorageSize() {
        return this.storageSize;
    }

    public Value getExtraData() {
        return this.extraData;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TileRegionEstimateResult tileRegionEstimateResult = (TileRegionEstimateResult) obj;
        return PartialEq.compare(this.errorMargin, tileRegionEstimateResult.errorMargin) && this.transferSize == tileRegionEstimateResult.transferSize && this.storageSize == tileRegionEstimateResult.storageSize && Objects.equals(this.extraData, tileRegionEstimateResult.extraData);
    }

    public int hashCode() {
        return Objects.hash(Double.valueOf(this.errorMargin), Long.valueOf(this.transferSize), Long.valueOf(this.storageSize), this.extraData);
    }

    public String toString() {
        return "[errorMargin: " + RecordUtils.fieldToString(Double.valueOf(this.errorMargin)) + ", transferSize: " + RecordUtils.fieldToString(Long.valueOf(this.transferSize)) + ", storageSize: " + RecordUtils.fieldToString(Long.valueOf(this.storageSize)) + ", extraData: " + RecordUtils.fieldToString(this.extraData) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
