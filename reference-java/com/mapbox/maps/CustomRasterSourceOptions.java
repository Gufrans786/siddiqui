package com.mapbox.maps;

import com.google.common.base.Ascii;
import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class CustomRasterSourceOptions implements Serializable {
    private final CustomRasterSourceClient clientCallback;
    private final byte maxZoom;
    private final byte minZoom;
    private final short tileSize;

    private CustomRasterSourceOptions(CustomRasterSourceClient customRasterSourceClient, byte b, byte b2, short s) {
        this.clientCallback = customRasterSourceClient;
        this.minZoom = b;
        this.maxZoom = b2;
        this.tileSize = s;
    }

    private CustomRasterSourceOptions(CustomRasterSourceClient customRasterSourceClient) {
        this.clientCallback = customRasterSourceClient;
        this.minZoom = (byte) 0;
        this.maxZoom = Ascii.DC2;
        this.tileSize = (short) 512;
    }

    public CustomRasterSourceClient getClientCallback() {
        return this.clientCallback;
    }

    public byte getMinZoom() {
        return this.minZoom;
    }

    public byte getMaxZoom() {
        return this.maxZoom;
    }

    public short getTileSize() {
        return this.tileSize;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CustomRasterSourceOptions customRasterSourceOptions = (CustomRasterSourceOptions) obj;
        return Objects.equals(this.clientCallback, customRasterSourceOptions.clientCallback) && this.minZoom == customRasterSourceOptions.minZoom && this.maxZoom == customRasterSourceOptions.maxZoom && this.tileSize == customRasterSourceOptions.tileSize;
    }

    public int hashCode() {
        return Objects.hash(this.clientCallback, Byte.valueOf(this.minZoom), Byte.valueOf(this.maxZoom), Short.valueOf(this.tileSize));
    }

    public static final class Builder {
        private CustomRasterSourceClient clientCallback;
        private byte minZoom = 0;
        private byte maxZoom = Ascii.DC2;
        private short tileSize = 512;

        public Builder clientCallback(CustomRasterSourceClient customRasterSourceClient) {
            this.clientCallback = customRasterSourceClient;
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

        public Builder tileSize(short s) {
            this.tileSize = s;
            return this;
        }

        public CustomRasterSourceOptions build() {
            if (this.clientCallback == null) {
                throw new NullPointerException("clientCallback shouldn't be null");
            }
            return new CustomRasterSourceOptions(this.clientCallback, this.minZoom, this.maxZoom, this.tileSize);
        }
    }

    public Builder toBuilder() {
        return new Builder().clientCallback(this.clientCallback).minZoom(this.minZoom).maxZoom(this.maxZoom).tileSize(this.tileSize);
    }

    public String toString() {
        return "[clientCallback: " + RecordUtils.fieldToString(this.clientCallback) + ", minZoom: " + RecordUtils.fieldToString(Byte.valueOf(this.minZoom)) + ", maxZoom: " + RecordUtils.fieldToString(Byte.valueOf(this.maxZoom)) + ", tileSize: " + RecordUtils.fieldToString(Short.valueOf(this.tileSize)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
