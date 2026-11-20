package com.rnmapbox.rnmbx.components.mapview;

import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.uimanager.ViewProps;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0018\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0007HÆ\u0003J0\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001¢\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u00032\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001f\u001a\u00020 HÖ\u0001R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000e\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006!"}, d2 = {"Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;", "", ViewProps.ENABLED, "", "margins", "Lcom/facebook/react/bridge/ReadableMap;", "position", "", "<init>", "(Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReadableMap;I)V", "getEnabled", "()Ljava/lang/Boolean;", "setEnabled", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getMargins", "()Lcom/facebook/react/bridge/ReadableMap;", "setMargins", "(Lcom/facebook/react/bridge/ReadableMap;)V", "getPosition", "()I", "setPosition", "(I)V", "component1", "component2", "component3", "copy", "(Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReadableMap;I)Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;", "equals", "other", "hashCode", "toString", "", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class OrnamentSettings {
    private Boolean enabled;
    private ReadableMap margins;
    private int position;

    public OrnamentSettings() {
        this(null, null, 0, 7, null);
    }

    public static OrnamentSettings copy$default(OrnamentSettings ornamentSettings, Boolean bool, ReadableMap readableMap, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            bool = ornamentSettings.enabled;
        }
        if ((i2 & 2) != 0) {
            readableMap = ornamentSettings.margins;
        }
        if ((i2 & 4) != 0) {
            i = ornamentSettings.position;
        }
        return ornamentSettings.copy(bool, readableMap, i);
    }

    public final Boolean getEnabled() {
        return this.enabled;
    }

    public final ReadableMap getMargins() {
        return this.margins;
    }

    public final int getPosition() {
        return this.position;
    }

    public final OrnamentSettings copy(Boolean enabled, ReadableMap margins, int position) {
        return new OrnamentSettings(enabled, margins, position);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OrnamentSettings)) {
            return false;
        }
        OrnamentSettings ornamentSettings = (OrnamentSettings) other;
        return Intrinsics.areEqual(this.enabled, ornamentSettings.enabled) && Intrinsics.areEqual(this.margins, ornamentSettings.margins) && this.position == ornamentSettings.position;
    }

    public int hashCode() {
        Boolean bool = this.enabled;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        ReadableMap readableMap = this.margins;
        return ((iHashCode + (readableMap != null ? readableMap.hashCode() : 0)) * 31) + Integer.hashCode(this.position);
    }

    public String toString() {
        return "OrnamentSettings(enabled=" + this.enabled + ", margins=" + this.margins + ", position=" + this.position + ")";
    }

    public OrnamentSettings(Boolean bool, ReadableMap readableMap, int i) {
        this.enabled = bool;
        this.margins = readableMap;
        this.position = i;
    }

    public OrnamentSettings(Boolean bool, ReadableMap readableMap, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : bool, (i2 & 2) != 0 ? null : readableMap, (i2 & 4) != 0 ? -1 : i);
    }

    public final Boolean getEnabled() {
        return this.enabled;
    }

    public final void setEnabled(Boolean bool) {
        this.enabled = bool;
    }

    public final ReadableMap getMargins() {
        return this.margins;
    }

    public final void setMargins(ReadableMap readableMap) {
        this.margins = readableMap;
    }

    public final int getPosition() {
        return this.position;
    }

    public final void setPosition(int i) {
        this.position = i;
    }
}
