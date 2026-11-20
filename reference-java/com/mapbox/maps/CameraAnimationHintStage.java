package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class CameraAnimationHintStage implements Serializable {
    private final CameraOptions camera;
    private final long progress;

    private CameraAnimationHintStage(long j, CameraOptions cameraOptions) {
        this.progress = j;
        this.camera = cameraOptions;
    }

    public long getProgress() {
        return this.progress;
    }

    public CameraOptions getCamera() {
        return this.camera;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CameraAnimationHintStage cameraAnimationHintStage = (CameraAnimationHintStage) obj;
        return this.progress == cameraAnimationHintStage.progress && Objects.equals(this.camera, cameraAnimationHintStage.camera);
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.progress), this.camera);
    }

    public static final class Builder {
        private CameraOptions camera;
        private long progress;

        public Builder progress(long j) {
            this.progress = j;
            return this;
        }

        public Builder camera(CameraOptions cameraOptions) {
            this.camera = cameraOptions;
            return this;
        }

        public CameraAnimationHintStage build() {
            if (this.camera == null) {
                throw new NullPointerException("camera shouldn't be null");
            }
            return new CameraAnimationHintStage(this.progress, this.camera);
        }
    }

    public Builder toBuilder() {
        return new Builder().progress(this.progress).camera(this.camera);
    }

    public String toString() {
        return "[progress: " + RecordUtils.fieldToString(Long.valueOf(this.progress)) + ", camera: " + RecordUtils.fieldToString(this.camera) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
