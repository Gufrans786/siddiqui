package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class CustomLayerRenderConfiguration implements Serializable {
    private final boolean isRenderToTileSupported;
    private final boolean shouldRerenderTiles;

    private CustomLayerRenderConfiguration(boolean z, boolean z2) {
        this.isRenderToTileSupported = z;
        this.shouldRerenderTiles = z2;
    }

    private CustomLayerRenderConfiguration() {
        this.isRenderToTileSupported = false;
        this.shouldRerenderTiles = false;
    }

    public boolean getIsRenderToTileSupported() {
        return this.isRenderToTileSupported;
    }

    public boolean getShouldRerenderTiles() {
        return this.shouldRerenderTiles;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CustomLayerRenderConfiguration customLayerRenderConfiguration = (CustomLayerRenderConfiguration) obj;
        return this.isRenderToTileSupported == customLayerRenderConfiguration.isRenderToTileSupported && this.shouldRerenderTiles == customLayerRenderConfiguration.shouldRerenderTiles;
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.isRenderToTileSupported), Boolean.valueOf(this.shouldRerenderTiles));
    }

    public static final class Builder {
        private boolean isRenderToTileSupported = false;
        private boolean shouldRerenderTiles = false;

        public Builder isRenderToTileSupported(boolean z) {
            this.isRenderToTileSupported = z;
            return this;
        }

        public Builder shouldRerenderTiles(boolean z) {
            this.shouldRerenderTiles = z;
            return this;
        }

        public CustomLayerRenderConfiguration build() {
            return new CustomLayerRenderConfiguration(this.isRenderToTileSupported, this.shouldRerenderTiles);
        }
    }

    public Builder toBuilder() {
        return new Builder().isRenderToTileSupported(this.isRenderToTileSupported).shouldRerenderTiles(this.shouldRerenderTiles);
    }

    public String toString() {
        return "[isRenderToTileSupported: " + RecordUtils.fieldToString(Boolean.valueOf(this.isRenderToTileSupported)) + ", shouldRerenderTiles: " + RecordUtils.fieldToString(Boolean.valueOf(this.shouldRerenderTiles)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
