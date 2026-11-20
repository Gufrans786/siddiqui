package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.Objects;

public class ResourceLoadProgress implements Serializable {
    private final long bytes;
    private final Long totalBytes;

    public ResourceLoadProgress(long j, Long l) {
        this.bytes = j;
        this.totalBytes = l;
    }

    public long getBytes() {
        return this.bytes;
    }

    public Long getTotalBytes() {
        return this.totalBytes;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ResourceLoadProgress resourceLoadProgress = (ResourceLoadProgress) obj;
        return this.bytes == resourceLoadProgress.bytes && Objects.equals(this.totalBytes, resourceLoadProgress.totalBytes);
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.bytes), this.totalBytes);
    }

    public String toString() {
        return "[bytes: " + RecordUtils.fieldToString(Long.valueOf(this.bytes)) + ", totalBytes: " + RecordUtils.fieldToString(this.totalBytes) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
