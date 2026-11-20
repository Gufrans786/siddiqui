package com.mapbox.maps;

import com.mapbox.bindgen.PartialEq;
import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class TileOptions implements Serializable {
    private final short buffer;
    private final boolean clip;
    private final short tileSize;
    private final double tolerance;
    private final boolean wrap;

    private TileOptions(double d, short s, short s2, boolean z, boolean z2) {
        this.tolerance = d;
        this.tileSize = s;
        this.buffer = s2;
        this.clip = z;
        this.wrap = z2;
    }

    private TileOptions() {
        this.tolerance = 0.375d;
        this.tileSize = (short) 512;
        this.buffer = (short) 128;
        this.clip = false;
        this.wrap = false;
    }

    public double getTolerance() {
        return this.tolerance;
    }

    public short getTileSize() {
        return this.tileSize;
    }

    public short getBuffer() {
        return this.buffer;
    }

    public boolean getClip() {
        return this.clip;
    }

    public boolean getWrap() {
        return this.wrap;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TileOptions tileOptions = (TileOptions) obj;
        return PartialEq.compare(this.tolerance, tileOptions.tolerance) && this.tileSize == tileOptions.tileSize && this.buffer == tileOptions.buffer && this.clip == tileOptions.clip && this.wrap == tileOptions.wrap;
    }

    public int hashCode() {
        return Objects.hash(Double.valueOf(this.tolerance), Short.valueOf(this.tileSize), Short.valueOf(this.buffer), Boolean.valueOf(this.clip), Boolean.valueOf(this.wrap));
    }

    public static final class Builder {
        private double tolerance = 0.375d;
        private short tileSize = 512;
        private short buffer = 128;
        private boolean clip = false;
        private boolean wrap = false;

        public Builder tolerance(double d) {
            this.tolerance = d;
            return this;
        }

        public Builder tileSize(short s) {
            this.tileSize = s;
            return this;
        }

        public Builder buffer(short s) {
            this.buffer = s;
            return this;
        }

        public Builder clip(boolean z) {
            this.clip = z;
            return this;
        }

        public Builder wrap(boolean z) {
            this.wrap = z;
            return this;
        }

        public TileOptions build() {
            return new TileOptions(this.tolerance, this.tileSize, this.buffer, this.clip, this.wrap);
        }
    }

    public Builder toBuilder() {
        return new Builder().tolerance(this.tolerance).tileSize(this.tileSize).buffer(this.buffer).clip(this.clip).wrap(this.wrap);
    }

    public String toString() {
        return "[tolerance: " + RecordUtils.fieldToString(Double.valueOf(this.tolerance)) + ", tileSize: " + RecordUtils.fieldToString(Short.valueOf(this.tileSize)) + ", buffer: " + RecordUtils.fieldToString(Short.valueOf(this.buffer)) + ", clip: " + RecordUtils.fieldToString(Boolean.valueOf(this.clip)) + ", wrap: " + RecordUtils.fieldToString(Boolean.valueOf(this.wrap)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
