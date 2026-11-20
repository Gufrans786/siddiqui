package com.rnmapbox.rnmbx.modules;

import kotlin.Metadata;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0005\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0014"}, d2 = {"Lcom/rnmapbox/rnmbx/modules/ZoomRange;", "", "minZoom", "", "maxZoom", "<init>", "(BB)V", "getMinZoom", "()B", "getMaxZoom", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ZoomRange {
    private final byte maxZoom;
    private final byte minZoom;

    public static ZoomRange copy$default(ZoomRange zoomRange, byte b, byte b2, int i, Object obj) {
        if ((i & 1) != 0) {
            b = zoomRange.minZoom;
        }
        if ((i & 2) != 0) {
            b2 = zoomRange.maxZoom;
        }
        return zoomRange.copy(b, b2);
    }

    public final byte getMinZoom() {
        return this.minZoom;
    }

    public final byte getMaxZoom() {
        return this.maxZoom;
    }

    public final ZoomRange copy(byte minZoom, byte maxZoom) {
        return new ZoomRange(minZoom, maxZoom);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ZoomRange)) {
            return false;
        }
        ZoomRange zoomRange = (ZoomRange) other;
        return this.minZoom == zoomRange.minZoom && this.maxZoom == zoomRange.maxZoom;
    }

    public int hashCode() {
        return (Byte.hashCode(this.minZoom) * 31) + Byte.hashCode(this.maxZoom);
    }

    public String toString() {
        return "ZoomRange(minZoom=" + ((int) this.minZoom) + ", maxZoom=" + ((int) this.maxZoom) + ")";
    }

    public ZoomRange(byte b, byte b2) {
        this.minZoom = b;
        this.maxZoom = b2;
    }

    public final byte getMaxZoom() {
        return this.maxZoom;
    }

    public final byte getMinZoom() {
        return this.minZoom;
    }
}
