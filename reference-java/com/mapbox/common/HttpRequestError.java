package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.Objects;

public class HttpRequestError implements Serializable {
    private final String message;
    private final HttpRequestErrorType type;

    public HttpRequestError(HttpRequestErrorType httpRequestErrorType, String str) {
        this.type = httpRequestErrorType;
        this.message = str;
    }

    public HttpRequestErrorType getType() {
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
        HttpRequestError httpRequestError = (HttpRequestError) obj;
        return Objects.equals(this.type, httpRequestError.type) && Objects.equals(this.message, httpRequestError.message);
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
