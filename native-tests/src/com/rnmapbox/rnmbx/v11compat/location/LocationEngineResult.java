package com.rnmapbox.rnmbx.v11compat.location;
import com.mapbox.common.location.Location;
import sa.lg.android.locate.autobid.AppLocationOverride;
public final class LocationEngineResult {
    private final Location value;
    public LocationEngineResult(Location value) { this.value=value; }
    public Location getLastLocation() { return (Location) AppLocationOverride.mapboxLocation(value); }
}
