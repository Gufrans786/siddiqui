package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.Objects;

public class ResourceLoadError implements Serializable {
    private final String message;
    private final long transferredBytes;
    private final ResourceLoadErrorType type;

    public ResourceLoadError(ResourceLoadErrorType resourceLoadErrorType, String str, long j) {
        this.type = resourceLoadErrorType;
        this.message = str;
        this.transferredBytes = j;
    }

    public ResourceLoadErrorType getType() {
        return this.type;
    }

    public String getMessage() {
        return this.message;
    }

    public long getTransferredBytes() {
        return this.transferredBytes;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ResourceLoadError resourceLoadError = (ResourceLoadError) obj;
        return Objects.equals(this.type, resourceLoadError.type) && Objects.equals(this.message, resourceLoadError.message) && this.transferredBytes == resourceLoadError.transferredBytes;
    }

    public int hashCode() {
        return Objects.hash(this.type, this.message, Long.valueOf(this.transferredBytes));
    }

    public String toString() {
        return "[type: " + RecordUtils.fieldToString(this.type) + ", message: " + RecordUtils.fieldToString(this.message) + ", transferredBytes: " + RecordUtils.fieldToString(Long.valueOf(this.transferredBytes)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
