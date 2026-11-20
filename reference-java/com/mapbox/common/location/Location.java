package com.mapbox.common.location;

import com.mapbox.bindgen.PartialEq;
import com.mapbox.bindgen.RecordUtils;
import com.mapbox.bindgen.Value;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.common.MapboxSDKCommonInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

public class Location implements Serializable {
    private Double altitude;
    private Double bearing;
    private Double bearingAccuracy;
    private final Value extra;
    private Long floor;
    private Double horizontalAccuracy;
    private final double latitude;
    private final double longitude;
    private Long monotonicTimestamp;
    private String source;
    private Double speed;
    private Double speedAccuracy;
    private final long timestamp;
    private Double verticalAccuracy;

    private Location(double d, double d2, long j, Long l, Double d3, Double d4, Double d5, Double d6, Double d7, Double d8, Double d9, Long l2, String str, Value value) {
        this.latitude = d;
        this.longitude = d2;
        this.timestamp = j;
        this.monotonicTimestamp = l;
        this.altitude = d3;
        this.horizontalAccuracy = d4;
        this.verticalAccuracy = d5;
        this.speed = d6;
        this.speedAccuracy = d7;
        this.bearing = d8;
        this.bearingAccuracy = d9;
        this.floor = l2;
        this.source = str;
        this.extra = value;
    }

