package com.mapbox.maps.plugin.locationcomponent.generated;

import android.os.Parcel;
import android.os.Parcelable;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.maps.plugin.LocationPuck;
import com.mapbox.maps.plugin.PuckBearing;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b8\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0083\b\u0018\u00002\u00020\u0001By\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010\u0013\u001a\u00020\u0014¢\u0006\u0002\u0010\u0015J\t\u0010<\u001a\u00020\u0003HÆ\u0003J\t\u0010=\u001a\u00020\u0003HÆ\u0003J\t\u0010>\u001a\u00020\u0011HÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\rHÆ\u0003J\t\u0010@\u001a\u00020\u0014HÆ\u0003J\t\u0010A\u001a\u00020\u0003HÆ\u0003J\t\u0010B\u001a\u00020\u0006HÆ\u0003J\t\u0010C\u001a\u00020\bHÆ\u0003J\t\u0010D\u001a\u00020\u0003HÆ\u0003J\t\u0010E\u001a\u00020\u0006HÆ\u0003J\t\u0010F\u001a\u00020\u0006HÆ\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u0010H\u001a\u0004\u0018\u00010\rHÆ\u0003J\u0091\u0001\u0010I\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00062\b\b\u0002\u0010\u000b\u001a\u00020\u00062\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\r2\b\b\u0002\u0010\u0013\u001a\u00020\u0014HÆ\u0001J\t\u0010J\u001a\u00020\u0006HÖ\u0001J\u0013\u0010K\u001a\u00020\u00032\b\u0010L\u001a\u0004\u0018\u00010MHÖ\u0003J\t\u0010N\u001a\u00020\u0006HÖ\u0001J\t\u0010O\u001a\u00020\rHÖ\u0001J\u0019\u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020S2\u0006\u0010T\u001a\u00020\u0006HÖ\u0001R\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\n\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0017\"\u0004\b\u001b\u0010\u0019R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010!\"\u0004\b%\u0010#R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001a\u0010\u000f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u001d\"\u0004\b/\u0010\u001fR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010\u0017\"\u0004\b1\u0010\u0019R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\u001d\"\u0004\b3\u0010\u001fR\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u0010\u001d\"\u0004\b9\u0010\u001fR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010!\"\u0004\b;\u0010#¨\u0006U"}, d2 = {"Lcom/mapbox/maps/plugin/locationcomponent/generated/LocationComponentSettingsData;", "Landroid/os/Parcelable;", ViewProps.ENABLED, "", "pulsingEnabled", "pulsingColor", "", "pulsingMaxRadius", "", "showAccuracyRing", "accuracyRingColor", "accuracyRingBorderColor", "layerAbove", "", "layerBelow", "puckBearingEnabled", "puckBearing", "Lcom/mapbox/maps/plugin/PuckBearing;", "slot", "locationPuck", "Lcom/mapbox/maps/plugin/LocationPuck;", "(ZZIFZIILjava/lang/String;Ljava/lang/String;ZLcom/mapbox/maps/plugin/PuckBearing;Ljava/lang/String;Lcom/mapbox/maps/plugin/LocationPuck;)V", "getAccuracyRingBorderColor", "()I", "setAccuracyRingBorderColor", "(I)V", "getAccuracyRingColor", "setAccuracyRingColor", "getEnabled", "()Z", "setEnabled", "(Z)V", "getLayerAbove", "()Ljava/lang/String;", "setLayerAbove", "(Ljava/lang/String;)V", "getLayerBelow", "setLayerBelow", "getLocationPuck", "()Lcom/mapbox/maps/plugin/LocationPuck;", "setLocationPuck", "(Lcom/mapbox/maps/plugin/LocationPuck;)V", "getPuckBearing", "()Lcom/mapbox/maps/plugin/PuckBearing;", "setPuckBearing", "(Lcom/mapbox/maps/plugin/PuckBearing;)V", "getPuckBearingEnabled", "setPuckBearingEnabled", "getPulsingColor", "setPulsingColor", "getPulsingEnabled", "setPulsingEnabled", "getPulsingMaxRadius", "()F", "setPulsingMaxRadius", "(F)V", "getShowAccuracyRing", "setShowAccuracyRing", "getSlot", "setSlot", "component1", "component10", "component11", "component12", "component13", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "describeContents", "equals", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
final class LocationComponentSettingsData implements Parcelable {
    public static final Parcelable.Creator<LocationComponentSettingsData> CREATOR = new Creator();
    private int accuracyRingBorderColor;
    private int accuracyRingColor;
    private boolean enabled;
    private String layerAbove;
    private String layerBelow;
    private LocationPuck locationPuck;
    private PuckBearing puckBearing;
    private boolean puckBearingEnabled;
    private int pulsingColor;
    private boolean pulsingEnabled;
    private float pulsingMaxRadius;
    private boolean showAccuracyRing;
    private String slot;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class Creator implements Parcelable.Creator<LocationComponentSettingsData> {
        @Override
        public final LocationComponentSettingsData createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            boolean z = true;
            boolean z2 = false;
            if (parcel.readInt() == 0) {
                z = false;
            }
            if (parcel.readInt() != 0) {
                z2 = true;
            }
            int i = parcel.readInt();
            boolean z3 = false;
            float f = parcel.readFloat();
            if (parcel.readInt() != 0) {
                z3 = z;
            }
            int i2 = parcel.readInt();
            int i3 = parcel.readInt();
            String string = parcel.readString();
            boolean z4 = false;
            String string2 = parcel.readString();
            if (parcel.readInt() != 0) {
                z4 = z;
            }
            return new LocationComponentSettingsData(z, z2, i, f, z3, i2, i3, string, string2, z4, PuckBearing.valueOf(parcel.readString()), parcel.readString(), (LocationPuck) parcel.readParcelable(LocationComponentSettingsData.class.getClassLoader()));
        }

        @Override
        public final LocationComponentSettingsData[] newArray(int i) {
            return new LocationComponentSettingsData[i];
        }
    }

    public static LocationComponentSettingsData copy$default(LocationComponentSettingsData locationComponentSettingsData, boolean z, boolean z2, int i, float f, boolean z3, int i2, int i3, String str, String str2, boolean z4, PuckBearing puckBearing, String str3, LocationPuck locationPuck, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            z = locationComponentSettingsData.enabled;
        }
        return locationComponentSettingsData.copy(z, (i4 & 2) != 0 ? locationComponentSettingsData.pulsingEnabled : z2, (i4 & 4) != 0 ? locationComponentSettingsData.pulsingColor : i, (i4 & 8) != 0 ? locationComponentSettingsData.pulsingMaxRadius : f, (i4 & 16) != 0 ? locationComponentSettingsData.showAccuracyRing : z3, (i4 & 32) != 0 ? locationComponentSettingsData.accuracyRingColor : i2, (i4 & 64) != 0 ? locationComponentSettingsData.accuracyRingBorderColor : i3, (i4 & 128) != 0 ? locationComponentSettingsData.layerAbove : str, (i4 & 256) != 0 ? locationComponentSettingsData.layerBelow : str2, (i4 & 512) != 0 ? locationComponentSettingsData.puckBearingEnabled : z4, (i4 & 1024) != 0 ? locationComponentSettingsData.puckBearing : puckBearing, (i4 & 2048) != 0 ? locationComponentSettingsData.slot : str3, (i4 & 4096) != 0 ? locationComponentSettingsData.locationPuck : locationPuck);
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final boolean getPuckBearingEnabled() {
        return this.puckBearingEnabled;
    }

    public final PuckBearing getPuckBearing() {
        return this.puckBearing;
    }

    public final String getSlot() {
        return this.slot;
    }

    public final LocationPuck getLocationPuck() {
        return this.locationPuck;
    }

    public final boolean getPulsingEnabled() {
        return this.pulsingEnabled;
    }

    public final int getPulsingColor() {
        return this.pulsingColor;
    }

    public final float getPulsingMaxRadius() {
        return this.pulsingMaxRadius;
    }

    public final boolean getShowAccuracyRing() {
        return this.showAccuracyRing;
    }

    public final int getAccuracyRingColor() {
        return this.accuracyRingColor;
    }

    public final int getAccuracyRingBorderColor() {
        return this.accuracyRingBorderColor;
    }

    public final String getLayerAbove() {
        return this.layerAbove;
    }

    public final String getLayerBelow() {
        return this.layerBelow;
    }

    public final LocationComponentSettingsData copy(boolean enabled, boolean pulsingEnabled, int pulsingColor, float pulsingMaxRadius, boolean showAccuracyRing, int accuracyRingColor, int accuracyRingBorderColor, String layerAbove, String layerBelow, boolean puckBearingEnabled, PuckBearing puckBearing, String slot, LocationPuck locationPuck) {
        Intrinsics.checkNotNullParameter(puckBearing, "puckBearing");
        Intrinsics.checkNotNullParameter(locationPuck, "locationPuck");
        return new LocationComponentSettingsData(enabled, pulsingEnabled, pulsingColor, pulsingMaxRadius, showAccuracyRing, accuracyRingColor, accuracyRingBorderColor, layerAbove, layerBelow, puckBearingEnabled, puckBearing, slot, locationPuck);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LocationComponentSettingsData)) {
            return false;
        }
        LocationComponentSettingsData locationComponentSettingsData = (LocationComponentSettingsData) other;
        return this.enabled == locationComponentSettingsData.enabled && this.pulsingEnabled == locationComponentSettingsData.pulsingEnabled && this.pulsingColor == locationComponentSettingsData.pulsingColor && Float.compare(this.pulsingMaxRadius, locationComponentSettingsData.pulsingMaxRadius) == 0 && this.showAccuracyRing == locationComponentSettingsData.showAccuracyRing && this.accuracyRingColor == locationComponentSettingsData.accuracyRingColor && this.accuracyRingBorderColor == locationComponentSettingsData.accuracyRingBorderColor && Intrinsics.areEqual(this.layerAbove, locationComponentSettingsData.layerAbove) && Intrinsics.areEqual(this.layerBelow, locationComponentSettingsData.layerBelow) && this.puckBearingEnabled == locationComponentSettingsData.puckBearingEnabled && this.puckBearing == locationComponentSettingsData.puckBearing && Intrinsics.areEqual(this.slot, locationComponentSettingsData.slot) && Intrinsics.areEqual(this.locationPuck, locationComponentSettingsData.locationPuck);
    }

    public int hashCode() {
        boolean z = this.enabled;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        boolean z2 = this.pulsingEnabled;
        ?? r2 = z2;
        if (z2) {
            r2 = 1;
        }
        int iHashCode = (((((i + r2) * 31) + Integer.hashCode(this.pulsingColor)) * 31) + Float.hashCode(this.pulsingMaxRadius)) * 31;
        boolean z3 = this.showAccuracyRing;
        ?? r3 = z3;
        if (z3) {
            r3 = 1;
        }
        int iHashCode2 = (((((iHashCode + r3) * 31) + Integer.hashCode(this.accuracyRingColor)) * 31) + Integer.hashCode(this.accuracyRingBorderColor)) * 31;
        String str = this.layerAbove;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.layerBelow;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        boolean z4 = this.puckBearingEnabled;
        int iHashCode5 = (((iHashCode4 + (z4 ? 1 : z4)) * 31) + this.puckBearing.hashCode()) * 31;
        String str3 = this.slot;
        return ((iHashCode5 + (str3 != null ? str3.hashCode() : 0)) * 31) + this.locationPuck.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LocationComponentSettingsData(enabled=");
        sb.append(this.enabled).append(", pulsingEnabled=").append(this.pulsingEnabled).append(", pulsingColor=").append(this.pulsingColor).append(", pulsingMaxRadius=").append(this.pulsingMaxRadius).append(", showAccuracyRing=").append(this.showAccuracyRing).append(", accuracyRingColor=").append(this.accuracyRingColor).append(", accuracyRingBorderColor=").append(this.accuracyRingBorderColor).append(", layerAbove=").append(this.layerAbove).append(", layerBelow=").append(this.layerBelow).append(", puckBearingEnabled=").append(this.puckBearingEnabled).append(", puckBearing=").append(this.puckBearing).append(", slot=");
        sb.append(this.slot).append(", locationPuck=").append(this.locationPuck).append(CoreConstants.RIGHT_PARENTHESIS_CHAR);
        return sb.toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.checkNotNullParameter(parcel, "out");
        parcel.writeInt(this.enabled ? 1 : 0);
        parcel.writeInt(this.pulsingEnabled ? 1 : 0);
        parcel.writeInt(this.pulsingColor);
        parcel.writeFloat(this.pulsingMaxRadius);
        parcel.writeInt(this.showAccuracyRing ? 1 : 0);
        parcel.writeInt(this.accuracyRingColor);
        parcel.writeInt(this.accuracyRingBorderColor);
        parcel.writeString(this.layerAbove);
        parcel.writeString(this.layerBelow);
        parcel.writeInt(this.puckBearingEnabled ? 1 : 0);
        parcel.writeString(this.puckBearing.name());
        parcel.writeString(this.slot);
        parcel.writeParcelable(this.locationPuck, flags);
    }

    public LocationComponentSettingsData(boolean z, boolean z2, int i, float f, boolean z3, int i2, int i3, String str, String str2, boolean z4, PuckBearing puckBearing, String str3, LocationPuck locationPuck) {
        Intrinsics.checkNotNullParameter(puckBearing, "puckBearing");
        Intrinsics.checkNotNullParameter(locationPuck, "locationPuck");
        this.enabled = z;
        this.pulsingEnabled = z2;
        this.pulsingColor = i;
        this.pulsingMaxRadius = f;
        this.showAccuracyRing = z3;
        this.accuracyRingColor = i2;
        this.accuracyRingBorderColor = i3;
        this.layerAbove = str;
        this.layerBelow = str2;
        this.puckBearingEnabled = z4;
        this.puckBearing = puckBearing;
        this.slot = str3;
        this.locationPuck = locationPuck;
    }

    public LocationComponentSettingsData(boolean z, boolean z2, int i, float f, boolean z3, int i2, int i3, String str, String str2, boolean z4, PuckBearing puckBearing, String str3, LocationPuck locationPuck, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, z2, i, f, z3, i2, i3, (i4 & 128) != 0 ? null : str, (i4 & 256) != 0 ? null : str2, z4, puckBearing, (i4 & 2048) != 0 ? null : str3, locationPuck);
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final void setEnabled(boolean z) {
        this.enabled = z;
    }

    public final boolean getPulsingEnabled() {
        return this.pulsingEnabled;
    }

    public final void setPulsingEnabled(boolean z) {
        this.pulsingEnabled = z;
    }

    public final int getPulsingColor() {
        return this.pulsingColor;
    }

    public final void setPulsingColor(int i) {
        this.pulsingColor = i;
    }

    public final float getPulsingMaxRadius() {
        return this.pulsingMaxRadius;
    }

    public final void setPulsingMaxRadius(float f) {
        this.pulsingMaxRadius = f;
    }

    public final boolean getShowAccuracyRing() {
        return this.showAccuracyRing;
    }

    public final void setShowAccuracyRing(boolean z) {
        this.showAccuracyRing = z;
    }

    public final int getAccuracyRingColor() {
        return this.accuracyRingColor;
    }

    public final void setAccuracyRingColor(int i) {
        this.accuracyRingColor = i;
    }

    public final int getAccuracyRingBorderColor() {
        return this.accuracyRingBorderColor;
    }

    public final void setAccuracyRingBorderColor(int i) {
        this.accuracyRingBorderColor = i;
    }

    public final String getLayerAbove() {
        return this.layerAbove;
    }

    public final void setLayerAbove(String str) {
        this.layerAbove = str;
    }

    public final String getLayerBelow() {
        return this.layerBelow;
    }

    public final void setLayerBelow(String str) {
        this.layerBelow = str;
    }

    public final boolean getPuckBearingEnabled() {
        return this.puckBearingEnabled;
    }

    public final void setPuckBearingEnabled(boolean z) {
        this.puckBearingEnabled = z;
    }

    public final PuckBearing getPuckBearing() {
        return this.puckBearing;
    }

    public final void setPuckBearing(PuckBearing puckBearing) {
        Intrinsics.checkNotNullParameter(puckBearing, "<set-?>");
        this.puckBearing = puckBearing;
    }

    public final String getSlot() {
        return this.slot;
    }

    public final void setSlot(String str) {
        this.slot = str;
    }

    public final LocationPuck getLocationPuck() {
        return this.locationPuck;
    }

    public final void setLocationPuck(LocationPuck locationPuck) {
        Intrinsics.checkNotNullParameter(locationPuck, "<set-?>");
        this.locationPuck = locationPuck;
    }
}
