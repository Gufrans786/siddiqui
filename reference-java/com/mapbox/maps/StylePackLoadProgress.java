package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class StylePackLoadProgress implements Serializable {
    private final long completedResourceCount;
    private final long completedResourceSize;
    private final long erroredResourceCount;
    private final long loadedResourceCount;
    private final long loadedResourceSize;
    private final long requiredResourceCount;

    public StylePackLoadProgress(long j, long j2, long j3, long j4, long j5, long j6) {
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
        StylePackLoadProgress stylePackLoadProgress = (StylePackLoadProgress) obj;
        return this.completedResourceCount == stylePackLoadProgress.completedResourceCount && this.completedResourceSize == stylePackLoadProgress.completedResourceSize && this.erroredResourceCount == stylePackLoadProgress.erroredResourceCount && this.requiredResourceCount == stylePackLoadProgress.requiredResourceCount && this.loadedResourceCount == stylePackLoadProgress.loadedResourceCount && this.loadedResourceSize == stylePackLoadProgress.loadedResourceSize;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.completedResourceCount), Long.valueOf(this.completedResourceSize), Long.valueOf(this.erroredResourceCount), Long.valueOf(this.requiredResourceCount), Long.valueOf(this.loadedResourceCount), Long.valueOf(this.loadedResourceSize));
    }

    public String toString() {
        return "[completedResourceCount: " + RecordUtils.fieldToString(Long.valueOf(this.completedResourceCount)) + ", completedResourceSize: " + RecordUtils.fieldToString(Long.valueOf(this.completedResourceSize)) + ", erroredResourceCount: " + RecordUtils.fieldToString(Long.valueOf(this.erroredResourceCount)) + ", requiredResourceCount: " + RecordUtils.fieldToString(Long.valueOf(this.requiredResourceCount)) + ", loadedResourceCount: " + RecordUtils.fieldToString(Long.valueOf(this.loadedResourceCount)) + ", loadedResourceSize: " + RecordUtils.fieldToString(Long.valueOf(this.loadedResourceSize)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
