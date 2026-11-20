package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.Objects;

public class BillingServiceError implements Serializable {
    private final BillingServiceErrorCode code;
    private final String message;

    public BillingServiceError(BillingServiceErrorCode billingServiceErrorCode, String str) {
        this.code = billingServiceErrorCode;
        this.message = str;
    }

    public BillingServiceErrorCode getCode() {
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
        BillingServiceError billingServiceError = (BillingServiceError) obj;
        return Objects.equals(this.code, billingServiceError.code) && Objects.equals(this.message, billingServiceError.message);
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
