package com.mapbox.maps;

import com.mapbox.bindgen.PartialEq;
import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.geojson.Point;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public class ViewAnnotationPositionDescriptor implements Serializable {
    private final ViewAnnotationAnchorConfig anchorConfig;
    private final Point anchorCoordinate;
    private final double height;
    private final String identifier;
    private final ScreenCoordinate leftTopCoordinate;
    private final double width;

    public ViewAnnotationPositionDescriptor(String str, double d, double d2, ScreenCoordinate screenCoordinate, Point point, ViewAnnotationAnchorConfig viewAnnotationAnchorConfig) {
        this.identifier = str;
        this.width = d;
        this.height = d2;
        this.leftTopCoordinate = screenCoordinate;
        this.anchorCoordinate = point;
        this.anchorConfig = viewAnnotationAnchorConfig;
    }

    public String getIdentifier() {
        return this.identifier;
    }

    public double getWidth() {
        return this.width;
    }

    public double getHeight() {
        return this.height;
    }

    public ScreenCoordinate getLeftTopCoordinate() {
        return this.leftTopCoordinate;
    }

    public Point getAnchorCoordinate() {
        return this.anchorCoordinate;
    }

    public ViewAnnotationAnchorConfig getAnchorConfig() {
        return this.anchorConfig;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ViewAnnotationPositionDescriptor viewAnnotationPositionDescriptor = (ViewAnnotationPositionDescriptor) obj;
        return Objects.equals(this.identifier, viewAnnotationPositionDescriptor.identifier) && PartialEq.compare(this.width, viewAnnotationPositionDescriptor.width) && PartialEq.compare(this.height, viewAnnotationPositionDescriptor.height) && Objects.equals(this.leftTopCoordinate, viewAnnotationPositionDescriptor.leftTopCoordinate) && Objects.equals(this.anchorCoordinate, viewAnnotationPositionDescriptor.anchorCoordinate) && Objects.equals(this.anchorConfig, viewAnnotationPositionDescriptor.anchorConfig);
    }

    public int hashCode() {
        return Objects.hash(this.identifier, Double.valueOf(this.width), Double.valueOf(this.height), this.leftTopCoordinate, this.anchorCoordinate, this.anchorConfig);
    }

    public String toString() {
        return "[identifier: " + RecordUtils.fieldToString(this.identifier) + ", width: " + RecordUtils.fieldToString(Double.valueOf(this.width)) + ", height: " + RecordUtils.fieldToString(Double.valueOf(this.height)) + ", leftTopCoordinate: " + RecordUtils.fieldToString(this.leftTopCoordinate) + ", anchorCoordinate: " + RecordUtils.fieldToString(this.anchorCoordinate) + ", anchorConfig: " + RecordUtils.fieldToString(this.anchorConfig) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
