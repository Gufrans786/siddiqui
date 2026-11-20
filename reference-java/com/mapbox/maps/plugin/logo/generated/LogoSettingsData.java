package com.mapbox.maps.plugin.logo.generated;

import android.os.Parcel;
import android.os.Parcelable;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b \n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0083\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0002\u0010\u000bJ\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\t\u0010 \u001a\u00020\u0007HÆ\u0003J\t\u0010!\u001a\u00020\u0007HÆ\u0003J\t\u0010\"\u001a\u00020\u0007HÆ\u0003J\t\u0010#\u001a\u00020\u0007HÆ\u0003JE\u0010$\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u00072\b\b\u0002\u0010\n\u001a\u00020\u0007HÆ\u0001J\t\u0010%\u001a\u00020\u0005HÖ\u0001J\u0013\u0010&\u001a\u00020\u00032\b\u0010'\u001a\u0004\u0018\u00010(HÖ\u0003J\t\u0010)\u001a\u00020\u0005HÖ\u0001J\t\u0010*\u001a\u00020+HÖ\u0001J\u0019\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\n\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0011\"\u0004\b\u0015\u0010\u0013R\u001a\u0010\t\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0011\"\u0004\b\u0017\u0010\u0013R\u001a\u0010\b\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0011\"\u0004\b\u0019\u0010\u0013R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u00061"}, d2 = {"Lcom/mapbox/maps/plugin/logo/generated/LogoSettingsData;", "Landroid/os/Parcelable;", ViewProps.ENABLED, "", "position", "", ViewProps.MARGIN_LEFT, "", ViewProps.MARGIN_TOP, ViewProps.MARGIN_RIGHT, ViewProps.MARGIN_BOTTOM, "(ZIFFFF)V", "getEnabled", "()Z", "setEnabled", "(Z)V", "getMarginBottom", "()F", "setMarginBottom", "(F)V", "getMarginLeft", "setMarginLeft", "getMarginRight", "setMarginRight", "getMarginTop", "setMarginTop", "getPosition", "()I", "setPosition", "(I)V", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "describeContents", "equals", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
final class LogoSettingsData implements Parcelable {
    public static final Parcelable.Creator<LogoSettingsData> CREATOR = new Creator();
    private boolean enabled;
    private float marginBottom;
    private float marginLeft;
    private float marginRight;
    private float marginTop;
    private int position;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class Creator implements Parcelable.Creator<LogoSettingsData> {
        @Override
        public final LogoSettingsData createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new LogoSettingsData(parcel.readInt() != 0, parcel.readInt(), parcel.readFloat(), parcel.readFloat(), parcel.readFloat(), parcel.readFloat());
        }

        @Override
        public final LogoSettingsData[] newArray(int i) {
            return new LogoSettingsData[i];
        }
    }

    public static LogoSettingsData copy$default(LogoSettingsData logoSettingsData, boolean z, int i, float f, float f2, float f3, float f4, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = logoSettingsData.enabled;
        }
        if ((i2 & 2) != 0) {
            i = logoSettingsData.position;
        }
        if ((i2 & 4) != 0) {
            f = logoSettingsData.marginLeft;
        }
        if ((i2 & 8) != 0) {
            f2 = logoSettingsData.marginTop;
        }
        if ((i2 & 16) != 0) {
            f3 = logoSettingsData.marginRight;
        }
        if ((i2 & 32) != 0) {
            f4 = logoSettingsData.marginBottom;
        }
        float f5 = f3;
        float f6 = f4;
        return logoSettingsData.copy(z, i, f, f2, f5, f6);
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final int getPosition() {
        return this.position;
    }

    public final float getMarginLeft() {
        return this.marginLeft;
    }

    public final float getMarginTop() {
        return this.marginTop;
    }

    public final float getMarginRight() {
        return this.marginRight;
    }

    public final float getMarginBottom() {
        return this.marginBottom;
    }

    public final LogoSettingsData copy(boolean enabled, int position, float marginLeft, float marginTop, float marginRight, float marginBottom) {
        return new LogoSettingsData(enabled, position, marginLeft, marginTop, marginRight, marginBottom);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LogoSettingsData)) {
            return false;
        }
        LogoSettingsData logoSettingsData = (LogoSettingsData) other;
        return this.enabled == logoSettingsData.enabled && this.position == logoSettingsData.position && Float.compare(this.marginLeft, logoSettingsData.marginLeft) == 0 && Float.compare(this.marginTop, logoSettingsData.marginTop) == 0 && Float.compare(this.marginRight, logoSettingsData.marginRight) == 0 && Float.compare(this.marginBottom, logoSettingsData.marginBottom) == 0;
    }

    public int hashCode() {
        boolean z = this.enabled;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        return (((((((((r0 * 31) + Integer.hashCode(this.position)) * 31) + Float.hashCode(this.marginLeft)) * 31) + Float.hashCode(this.marginTop)) * 31) + Float.hashCode(this.marginRight)) * 31) + Float.hashCode(this.marginBottom);
    }

    public String toString() {
        return "LogoSettingsData(enabled=" + this.enabled + ", position=" + this.position + ", marginLeft=" + this.marginLeft + ", marginTop=" + this.marginTop + ", marginRight=" + this.marginRight + ", marginBottom=" + this.marginBottom + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.checkNotNullParameter(parcel, "out");
        parcel.writeInt(this.enabled ? 1 : 0);
        parcel.writeInt(this.position);
        parcel.writeFloat(this.marginLeft);
        parcel.writeFloat(this.marginTop);
        parcel.writeFloat(this.marginRight);
        parcel.writeFloat(this.marginBottom);
    }

    public LogoSettingsData(boolean z, int i, float f, float f2, float f3, float f4) {
        this.enabled = z;
        this.position = i;
        this.marginLeft = f;
        this.marginTop = f2;
        this.marginRight = f3;
        this.marginBottom = f4;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final void setEnabled(boolean z) {
        this.enabled = z;
    }

    public final int getPosition() {
        return this.position;
    }

    public final void setPosition(int i) {
        this.position = i;
    }

    public final float getMarginLeft() {
        return this.marginLeft;
    }

    public final void setMarginLeft(float f) {
        this.marginLeft = f;
    }

    public final float getMarginTop() {
        return this.marginTop;
    }

    public final void setMarginTop(float f) {
        this.marginTop = f;
    }

    public final float getMarginRight() {
        return this.marginRight;
    }

    public final void setMarginRight(float f) {
        this.marginRight = f;
    }

    public final float getMarginBottom() {
        return this.marginBottom;
    }

    public final void setMarginBottom(float f) {
        this.marginBottom = f;
    }
}
