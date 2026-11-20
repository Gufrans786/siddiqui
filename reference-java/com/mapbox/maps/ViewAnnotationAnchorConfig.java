package com.mapbox.maps;

import com.mapbox.bindgen.PartialEq;
import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class ViewAnnotationAnchorConfig implements Serializable {
    private final ViewAnnotationAnchor anchor;
    private final double offsetX;
    private final double offsetY;

    private ViewAnnotationAnchorConfig(ViewAnnotationAnchor viewAnnotationAnchor, double d, double d2) {
        this.anchor = viewAnnotationAnchor;
        this.offsetX = d;
        this.offsetY = d2;
    }

    public ViewAnnotationAnchor getAnchor() {
        return this.anchor;
    }

    public double getOffsetX() {
        return this.offsetX;
    }

    public double getOffsetY() {
        return this.offsetY;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ViewAnnotationAnchorConfig viewAnnotationAnchorConfig = (ViewAnnotationAnchorConfig) obj;
        return Objects.equals(this.anchor, viewAnnotationAnchorConfig.anchor) && PartialEq.compare(this.offsetX, viewAnnotationAnchorConfig.offsetX) && PartialEq.compare(this.offsetY, viewAnnotationAnchorConfig.offsetY);
    }

    public int hashCode() {
        return Objects.hash(this.anchor, Double.valueOf(this.offsetX), Double.valueOf(this.offsetY));
    }

    public static final class Builder {
        private ViewAnnotationAnchor anchor;
        private double offsetX;
        private double offsetY;

        public Builder anchor(ViewAnnotationAnchor viewAnnotationAnchor) {
            this.anchor = viewAnnotationAnchor;
            return this;
        }

        public Builder offsetX(double d) {
            this.offsetX = d;
            return this;
        }

        public Builder offsetY(double d) {
            this.offsetY = d;
            return this;
        }

        public ViewAnnotationAnchorConfig build() {
            if (this.anchor == null) {
                throw new NullPointerException("anchor shouldn't be null");
            }
            return new ViewAnnotationAnchorConfig(this.anchor, this.offsetX, this.offsetY);
        }
    }

    public Builder toBuilder() {
        return new Builder().anchor(this.anchor).offsetX(this.offsetX).offsetY(this.offsetY);
    }

    public String toString() {
        return "[anchor: " + RecordUtils.fieldToString(this.anchor) + ", offsetX: " + RecordUtils.fieldToString(Double.valueOf(this.offsetX)) + ", offsetY: " + RecordUtils.fieldToString(Double.valueOf(this.offsetY)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