    public double getLatitude() {
        return this.latitude;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public Long getMonotonicTimestamp() {
        return this.monotonicTimestamp;
    }

    public Double getAltitude() {
        return this.altitude;
    }

    public Double getHorizontalAccuracy() {
        return this.horizontalAccuracy;
    }

    public Double getVerticalAccuracy() {
        return this.verticalAccuracy;
    }

    public Double getSpeed() {
        return this.speed;
    }

    public Double getSpeedAccuracy() {
        return this.speedAccuracy;
    }

    public Double getBearing() {
        return this.bearing;
    }

    public Double getBearingAccuracy() {
        return this.bearingAccuracy;
    }

    public Long getFloor() {
        return this.floor;
    }

    public String getSource() {
        return this.source;
    }

    public Value getExtra() {
        return this.extra;
    }

    public void setMonotonicTimestamp(Long l) {
        this.monotonicTimestamp = l;
    }

    public void setAltitude(Double d) {
        this.altitude = d;
    }

    public void setHorizontalAccuracy(Double d) {
        this.horizontalAccuracy = d;
    }

    public void setVerticalAccuracy(Double d) {
        this.verticalAccuracy = d;
    }

    public void setSpeed(Double d) {
        this.speed = d;
    }

    public void setSpeedAccuracy(Double d) {
        this.speedAccuracy = d;
    }

    public void setBearing(Double d) {
        this.bearing = d;
    }

    public void setBearingAccuracy(Double d) {
        this.bearingAccuracy = d;
    }

    public void setFloor(Long l) {
        this.floor = l;
    }

    public void setSource(String str) {
        this.source = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Location location = (Location) obj;
        return PartialEq.compare(this.latitude, location.latitude) && PartialEq.compare(this.longitude, location.longitude) && this.timestamp == location.timestamp && Objects.equals(this.monotonicTimestamp, location.monotonicTimestamp) && Objects.equals(this.altitude, location.altitude) && Objects.equals(this.horizontalAccuracy, location.horizontalAccuracy) && Objects.equals(this.verticalAccuracy, location.verticalAccuracy) && Objects.equals(this.speed, location.speed) && Objects.equals(this.speedAccuracy, location.speedAccuracy) && Objects.equals(this.bearing, location.bearing) && Objects.equals(this.bearingAccuracy, location.bearingAccuracy) && Objects.equals(this.floor, location.floor) && Objects.equals(this.source, location.source) && Objects.equals(this.extra, location.extra);
    }

    public int hashCode() {
        return Objects.hash(Double.valueOf(this.latitude), Double.valueOf(this.longitude), Long.valueOf(this.timestamp), this.monotonicTimestamp, this.altitude, this.horizontalAccuracy, this.verticalAccuracy, this.speed, this.speedAccuracy, this.bearing, this.bearingAccuracy, this.floor, this.source, this.extra);
    }

    public static final class Builder {
        private Double altitude;
        private Double bearing;
        private Double bearingAccuracy;
        private Value extra;
        private Long floor;
        private Double horizontalAccuracy;
        private double latitude;
        private double longitude;
        private Long monotonicTimestamp;
        private String source;
        private Double speed;
        private Double speedAccuracy;
        private long timestamp;
        private Double verticalAccuracy;

        public Builder latitude(double d) {
            this.latitude = d;
            return this;
        }

        public Builder longitude(double d) {
            this.longitude = d;
            return this;
        }

        public Builder timestamp(long j) {
            this.timestamp = j;
            return this;
        }

        public Builder monotonicTimestamp(Long l) {
            this.monotonicTimestamp = l;
            return this;
        }

        public Builder altitude(Double d) {
            this.altitude = d;
            return this;
        }

        public Builder horizontalAccuracy(Double d) {
            this.horizontalAccuracy = d;
            return this;
        }

        public Builder verticalAccuracy(Double d) {
            this.verticalAccuracy = d;
            return this;
        }

        public Builder speed(Double d) {
            this.speed = d;
            return this;
        }

        public Builder speedAccuracy(Double d) {
            this.speedAccuracy = d;
            return this;
        }

        public Builder bearing(Double d) {
            this.bearing = d;
            return this;
        }

        public Builder bearingAccuracy(Double d) {
            this.bearingAccuracy = d;
            return this;
        }

        public Builder floor(Long l) {
            this.floor = l;
            return this;
        }

        public Builder source(String str) {
            this.source = str;
            return this;
        }

        public Builder extra(Value value) {
            this.extra = value;
            return this;
        }

        public Location build() {
            return new Location(this.latitude, this.longitude, this.timestamp, this.monotonicTimestamp, this.altitude, this.horizontalAccuracy, this.verticalAccuracy, this.speed, this.speedAccuracy, this.bearing, this.bearingAccuracy, this.floor, this.source, this.extra);
        }
    }

    public Builder toBuilder() {
        return new Builder().latitude(this.latitude).longitude(this.longitude).timestamp(this.timestamp).monotonicTimestamp(this.monotonicTimestamp).altitude(this.altitude).horizontalAccuracy(this.horizontalAccuracy).verticalAccuracy(this.verticalAccuracy).speed(this.speed).speedAccuracy(this.speedAccuracy).bearing(this.bearing).bearingAccuracy(this.bearingAccuracy).floor(this.floor).source(this.source).extra(this.extra);
    }

    public String toString() {
        return "[latitude: " + RecordUtils.fieldToString(Double.valueOf(this.latitude)) + ", longitude: " + RecordUtils.fieldToString(Double.valueOf(this.longitude)) + ", timestamp: " + RecordUtils.fieldToString(Long.valueOf(this.timestamp)) + ", monotonicTimestamp: " + RecordUtils.fieldToString(this.monotonicTimestamp) + ", altitude: " + RecordUtils.fieldToString(this.altitude) + ", horizontalAccuracy: " + RecordUtils.fieldToString(this.horizontalAccuracy) + ", verticalAccuracy: " + RecordUtils.fieldToString(this.verticalAccuracy) + ", speed: " + RecordUtils.fieldToString(this.speed) + ", speedAccuracy: " + RecordUtils.fieldToString(this.speedAccuracy) + ", bearing: " + RecordUtils.fieldToString(this.bearing) + ", bearingAccuracy: " + RecordUtils.fieldToString(this.bearingAccuracy) + ", floor: " + RecordUtils.fieldToString(this.floor) + ", source: " + RecordUtils.fieldToString(this.source) + ", extra: " + RecordUtils.fieldToString(this.extra) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
