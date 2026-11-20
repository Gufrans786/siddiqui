package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.Objects;

public class TileStoreImportProgress implements Serializable {
    private final long erroredResourceCount;
    private final long importedResourceCount;
    private final long importedResourceSize;
    private final long requiredResourceBytes;
    private final long requiredResourceCount;
    private final long skippedResourceCount;
    private final long startTime;

    public native double getProgressRate();

    public TileStoreImportProgress(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
        this.startTime = j;
        this.erroredResourceCount = j2;
        this.skippedResourceCount = j3;
        this.importedResourceCount = j4;
        this.importedResourceSize = j5;
        this.requiredResourceCount = j6;
        this.requiredResourceBytes = j7;
    }

    public long getStartTime() {
        return this.startTime;
    }

    public long getErroredResourceCount() {
        return this.erroredResourceCount;
    }

    public long getSkippedResourceCount() {
        return this.skippedResourceCount;
    }

    public long getImportedResourceCount() {
        return this.importedResourceCount;
    }

    public long getImportedResourceSize() {
        return this.importedResourceSize;
    }

    public long getRequiredResourceCount() {
        return this.requiredResourceCount;
    }

    public long getRequiredResourceBytes() {
        return this.requiredResourceBytes;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TileStoreImportProgress tileStoreImportProgress = (TileStoreImportProgress) obj;
        return this.startTime == tileStoreImportProgress.startTime && this.erroredResourceCount == tileStoreImportProgress.erroredResourceCount && this.skippedResourceCount == tileStoreImportProgress.skippedResourceCount && this.importedResourceCount == tileStoreImportProgress.importedResourceCount && this.importedResourceSize == tileStoreImportProgress.importedResourceSize && this.requiredResourceCount == tileStoreImportProgress.requiredResourceCount && this.requiredResourceBytes == tileStoreImportProgress.requiredResourceBytes;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.startTime), Long.valueOf(this.erroredResourceCount), Long.valueOf(this.skippedResourceCount), Long.valueOf(this.importedResourceCount), Long.valueOf(this.importedResourceSize), Long.valueOf(this.requiredResourceCount), Long.valueOf(this.requiredResourceBytes));
    }

    public String toString() {
        return "[startTime: " + RecordUtils.fieldToString(Long.valueOf(this.startTime)) + ", erroredResourceCount: " + RecordUtils.fieldToString(Long.valueOf(this.erroredResourceCount)) + ", skippedResourceCount: " + RecordUtils.fieldToString(Long.valueOf(this.skippedResourceCount)) + ", importedResourceCount: " + RecordUtils.fieldToString(Long.valueOf(this.importedResourceCount)) + ", importedResourceSize: " + RecordUtils.fieldToString(Long.valueOf(this.importedResourceSize)) + ", requiredResourceCount: " + RecordUtils.fieldToString(Long.valueOf(this.requiredResourceCount)) + ", requiredResourceBytes: " + RecordUtils.fieldToString(Long.valueOf(this.requiredResourceBytes)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
