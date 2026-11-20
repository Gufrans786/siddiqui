package com.mapbox.maps.module.telemetry;

import android.os.Build;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.google.gson.annotations.SerializedName;
import com.mapbox.maps.plugin.locationcomponent.ModelSourceWrapper;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0001\u0018\u0000 +2\u00020\u0001:\u0001+B\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010%\u001a\u00020\u00152\b\u0010&\u001a\u0004\u0018\u00010'H\u0096\u0002J\b\u0010(\u001a\u00020\u0003H\u0016J\b\u0010)\u001a\u00020\fH\u0016J\b\u0010*\u001a\u00020\u0003H\u0016R\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u000b\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R\u0016\u0010\u0014\u001a\u00020\u00158\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0016R\u0016\u0010\u0017\u001a\u00020\u00158\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0016R\u0016\u0010\u0018\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0011R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0011R\u0016\u0010\u001c\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0011R\u0016\u0010\u001e\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\nR\u0016\u0010 \u001a\u00020\u00038\u0006X\u0087D¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0011R\u0016\u0010\"\u001a\u00020\u00038\u0006X\u0087D¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0011R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0011¨\u0006,"}, d2 = {"Lcom/mapbox/maps/module/telemetry/MapLoadEvent;", "Lcom/mapbox/maps/module/telemetry/MapBaseEvent;", "userId", "", "phoneState", "Lcom/mapbox/maps/module/telemetry/PhoneState;", "(Ljava/lang/String;Lcom/mapbox/maps/module/telemetry/PhoneState;)V", "accessibilityFontScale", "", "getAccessibilityFontScale", "()F", "batteryLevel", "", "getBatteryLevel", "()I", "carrier", "getCarrier", "()Ljava/lang/String;", "cellularNetworkType", "getCellularNetworkType", "isPluggedIn", "", "()Z", "isWifi", ModelSourceWrapper.TYPE, "getModel", "operatingSystem", "getOperatingSystem", ModelSourceWrapper.ORIENTATION, "getOrientation", "resolution", "getResolution", "sdkIdentifier", "getSdkIdentifier", RemoteConfigConstants.RequestFieldKey.SDK_VERSION, "getSdkVersion", "getUserId", "equals", "other", "", "getEventName", "hashCode", "toString", "Companion", "module-telemetry_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MapLoadEvent extends MapBaseEvent {
    private static final String EVENT_NAME = "map.load";

    @SerializedName("accessibilityFontScale")
    private final float accessibilityFontScale;

    @SerializedName("batteryLevel")
    private final int batteryLevel;

    @SerializedName("carrier")
    private final String carrier;

    @SerializedName("cellularNetworkType")
    private final String cellularNetworkType;

    @SerializedName("pluggedIn")
    private final boolean isPluggedIn;

    @SerializedName("wifi")
    private final boolean isWifi;

    @SerializedName(ModelSourceWrapper.TYPE)
    private final String model;

    @SerializedName("operatingSystem")
    private final String operatingSystem;

    @SerializedName(ModelSourceWrapper.ORIENTATION)
    private final String orientation;

    @SerializedName("resolution")
    private final float resolution;

    @SerializedName("sdkIdentifier")
    private final String sdkIdentifier;

    @SerializedName(RemoteConfigConstants.RequestFieldKey.SDK_VERSION)
    private final String sdkVersion;

    @SerializedName("userId")
    private final String userId;

    public final String getUserId() {
        return this.userId;
    }

    public MapLoadEvent(String str, PhoneState phoneState) {
        super(phoneState);
        Intrinsics.checkNotNullParameter(phoneState, "phoneState");
        this.userId = str;
        this.operatingSystem = "Android - " + Build.VERSION.RELEASE;
        this.sdkIdentifier = com.mapbox.maps.base.BuildConfig.MAPBOX_SDK_IDENTIFIER;
        this.sdkVersion = com.mapbox.maps.base.BuildConfig.MAPBOX_SDK_VERSION;
        String MODEL = Build.MODEL;
        Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
        this.model = MODEL;
        this.carrier = phoneState.getCarrier();
        this.cellularNetworkType = phoneState.getCellularNetworkType();
        this.orientation = phoneState.getOrientation().getOrientation();
        this.resolution = phoneState.getResolution();
        this.accessibilityFontScale = phoneState.getAccessibilityFontScale();
        this.batteryLevel = phoneState.getBatteryLevel();
        this.isPluggedIn = phoneState.getIsPluggedIn();
        this.isWifi = phoneState.getIsWifi();
    }

    public final String getOperatingSystem() {
        return this.operatingSystem;
    }

    public final String getSdkIdentifier() {
        return this.sdkIdentifier;
    }

    public final String getSdkVersion() {
        return this.sdkVersion;
    }

    public final String getModel() {
        return this.model;
    }

    public final String getCarrier() {
        return this.carrier;
    }

    public final String getCellularNetworkType() {
        return this.cellularNetworkType;
    }

    public final String getOrientation() {
        return this.orientation;
    }

    public final float getResolution() {
        return this.resolution;
    }

    public final float getAccessibilityFontScale() {
        return this.accessibilityFontScale;
    }

    public final int getBatteryLevel() {
        return this.batteryLevel;
    }

    public final boolean getIsPluggedIn() {
        return this.isPluggedIn;
    }

    public final boolean getIsWifi() {
        return this.isWifi;
    }

    @Override
    public String getEventName() {
        return EVENT_NAME;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || !Intrinsics.areEqual(getClass(), other.getClass())) {
            return false;
        }
        MapLoadEvent mapLoadEvent = (MapLoadEvent) other;
        if (Intrinsics.areEqual(getEvent(), mapLoadEvent.getEvent()) && Intrinsics.areEqual(getCreated(), mapLoadEvent.getCreated()) && Float.compare(mapLoadEvent.resolution, this.resolution) == 0 && Float.compare(mapLoadEvent.accessibilityFontScale, this.accessibilityFontScale) == 0 && this.batteryLevel == mapLoadEvent.batteryLevel && this.isPluggedIn == mapLoadEvent.isPluggedIn && this.isWifi == mapLoadEvent.isWifi && Intrinsics.areEqual(this.operatingSystem, mapLoadEvent.operatingSystem) && Intrinsics.areEqual(this.sdkIdentifier, mapLoadEvent.sdkIdentifier) && Intrinsics.areEqual(this.sdkVersion, mapLoadEvent.sdkVersion) && Intrinsics.areEqual(this.model, mapLoadEvent.model) && Intrinsics.areEqual(this.userId, mapLoadEvent.userId) && Intrinsics.areEqual(this.carrier, mapLoadEvent.carrier) && Intrinsics.areEqual(this.cellularNetworkType, mapLoadEvent.cellularNetworkType)) {
            return Intrinsics.areEqual(this.orientation, mapLoadEvent.orientation);
        }
        return false;
    }

    public int hashCode() {
        String str = this.operatingSystem;
        int iHashCode = (((((((((((str != null ? str.hashCode() : 0) * 31) + getEvent().hashCode()) * 31) + getCreated().hashCode()) * 31) + this.sdkIdentifier.hashCode()) * 31) + this.sdkVersion.hashCode()) * 31) + this.model.hashCode()) * 31;
        String str2 = this.userId;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.carrier;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.cellularNetworkType;
        int iHashCode4 = (((iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31) + this.orientation.hashCode()) * 31;
        float f = this.resolution;
        int iFloatToIntBits = (iHashCode4 + (f == 0.0f ? 0 : Float.floatToIntBits(f))) * 31;
        float f2 = this.accessibilityFontScale;
        return ((((((iFloatToIntBits + (f2 != 0.0f ? Float.floatToIntBits(f2) : 0)) * 31) + this.batteryLevel) * 31) + (this.isPluggedIn ? 1 : 0)) * 31) + (this.isWifi ? 1 : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("MapLoadEvent{, operatingSystem='");
        sb.append(this.operatingSystem).append("', sdkIdentifier='").append(this.sdkIdentifier).append("', sdkVersion='").append(this.sdkVersion).append("', model='").append(this.model).append("', userId='").append(this.userId).append("', carrier='").append(this.carrier).append("', cellularNetworkType='").append(this.cellularNetworkType).append("', orientation='").append(this.orientation).append("', resolution=").append(this.resolution).append(", accessibilityFontScale=").append(this.accessibilityFontScale).append(", batteryLevel=").append(this.batteryLevel).append(", pluggedIn=");
        sb.append(this.isPluggedIn).append(", wifi=").append(this.isWifi).append('}');
        return sb.toString();
    }
}
