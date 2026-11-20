package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.Objects;

public class CacheClearingError implements Serializable {
    private final String message;
    private final CacheClearingErrorType type;

    public CacheClearingError(CacheClearingErrorType cacheClearingErrorType, String str) {
        this.type = cacheClearingErrorType;
        this.message = str;
    }

    public CacheClearingErrorType getType() {
        return this.type;
    }

    public String getMessage() {
        return this.message;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CacheClearingError cacheClearingError = (CacheClearingError) obj;
        return Objects.equals(this.type, cacheClearingError.type) && Objects.equals(this.message, cacheClearingError.message);
    }

    public int hashCode() {
        return Objects.hash(this.type, this.message);
    }

    public String toString() {
        return "[type: " + RecordUtils.fieldToString(this.type) + ", message: " + RecordUtils.fieldToString(this.message) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
