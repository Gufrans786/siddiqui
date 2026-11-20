package com.rnmapbox.rnmbx.components.annotation;

import kotlin.Metadata;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0014"}, d2 = {"Lcom/rnmapbox/rnmbx/components/annotation/Vec2;", "", "dx", "", "dy", "<init>", "(DD)V", "getDx", "()D", "getDy", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class Vec2 {
    private final double dx;
    private final double dy;

    public static Vec2 copy$default(Vec2 vec2, double d, double d2, int i, Object obj) {
        if ((i & 1) != 0) {
            d = vec2.dx;
        }
        if ((i & 2) != 0) {
            d2 = vec2.dy;
        }
        return vec2.copy(d, d2);
    }

    public final double getDx() {
        return this.dx;
    }

    public final double getDy() {
        return this.dy;
    }

    public final Vec2 copy(double dx, double dy) {
        return new Vec2(dx, dy);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Vec2)) {
            return false;
        }
        Vec2 vec2 = (Vec2) other;
        return Double.compare(this.dx, vec2.dx) == 0 && Double.compare(this.dy, vec2.dy) == 0;
    }

    public int hashCode() {
        return (Double.hashCode(this.dx) * 31) + Double.hashCode(this.dy);
    }

    public String toString() {
        return "Vec2(dx=" + this.dx + ", dy=" + this.dy + ")";
    }

    public Vec2(double d, double d2) {
        this.dx = d;
        this.dy = d2;
    }

    public final double getDx() {
        return this.dx;
    }

    public final double getDy() {
        return this.dy;
    }
}
