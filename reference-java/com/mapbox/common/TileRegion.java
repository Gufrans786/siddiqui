package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.bindgen.Value;
import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

public class TileRegion implements Serializable {
    private final long completedResourceCount;
    private final long completedResourceSize;
    private final Date expires;
    private final Value extraData;
    private final String id;
    private final long requiredResourceCount;

    public TileRegion(String str, long j, long j2, long j3, Date date, Value value) {
        this.id = str;
        this.requiredResourceCount = j;
        this.completedResourceCount = j2;
        this.completedResourceSize = j3;
        this.expires = date;
        this.extraData = value;
    }

    public String getId() {
        return this.id;
    }

    public long getRequiredResourceCount() {
        return this.requiredResourceCount;
    }

    public long getCompletedResourceCount() {
        return this.completedResourceCount;
    }

    public long getCompletedResourceSize() {
        return this.completedResourceSize;
    }

    public Date getExpires() {
        return this.expires;
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
        TileRegion tileRegion = (TileRegion) obj;
        return Objects.equals(this.id, tileRegion.id) && this.requiredResourceCount == tileRegion.requiredResourceCount && this.completedResourceCount == tileRegion.completedResourceCount && this.completedResourceSize == tileRegion.completedResourceSize && Objects.equals(this.expires, tileRegion.expires) && Objects.equals(this.extraData, tileRegion.extraData);
    }

    public int hashCode() {
        return Objects.hash(this.id, Long.valueOf(this.requiredResourceCount), Long.valueOf(this.completedResourceCount), Long.valueOf(this.completedResourceSize), this.expires, this.extraData);
    }

    public String toString() {
        return "[id: " + RecordUtils.fieldToString(this.id) + ", requiredResourceCount: " + RecordUtils.fieldToString(Long.valueOf(this.requiredResourceCount)) + ", completedResourceCount: " + RecordUtils.fieldToString(Long.valueOf(this.completedResourceCount)) + ", completedResourceSize: " + RecordUtils.fieldToString(Long.valueOf(this.completedResourceSize)) + ", expires: " + RecordUtils.fieldToString(this.expires) + ", extraData: " + RecordUtils.fieldToString(this.extraData) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
