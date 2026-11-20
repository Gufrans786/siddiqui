package com.mapbox.maps;

import com.mapbox.bindgen.PartialEq;
import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.geojson.Geometry;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

@Deprecated
public final class OfflineRegionGeometryDefinition implements Serializable {
    private final Geometry geometry;
    private final GlyphsRasterizationMode glyphsRasterizationMode;
    private final double maxZoom;
    private final double minZoom;
    private final float pixelRatio;
    private final String styleURL;

    private OfflineRegionGeometryDefinition(String str, Geometry geometry, double d, double d2, float f, GlyphsRasterizationMode glyphsRasterizationMode) {
        this.styleURL = str;
        this.geometry = geometry;
        this.minZoom = d;
        this.maxZoom = d2;
        this.pixelRatio = f;
        this.glyphsRasterizationMode = glyphsRasterizationMode;
    }

    public String getStyleURL() {
        return this.styleURL;
    }

    public Geometry getGeometry() {
        return this.geometry;
    }

    public double getMinZoom() {
        return this.minZoom;
    }

    public double getMaxZoom() {
        return this.maxZoom;
    }

    public float getPixelRatio() {
        return this.pixelRatio;
    }

    public GlyphsRasterizationMode getGlyphsRasterizationMode() {
        return this.glyphsRasterizationMode;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        OfflineRegionGeometryDefinition offlineRegionGeometryDefinition = (OfflineRegionGeometryDefinition) obj;
        return Objects.equals(this.styleURL, offlineRegionGeometryDefinition.styleURL) && Objects.equals(this.geometry, offlineRegionGeometryDefinition.geometry) && PartialEq.compare(this.minZoom, offlineRegionGeometryDefinition.minZoom) && PartialEq.compare(this.maxZoom, offlineRegionGeometryDefinition.maxZoom) && PartialEq.compare(this.pixelRatio, offlineRegionGeometryDefinition.pixelRatio) && Objects.equals(this.glyphsRasterizationMode, offlineRegionGeometryDefinition.glyphsRasterizationMode);
    }

    public int hashCode() {
        return Objects.hash(this.styleURL, this.geometry, Double.valueOf(this.minZoom), Double.valueOf(this.maxZoom), Float.valueOf(this.pixelRatio), this.glyphsRasterizationMode);
    }

    public static final class Builder {
        private Geometry geometry;
        private GlyphsRasterizationMode glyphsRasterizationMode;
        private double maxZoom;
        private double minZoom;
        private float pixelRatio;
        private String styleURL;

        public Builder styleURL(String str) {
            this.styleURL = str;
            return this;
        }

        public Builder geometry(Geometry geometry) {
            this.geometry = geometry;
            return this;
        }

        public Builder minZoom(double d) {
            this.minZoom = d;
            return this;
        }

        public Builder maxZoom(double d) {
            this.maxZoom = d;
            return this;
        }

        public Builder pixelRatio(float f) {
            this.pixelRatio = f;
            return this;
        }

        public Builder glyphsRasterizationMode(GlyphsRasterizationMode glyphsRasterizationMode) {
            this.glyphsRasterizationMode = glyphsRasterizationMode;
            return this;
        }

        public OfflineRegionGeometryDefinition build() {
            if (this.styleURL == null) {
                throw new NullPointerException("styleURL shouldn't be null");
            }
            if (this.geometry == null) {
                throw new NullPointerException("geometry shouldn't be null");
            }
            if (this.glyphsRasterizationMode == null) {
                throw new NullPointerException("glyphsRasterizationMode shouldn't be null");
            }
            return new OfflineRegionGeometryDefinition(this.styleURL, this.geometry, this.minZoom, this.maxZoom, this.pixelRatio, this.glyphsRasterizationMode);
        }
    }

    public Builder toBuilder() {
        return new Builder().styleURL(this.styleURL).geometry(this.geometry).minZoom(this.minZoom).maxZoom(this.maxZoom).pixelRatio(this.pixelRatio).glyphsRasterizationMode(this.glyphsRasterizationMode);
    }

    public String toString() {
        return "[styleURL: " + RecordUtils.fieldToString(this.styleURL) + ", geometry: " + RecordUtils.fieldToString(this.geometry) + ", minZoom: " + RecordUtils.fieldToString(Double.valueOf(this.minZoom)) + ", maxZoom: " + RecordUtils.fieldToString(Double.valueOf(this.maxZoom)) + ", pixelRatio: " + RecordUtils.fieldToString(Float.valueOf(this.pixelRatio)) + ", glyphsRasterizationMode: " + RecordUtils.fieldToString(this.glyphsRasterizationMode) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
