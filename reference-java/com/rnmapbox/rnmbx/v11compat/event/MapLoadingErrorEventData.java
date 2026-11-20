package com.rnmapbox.rnmbx.v11compat.event;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005¨\u0006\u0011"}, d2 = {"Lcom/rnmapbox/rnmbx/v11compat/event/MapLoadingErrorEventData;", "", "message", "", "<init>", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "setMessage", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MapLoadingErrorEventData {
    private String message;

    public static MapLoadingErrorEventData copy$default(MapLoadingErrorEventData mapLoadingErrorEventData, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = mapLoadingErrorEventData.message;
        }
        return mapLoadingErrorEventData.copy(str);
    }

    public final String getMessage() {
        return this.message;
    }

    public final MapLoadingErrorEventData copy(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return new MapLoadingErrorEventData(message);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof MapLoadingErrorEventData) && Intrinsics.areEqual(this.message, ((MapLoadingErrorEventData) other).message);
    }

    public int hashCode() {
        return this.message.hashCode();
    }

    public String toString() {
        return "MapLoadingErrorEventData(message=" + this.message + ")";
    }

    public MapLoadingErrorEventData(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.message = message;
    }

    public final String getMessage() {
        return this.message;
    }

    public final void setMessage(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.message = str;
    }
}
