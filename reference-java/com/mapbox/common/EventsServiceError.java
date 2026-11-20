package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.Objects;

public class EventsServiceError implements Serializable {
    private final EventsServiceErrorCode code;
    private final String message;

    public EventsServiceError(EventsServiceErrorCode eventsServiceErrorCode, String str) {
        this.code = eventsServiceErrorCode;
        this.message = str;
    }

    public EventsServiceErrorCode getCode() {
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
        EventsServiceError eventsServiceError = (EventsServiceError) obj;
        return Objects.equals(this.code, eventsServiceError.code) && Objects.equals(this.message, eventsServiceError.message);
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
