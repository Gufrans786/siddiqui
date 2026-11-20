package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class GlyphsRasterizationOptions implements Serializable {
    private final String fontFamily;
    private final GlyphsRasterizationMode rasterizationMode;

    private GlyphsRasterizationOptions(GlyphsRasterizationMode glyphsRasterizationMode, String str) {
        this.rasterizationMode = glyphsRasterizationMode;
        this.fontFamily = str;
    }

    public GlyphsRasterizationMode getRasterizationMode() {
        return this.rasterizationMode;
    }

    public String getFontFamily() {
        return this.fontFamily;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        GlyphsRasterizationOptions glyphsRasterizationOptions = (GlyphsRasterizationOptions) obj;
        return Objects.equals(this.rasterizationMode, glyphsRasterizationOptions.rasterizationMode) && Objects.equals(this.fontFamily, glyphsRasterizationOptions.fontFamily);
    }

    public int hashCode() {
        return Objects.hash(this.rasterizationMode, this.fontFamily);
    }

    public static final class Builder {
        private String fontFamily;
        private GlyphsRasterizationMode rasterizationMode;

        public Builder rasterizationMode(GlyphsRasterizationMode glyphsRasterizationMode) {
            this.rasterizationMode = glyphsRasterizationMode;
            return this;
        }

        public Builder fontFamily(String str) {
            this.fontFamily = str;
            return this;
        }

        public GlyphsRasterizationOptions build() {
            if (this.rasterizationMode == null) {
                throw new NullPointerException("rasterizationMode shouldn't be null");
            }
            return new GlyphsRasterizationOptions(this.rasterizationMode, this.fontFamily);
        }
    }

    public Builder toBuilder() {
        return new Builder().rasterizationMode(this.rasterizationMode).fontFamily(this.fontFamily);
    }

    public String toString() {
        return "[rasterizationMode: " + RecordUtils.fieldToString(this.rasterizationMode) + ", fontFamily: " + RecordUtils.fieldToString(this.fontFamily) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
