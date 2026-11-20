package com.rnmapbox.rnmbx.components.location;

import android.location.Location;
import com.rnmapbox.rnmbx.utils.LatLng;

public class UserLocation {
    private Location currentLocation;
    private Location previousLocation;
    private int userTrackingMode;

    public UserLocation() {
        this(null);
    }

    public UserLocation(Location location) {
        this.userTrackingMode = 0;
        this.currentLocation = location;
    }

    public Location getCurrentLocation() {
        return this.currentLocation;
    }

    public double getBearing() {
        Location location = this.currentLocation;
        if (location == null) {
            return 0.0d;
        }
        return location.getBearing();
    }

    public LatLng getCoordinate() {
        if (this.currentLocation == null) {
            return null;
        }
        return new LatLng(this.currentLocation.getLatitude(), this.currentLocation.getLongitude());
    }

    public void setCurrentLocation(Location location) {
        this.previousLocation = this.currentLocation;
        this.currentLocation = location;
    }

    public void setTrackingMode(int i) {
        this.userTrackingMode = i;
    }

    public int getTrackingMode() {
        return this.userTrackingMode;
    }

    public float getDistance(Location location) {
        Location location2 = this.currentLocation;
        if (location2 == null) {
            return 0.0f;
        }
        return location2.distanceTo(location);
    }
}
