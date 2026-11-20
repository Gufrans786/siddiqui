package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.List;
import java.util.Objects;

public final class CameraAnimationHint implements Serializable {
    private final List<CameraAnimationHintStage> stages;

    private CameraAnimationHint(List<CameraAnimationHintStage> list) {
        this.stages = list;
    }

    public List<CameraAnimationHintStage> getStages() {
        return this.stages;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && Objects.equals(this.stages, ((CameraAnimationHint) obj).stages);
    }

    public int hashCode() {
        return Objects.hash(this.stages);
    }

    public static final class Builder {
        private List<CameraAnimationHintStage> stages;

        public Builder stages(List<CameraAnimationHintStage> list) {
            this.stages = list;
            return this;
        }

        public CameraAnimationHint build() {
            if (this.stages == null) {
                throw new NullPointerException("stages shouldn't be null");
            }
            return new CameraAnimationHint(this.stages);
        }
    }

    public Builder toBuilder() {
        return new Builder().stages(this.stages);
    }

    public String toString() {
        return "[stages: " + RecordUtils.fieldToString(this.stages) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
