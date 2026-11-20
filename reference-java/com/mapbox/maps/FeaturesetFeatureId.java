package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class FeaturesetFeatureId implements Serializable {
    private final String featureId;
    private final String featureNamespace;

    public FeaturesetFeatureId(String str, String str2) {
        this.featureId = str;
        this.featureNamespace = str2;
    }

    public String getFeatureId() {
        return this.featureId;
    }

    public String getFeatureNamespace() {
        return this.featureNamespace;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        FeaturesetFeatureId featuresetFeatureId = (FeaturesetFeatureId) obj;
        return Objects.equals(this.featureId, featuresetFeatureId.featureId) && Objects.equals(this.featureNamespace, featuresetFeatureId.featureNamespace);
    }

    public int hashCode() {
        return Objects.hash(this.featureId, this.featureNamespace);
    }

    public String toString() {
        return "[featureId: " + RecordUtils.fieldToString(this.featureId) + ", featureNamespace: " + RecordUtils.fieldToString(this.featureNamespace) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
