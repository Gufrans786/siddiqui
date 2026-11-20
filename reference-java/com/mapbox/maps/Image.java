package com.mapbox.maps;

import com.mapbox.bindgen.DataRef;
import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class Image implements Serializable {
    private final DataRef data;
    private final int height;
    private final int width;

    public Image(int i, int i2, DataRef dataRef) {
        this.width = i;
        this.height = i2;
        this.data = dataRef;
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public DataRef getData() {
        return this.data;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Image image = (Image) obj;
        return this.width == image.width && this.height == image.height && Objects.equals(this.data, image.data);
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.width), Integer.valueOf(this.height), this.data);
    }

    public String toString() {
        return "[width: " + RecordUtils.fieldToString(Integer.valueOf(this.width)) + ", height: " + RecordUtils.fieldToString(Integer.valueOf(this.height)) + ", data: " + RecordUtils.fieldToString(this.data) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
