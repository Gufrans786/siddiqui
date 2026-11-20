package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

@Deprecated
public final class OfflineRegionStatus implements Serializable {
    private final long completedResourceCount;
    private final long completedResourceSize;
    private final long completedTileCount;
    private final long completedTileSize;
    private final OfflineRegionDownloadState downloadState;
    private final long requiredResourceCount;
    private final boolean requiredResourceCountIsPrecise;
    private final long requiredTileCount;

    public OfflineRegionStatus(OfflineRegionDownloadState offlineRegionDownloadState, long j, long j2, long j3, long j4, long j5, long j6, boolean z) {
        this.downloadState = offlineRegionDownloadState;
        this.completedResourceCount = j;
        this.completedResourceSize = j2;
        this.completedTileCount = j3;
        this.requiredTileCount = j4;
        this.completedTileSize = j5;
        this.requiredResourceCount = j6;
        this.requiredResourceCountIsPrecise = z;
    }

    public OfflineRegionDownloadState getDownloadState() {
        return this.downloadState;
    }

    public long getCompletedResourceCount() {
        return this.completedResourceCount;
    }

    public long getCompletedResourceSize() {
        return this.completedResourceSize;
    }

    public long getCompletedTileCount() {
        return this.completedTileCount;
    }

    public long getRequiredTileCount() {
        return this.requiredTileCount;
    }

    public long getCompletedTileSize() {
        return this.completedTileSize;
    }

    public long getRequiredResourceCount() {
        return this.requiredResourceCount;
    }

    public boolean getRequiredResourceCountIsPrecise() {
        return this.requiredResourceCountIsPrecise;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        OfflineRegionStatus offlineRegionStatus = (OfflineRegionStatus) obj;
        return Objects.equals(this.downloadState, offlineRegionStatus.downloadState) && this.completedResourceCount == offlineRegionStatus.completedResourceCount && this.completedResourceSize == offlineRegionStatus.completedResourceSize && this.completedTileCount == offlineRegionStatus.completedTileCount && this.requiredTileCount == offlineRegionStatus.requiredTileCount && this.completedTileSize == offlineRegionStatus.completedTileSize && this.requiredResourceCount == offlineRegionStatus.requiredResourceCount && this.requiredResourceCountIsPrecise == offlineRegionStatus.requiredResourceCountIsPrecise;
    }

    public int hashCode() {
        return Objects.hash(this.downloadState, Long.valueOf(this.completedResourceCount), Long.valueOf(this.completedResourceSize), Long.valueOf(this.completedTileCount), Long.valueOf(this.requiredTileCount), Long.valueOf(this.completedTileSize), Long.valueOf(this.requiredResourceCount), Boolean.valueOf(this.requiredResourceCountIsPrecise));
    }

    public String toString() {
        return "[downloadState: " + RecordUtils.fieldToString(this.downloadState) + ", completedResourceCount: " + RecordUtils.fieldToString(Long.valueOf(this.completedResourceCount)) + ", completedResourceSize: " + RecordUtils.fieldToString(Long.valueOf(this.completedResourceSize)) + ", completedTileCount: " + RecordUtils.fieldToString(Long.valueOf(this.completedTileCount)) + ", requiredTileCount: " + RecordUtils.fieldToString(Long.valueOf(this.requiredTileCount)) + ", completedTileSize: " + RecordUtils.fieldToString(Long.valueOf(this.completedTileSize)) + ", requiredResourceCount: " + RecordUtils.fieldToString(Long.valueOf(this.requiredResourceCount)) + ", requiredResourceCountIsPrecise: " + RecordUtils.fieldToString(Boolean.valueOf(this.requiredResourceCountIsPrecise)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
