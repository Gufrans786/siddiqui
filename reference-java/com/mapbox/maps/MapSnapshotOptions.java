package com.mapbox.maps;

import com.mapbox.bindgen.PartialEq;
import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class MapSnapshotOptions implements Serializable {
    private final GlyphsRasterizationOptions glyphsRasterizationOptions;
    private final float pixelRatio;
    private final Size size;

    private MapSnapshotOptions(Size size, float f, GlyphsRasterizationOptions glyphsRasterizationOptions) {
        this.size = size;
        this.pixelRatio = f;
        this.glyphsRasterizationOptions = glyphsRasterizationOptions;
    }

    private MapSnapshotOptions(Size size, GlyphsRasterizationOptions glyphsRasterizationOptions) {
        this.size = size;
        this.glyphsRasterizationOptions = glyphsRasterizationOptions;
        this.pixelRatio = 1.0f;
    }

    public Size getSize() {
        return this.size;
    }

    public float getPixelRatio() {
        return this.pixelRatio;
    }

    public GlyphsRasterizationOptions getGlyphsRasterizationOptions() {
        return this.glyphsRasterizationOptions;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MapSnapshotOptions mapSnapshotOptions = (MapSnapshotOptions) obj;
        return Objects.equals(this.size, mapSnapshotOptions.size) && PartialEq.compare(this.pixelRatio, mapSnapshotOptions.pixelRatio) && Objects.equals(this.glyphsRasterizationOptions, mapSnapshotOptions.glyphsRasterizationOptions);
    }

    public int hashCode() {
        return Objects.hash(this.size, Float.valueOf(this.pixelRatio), this.glyphsRasterizationOptions);
    }

    public static final class Builder {
        private GlyphsRasterizationOptions glyphsRasterizationOptions;
        private float pixelRatio = 1.0f;
        private Size size;

        public Builder size(Size size) {
            this.size = size;
            return this;
        }

        public Builder pixelRatio(float f) {
            this.pixelRatio = f;
            return this;
        }

        public Builder glyphsRasterizationOptions(GlyphsRasterizationOptions glyphsRasterizationOptions) {
            this.glyphsRasterizationOptions = glyphsRasterizationOptions;
            return this;
        }

        public MapSnapshotOptions build() {
            if (this.size == null) {
                throw new NullPointerException("size shouldn't be null");
            }
            return new MapSnapshotOptions(this.size, this.pixelRatio, this.glyphsRasterizationOptions);
        }
    }

    public Builder toBuilder() {
        return new Builder().size(this.size).pixelRatio(this.pixelRatio).glyphsRasterizationOptions(this.glyphsRasterizationOptions);
    }

    public String toString() {
        return "[size: " + RecordUtils.fieldToString(this.size) + ", pixelRatio: " + RecordUtils.fieldToString(Float.valueOf(this.pixelRatio)) + ", glyphsRasterizationOptions: " + RecordUtils.fieldToString(this.glyphsRasterizationOptions) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
