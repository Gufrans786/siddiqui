package com.mapbox.common.location;
public final class Location {
    private double latitude, longitude;
    private String source;
    public double getLatitude() { return latitude; }
    public double getLongitude() { return longitude; }
    public String getSource() { return source; }
    public Builder toBuilder() { return new Builder().latitude(latitude).longitude(longitude).source(source); }
    public static final class Builder {
        private final Location value = new Location();
        public Builder() {}
        public Builder latitude(double v) { value.latitude=v; return this; }
        public Builder longitude(double v) { value.longitude=v; return this; }
        public Builder source(String v) { value.source=v; return this; }
        public Builder timestamp(long v) { return this; }
        public Builder monotonicTimestamp(Long v) { return this; }
        public Builder horizontalAccuracy(Double v) { return this; }
        public Builder speed(Double v) { return this; }
        public Builder bearing(Double v) { return this; }
        public Location build() { return value; }
    }
}
