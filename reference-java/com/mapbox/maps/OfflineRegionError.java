package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

@Deprecated
public final class OfflineRegionError implements Serializable {
    private final boolean isFatal;
    private final String message;
    private final Date retryAfter;
    private final OfflineRegionErrorType type;

    public OfflineRegionError(OfflineRegionErrorType offlineRegionErrorType, String str, boolean z, Date date) {
        this.type = offlineRegionErrorType;
        this.message = str;
        this.isFatal = z;
        this.retryAfter = date;
    }

    public OfflineRegionErrorType getType() {
        return this.type;
    }

    public String getMessage() {
        return this.message;
    }

    public boolean getIsFatal() {
        return this.isFatal;
    }

    public Date getRetryAfter() {
        return this.retryAfter;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        OfflineRegionError offlineRegionError = (OfflineRegionError) obj;
        return Objects.equals(this.type, offlineRegionError.type) && Objects.equals(this.message, offlineRegionError.message) && this.isFatal == offlineRegionError.isFatal && Objects.equals(this.retryAfter, offlineRegionError.retryAfter);
    }

    public int hashCode() {
        return Objects.hash(this.type, this.message, Boolean.valueOf(this.isFatal), this.retryAfter);
    }

    public String toString() {
        return "[type: " + RecordUtils.fieldToString(this.type) + ", message: " + RecordUtils.fieldToString(this.message) + ", isFatal: " + RecordUtils.fieldToString(Boolean.valueOf(this.isFatal)) + ", retryAfter: " + RecordUtils.fieldToString(this.retryAfter) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
