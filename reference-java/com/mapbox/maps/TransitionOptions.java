package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class TransitionOptions implements Serializable {
    private final Long delay;
    private final Long duration;
    private final Boolean enablePlacementTransitions;

    private TransitionOptions(Long l, Long l2, Boolean bool) {
        this.duration = l;
        this.delay = l2;
        this.enablePlacementTransitions = bool;
    }

    public Long getDuration() {
        return this.duration;
    }

    public Long getDelay() {
        return this.delay;
    }

    public Boolean getEnablePlacementTransitions() {
        return this.enablePlacementTransitions;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TransitionOptions transitionOptions = (TransitionOptions) obj;
        return Objects.equals(this.duration, transitionOptions.duration) && Objects.equals(this.delay, transitionOptions.delay) && Objects.equals(this.enablePlacementTransitions, transitionOptions.enablePlacementTransitions);
    }

    public int hashCode() {
        return Objects.hash(this.duration, this.delay, this.enablePlacementTransitions);
    }

    public static final class Builder {
        private Long delay;
        private Long duration;
        private Boolean enablePlacementTransitions;

        public Builder duration(Long l) {
            this.duration = l;
            return this;
        }

        public Builder delay(Long l) {
            this.delay = l;
            return this;
        }

        public Builder enablePlacementTransitions(Boolean bool) {
            this.enablePlacementTransitions = bool;
            return this;
        }

        public TransitionOptions build() {
            return new TransitionOptions(this.duration, this.delay, this.enablePlacementTransitions);
        }
    }

    public Builder toBuilder() {
        return new Builder().duration(this.duration).delay(this.delay).enablePlacementTransitions(this.enablePlacementTransitions);
    }

    public String toString() {
        return "[duration: " + RecordUtils.fieldToString(this.duration) + ", delay: " + RecordUtils.fieldToString(this.delay) + ", enablePlacementTransitions: " + RecordUtils.fieldToString(this.enablePlacementTransitions) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
