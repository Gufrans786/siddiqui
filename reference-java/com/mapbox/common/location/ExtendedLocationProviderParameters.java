package com.mapbox.common.location;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.common.MapboxSDKCommonInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public class ExtendedLocationProviderParameters implements Serializable {
    private final Boolean allowUserDefined;
    private final DeviceLocationProviderType deviceLocationProviderType;
    private final String locationProviderName;

    private ExtendedLocationProviderParameters(DeviceLocationProviderType deviceLocationProviderType, Boolean bool, String str) {
        this.deviceLocationProviderType = deviceLocationProviderType;
        this.allowUserDefined = bool;
        this.locationProviderName = str;
    }

    public DeviceLocationProviderType getDeviceLocationProviderType() {
        return this.deviceLocationProviderType;
    }

    public Boolean getAllowUserDefined() {
        return this.allowUserDefined;
    }

    public String getLocationProviderName() {
        return this.locationProviderName;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ExtendedLocationProviderParameters extendedLocationProviderParameters = (ExtendedLocationProviderParameters) obj;
        return Objects.equals(this.deviceLocationProviderType, extendedLocationProviderParameters.deviceLocationProviderType) && Objects.equals(this.allowUserDefined, extendedLocationProviderParameters.allowUserDefined) && Objects.equals(this.locationProviderName, extendedLocationProviderParameters.locationProviderName);
    }

    public int hashCode() {
        return Objects.hash(this.deviceLocationProviderType, this.allowUserDefined, this.locationProviderName);
    }

    public static final class Builder {
        private Boolean allowUserDefined;
        private DeviceLocationProviderType deviceLocationProviderType;
        private String locationProviderName;

        public Builder deviceLocationProviderType(DeviceLocationProviderType deviceLocationProviderType) {
            this.deviceLocationProviderType = deviceLocationProviderType;
            return this;
        }

        public Builder allowUserDefined(Boolean bool) {
            this.allowUserDefined = bool;
            return this;
        }

        public Builder locationProviderName(String str) {
            this.locationProviderName = str;
            return this;
        }

        public ExtendedLocationProviderParameters build() {
            return new ExtendedLocationProviderParameters(this.deviceLocationProviderType, this.allowUserDefined, this.locationProviderName);
        }
    }

    public Builder toBuilder() {
        return new Builder().deviceLocationProviderType(this.deviceLocationProviderType).allowUserDefined(this.allowUserDefined).locationProviderName(this.locationProviderName);
    }

    public String toString() {
        return "[deviceLocationProviderType: " + RecordUtils.fieldToString(this.deviceLocationProviderType) + ", allowUserDefined: " + RecordUtils.fieldToString(this.allowUserDefined) + ", locationProviderName: " + RecordUtils.fieldToString(this.locationProviderName) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
