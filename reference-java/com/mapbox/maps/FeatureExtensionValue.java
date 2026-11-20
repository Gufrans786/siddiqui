package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.bindgen.Value;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.geojson.Feature;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.List;
import java.util.Objects;

public final class FeatureExtensionValue implements Serializable {
    private final List<Feature> featureCollection;
    private final Value value;

    public FeatureExtensionValue(Value value, List<Feature> list) {
        this.value = value;
        this.featureCollection = list;
    }

    public Value getValue() {
        return this.value;
    }

    public List<Feature> getFeatureCollection() {
        return this.featureCollection;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        FeatureExtensionValue featureExtensionValue = (FeatureExtensionValue) obj;
        return Objects.equals(this.value, featureExtensionValue.value) && Objects.equals(this.featureCollection, featureExtensionValue.featureCollection);
    }

    public int hashCode() {
        return Objects.hash(this.value, this.featureCollection);
    }

    public String toString() {
        return "[value: " + RecordUtils.fieldToString(this.value) + ", featureCollection: " + RecordUtils.fieldToString(this.featureCollection) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
