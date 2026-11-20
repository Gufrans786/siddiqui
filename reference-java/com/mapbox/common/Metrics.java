package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.bindgen.Value;
import java.io.Serializable;
import java.util.Objects;

public final class Metrics implements Serializable {
    private final String name;
    private final Value value;

    public Metrics(String str, Value value) {
        this.name = str;
        this.value = value;
    }

    public String getName() {
        return this.name;
    }

    public Value getValue() {
        return this.value;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Metrics metrics = (Metrics) obj;
        return Objects.equals(this.name, metrics.name) && Objects.equals(this.value, metrics.value);
    }

    public int hashCode() {
        return Objects.hash(this.name, this.value);
    }

    public String toString() {
        return "[name: " + RecordUtils.fieldToString(this.name) + ", value: " + RecordUtils.fieldToString(this.value) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
