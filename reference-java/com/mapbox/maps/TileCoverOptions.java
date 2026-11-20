package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class TileCoverOptions implements Serializable {
    private final Byte maxZoom;
    private final Byte minZoom;
    private final Boolean roundZoom;
    private final Short tileSize;

    private TileCoverOptions(Short sh, Byte b, Byte b2, Boolean bool) {
        this.tileSize = sh;
        this.minZoom = b;
        this.maxZoom = b2;
        this.roundZoom = bool;
    }

    public Short getTileSize() {
        return this.tileSize;
    }

    public Byte getMinZoom() {
        return this.minZoom;
    }

    public Byte getMaxZoom() {
        return this.maxZoom;
    }

    public Boolean getRoundZoom() {
        return this.roundZoom;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TileCoverOptions tileCoverOptions = (TileCoverOptions) obj;
        return Objects.equals(this.tileSize, tileCoverOptions.tileSize) && Objects.equals(this.minZoom, tileCoverOptions.minZoom) && Objects.equals(this.maxZoom, tileCoverOptions.maxZoom) && Objects.equals(this.roundZoom, tileCoverOptions.roundZoom);
    }

    public int hashCode() {
        return Objects.hash(this.tileSize, this.minZoom, this.maxZoom, this.roundZoom);
    }

    public static final class Builder {
        private Byte maxZoom;
        private Byte minZoom;
        private Boolean roundZoom;
        private Short tileSize;

        public Builder tileSize(Short sh) {
            this.tileSize = sh;
            return this;
        }

        public Builder minZoom(Byte b) {
            this.minZoom = b;
            return this;
        }

        public Builder maxZoom(Byte b) {
            this.maxZoom = b;
            return this;
        }

        public Builder roundZoom(Boolean bool) {
            this.roundZoom = bool;
            return this;
        }

        public TileCoverOptions build() {
            return new TileCoverOptions(this.tileSize, this.minZoom, this.maxZoom, this.roundZoom);
        }
    }

    public Builder toBuilder() {
        return new Builder().tileSize(this.tileSize).minZoom(this.minZoom).maxZoom(this.maxZoom).roundZoom(this.roundZoom);
    }

    public String toString() {
        return "[tileSize: " + RecordUtils.fieldToString(this.tileSize) + ", minZoom: " + RecordUtils.fieldToString(this.minZoom) + ", maxZoom: " + RecordUtils.fieldToString(this.maxZoom) + ", roundZoom: " + RecordUtils.fieldToString(this.roundZoom) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
