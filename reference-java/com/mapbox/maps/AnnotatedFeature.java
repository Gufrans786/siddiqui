package com.mapbox.maps;

import com.mapbox.geojson.Geometry;

public class AnnotatedFeature {
    private Type type;
    private Object value;

    public enum Type {
        GEOMETRY,
        ANNOTATED_LAYER_FEATURE
    }

    public String toString() {
        return String.valueOf(this.value);
    }

    public AnnotatedFeature(Geometry geometry) {
        this.type = Type.GEOMETRY;
        this.value = geometry;
    }

    public AnnotatedFeature(AnnotatedLayerFeature annotatedLayerFeature) {
        this.type = Type.ANNOTATED_LAYER_FEATURE;
        this.value = annotatedLayerFeature;
    }

    public static AnnotatedFeature valueOf(Geometry geometry) {
        return new AnnotatedFeature(geometry);
    }

    public static AnnotatedFeature valueOf(AnnotatedLayerFeature annotatedLayerFeature) {
        return new AnnotatedFeature(annotatedLayerFeature);
    }

    public boolean isGeometry() {
        return this.type == Type.GEOMETRY;
    }

    public boolean isAnnotatedLayerFeature() {
        return this.type == Type.ANNOTATED_LAYER_FEATURE;
    }

    public Geometry getGeometry() {
        if (isGeometry()) {
            return (Geometry) this.value;
        }
        throw new IllegalStateException("The content of the variant does not have type (Geometry)");
    }

    public AnnotatedLayerFeature getAnnotatedLayerFeature() {
        if (isAnnotatedLayerFeature()) {
            return (AnnotatedLayerFeature) this.value;
        }
        throw new IllegalStateException("The content of the variant does not have type (AnnotatedLayerFeature)");
    }

    public Type getTypeInfo() {
        return this.type;
    }
}
