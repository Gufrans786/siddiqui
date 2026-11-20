package com.mapbox.common.location;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.common.MapboxSDKCommonInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public class IntervalSettings implements Serializable {
    private final Long interval;
    private final Long maximumInterval;
    private final Long minimumInterval;

    private IntervalSettings(Long l, Long l2, Long l3) {
        this.minimumInterval = l;
        this.maximumInterval = l2;
        this.interval = l3;
    }

    public Long getMinimumInterval() {
        return this.minimumInterval;
    }

    public Long getMaximumInterval() {
        return this.maximumInterval;
    }

    public Long getInterval() {
        return this.interval;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        IntervalSettings intervalSettings = (IntervalSettings) obj;
        return Objects.equals(this.minimumInterval, intervalSettings.minimumInterval) && Objects.equals(this.maximumInterval, intervalSettings.maximumInterval) && Objects.equals(this.interval, intervalSettings.interval);
    }

    public int hashCode() {
        return Objects.hash(this.minimumInterval, this.maximumInterval, this.interval);
    }

    public static final class Builder {
        private Long interval;
        private Long maximumInterval;
        private Long minimumInterval;

        public Builder minimumInterval(Long l) {
            this.minimumInterval = l;
            return this;
        }

        public Builder maximumInterval(Long l) {
            this.maximumInterval = l;
            return this;
        }

        public Builder interval(Long l) {
            this.interval = l;
            return this;
        }

        public IntervalSettings build() {
            return new IntervalSettings(this.minimumInterval, this.maximumInterval, this.interval);
        }
    }

    public Builder toBuilder() {
        return new Builder().minimumInterval(this.minimumInterval).maximumInterval(this.maximumInterval).interval(this.interval);
    }

    public String toString() {
        return "[minimumInterval: " + RecordUtils.fieldToString(this.minimumInterval) + ", maximumInterval: " + RecordUtils.fieldToString(this.maximumInterval) + ", interval: " + RecordUtils.fieldToString(this.interval) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
