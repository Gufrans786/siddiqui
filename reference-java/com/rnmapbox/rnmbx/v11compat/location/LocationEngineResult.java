package com.rnmapbox.rnmbx.v11compat.location;

import com.mapbox.common.location.Location;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0002\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0011\u0010\n\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u0004HÆ\u0003J\u001b\u0010\u000b\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u0004HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\"\u0010\u0002\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0006¨\u0006\u0013"}, d2 = {"Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;", "", "lastLocation", "Lcom/mapbox/common/location/Location;", "Lcom/rnmapbox/rnmbx/v11compat/location/Location;", "<init>", "(Lcom/mapbox/common/location/Location;)V", "getLastLocation", "()Lcom/mapbox/common/location/Location;", "setLastLocation", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LocationEngineResult {
    private Location lastLocation;

    public static LocationEngineResult copy$default(LocationEngineResult locationEngineResult, Location location, int i, Object obj) {
        if ((i & 1) != 0) {
            location = locationEngineResult.lastLocation;
        }
        return locationEngineResult.copy(location);
    }

    public final Location getLastLocation() {
        return this.lastLocation;
    }

    public final LocationEngineResult copy(Location lastLocation) {
        return new LocationEngineResult(lastLocation);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof LocationEngineResult) && Intrinsics.areEqual(this.lastLocation, ((LocationEngineResult) other).lastLocation);
    }

    public int hashCode() {
        Location location = this.lastLocation;
        if (location == null) {
            return 0;
        }
        return location.hashCode();
    }

    public String toString() {
        return "LocationEngineResult(lastLocation=" + this.lastLocation + ")";
    }

    public LocationEngineResult(Location location) {
        this.lastLocation = location;
    }

    public final Location getLastLocation() {
        return this.lastLocation;
    }

    public final void setLastLocation(Location location) {
        this.lastLocation = location;
    }
}
