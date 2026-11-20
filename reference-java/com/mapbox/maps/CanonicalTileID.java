package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class CanonicalTileID implements Serializable {
    private final int x;
    private final int y;
    private final byte z;

    public CanonicalTileID(byte b, int i, int i2) {
        this.z = b;
        this.x = i;
        this.y = i2;
    }

    public byte getZ() {
        return this.z;
    }

    public int getX() {
        return this.x;
    }

    public int getY() {
        return this.y;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CanonicalTileID canonicalTileID = (CanonicalTileID) obj;
        return this.z == canonicalTileID.z && this.x == canonicalTileID.x && this.y == canonicalTileID.y;
    }

    public int hashCode() {
        return Objects.hash(Byte.valueOf(this.z), Integer.valueOf(this.x), Integer.valueOf(this.y));
    }

    public String toString() {
        return "[z: " + RecordUtils.fieldToString(Byte.valueOf(this.z)) + ", x: " + RecordUtils.fieldToString(Integer.valueOf(this.x)) + ", y: " + RecordUtils.fieldToString(Integer.valueOf(this.y)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
