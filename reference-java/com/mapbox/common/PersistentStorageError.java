package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.Objects;

public class PersistentStorageError implements Serializable {
    private final PersistentStorageErrorCode code;
    private final String message;

    public PersistentStorageError(PersistentStorageErrorCode persistentStorageErrorCode, String str) {
        this.code = persistentStorageErrorCode;
        this.message = str;
    }

    public PersistentStorageErrorCode getCode() {
        return this.code;
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
        PersistentStorageError persistentStorageError = (PersistentStorageError) obj;
        return Objects.equals(this.code, persistentStorageError.code) && Objects.equals(this.message, persistentStorageError.message);
    }

    public int hashCode() {
        return Objects.hash(this.code, this.message);
    }

    public String toString() {
        return "[code: " + RecordUtils.fieldToString(this.code) + ", message: " + RecordUtils.fieldToString(this.message) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
