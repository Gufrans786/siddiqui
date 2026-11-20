package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.bindgen.Value;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.geojson.Feature;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class QueriedFeature implements Serializable {
    private final Feature feature;
    private final FeaturesetFeatureId featuresetFeatureId;
    private final String source;
    private final String sourceLayer;
    private final Value state;

    public QueriedFeature(Feature feature, String str, String str2, Value value, FeaturesetFeatureId featuresetFeatureId) {
        this.feature = feature;
        this.source = str;
        this.sourceLayer = str2;
        this.state = value;
        this.featuresetFeatureId = featuresetFeatureId;
    }

    public Feature getFeature() {
        return this.feature;
    }

    public String getSource() {
        return this.source;
    }

    public String getSourceLayer() {
        return this.sourceLayer;
    }

    public Value getState() {
        return this.state;
    }

    public FeaturesetFeatureId getFeaturesetFeatureId() {
        return this.featuresetFeatureId;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        QueriedFeature queriedFeature = (QueriedFeature) obj;
        return Objects.equals(this.feature, queriedFeature.feature) && Objects.equals(this.source, queriedFeature.source) && Objects.equals(this.sourceLayer, queriedFeature.sourceLayer) && Objects.equals(this.state, queriedFeature.state) && Objects.equals(this.featuresetFeatureId, queriedFeature.featuresetFeatureId);
    }

    public int hashCode() {
        return Objects.hash(this.feature, this.source, this.sourceLayer, this.state, this.featuresetFeatureId);
    }

    public String toString() {
        return "[feature: " + RecordUtils.fieldToString(this.feature) + ", source: " + RecordUtils.fieldToString(this.source) + ", sourceLayer: " + RecordUtils.fieldToString(this.sourceLayer) + ", state: " + RecordUtils.fieldToString(this.state) + ", featuresetFeatureId: " + RecordUtils.fieldToString(this.featuresetFeatureId) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
