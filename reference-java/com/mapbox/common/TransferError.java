package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.Objects;

public class TransferError implements Serializable {
    private final TransferErrorCode code;
    private final String message;

    public TransferError(TransferErrorCode transferErrorCode, String str) {
        this.code = transferErrorCode;
        this.message = str;
    }

    public TransferErrorCode getCode() {
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
        TransferError transferError = (TransferError) obj;
        return Objects.equals(this.code, transferError.code) && Objects.equals(this.message, transferError.message);
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
