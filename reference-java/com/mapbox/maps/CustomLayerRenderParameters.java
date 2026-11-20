package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.List;
import java.util.Objects;

public final class CustomLayerRenderParameters implements Serializable {
    private final double bearing;
    private final DepthRange depthRange;
    private final ElevationData elevationData;
    private final double fieldOfView;
    private final double height;
    private final double latitude;
    private final double longitude;
    private final double pitch;
    private final CustomLayerMapProjection projection;
    private final List<Double> projectionMatrix;
    private final List<CanonicalTileID> renderToTilesIDs;
    private final double width;
    private final double zoom;

    private CustomLayerRenderParameters(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, List<Double> list, DepthRange depthRange, ElevationData elevationData, List<CanonicalTileID> list2, CustomLayerMapProjection customLayerMapProjection) {
        this.width = d;
        this.height = d2;
        this.latitude = d3;
        this.longitude = d4;
        this.zoom = d5;
        this.bearing = d6;
        this.pitch = d7;
        this.fieldOfView = d8;
        this.projectionMatrix = list;
        this.depthRange = depthRange;
        this.elevationData = elevationData;
        this.renderToTilesIDs = list2;
        this.projection = customLayerMapProjection;
    }

    @Deprecated
    public CustomLayerRenderParameters(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, List<Double> list, DepthRange depthRange, ElevationData elevationData, CustomLayerMapProjection customLayerMapProjection) {
        this.width = d;
        this.height = d2;
        this.latitude = d3;
        this.longitude = d4;
        this.zoom = d5;
        this.bearing = d6;
        this.pitch = d7;
        this.fieldOfView = d8;
        this.projectionMatrix = list;
        this.depthRange = depthRange;
        this.elevationData = elevationData;
        this.renderToTilesIDs = null;
        this.projection = customLayerMapProjection;
    }

    public double getWidth() {
        return this.width;
    }

    public double getHeight() {
        return this.height;
    }

    public double getLatitude() {
        return this.latitude;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public double getZoom() {
        return this.zoom;
    }

    public double getBearing() {
        return this.bearing;
    }

    public double getPitch() {
        return this.pitch;
    }

    public double getFieldOfView() {
        return this.fieldOfView;
    }

    public List<Double> getProjectionMatrix() {
        return this.projectionMatrix;
    }

    public ElevationData getElevationData() {
        return this.elevationData;
    }

    public List<CanonicalTileID> getRenderToTilesIDs() {
        return this.renderToTilesIDs;
    }

    public CustomLayerMapProjection getProjection() {
        return this.projection;
    }

    public DepthRange getDepthRange() {
        return this.depthRange;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CustomLayerRenderParameters customLayerRenderParameters = (CustomLayerRenderParameters) obj;
        return Double.compare(this.width, customLayerRenderParameters.width) == 0 && Double.compare(this.height, customLayerRenderParameters.height) == 0 && Double.compare(this.latitude, customLayerRenderParameters.latitude) == 0 && Double.compare(this.longitude, customLayerRenderParameters.longitude) == 0 && Double.compare(this.zoom, customLayerRenderParameters.zoom) == 0 && Double.compare(this.bearing, customLayerRenderParameters.bearing) == 0 && Double.compare(this.pitch, customLayerRenderParameters.pitch) == 0 && Double.compare(this.fieldOfView, customLayerRenderParameters.fieldOfView) == 0 && Objects.equals(this.projectionMatrix, customLayerRenderParameters.projectionMatrix) && Objects.equals(this.depthRange, customLayerRenderParameters.depthRange) && Objects.equals(this.elevationData, customLayerRenderParameters.elevationData) && Objects.equals(this.renderToTilesIDs, customLayerRenderParameters.renderToTilesIDs) && Objects.equals(this.projection, customLayerRenderParameters.projection);
    }

    public int hashCode() {
        return Objects.hash(Double.valueOf(this.width), Double.valueOf(this.height), Double.valueOf(this.latitude), Double.valueOf(this.longitude), Double.valueOf(this.zoom), Double.valueOf(this.bearing), Double.valueOf(this.pitch), Double.valueOf(this.fieldOfView), this.projectionMatrix, this.depthRange, this.elevationData, this.renderToTilesIDs, this.projection);
    }

    public String toString() {
        return "[width: " + RecordUtils.fieldToString(Double.valueOf(this.width)) + ", height: " + RecordUtils.fieldToString(Double.valueOf(this.height)) + ", latitude: " + RecordUtils.fieldToString(Double.valueOf(this.latitude)) + ", longitude: " + RecordUtils.fieldToString(Double.valueOf(this.longitude)) + ", zoom: " + RecordUtils.fieldToString(Double.valueOf(this.zoom)) + ", bearing: " + RecordUtils.fieldToString(Double.valueOf(this.bearing)) + ", pitch: " + RecordUtils.fieldToString(Double.valueOf(this.pitch)) + ", fieldOfView: " + RecordUtils.fieldToString(Double.valueOf(this.fieldOfView)) + ", projectionMatrix: " + RecordUtils.fieldToString(this.projectionMatrix) + ", depthRange: " + RecordUtils.fieldToString(this.depthRange) + ", elevationData: " + RecordUtils.fieldToString(this.elevationData) + ", renderToTilesIDs: " + RecordUtils.fieldToString(this.renderToTilesIDs) + ", projection: " + RecordUtils.fieldToString(this.projection) + "]";
    }
}
