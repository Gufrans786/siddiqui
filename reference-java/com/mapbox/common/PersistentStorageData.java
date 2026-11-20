package com.mapbox.common;

import com.mapbox.bindgen.DataRef;
import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

public class PersistentStorageData implements Serializable {
    private final String key;
    private final Date timestamp;
    private final DataRef value;

    public PersistentStorageData(String str, Date date, DataRef dataRef) {
        this.key = str;
        this.timestamp = date;
        this.value = dataRef;
    }

    public String getKey() {
        return this.key;
    }

    public Date getTimestamp() {
        return this.timestamp;
    }

    public DataRef getValue() {
        return this.value;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PersistentStorageData persistentStorageData = (PersistentStorageData) obj;
        return Objects.equals(this.key, persistentStorageData.key) && Objects.equals(this.timestamp, persistentStorageData.timestamp) && Objects.equals(this.value, persistentStorageData.value);
    }

    public int hashCode() {
        return Objects.hash(this.key, this.timestamp, this.value);
    }

    public String toString() {
        return "[key: " + RecordUtils.fieldToString(this.key) + ", timestamp: " + RecordUtils.fieldToString(this.timestamp) + ", value: " + RecordUtils.fieldToString(this.value) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
