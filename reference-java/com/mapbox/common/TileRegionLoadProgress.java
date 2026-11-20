package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.Objects;

public class TileRegionLoadProgress implements Serializable {
    private final long completedResourceCount;
    private final long completedResourceSize;
    private final long erroredResourceCount;
    private final long loadedResourceCount;
    private final long loadedResourceSize;
    private final long requiredResourceCount;

    public TileRegionLoadProgress(long j, long j2, long j3, long j4, long j5, long j6) {
        this.completedResourceCount = j;
        this.completedResourceSize = j2;
        this.erroredResourceCount = j3;
        this.requiredResourceCount = j4;
        this.loadedResourceCount = j5;
        this.loadedResourceSize = j6;
    }

    public long getCompletedResourceCount() {
        return this.completedResourceCount;
    }

    public long getCompletedResourceSize() {
        return this.completedResourceSize;
    }

    public long getErroredResourceCount() {
        return this.erroredResourceCount;
    }

    public long getRequiredResourceCount() {
        return this.requiredResourceCount;
    }

    public long getLoadedResourceCount() {
        return this.loadedResourceCount;
    }

    public long getLoadedResourceSize() {
        return this.loadedResourceSize;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TileRegionLoadProgress tileRegionLoadProgress = (TileRegionLoadProgress) obj;
        return this.completedResourceCount == tileRegionLoadProgress.completedResourceCount && this.completedResourceSize == tileRegionLoadProgress.completedResourceSize && this.erroredResourceCount == tileRegionLoadProgress.erroredResourceCount && this.requiredResourceCount == tileRegionLoadProgress.requiredResourceCount && this.loadedResourceCount == tileRegionLoadProgress.loadedResourceCount && this.loadedResourceSize == tileRegionLoadProgress.loadedResourceSize;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.completedResourceCount), Long.valueOf(this.completedResourceSize), Long.valueOf(this.erroredResourceCount), Long.valueOf(this.requiredResourceCount), Long.valueOf(this.loadedResourceCount), Long.valueOf(this.loadedResourceSize));
    }

    public String toString() {
        return "[completedResourceCount: " + RecordUtils.fieldToString(Long.valueOf(this.completedResourceCount)) + ", completedResourceSize: " + RecordUtils.fieldToString(Long.valueOf(this.completedResourceSize)) + ", erroredResourceCount: " + RecordUtils.fieldToString(Long.valueOf(this.erroredResourceCount)) + ", requiredResourceCount: " + RecordUtils.fieldToString(Long.valueOf(this.requiredResourceCount)) + ", loadedResourceCount: " + RecordUtils.fieldToString(Long.valueOf(this.loadedResourceCount)) + ", loadedResourceSize: " + RecordUtils.fieldToString(Long.valueOf(this.loadedResourceSize)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
