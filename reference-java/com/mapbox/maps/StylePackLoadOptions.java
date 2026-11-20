package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.bindgen.Value;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class StylePackLoadOptions implements Serializable {
    private final boolean acceptExpired;
    private final Value extraOptions;
    private final GlyphsRasterizationMode glyphsRasterizationMode;
    private final Value metadata;

    private StylePackLoadOptions(GlyphsRasterizationMode glyphsRasterizationMode, Value value, boolean z, Value value2) {
        this.glyphsRasterizationMode = glyphsRasterizationMode;
        this.metadata = value;
        this.acceptExpired = z;
        this.extraOptions = value2;
    }

    private StylePackLoadOptions(GlyphsRasterizationMode glyphsRasterizationMode, Value value, Value value2) {
        this.glyphsRasterizationMode = glyphsRasterizationMode;
        this.metadata = value;
        this.extraOptions = value2;
        this.acceptExpired = false;
    }

    public GlyphsRasterizationMode getGlyphsRasterizationMode() {
        return this.glyphsRasterizationMode;
    }

    public Value getMetadata() {
        return this.metadata;
    }

    public boolean getAcceptExpired() {
        return this.acceptExpired;
    }

    public Value getExtraOptions() {
        return this.extraOptions;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        StylePackLoadOptions stylePackLoadOptions = (StylePackLoadOptions) obj;
        return Objects.equals(this.glyphsRasterizationMode, stylePackLoadOptions.glyphsRasterizationMode) && Objects.equals(this.metadata, stylePackLoadOptions.metadata) && this.acceptExpired == stylePackLoadOptions.acceptExpired && Objects.equals(this.extraOptions, stylePackLoadOptions.extraOptions);
    }

    public int hashCode() {
        return Objects.hash(this.glyphsRasterizationMode, this.metadata, Boolean.valueOf(this.acceptExpired), this.extraOptions);
    }

    public static final class Builder {
        private boolean acceptExpired = false;
        private Value extraOptions;
        private GlyphsRasterizationMode glyphsRasterizationMode;
        private Value metadata;

        public Builder glyphsRasterizationMode(GlyphsRasterizationMode glyphsRasterizationMode) {
            this.glyphsRasterizationMode = glyphsRasterizationMode;
            return this;
        }

        public Builder metadata(Value value) {
            this.metadata = value;
            return this;
        }

        public Builder acceptExpired(boolean z) {
            this.acceptExpired = z;
            return this;
        }

        public Builder extraOptions(Value value) {
            this.extraOptions = value;
            return this;
        }

        public StylePackLoadOptions build() {
            return new StylePackLoadOptions(this.glyphsRasterizationMode, this.metadata, this.acceptExpired, this.extraOptions);
        }
    }

    public Builder toBuilder() {
        return new Builder().glyphsRasterizationMode(this.glyphsRasterizationMode).metadata(this.metadata).acceptExpired(this.acceptExpired).extraOptions(this.extraOptions);
    }

    public String toString() {
        return "[glyphsRasterizationMode: " + RecordUtils.fieldToString(this.glyphsRasterizationMode) + ", metadata: " + RecordUtils.fieldToString(this.metadata) + ", acceptExpired: " + RecordUtils.fieldToString(Boolean.valueOf(this.acceptExpired)) + ", extraOptions: " + RecordUtils.fieldToString(this.extraOptions) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
