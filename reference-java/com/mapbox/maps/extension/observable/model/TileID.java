package com.mapbox.maps.extension.observable.model;

import ch.qos.logback.core.CoreConstants;
import com.google.gson.annotations.SerializedName;
import com.nimbusds.jose.jwk.JWKParameterNames;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;

@Deprecated(level = DeprecationLevel.WARNING, message = "This data class is deprecated, and will be removed in next major release.", replaceWith = @ReplaceWith(expression = "CanonicalTileID", imports = {}))
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J'\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u0016"}, d2 = {"Lcom/mapbox/maps/extension/observable/model/TileID;", "", "zoom", "", "x", JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE, "(JJJ)V", "getX", "()J", "getY", "getZoom", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class TileID {

    @SerializedName("x")
    private final long x;

    @SerializedName(JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE)
    private final long y;

    @SerializedName("z")
    private final long zoom;

    public static TileID copy$default(TileID tileID, long j, long j2, long j3, int i, Object obj) {
        if ((i & 1) != 0) {
            j = tileID.zoom;
        }
        long j4 = j;
        if ((i & 2) != 0) {
            j2 = tileID.x;
        }
        long j5 = j2;
        if ((i & 4) != 0) {
            j3 = tileID.y;
        }
        return tileID.copy(j4, j5, j3);
    }

    public final long getZoom() {
        return this.zoom;
    }

    public final long getX() {
        return this.x;
    }

    public final long getY() {
        return this.y;
    }

    public final TileID copy(long zoom, long x, long y) {
        return new TileID(zoom, x, y);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TileID)) {
            return false;
        }
        TileID tileID = (TileID) other;
        return this.zoom == tileID.zoom && this.x == tileID.x && this.y == tileID.y;
    }

    public int hashCode() {
        return (((Long.hashCode(this.zoom) * 31) + Long.hashCode(this.x)) * 31) + Long.hashCode(this.y);
    }

    public String toString() {
        return "TileID(zoom=" + this.zoom + ", x=" + this.x + ", y=" + this.y + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public TileID(long j, long j2, long j3) {
        this.zoom = j;
        this.x = j2;
        this.y = j3;
    }

    public final long getZoom() {
        return this.zoom;
    }

    public final long getX() {
        return this.x;
    }

    public final long getY() {
        return this.y;
    }
}
