package com.rnmapbox.rnmbx.utils;

import com.mapbox.geojson.Point;
import com.mapbox.maps.CoordinateBounds;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB)\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0011\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00140\u001a¢\u0006\u0002\u0010\u001bJ\u0006\u0010\u001c\u001a\u00020\u001dR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\fR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\n\"\u0004\b\u0010\u0010\fR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\n\"\u0004\b\u0012\u0010\fR\u0011\u0010\u0013\u001a\u00020\u00148F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u00148F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0016¨\u0006\u001f"}, d2 = {"Lcom/rnmapbox/rnmbx/utils/LatLngBounds;", "", "latNorth", "", "lonEast", "latSouth", "lonWest", "<init>", "(DDDD)V", "getLatNorth", "()D", "setLatNorth", "(D)V", "getLonEast", "setLonEast", "getLatSouth", "setLatSouth", "getLonWest", "setLonWest", "southWest", "Lcom/rnmapbox/rnmbx/utils/LatLng;", "getSouthWest", "()Lcom/rnmapbox/rnmbx/utils/LatLng;", "northEast", "getNorthEast", "toLatLngs", "", "()[Lcom/rnmapbox/rnmbx/utils/LatLng;", "toBounds", "Lcom/mapbox/maps/CoordinateBounds;", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LatLngBounds {

    public static final Companion INSTANCE = new Companion(null);
    private double latNorth;
    private double latSouth;
    private double lonEast;
    private double lonWest;

    public LatLngBounds(double d, double d2, double d3, double d4) {
        this.latNorth = d;
        this.lonEast = d2;
        this.latSouth = d3;
        this.lonWest = d4;
    }

    public final double getLatNorth() {
        return this.latNorth;
    }

    public final void setLatNorth(double d) {
        this.latNorth = d;
    }

    public final double getLonEast() {
        return this.lonEast;
    }

    public final void setLonEast(double d) {
        this.lonEast = d;
    }

    public final double getLatSouth() {
        return this.latSouth;
    }

    public final void setLatSouth(double d) {
        this.latSouth = d;
    }

    public final double getLonWest() {
        return this.lonWest;
    }

    public final void setLonWest(double d) {
        this.lonWest = d;
    }

    public final LatLng getSouthWest() {
        return new LatLng(this.latSouth, this.lonWest);
    }

    public final LatLng getNorthEast() {
        return new LatLng(this.latNorth, this.lonEast);
    }

    public final LatLng[] toLatLngs() {
        return new LatLng[]{getNorthEast(), getSouthWest()};
    }

    public final CoordinateBounds toBounds() {
        return new CoordinateBounds(Point.fromLngLat(this.lonWest, this.latSouth), Point.fromLngLat(this.lonEast, this.latNorth), false);
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007¨\u0006\u000b"}, d2 = {"Lcom/rnmapbox/rnmbx/utils/LatLngBounds$Companion;", "", "<init>", "()V", "from", "Lcom/rnmapbox/rnmbx/utils/LatLngBounds;", "bbox", "", "bbox1", "bbox2", "bbox3", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final LatLngBounds from(double bbox, double bbox1, double bbox2, double bbox3) {
            return new LatLngBounds(bbox, bbox1, bbox2, bbox3);
        }
    }
}
