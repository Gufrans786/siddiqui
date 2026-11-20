package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.Objects;

public class SdkInformation implements Serializable {
    private final String name;
    private final String packageName;
    private final String version;

    public SdkInformation(String str, String str2, String str3) {
        this.name = str;
        this.version = str2;
        this.packageName = str3;
    }

    public String getName() {
        return this.name;
    }

    public String getVersion() {
        return this.version;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SdkInformation sdkInformation = (SdkInformation) obj;
        return Objects.equals(this.name, sdkInformation.name) && Objects.equals(this.version, sdkInformation.version) && Objects.equals(this.packageName, sdkInformation.packageName);
    }

    public int hashCode() {
        return Objects.hash(this.name, this.version, this.packageName);
    }

    public String toString() {
        return "[name: " + RecordUtils.fieldToString(this.name) + ", version: " + RecordUtils.fieldToString(this.version) + ", packageName: " + RecordUtils.fieldToString(this.packageName) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
