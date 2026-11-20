package com.mapbox.maps;

import com.mapbox.bindgen.PartialEq;
import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class ImageContent implements Serializable {
    private final float bottom;
    private final float left;
    private final float right;
    private final float top;

    public ImageContent(float f, float f2, float f3, float f4) {
        this.left = f;
        this.top = f2;
        this.right = f3;
        this.bottom = f4;
    }

    public float getLeft() {
        return this.left;
    }

    public float getTop() {
        return this.top;
    }

    public float getRight() {
        return this.right;
    }

    public float getBottom() {
        return this.bottom;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ImageContent imageContent = (ImageContent) obj;
        return PartialEq.compare(this.left, imageContent.left) && PartialEq.compare(this.top, imageContent.top) && PartialEq.compare(this.right, imageContent.right) && PartialEq.compare(this.bottom, imageContent.bottom);
    }

    public int hashCode() {
        return Objects.hash(Float.valueOf(this.left), Float.valueOf(this.top), Float.valueOf(this.right), Float.valueOf(this.bottom));
    }

    public String toString() {
        return "[left: " + RecordUtils.fieldToString(Float.valueOf(this.left)) + ", top: " + RecordUtils.fieldToString(Float.valueOf(this.top)) + ", right: " + RecordUtils.fieldToString(Float.valueOf(this.right)) + ", bottom: " + RecordUtils.fieldToString(Float.valueOf(this.bottom)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
