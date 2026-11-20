package com.mapbox.maps;

import com.mapbox.geojson.Feature;
import com.mapbox.geojson.Geometry;
import java.util.List;

public class GeoJSONSourceData {
    private Type type;
    private Object value;

    public enum Type {
        GEOMETRY,
        FEATURE,
        LIST,
        STRING
    }

    public String toString() {
        return String.valueOf(this.value);
    }

    public GeoJSONSourceData(Geometry geometry) {
        this.type = Type.GEOMETRY;
        this.value = geometry;
    }

    public GeoJSONSourceData(Feature feature) {
        this.type = Type.FEATURE;
        this.value = feature;
    }

    public GeoJSONSourceData(List<Feature> list) {
        this.type = Type.LIST;
        this.value = list;
    }

    public GeoJSONSourceData(String str) {
        this.type = Type.STRING;
        this.value = str;
    }

    public static GeoJSONSourceData valueOf(Geometry geometry) {
        return new GeoJSONSourceData(geometry);
    }

    public static GeoJSONSourceData valueOf(Feature feature) {
        return new GeoJSONSourceData(feature);
    }

    public static GeoJSONSourceData valueOf(List<Feature> list) {
        return new GeoJSONSourceData(list);
    }

    public static GeoJSONSourceData valueOf(String str) {
        return new GeoJSONSourceData(str);
    }

    public boolean isGeometry() {
        return this.type == Type.GEOMETRY;
    }

    public boolean isFeature() {
        return this.type == Type.FEATURE;
    }

    public boolean isList() {
        return this.type == Type.LIST;
    }

    public boolean isString() {
        return this.type == Type.STRING;
    }

    public Geometry getGeometry() {
        if (isGeometry()) {
            return (Geometry) this.value;
        }
        throw new IllegalStateException("The content of the variant does not have type (Geometry)");
    }

    public Feature getFeature() {
        if (isFeature()) {
            return (Feature) this.value;
        }
        throw new IllegalStateException("The content of the variant does not have type (Feature)");
    }

    public List<Feature> getList() {
        if (isList()) {
            return (List) this.value;
        }
        throw new IllegalStateException("The content of the variant does not have type (List<Feature>)");
    }

    public String getString() {
        if (isString()) {
            return (String) this.value;
        }
        throw new IllegalStateException("The content of the variant does not have type (String)");
    }

    public Type getTypeInfo() {
        return this.type;
    }
}
