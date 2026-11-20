package com.mapbox.maps;

import com.mapbox.bindgen.PartialEq;
import com.mapbox.bindgen.RecordUtils;
import com.mapbox.bindgen.Value;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.List;
import java.util.Objects;

public final class TilesetDescriptorOptions implements Serializable {
    private final Value extraOptions;
    private final byte maxZoom;
    private final byte minZoom;
    private final float pixelRatio;
    private final StylePackLoadOptions stylePackOptions;
    private final String styleURI;
    private final List<String> tilesets;

    private TilesetDescriptorOptions(String str, byte b, byte b2, float f, List<String> list, StylePackLoadOptions stylePackLoadOptions, Value value) {
        this.styleURI = str;
        this.minZoom = b;
        this.maxZoom = b2;
        this.pixelRatio = f;
        this.tilesets = list;
        this.stylePackOptions = stylePackLoadOptions;
        this.extraOptions = value;
    }

    private TilesetDescriptorOptions(String str, byte b, byte b2, List<String> list, StylePackLoadOptions stylePackLoadOptions, Value value) {
        this.styleURI = str;
        this.minZoom = b;
        this.maxZoom = b2;
        this.tilesets = list;
        this.stylePackOptions = stylePackLoadOptions;
        this.extraOptions = value;
        this.pixelRatio = 1.0f;
    }

    public String getStyleURI() {
        return this.styleURI;
    }

    public byte getMinZoom() {
        return this.minZoom;
    }

    public byte getMaxZoom() {
        return this.maxZoom;
    }

    public float getPixelRatio() {
        return this.pixelRatio;
    }

    public List<String> getTilesets() {
        return this.tilesets;
    }

    public StylePackLoadOptions getStylePackOptions() {
        return this.stylePackOptions;
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
        TilesetDescriptorOptions tilesetDescriptorOptions = (TilesetDescriptorOptions) obj;
        return Objects.equals(this.styleURI, tilesetDescriptorOptions.styleURI) && this.minZoom == tilesetDescriptorOptions.minZoom && this.maxZoom == tilesetDescriptorOptions.maxZoom && PartialEq.compare(this.pixelRatio, tilesetDescriptorOptions.pixelRatio) && Objects.equals(this.tilesets, tilesetDescriptorOptions.tilesets) && Objects.equals(this.stylePackOptions, tilesetDescriptorOptions.stylePackOptions) && Objects.equals(this.extraOptions, tilesetDescriptorOptions.extraOptions);
    }

    public int hashCode() {
        return Objects.hash(this.styleURI, Byte.valueOf(this.minZoom), Byte.valueOf(this.maxZoom), Float.valueOf(this.pixelRatio), this.tilesets, this.stylePackOptions, this.extraOptions);
    }

    public static final class Builder {
        private Value extraOptions;
        private byte maxZoom;
        private byte minZoom;
        private float pixelRatio = 1.0f;
        private StylePackLoadOptions stylePackOptions;
        private String styleURI;
        private List<String> tilesets;

        public Builder styleURI(String str) {
            this.styleURI = str;
            return this;
        }

        public Builder minZoom(byte b) {
            this.minZoom = b;
            return this;
        }

        public Builder maxZoom(byte b) {
            this.maxZoom = b;
            return this;
        }

        public Builder pixelRatio(float f) {
            this.pixelRatio = f;
            return this;
        }

        public Builder tilesets(List<String> list) {
            this.tilesets = list;
            return this;
        }

        public Builder stylePackOptions(StylePackLoadOptions stylePackLoadOptions) {
            this.stylePackOptions = stylePackLoadOptions;
            return this;
        }

        public Builder extraOptions(Value value) {
            this.extraOptions = value;
            return this;
        }

        public TilesetDescriptorOptions build() {
            if (this.styleURI == null) {
                throw new NullPointerException("styleURI shouldn't be null");
            }
            return new TilesetDescriptorOptions(this.styleURI, this.minZoom, this.maxZoom, this.pixelRatio, this.tilesets, this.stylePackOptions, this.extraOptions);
        }
    }

    public Builder toBuilder() {
        return new Builder().styleURI(this.styleURI).minZoom(this.minZoom).maxZoom(this.maxZoom).pixelRatio(this.pixelRatio).tilesets(this.tilesets).stylePackOptions(this.stylePackOptions).extraOptions(this.extraOptions);
    }

    public String toString() {
        return "[styleURI: " + RecordUtils.fieldToString(this.styleURI) + ", minZoom: " + RecordUtils.fieldToString(Byte.valueOf(this.minZoom)) + ", maxZoom: " + RecordUtils.fieldToString(Byte.valueOf(this.maxZoom)) + ", pixelRatio: " + RecordUtils.fieldToString(Float.valueOf(this.pixelRatio)) + ", tilesets: " + RecordUtils.fieldToString(this.tilesets) + ", stylePackOptions: " + RecordUtils.fieldToString(this.stylePackOptions) + ", extraOptions: " + RecordUtils.fieldToString(this.extraOptions) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
