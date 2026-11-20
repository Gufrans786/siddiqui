package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class AnnotatedLayerFeature implements Serializable {
    private final String featureId;
    private final String layerId;

    private AnnotatedLayerFeature(String str, String str2) {
        this.layerId = str;
        this.featureId = str2;
    }

    public String getLayerId() {
        return this.layerId;
    }

    public String getFeatureId() {
        return this.featureId;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AnnotatedLayerFeature annotatedLayerFeature = (AnnotatedLayerFeature) obj;
        return Objects.equals(this.layerId, annotatedLayerFeature.layerId) && Objects.equals(this.featureId, annotatedLayerFeature.featureId);
    }

    public int hashCode() {
        return Objects.hash(this.layerId, this.featureId);
    }

    public static final class Builder {
        private String featureId;
        private String layerId;

        public Builder layerId(String str) {
            this.layerId = str;
            return this;
        }

        public Builder featureId(String str) {
            this.featureId = str;
            return this;
        }

        public AnnotatedLayerFeature build() {
            if (this.layerId == null) {
                throw new NullPointerException("layerId shouldn't be null");
            }
            return new AnnotatedLayerFeature(this.layerId, this.featureId);
        }
    }

    public Builder toBuilder() {
        return new Builder().layerId(this.layerId).featureId(this.featureId);
    }

    public String toString() {
        return "[layerId: " + RecordUtils.fieldToString(this.layerId) + ", featureId: " + RecordUtils.fieldToString(this.featureId) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
