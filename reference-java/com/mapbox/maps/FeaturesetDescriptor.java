package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class FeaturesetDescriptor implements Serializable {
    private final String featuresetId;
    private final String importId;
    private final String layerId;

    public FeaturesetDescriptor(String str, String str2, String str3) {
        this.featuresetId = str;
        this.importId = str2;
        this.layerId = str3;
    }

    public String getFeaturesetId() {
        return this.featuresetId;
    }

    public String getImportId() {
        return this.importId;
    }

    public String getLayerId() {
        return this.layerId;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        FeaturesetDescriptor featuresetDescriptor = (FeaturesetDescriptor) obj;
        return Objects.equals(this.featuresetId, featuresetDescriptor.featuresetId) && Objects.equals(this.importId, featuresetDescriptor.importId) && Objects.equals(this.layerId, featuresetDescriptor.layerId);
    }

    public int hashCode() {
        return Objects.hash(this.featuresetId, this.importId, this.layerId);
    }

    public String toString() {
        return "[featuresetId: " + RecordUtils.fieldToString(this.featuresetId) + ", importId: " + RecordUtils.fieldToString(this.importId) + ", layerId: " + RecordUtils.fieldToString(this.layerId) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
