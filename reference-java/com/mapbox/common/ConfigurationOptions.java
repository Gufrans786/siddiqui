package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.bindgen.Value;
import java.io.Serializable;
import java.util.Objects;

public class ConfigurationOptions implements Serializable {
    private final Value data;
    private final String digest;
    private final ConfigurationOptionsSource source;

    public ConfigurationOptions(Value value, String str, ConfigurationOptionsSource configurationOptionsSource) {
        this.data = value;
        this.digest = str;
        this.source = configurationOptionsSource;
    }

    public Value getData() {
        return this.data;
    }

    public String getDigest() {
        return this.digest;
    }

    public ConfigurationOptionsSource getSource() {
        return this.source;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ConfigurationOptions configurationOptions = (ConfigurationOptions) obj;
        return Objects.equals(this.data, configurationOptions.data) && Objects.equals(this.digest, configurationOptions.digest) && Objects.equals(this.source, configurationOptions.source);
    }

    public int hashCode() {
        return Objects.hash(this.data, this.digest, this.source);
    }

    public String toString() {
        return "[data: " + RecordUtils.fieldToString(this.data) + ", digest: " + RecordUtils.fieldToString(this.digest) + ", source: " + RecordUtils.fieldToString(this.source) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
