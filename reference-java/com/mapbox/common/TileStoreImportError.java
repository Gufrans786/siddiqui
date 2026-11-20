package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.Objects;

public class TileStoreImportError implements Serializable {
    private final String message;
    private final TileStoreImportErrorType type;

    public TileStoreImportError(TileStoreImportErrorType tileStoreImportErrorType, String str) {
        this.type = tileStoreImportErrorType;
        this.message = str;
    }

    public TileStoreImportErrorType getType() {
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
        TileStoreImportError tileStoreImportError = (TileStoreImportError) obj;
        return Objects.equals(this.type, tileStoreImportError.type) && Objects.equals(this.message, tileStoreImportError.message);
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
