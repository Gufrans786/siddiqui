package com.mapbox.maps;

import ch.qos.logback.core.CoreConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\u00032\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/mapbox/maps/SnapshotOverlayOptions;", "", "showLogo", "", "showAttributes", "(ZZ)V", "getShowAttributes", "()Z", "getShowLogo", "component1", "component2", "copy", "equals", "other", "hashCode", "", "toString", "", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class SnapshotOverlayOptions {
    private final boolean showAttributes;
    private final boolean showLogo;

    public SnapshotOverlayOptions() {
        boolean z = false;
        this(z, z, 3, null);
    }

    public SnapshotOverlayOptions(boolean z) {
        this(z, false, 2, null);
    }

    public static SnapshotOverlayOptions copy$default(SnapshotOverlayOptions snapshotOverlayOptions, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = snapshotOverlayOptions.showLogo;
        }
        if ((i & 2) != 0) {
            z2 = snapshotOverlayOptions.showAttributes;
        }
        return snapshotOverlayOptions.copy(z, z2);
    }

    public final boolean getShowLogo() {
        return this.showLogo;
    }

    public final boolean getShowAttributes() {
        return this.showAttributes;
    }

    public final SnapshotOverlayOptions copy(boolean showLogo, boolean showAttributes) {
        return new SnapshotOverlayOptions(showLogo, showAttributes);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SnapshotOverlayOptions)) {
            return false;
        }
        SnapshotOverlayOptions snapshotOverlayOptions = (SnapshotOverlayOptions) other;
        return this.showLogo == snapshotOverlayOptions.showLogo && this.showAttributes == snapshotOverlayOptions.showAttributes;
    }

    public int hashCode() {
        boolean z = this.showLogo;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        boolean z2 = this.showAttributes;
        return i + (z2 ? 1 : z2);
    }

    public String toString() {
        return "SnapshotOverlayOptions(showLogo=" + this.showLogo + ", showAttributes=" + this.showAttributes + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public SnapshotOverlayOptions(boolean z, boolean z2) {
        this.showLogo = z;
        this.showAttributes = z2;
    }

    public SnapshotOverlayOptions(boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z, (i & 2) != 0 ? true : z2);
    }

    public final boolean getShowLogo() {
        return this.showLogo;
    }

    public final boolean getShowAttributes() {
        return this.showAttributes;
    }
}
