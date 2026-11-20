package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class ResourceRequestError implements Serializable {
    private final String message;
    private final RequestErrorType reason;

    public ResourceRequestError(RequestErrorType requestErrorType, String str) {
        this.reason = requestErrorType;
        this.message = str;
    }

    public RequestErrorType getReason() {
        return this.reason;
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
        ResourceRequestError resourceRequestError = (ResourceRequestError) obj;
        return Objects.equals(this.reason, resourceRequestError.reason) && Objects.equals(this.message, resourceRequestError.message);
    }

    public int hashCode() {
        return Objects.hash(this.reason, this.message);
    }

    public String toString() {
        return "[reason: " + RecordUtils.fieldToString(this.reason) + ", message: " + RecordUtils.fieldToString(this.message) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
