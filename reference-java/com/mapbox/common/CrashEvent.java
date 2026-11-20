package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Objects;

public class CrashEvent implements Serializable {
    private final String appStartDate;
    private final HashMap<String, String> customData;
    private final boolean isSilent;
    private final String threadDetails;

    public CrashEvent(boolean z, String str, String str2, HashMap<String, String> map) {
        this.isSilent = z;
        this.threadDetails = str;
        this.appStartDate = str2;
        this.customData = map;
    }

    public boolean getIsSilent() {
        return this.isSilent;
    }

    public String getThreadDetails() {
        return this.threadDetails;
    }

    public String getAppStartDate() {
        return this.appStartDate;
    }

    public HashMap<String, String> getCustomData() {
        return this.customData;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CrashEvent crashEvent = (CrashEvent) obj;
        return this.isSilent == crashEvent.isSilent && Objects.equals(this.threadDetails, crashEvent.threadDetails) && Objects.equals(this.appStartDate, crashEvent.appStartDate) && Objects.equals(this.customData, crashEvent.customData);
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.isSilent), this.threadDetails, this.appStartDate, this.customData);
    }

    public String toString() {
        return "[isSilent: " + RecordUtils.fieldToString(Boolean.valueOf(this.isSilent)) + ", threadDetails: " + RecordUtils.fieldToString(this.threadDetails) + ", appStartDate: " + RecordUtils.fieldToString(this.appStartDate) + ", customData: " + RecordUtils.fieldToString(this.customData) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
