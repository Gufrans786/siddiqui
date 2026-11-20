package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.Objects;

public class TileRegionError implements Serializable {
    private final String message;
    private final TileRegionErrorType type;

    public TileRegionError(TileRegionErrorType tileRegionErrorType, String str) {
        this.type = tileRegionErrorType;
        this.message = str;
    }

    public TileRegionErrorType getType() {
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
        TileRegionError tileRegionError = (TileRegionError) obj;
        return Objects.equals(this.type, tileRegionError.type) && Objects.equals(this.message, tileRegionError.message);
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
