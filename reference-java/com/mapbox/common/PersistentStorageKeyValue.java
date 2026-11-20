package com.mapbox.common;

import com.mapbox.bindgen.DataRef;
import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.Objects;

public class PersistentStorageKeyValue implements Serializable {
    private final String key;
    private final DataRef value;

    public PersistentStorageKeyValue(String str, DataRef dataRef) {
        this.key = str;
        this.value = dataRef;
    }

    public String getKey() {
        return this.key;
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
        PersistentStorageKeyValue persistentStorageKeyValue = (PersistentStorageKeyValue) obj;
        return Objects.equals(this.key, persistentStorageKeyValue.key) && Objects.equals(this.value, persistentStorageKeyValue.value);
    }

    public int hashCode() {
        return Objects.hash(this.key, this.value);
    }

    public String toString() {
        return "[key: " + RecordUtils.fieldToString(this.key) + ", value: " + RecordUtils.fieldToString(this.value) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
