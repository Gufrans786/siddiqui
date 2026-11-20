package com.mapbox.maps.plugin.locationcomponent.generated;

import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.maps.plugin.LocationPuck;
import com.mapbox.maps.plugin.PuckBearing;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001:\u00016Bu\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010\u0013\u001a\u00020\u0014¢\u0006\u0002\u0010\u0015J\t\u0010)\u001a\u00020\u0006HÖ\u0001J\u0013\u0010*\u001a\u00020\u00032\b\u0010+\u001a\u0004\u0018\u00010,H\u0096\u0002J\b\u0010-\u001a\u00020\u0006H\u0016J\u0006\u0010.\u001a\u00020/J\b\u00100\u001a\u00020\rH\u0016J\u0019\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u0006HÖ\u0001R\u0011\u0010\u000b\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\n\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0017R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001cR\u0011\u0010\u0013\u001a\u00020\u0014¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010\u0010\u001a\u00020\u0011¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0011\u0010\u000f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001aR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0017R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u001aR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u001aR\u0013\u0010\u0012\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u001c¨\u00067"}, d2 = {"Lcom/mapbox/maps/plugin/locationcomponent/generated/LocationComponentSettings;", "Landroid/os/Parcelable;", ViewProps.ENABLED, "", "pulsingEnabled", "pulsingColor", "", "pulsingMaxRadius", "", "showAccuracyRing", "accuracyRingColor", "accuracyRingBorderColor", "layerAbove", "", "layerBelow", "puckBearingEnabled", "puckBearing", "Lcom/mapbox/maps/plugin/PuckBearing;", "slot", "locationPuck", "Lcom/mapbox/maps/plugin/LocationPuck;", "(ZZIFZIILjava/lang/String;Ljava/lang/String;ZLcom/mapbox/maps/plugin/PuckBearing;Ljava/lang/String;Lcom/mapbox/maps/plugin/LocationPuck;)V", "getAccuracyRingBorderColor", "()I", "getAccuracyRingColor", "getEnabled", "()Z", "getLayerAbove", "()Ljava/lang/String;", "getLayerBelow", "getLocationPuck", "()Lcom/mapbox/maps/plugin/LocationPuck;", "getPuckBearing", "()Lcom/mapbox/maps/plugin/PuckBearing;", "getPuckBearingEnabled", "getPulsingColor", "getPulsingEnabled", "getPulsingMaxRadius", "()F", "getShowAccuracyRing", "getSlot", "describeContents", "equals", "other", "", "hashCode", "toBuilder", "Lcom/mapbox/maps/plugin/locationcomponent/generated/LocationComponentSettings$Builder;", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "Builder", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class LocationComponentSettings implements Parcelable {
    public static final Parcelable.Creator<LocationComponentSettings> CREATOR = new Creator();
    private final int accuracyRingBorderColor;
    private final int accuracyRingColor;
    private final boolean enabled;
    private final String layerAbove;
    private final String layerBelow;
    private final LocationPuck locationPuck;
    private final PuckBearing puckBearing;
    private final boolean puckBearingEnabled;
    private final int pulsingColor;
    private final boolean pulsingEnabled;
    private final float pulsingMaxRadius;
    private final boolean showAccuracyRing;
    private final String slot;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class Creator implements Parcelable.Creator<LocationComponentSettings> {
        @Override
        public final LocationComponentSettings createFromParcel(Parcel parcel) {
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
            return new LocationComponentSettings(z, z2, i, f, z3, i2, i3, string, string2, z4, PuckBearing.valueOf(parcel.readString()), parcel.readString(), (LocationPuck) parcel.readParcelable(LocationComponentSettings.class.getClassLoader()), null);
        }

        @Override
        public final LocationComponentSettings[] newArray(int i) {
            return new LocationComponentSettings[i];
        }
    }

    public LocationComponentSettings(boolean z, boolean z2, int i, float f, boolean z3, int i2, int i3, String str, String str2, boolean z4, PuckBearing puckBearing, String str3, LocationPuck locationPuck, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, z2, i, f, z3, i2, i3, str, str2, z4, puckBearing, str3, locationPuck);
    }

    @Override
    public int describeContents() {
        return 0;
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

    private LocationComponentSettings(boolean z, boolean z2, int i, float f, boolean z3, int i2, int i3, String str, String str2, boolean z4, PuckBearing puckBearing, String str3, LocationPuck locationPuck) {
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

    public final boolean getEnabled() {
        return this.enabled;
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

    public String toString() {
        StringBuilder sb = new StringBuilder("LocationComponentSettings(enabled=");
        sb.append(this.enabled).append(",\n      pulsingEnabled=").append(this.pulsingEnabled).append(", pulsingColor=").append(this.pulsingColor).append(",\n      pulsingMaxRadius=").append(this.pulsingMaxRadius).append(", showAccuracyRing=").append(this.showAccuracyRing).append(",\n      accuracyRingColor=").append(this.accuracyRingColor).append(", accuracyRingBorderColor=").append(this.accuracyRingBorderColor).append(",\n      layerAbove=").append(this.layerAbove).append(", layerBelow=").append(this.layerBelow).append(", puckBearingEnabled=").append(this.puckBearingEnabled).append(",\n      puckBearing=").append(this.puckBearing).append(", slot=");
        sb.append(this.slot).append(", locationPuck=").append(this.locationPuck).append(CoreConstants.RIGHT_PARENTHESIS_CHAR);
        return StringsKt.trimIndent(sb.toString());
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!Intrinsics.areEqual(getClass(), other != null ? other.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(other, "null cannot be cast to non-null type com.mapbox.maps.plugin.locationcomponent.generated.LocationComponentSettings");
        LocationComponentSettings locationComponentSettings = (LocationComponentSettings) other;
        return this.enabled == locationComponentSettings.enabled && this.pulsingEnabled == locationComponentSettings.pulsingEnabled && this.pulsingColor == locationComponentSettings.pulsingColor && Float.compare(this.pulsingMaxRadius, locationComponentSettings.pulsingMaxRadius) == 0 && this.showAccuracyRing == locationComponentSettings.showAccuracyRing && this.accuracyRingColor == locationComponentSettings.accuracyRingColor && this.accuracyRingBorderColor == locationComponentSettings.accuracyRingBorderColor && Intrinsics.areEqual(this.layerAbove, locationComponentSettings.layerAbove) && Intrinsics.areEqual(this.layerBelow, locationComponentSettings.layerBelow) && this.puckBearingEnabled == locationComponentSettings.puckBearingEnabled && this.puckBearing == locationComponentSettings.puckBearing && Intrinsics.areEqual(this.slot, locationComponentSettings.slot) && Intrinsics.areEqual(this.locationPuck, locationComponentSettings.locationPuck);
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.enabled), Boolean.valueOf(this.pulsingEnabled), Integer.valueOf(this.pulsingColor), Float.valueOf(this.pulsingMaxRadius), Boolean.valueOf(this.showAccuracyRing), Integer.valueOf(this.accuracyRingColor), Integer.valueOf(this.accuracyRingBorderColor), this.layerAbove, this.layerBelow, Boolean.valueOf(this.puckBearingEnabled), this.puckBearing, this.slot, this.locationPuck);
    }

    public final Builder toBuilder() {
        return new Builder(this.locationPuck).setEnabled(this.enabled).setPulsingEnabled(this.pulsingEnabled).setPulsingColor(this.pulsingColor).setPulsingMaxRadius(this.pulsingMaxRadius).setShowAccuracyRing(this.showAccuracyRing).setAccuracyRingColor(this.accuracyRingColor).setAccuracyRingBorderColor(this.accuracyRingBorderColor).setLayerAbove(this.layerAbove).setLayerBelow(this.layerBelow).setPuckBearingEnabled(this.puckBearingEnabled).setPuckBearing(this.puckBearing).setSlot(this.slot).setLocationPuck(this.locationPuck);
    }

    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0007\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010<\u001a\u00020=J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0006J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000fJ\u0010\u0010\u0019\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u001d\u001a\u00020\u00002\b\u0010\u001b\u001a\u0004\u0018\u00010\u0015J\u000e\u0010 \u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003J\u000e\u0010%\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020!J\u000e\u0010)\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\u000fJ\u000e\u0010,\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u0006J\u000e\u0010/\u001a\u00020\u00002\u0006\u0010-\u001a\u00020\u000fJ\u000e\u00104\u001a\u00020\u00002\u0006\u00101\u001a\u000200J\u000e\u00108\u001a\u00020\u00002\u0006\u00106\u001a\u00020\u000fJ\u0010\u0010;\u001a\u00020\u00002\b\u00109\u001a\u0004\u0018\u00010\u0015R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000bR$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u000f@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R(\u0010\u0016\u001a\u0004\u0018\u00010\u00152\b\u0010\u0005\u001a\u0004\u0018\u00010\u0015@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR(\u0010\u001b\u001a\u0004\u0018\u00010\u00152\b\u0010\u0005\u001a\u0004\u0018\u00010\u0015@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0018\"\u0004\b\u001d\u0010\u001aR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010\u0004R$\u0010\"\u001a\u00020!2\u0006\u0010\u0005\u001a\u00020!@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R$\u0010'\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u000f@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0012\"\u0004\b)\u0010\u0014R$\u0010*\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\t\"\u0004\b,\u0010\u000bR$\u0010-\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u000f@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0012\"\u0004\b/\u0010\u0014R$\u00101\u001a\u0002002\u0006\u0010\u0005\u001a\u000200@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u00103\"\u0004\b4\u00105R$\u00106\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u000f@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\u0012\"\u0004\b8\u0010\u0014R(\u00109\u001a\u0004\u0018\u00010\u00152\b\u0010\u0005\u001a\u0004\u0018\u00010\u0015@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010\u0018\"\u0004\b;\u0010\u001a¨\u0006>"}, d2 = {"Lcom/mapbox/maps/plugin/locationcomponent/generated/LocationComponentSettings$Builder;", "", "locationPuck", "Lcom/mapbox/maps/plugin/LocationPuck;", "(Lcom/mapbox/maps/plugin/LocationPuck;)V", "<set-?>", "", "accuracyRingBorderColor", "getAccuracyRingBorderColor", "()I", "setAccuracyRingBorderColor", "(I)V", "accuracyRingColor", "getAccuracyRingColor", "setAccuracyRingColor", "", ViewProps.ENABLED, "getEnabled", "()Z", "setEnabled", "(Z)V", "", "layerAbove", "getLayerAbove", "()Ljava/lang/String;", "setLayerAbove", "(Ljava/lang/String;)V", "layerBelow", "getLayerBelow", "setLayerBelow", "getLocationPuck", "()Lcom/mapbox/maps/plugin/LocationPuck;", "setLocationPuck", "Lcom/mapbox/maps/plugin/PuckBearing;", "puckBearing", "getPuckBearing", "()Lcom/mapbox/maps/plugin/PuckBearing;", "setPuckBearing", "(Lcom/mapbox/maps/plugin/PuckBearing;)V", "puckBearingEnabled", "getPuckBearingEnabled", "setPuckBearingEnabled", "pulsingColor", "getPulsingColor", "setPulsingColor", "pulsingEnabled", "getPulsingEnabled", "setPulsingEnabled", "", "pulsingMaxRadius", "getPulsingMaxRadius", "()F", "setPulsingMaxRadius", "(F)V", "showAccuracyRing", "getShowAccuracyRing", "setShowAccuracyRing", "slot", "getSlot", "setSlot", "build", "Lcom/mapbox/maps/plugin/locationcomponent/generated/LocationComponentSettings;", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Builder {
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

        public Builder(LocationPuck locationPuck) {
            Intrinsics.checkNotNullParameter(locationPuck, "locationPuck");
            this.locationPuck = locationPuck;
            this.pulsingColor = Color.parseColor("#4A90E2");
            this.pulsingMaxRadius = 10.0f;
            this.accuracyRingColor = Color.parseColor("#4d89cff0");
            this.accuracyRingBorderColor = Color.parseColor("#4d89cff0");
            this.puckBearing = PuckBearing.HEADING;
        }

        public final LocationPuck getLocationPuck() {
            return this.locationPuck;
        }

        public final void m1103setLocationPuck(LocationPuck locationPuck) {
            Intrinsics.checkNotNullParameter(locationPuck, "<set-?>");
            this.locationPuck = locationPuck;
        }

        public final boolean getEnabled() {
            return this.enabled;
        }

        public final void m1100setEnabled(boolean z) {
            this.enabled = z;
        }

        public final boolean getPulsingEnabled() {
            return this.pulsingEnabled;
        }

        public final void m1107setPulsingEnabled(boolean z) {
            this.pulsingEnabled = z;
        }

        public final int getPulsingColor() {
            return this.pulsingColor;
        }

        public final void m1106setPulsingColor(int i) {
            this.pulsingColor = i;
        }

        public final float getPulsingMaxRadius() {
            return this.pulsingMaxRadius;
        }

        public final void m1108setPulsingMaxRadius(float f) {
            this.pulsingMaxRadius = f;
        }

        public final boolean getShowAccuracyRing() {
            return this.showAccuracyRing;
        }

        public final void m1109setShowAccuracyRing(boolean z) {
            this.showAccuracyRing = z;
        }

        public final int getAccuracyRingColor() {
            return this.accuracyRingColor;
        }

        public final void m1099setAccuracyRingColor(int i) {
            this.accuracyRingColor = i;
        }

        public final int getAccuracyRingBorderColor() {
            return this.accuracyRingBorderColor;
        }

        public final void m1098setAccuracyRingBorderColor(int i) {
            this.accuracyRingBorderColor = i;
        }

        public final String getLayerAbove() {
            return this.layerAbove;
        }

        public final void m1101setLayerAbove(String str) {
            this.layerAbove = str;
        }

        public final String getLayerBelow() {
            return this.layerBelow;
        }

        public final void m1102setLayerBelow(String str) {
            this.layerBelow = str;
        }

        public final boolean getPuckBearingEnabled() {
            return this.puckBearingEnabled;
        }

        public final void m1105setPuckBearingEnabled(boolean z) {
            this.puckBearingEnabled = z;
        }

        public final PuckBearing getPuckBearing() {
            return this.puckBearing;
        }

        public final void m1104setPuckBearing(PuckBearing puckBearing) {
            Intrinsics.checkNotNullParameter(puckBearing, "<set-?>");
            this.puckBearing = puckBearing;
        }

        public final String getSlot() {
            return this.slot;
        }

        public final void m1110setSlot(String str) {
            this.slot = str;
        }

        public final Builder setEnabled(boolean enabled) {
            this.enabled = enabled;
            return this;
        }

        public final Builder setPulsingEnabled(boolean pulsingEnabled) {
            this.pulsingEnabled = pulsingEnabled;
            return this;
        }

        public final Builder setPulsingColor(int pulsingColor) {
            this.pulsingColor = pulsingColor;
            return this;
        }

        public final Builder setPulsingMaxRadius(float pulsingMaxRadius) {
            this.pulsingMaxRadius = pulsingMaxRadius;
            return this;
        }

        public final Builder setShowAccuracyRing(boolean showAccuracyRing) {
            this.showAccuracyRing = showAccuracyRing;
            return this;
        }

        public final Builder setAccuracyRingColor(int accuracyRingColor) {
            this.accuracyRingColor = accuracyRingColor;
            return this;
        }

        public final Builder setAccuracyRingBorderColor(int accuracyRingBorderColor) {
            this.accuracyRingBorderColor = accuracyRingBorderColor;
            return this;
        }

        public final Builder setLayerAbove(String layerAbove) {
            this.layerAbove = layerAbove;
            return this;
        }

        public final Builder setLayerBelow(String layerBelow) {
            this.layerBelow = layerBelow;
            return this;
        }

        public final Builder setPuckBearingEnabled(boolean puckBearingEnabled) {
            this.puckBearingEnabled = puckBearingEnabled;
            return this;
        }

        public final Builder setPuckBearing(PuckBearing puckBearing) {
            Intrinsics.checkNotNullParameter(puckBearing, "puckBearing");
            this.puckBearing = puckBearing;
            return this;
        }

        public final Builder setSlot(String slot) {
            this.slot = slot;
            return this;
        }

        public final Builder setLocationPuck(LocationPuck locationPuck) {
            Intrinsics.checkNotNullParameter(locationPuck, "locationPuck");
            this.locationPuck = locationPuck;
            return this;
        }

        public final LocationComponentSettings build() {
            return new LocationComponentSettings(this.enabled, this.pulsingEnabled, this.pulsingColor, this.pulsingMaxRadius, this.showAccuracyRing, this.accuracyRingColor, this.accuracyRingBorderColor, this.layerAbove, this.layerBelow, this.puckBearingEnabled, this.puckBearing, this.slot, this.locationPuck, null);
        }
    }
}
