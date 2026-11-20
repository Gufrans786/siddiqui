package com.mapbox.maps;

import com.mapbox.bindgen.PartialEq;
import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public final class MapPlayerOptions implements Serializable {
    private final boolean avoidPlaybackPauses;
    private final int playbackCount;
    private final double playbackSpeedMultiplier;

    private MapPlayerOptions(int i, double d, boolean z) {
        this.playbackCount = i;
        this.playbackSpeedMultiplier = d;
        this.avoidPlaybackPauses = z;
    }

    private MapPlayerOptions() {
        this.playbackCount = 1;
        this.playbackSpeedMultiplier = 1.0d;
        this.avoidPlaybackPauses = false;
    }

    public int getPlaybackCount() {
        return this.playbackCount;
    }

    public double getPlaybackSpeedMultiplier() {
        return this.playbackSpeedMultiplier;
    }

    public boolean getAvoidPlaybackPauses() {
        return this.avoidPlaybackPauses;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MapPlayerOptions mapPlayerOptions = (MapPlayerOptions) obj;
        return this.playbackCount == mapPlayerOptions.playbackCount && PartialEq.compare(this.playbackSpeedMultiplier, mapPlayerOptions.playbackSpeedMultiplier) && this.avoidPlaybackPauses == mapPlayerOptions.avoidPlaybackPauses;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.playbackCount), Double.valueOf(this.playbackSpeedMultiplier), Boolean.valueOf(this.avoidPlaybackPauses));
    }

    public static final class Builder {
        private int playbackCount = 1;
        private double playbackSpeedMultiplier = 1.0d;
        private boolean avoidPlaybackPauses = false;

        public Builder playbackCount(int i) {
            this.playbackCount = i;
            return this;
        }

        public Builder playbackSpeedMultiplier(double d) {
            this.playbackSpeedMultiplier = d;
            return this;
        }

        public Builder avoidPlaybackPauses(boolean z) {
            this.avoidPlaybackPauses = z;
            return this;
        }

        public MapPlayerOptions build() {
            return new MapPlayerOptions(this.playbackCount, this.playbackSpeedMultiplier, this.avoidPlaybackPauses);
        }
    }

    public Builder toBuilder() {
        return new Builder().playbackCount(this.playbackCount).playbackSpeedMultiplier(this.playbackSpeedMultiplier).avoidPlaybackPauses(this.avoidPlaybackPauses);
    }

    public String toString() {
        return "[playbackCount: " + RecordUtils.fieldToString(Integer.valueOf(this.playbackCount)) + ", playbackSpeedMultiplier: " + RecordUtils.fieldToString(Double.valueOf(this.playbackSpeedMultiplier)) + ", avoidPlaybackPauses: " + RecordUtils.fieldToString(Boolean.valueOf(this.avoidPlaybackPauses)) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
