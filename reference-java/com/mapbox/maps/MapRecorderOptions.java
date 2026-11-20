package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class MapRecorderOptions implements Serializable {
    private final boolean compressed;
    private final boolean loggingEnabled;
    private final Long timeWindow;

    private MapRecorderOptions(Long l, boolean z, boolean z2) {
        this.timeWindow = l;
        this.loggingEnabled = z;
        this.compressed = z2;
    }

    private MapRecorderOptions(Long l) {
        this.timeWindow = l;
        this.loggingEnabled = false;
        this.compressed = true;
    }

    public Long getTimeWindow() {
        return this.timeWindow;
    }

    public boolean getLoggingEnabled() {
        return this.loggingEnabled;
    }

    public boolean getCompressed() {
        return this.compressed;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MapRecorderOptions mapRecorderOptions = (MapRecorderOptions) obj;
        return Objects.equals(this.timeWindow, mapRecorderOptions.timeWindow) && this.loggingEnabled == mapRecorderOptions.loggingEnabled && this.compressed == mapRecorderOptions.compressed;
    }

    public int hashCode() {
        return Objects.hash(this.timeWindow, Boolean.valueOf(this.loggingEnabled), Boolean.valueOf(this.compressed));
    }

    public static final class Builder {
        private Long timeWindow;
        private boolean loggingEnabled = false;
        private boolean compressed = true;

        public Builder timeWindow(Long l) {
            this.timeWindow = l;
            return this;
        }

        public Builder loggingEnabled(boolean z) {
            this.loggingEnabled = z;
            return this;
        }

        public Builder compressed(boolean z) {
            this.compressed = z;
            return this;
        }

        public MapRecorderOptions build() {
            return new MapRecorderOptions(this.timeWindow, this.loggingEnabled, this.compressed);
        }
    }

    public Builder toBuilder() {
        return new Builder().timeWindow(this.timeWindow).loggingEnabled(this.loggingEnabled).compressed(this.compressed);
    }

    public String toString() {
        return "[timeWindow: " + RecordUtils.fieldToString(this.timeWindow) + ", loggingEnabled: " + RecordUtils.fieldToString(Boolean.valueOf(this.loggingEnabled)) + ", compressed: " + RecordUtils.fieldToString(Boolean.valueOf(this.compressed)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
