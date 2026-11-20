package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.Objects;

public class ConfigurationServiceError implements Serializable {
    private final ConfigurationServiceErrorCode code;
    private final String message;

    public ConfigurationServiceError(ConfigurationServiceErrorCode configurationServiceErrorCode, String str) {
        this.code = configurationServiceErrorCode;
        this.message = str;
    }

    public ConfigurationServiceErrorCode getCode() {
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
        ConfigurationServiceError configurationServiceError = (ConfigurationServiceError) obj;
        return Objects.equals(this.code, configurationServiceError.code) && Objects.equals(this.message, configurationServiceError.message);
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
