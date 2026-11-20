package com.rnmapbox.rnmbx.modules;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\tJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000eJ&\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u001d"}, d2 = {"Lcom/rnmapbox/rnmbx/modules/LocationEventThrottle;", "", "waitBetweenEvents", "", "lastSentTimestamp", "", "<init>", "(Ljava/lang/Double;Ljava/lang/Long;)V", "getWaitBetweenEvents", "()Ljava/lang/Double;", "setWaitBetweenEvents", "(Ljava/lang/Double;)V", "Ljava/lang/Double;", "getLastSentTimestamp", "()Ljava/lang/Long;", "setLastSentTimestamp", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "component1", "component2", "copy", "(Ljava/lang/Double;Ljava/lang/Long;)Lcom/rnmapbox/rnmbx/modules/LocationEventThrottle;", "equals", "", "other", "hashCode", "", "toString", "", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LocationEventThrottle {
    private Long lastSentTimestamp;
    private Double waitBetweenEvents;

    public LocationEventThrottle() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public static LocationEventThrottle copy$default(LocationEventThrottle locationEventThrottle, Double d, Long l, int i, Object obj) {
        if ((i & 1) != 0) {
            d = locationEventThrottle.waitBetweenEvents;
        }
        if ((i & 2) != 0) {
            l = locationEventThrottle.lastSentTimestamp;
        }
        return locationEventThrottle.copy(d, l);
    }

    public final Double getWaitBetweenEvents() {
        return this.waitBetweenEvents;
    }

    public final Long getLastSentTimestamp() {
        return this.lastSentTimestamp;
    }

    public final LocationEventThrottle copy(Double waitBetweenEvents, Long lastSentTimestamp) {
        return new LocationEventThrottle(waitBetweenEvents, lastSentTimestamp);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LocationEventThrottle)) {
            return false;
        }
        LocationEventThrottle locationEventThrottle = (LocationEventThrottle) other;
        return Intrinsics.areEqual((Object) this.waitBetweenEvents, (Object) locationEventThrottle.waitBetweenEvents) && Intrinsics.areEqual(this.lastSentTimestamp, locationEventThrottle.lastSentTimestamp);
    }

    public int hashCode() {
        Double d = this.waitBetweenEvents;
        int iHashCode = (d == null ? 0 : d.hashCode()) * 31;
        Long l = this.lastSentTimestamp;
        return iHashCode + (l != null ? l.hashCode() : 0);
    }

    public String toString() {
        return "LocationEventThrottle(waitBetweenEvents=" + this.waitBetweenEvents + ", lastSentTimestamp=" + this.lastSentTimestamp + ")";
    }

    public LocationEventThrottle(Double d, Long l) {
        this.waitBetweenEvents = d;
        this.lastSentTimestamp = l;
    }

    public LocationEventThrottle(Double d, Long l, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : d, (i & 2) != 0 ? null : l);
    }

    public final Long getLastSentTimestamp() {
        return this.lastSentTimestamp;
    }

    public final Double getWaitBetweenEvents() {
        return this.waitBetweenEvents;
    }

    public final void setLastSentTimestamp(Long l) {
        this.lastSentTimestamp = l;
    }

    public final void setWaitBetweenEvents(Double d) {
        this.waitBetweenEvents = d;
    }
}
