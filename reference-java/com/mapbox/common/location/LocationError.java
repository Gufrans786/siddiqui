package com.mapbox.common.location;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.common.MapboxSDKCommonInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public class LocationError implements Serializable {
    private final LocationErrorCode code;
    private final String message;

    public LocationError(LocationErrorCode locationErrorCode, String str) {
        this.code = locationErrorCode;
        this.message = str;
    }

    public LocationErrorCode getCode() {
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
        LocationError locationError = (LocationError) obj;
        return Objects.equals(this.code, locationError.code) && Objects.equals(this.message, locationError.message);
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
