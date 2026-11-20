package com.mapbox.maps.plugin.scalebar.generated;

import android.os.Parcel;
import android.os.Parcelable;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import com.reactcommunity.rndatetimepicker.Common;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\r\n\u0002\u0010\t\n\u0002\bH\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0083\b\u0018\u00002\u00020\u0001B\u009d\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0005\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u0007\u0012\u0006\u0010\u0010\u001a\u00020\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u0007\u0012\u0006\u0010\u0012\u001a\u00020\u0007\u0012\u0006\u0010\u0013\u001a\u00020\u0003\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0003\u0012\u0006\u0010\u0017\u001a\u00020\u0007\u0012\u0006\u0010\u0018\u001a\u00020\u0003¢\u0006\u0002\u0010\u0019J\t\u0010G\u001a\u00020\u0003HÆ\u0003J\t\u0010H\u001a\u00020\u0007HÆ\u0003J\t\u0010I\u001a\u00020\u0007HÆ\u0003J\t\u0010J\u001a\u00020\u0007HÆ\u0003J\t\u0010K\u001a\u00020\u0007HÆ\u0003J\t\u0010L\u001a\u00020\u0007HÆ\u0003J\t\u0010M\u001a\u00020\u0003HÆ\u0003J\t\u0010N\u001a\u00020\u0015HÆ\u0003J\t\u0010O\u001a\u00020\u0003HÆ\u0003J\t\u0010P\u001a\u00020\u0007HÆ\u0003J\t\u0010Q\u001a\u00020\u0003HÆ\u0003J\t\u0010R\u001a\u00020\u0005HÆ\u0003J\t\u0010S\u001a\u00020\u0007HÆ\u0003J\t\u0010T\u001a\u00020\u0007HÆ\u0003J\t\u0010U\u001a\u00020\u0007HÆ\u0003J\t\u0010V\u001a\u00020\u0007HÆ\u0003J\t\u0010W\u001a\u00020\u0005HÆ\u0003J\t\u0010X\u001a\u00020\u0005HÆ\u0003J\t\u0010Y\u001a\u00020\u0005HÆ\u0003JÇ\u0001\u0010Z\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u00072\b\b\u0002\u0010\n\u001a\u00020\u00072\b\b\u0002\u0010\u000b\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\u00052\b\b\u0002\u0010\u000e\u001a\u00020\u00072\b\b\u0002\u0010\u000f\u001a\u00020\u00072\b\b\u0002\u0010\u0010\u001a\u00020\u00072\b\b\u0002\u0010\u0011\u001a\u00020\u00072\b\b\u0002\u0010\u0012\u001a\u00020\u00072\b\b\u0002\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u00032\b\b\u0002\u0010\u0017\u001a\u00020\u00072\b\b\u0002\u0010\u0018\u001a\u00020\u0003HÆ\u0001J\t\u0010[\u001a\u00020\u0005HÖ\u0001J\u0013\u0010\\\u001a\u00020\u00032\b\u0010]\u001a\u0004\u0018\u00010^HÖ\u0003J\t\u0010_\u001a\u00020\u0005HÖ\u0001J\t\u0010`\u001a\u00020aHÖ\u0001J\u0019\u0010b\u001a\u00020c2\u0006\u0010d\u001a\u00020e2\u0006\u0010f\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u000e\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\u000f\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001b\"\u0004\b#\u0010\u001dR\u001a\u0010\u0013\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u001f\"\u0004\b$\u0010!R\u001a\u0010\n\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u001b\"\u0004\b&\u0010\u001dR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u001b\"\u0004\b(\u0010\u001dR\u001a\u0010\t\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u001b\"\u0004\b*\u0010\u001dR\u001a\u0010\b\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u001b\"\u0004\b,\u0010\u001dR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u001a\u0010\f\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010.\"\u0004\b2\u00100R\u001a\u0010\u0017\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010\u001b\"\u0004\b4\u0010\u001dR\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u001a\u0010\r\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010.\"\u0004\b:\u00100R\u001a\u0010\u0016\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010\u001f\"\u0004\b<\u0010!R\u001a\u0010\u0010\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010\u001b\"\u0004\b>\u0010\u001dR\u001a\u0010\u0011\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010\u001b\"\u0004\b@\u0010\u001dR\u001a\u0010\u000b\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010.\"\u0004\bB\u00100R\u001a\u0010\u0012\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bC\u0010\u001b\"\u0004\bD\u0010\u001dR\u001a\u0010\u0018\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u0010\u001f\"\u0004\bF\u0010!¨\u0006g"}, d2 = {"Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettingsData;", "Landroid/os/Parcelable;", ViewProps.ENABLED, "", "position", "", ViewProps.MARGIN_LEFT, "", ViewProps.MARGIN_TOP, ViewProps.MARGIN_RIGHT, ViewProps.MARGIN_BOTTOM, Common.TEXT_COLOR, "primaryColor", "secondaryColor", ViewProps.BORDER_WIDTH, "height", "textBarMargin", "textBorderWidth", "textSize", "isMetricUnits", "refreshInterval", "", "showTextBorder", "ratio", "useContinuousRendering", "(ZIFFFFIIIFFFFFZJZFZ)V", "getBorderWidth", "()F", "setBorderWidth", "(F)V", "getEnabled", "()Z", "setEnabled", "(Z)V", "getHeight", "setHeight", "setMetricUnits", "getMarginBottom", "setMarginBottom", "getMarginLeft", "setMarginLeft", "getMarginRight", "setMarginRight", "getMarginTop", "setMarginTop", "getPosition", "()I", "setPosition", "(I)V", "getPrimaryColor", "setPrimaryColor", "getRatio", "setRatio", "getRefreshInterval", "()J", "setRefreshInterval", "(J)V", "getSecondaryColor", "setSecondaryColor", "getShowTextBorder", "setShowTextBorder", "getTextBarMargin", "setTextBarMargin", "getTextBorderWidth", "setTextBorderWidth", "getTextColor", "setTextColor", "getTextSize", "setTextSize", "getUseContinuousRendering", "setUseContinuousRendering", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "describeContents", "equals", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
final class ScaleBarSettingsData implements Parcelable {
    public static final Parcelable.Creator<ScaleBarSettingsData> CREATOR = new Creator();
    private float borderWidth;
    private boolean enabled;
    private float height;
    private boolean isMetricUnits;
    private float marginBottom;
    private float marginLeft;
    private float marginRight;
    private float marginTop;
    private int position;
    private int primaryColor;
    private float ratio;
    private long refreshInterval;
    private int secondaryColor;
    private boolean showTextBorder;
    private float textBarMargin;
    private float textBorderWidth;
    private int textColor;
    private float textSize;
    private boolean useContinuousRendering;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class Creator implements Parcelable.Creator<ScaleBarSettingsData> {
        @Override
        public final ScaleBarSettingsData createFromParcel(Parcel parcel) {
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4;
            float f;
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            boolean z5 = true;
            if (parcel.readInt() != 0) {
                z = false;
            } else {
                z5 = false;
                z = false;
            }
            int i = parcel.readInt();
            boolean z6 = z;
            float f2 = parcel.readFloat();
            float f3 = parcel.readFloat();
            float f4 = parcel.readFloat();
            float f5 = parcel.readFloat();
            int i2 = parcel.readInt();
            int i3 = parcel.readInt();
            int i4 = parcel.readInt();
            float f6 = parcel.readFloat();
            float f7 = parcel.readFloat();
            float f8 = parcel.readFloat();
            float f9 = parcel.readFloat();
            boolean z7 = z6;
            float f10 = parcel.readFloat();
            if (parcel.readInt() != 0) {
                z7 = true;
            }
            long j = parcel.readLong();
            if (parcel.readInt() != 0) {
                z2 = z7;
                z3 = z5;
            } else {
                z2 = z7;
                z3 = z2;
            }
            float f11 = parcel.readFloat();
            if (parcel.readInt() != 0) {
                f = f11;
                z4 = z5;
            } else {
                z4 = z2;
                f = f11;
            }
            return new ScaleBarSettingsData(z5, i, f2, f3, f4, f5, i2, i3, i4, f6, f7, f8, f9, f10, z7, j, z3, f, z4);
        }

        @Override
        public final ScaleBarSettingsData[] newArray(int i) {
            return new ScaleBarSettingsData[i];
        }
    }

    public static ScaleBarSettingsData copy$default(ScaleBarSettingsData scaleBarSettingsData, boolean z, int i, float f, float f2, float f3, float f4, int i2, int i3, int i4, float f5, float f6, float f7, float f8, float f9, boolean z2, long j, boolean z3, float f10, boolean z4, int i5, Object obj) {
        boolean z5;
        boolean z6;
        boolean z7 = (i5 & 1) != 0 ? scaleBarSettingsData.enabled : z;
        int i6 = (i5 & 2) != 0 ? scaleBarSettingsData.position : i;
        float f11 = (i5 & 4) != 0 ? scaleBarSettingsData.marginLeft : f;
        float f12 = (i5 & 8) != 0 ? scaleBarSettingsData.marginTop : f2;
        float f13 = (i5 & 16) != 0 ? scaleBarSettingsData.marginRight : f3;
        float f14 = (i5 & 32) != 0 ? scaleBarSettingsData.marginBottom : f4;
        int i7 = (i5 & 64) != 0 ? scaleBarSettingsData.textColor : i2;
        int i8 = (i5 & 128) != 0 ? scaleBarSettingsData.primaryColor : i3;
        int i9 = (i5 & 256) != 0 ? scaleBarSettingsData.secondaryColor : i4;
        float f15 = (i5 & 512) != 0 ? scaleBarSettingsData.borderWidth : f5;
        float f16 = (i5 & 1024) != 0 ? scaleBarSettingsData.height : f6;
        float f17 = (i5 & 2048) != 0 ? scaleBarSettingsData.textBarMargin : f7;
        float f18 = (i5 & 4096) != 0 ? scaleBarSettingsData.textBorderWidth : f8;
        float f19 = (i5 & 8192) != 0 ? scaleBarSettingsData.textSize : f9;
        boolean z8 = z7;
        boolean z9 = (i5 & 16384) != 0 ? scaleBarSettingsData.isMetricUnits : z2;
        long j2 = (i5 & 32768) != 0 ? scaleBarSettingsData.refreshInterval : j;
        boolean z10 = (i5 & 65536) != 0 ? scaleBarSettingsData.showTextBorder : z3;
        float f20 = (i5 & 131072) != 0 ? scaleBarSettingsData.ratio : f10;
        if ((i5 & 262144) != 0) {
            z6 = z10;
            z5 = scaleBarSettingsData.useContinuousRendering;
        } else {
            z5 = z4;
            z6 = z10;
        }
        return scaleBarSettingsData.copy(z8, i6, f11, f12, f13, f14, i7, i8, i9, f15, f16, f17, f18, f19, z9, j2, z6, f20, z5);
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final float getBorderWidth() {
        return this.borderWidth;
    }

    public final float getHeight() {
        return this.height;
    }

    public final float getTextBarMargin() {
        return this.textBarMargin;
    }

    public final float getTextBorderWidth() {
        return this.textBorderWidth;
    }

    public final float getTextSize() {
        return this.textSize;
    }

    public final boolean getIsMetricUnits() {
        return this.isMetricUnits;
    }

    public final long getRefreshInterval() {
        return this.refreshInterval;
    }

    public final boolean getShowTextBorder() {
        return this.showTextBorder;
    }

    public final float getRatio() {
        return this.ratio;
    }

    public final boolean getUseContinuousRendering() {
        return this.useContinuousRendering;
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

    public final int getTextColor() {
        return this.textColor;
    }

    public final int getPrimaryColor() {
        return this.primaryColor;
    }

    public final int getSecondaryColor() {
        return this.secondaryColor;
    }

    public final ScaleBarSettingsData copy(boolean enabled, int position, float marginLeft, float marginTop, float marginRight, float marginBottom, int textColor, int primaryColor, int secondaryColor, float borderWidth, float height, float textBarMargin, float textBorderWidth, float textSize, boolean isMetricUnits, long refreshInterval, boolean showTextBorder, float ratio, boolean useContinuousRendering) {
        return new ScaleBarSettingsData(enabled, position, marginLeft, marginTop, marginRight, marginBottom, textColor, primaryColor, secondaryColor, borderWidth, height, textBarMargin, textBorderWidth, textSize, isMetricUnits, refreshInterval, showTextBorder, ratio, useContinuousRendering);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ScaleBarSettingsData)) {
            return false;
        }
        ScaleBarSettingsData scaleBarSettingsData = (ScaleBarSettingsData) other;
        return this.enabled == scaleBarSettingsData.enabled && this.position == scaleBarSettingsData.position && Float.compare(this.marginLeft, scaleBarSettingsData.marginLeft) == 0 && Float.compare(this.marginTop, scaleBarSettingsData.marginTop) == 0 && Float.compare(this.marginRight, scaleBarSettingsData.marginRight) == 0 && Float.compare(this.marginBottom, scaleBarSettingsData.marginBottom) == 0 && this.textColor == scaleBarSettingsData.textColor && this.primaryColor == scaleBarSettingsData.primaryColor && this.secondaryColor == scaleBarSettingsData.secondaryColor && Float.compare(this.borderWidth, scaleBarSettingsData.borderWidth) == 0 && Float.compare(this.height, scaleBarSettingsData.height) == 0 && Float.compare(this.textBarMargin, scaleBarSettingsData.textBarMargin) == 0 && Float.compare(this.textBorderWidth, scaleBarSettingsData.textBorderWidth) == 0 && Float.compare(this.textSize, scaleBarSettingsData.textSize) == 0 && this.isMetricUnits == scaleBarSettingsData.isMetricUnits && this.refreshInterval == scaleBarSettingsData.refreshInterval && this.showTextBorder == scaleBarSettingsData.showTextBorder && Float.compare(this.ratio, scaleBarSettingsData.ratio) == 0 && this.useContinuousRendering == scaleBarSettingsData.useContinuousRendering;
    }

    public int hashCode() {
        boolean z = this.enabled;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int iHashCode = ((((((((((((((((((((((((((r0 * 31) + Integer.hashCode(this.position)) * 31) + Float.hashCode(this.marginLeft)) * 31) + Float.hashCode(this.marginTop)) * 31) + Float.hashCode(this.marginRight)) * 31) + Float.hashCode(this.marginBottom)) * 31) + Integer.hashCode(this.textColor)) * 31) + Integer.hashCode(this.primaryColor)) * 31) + Integer.hashCode(this.secondaryColor)) * 31) + Float.hashCode(this.borderWidth)) * 31) + Float.hashCode(this.height)) * 31) + Float.hashCode(this.textBarMargin)) * 31) + Float.hashCode(this.textBorderWidth)) * 31) + Float.hashCode(this.textSize)) * 31;
        boolean z2 = this.isMetricUnits;
        ?? r2 = z2;
        if (z2) {
            r2 = 1;
        }
        int iHashCode2 = (((iHashCode + r2) * 31) + Long.hashCode(this.refreshInterval)) * 31;
        boolean z3 = this.showTextBorder;
        ?? r3 = z3;
        if (z3) {
            r3 = 1;
        }
        int iHashCode3 = (((iHashCode2 + r3) * 31) + Float.hashCode(this.ratio)) * 31;
        boolean z4 = this.useContinuousRendering;
        return iHashCode3 + (z4 ? 1 : z4);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ScaleBarSettingsData(enabled=");
        sb.append(this.enabled).append(", position=").append(this.position).append(", marginLeft=").append(this.marginLeft).append(", marginTop=").append(this.marginTop).append(", marginRight=").append(this.marginRight).append(", marginBottom=").append(this.marginBottom).append(", textColor=").append(this.textColor).append(", primaryColor=").append(this.primaryColor).append(", secondaryColor=").append(this.secondaryColor).append(", borderWidth=").append(this.borderWidth).append(", height=").append(this.height).append(", textBarMargin=");
        sb.append(this.textBarMargin).append(", textBorderWidth=").append(this.textBorderWidth).append(", textSize=").append(this.textSize).append(", isMetricUnits=").append(this.isMetricUnits).append(", refreshInterval=").append(this.refreshInterval).append(", showTextBorder=").append(this.showTextBorder).append(", ratio=").append(this.ratio).append(", useContinuousRendering=").append(this.useContinuousRendering).append(CoreConstants.RIGHT_PARENTHESIS_CHAR);
        return sb.toString();
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
        parcel.writeInt(this.textColor);
        parcel.writeInt(this.primaryColor);
        parcel.writeInt(this.secondaryColor);
        parcel.writeFloat(this.borderWidth);
        parcel.writeFloat(this.height);
        parcel.writeFloat(this.textBarMargin);
        parcel.writeFloat(this.textBorderWidth);
        parcel.writeFloat(this.textSize);
        parcel.writeInt(this.isMetricUnits ? 1 : 0);
        parcel.writeLong(this.refreshInterval);
        parcel.writeInt(this.showTextBorder ? 1 : 0);
        parcel.writeFloat(this.ratio);
        parcel.writeInt(this.useContinuousRendering ? 1 : 0);
    }

    public ScaleBarSettingsData(boolean z, int i, float f, float f2, float f3, float f4, int i2, int i3, int i4, float f5, float f6, float f7, float f8, float f9, boolean z2, long j, boolean z3, float f10, boolean z4) {
        this.enabled = z;
        this.position = i;
        this.marginLeft = f;
        this.marginTop = f2;
        this.marginRight = f3;
        this.marginBottom = f4;
        this.textColor = i2;
        this.primaryColor = i3;
        this.secondaryColor = i4;
        this.borderWidth = f5;
        this.height = f6;
        this.textBarMargin = f7;
        this.textBorderWidth = f8;
        this.textSize = f9;
        this.isMetricUnits = z2;
        this.refreshInterval = j;
        this.showTextBorder = z3;
        this.ratio = f10;
        this.useContinuousRendering = z4;
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

    public final int getTextColor() {
        return this.textColor;
    }

    public final void setTextColor(int i) {
        this.textColor = i;
    }

    public final int getPrimaryColor() {
        return this.primaryColor;
    }

    public final void setPrimaryColor(int i) {
        this.primaryColor = i;
    }

    public final int getSecondaryColor() {
        return this.secondaryColor;
    }

    public final void setSecondaryColor(int i) {
        this.secondaryColor = i;
    }

    public final float getBorderWidth() {
        return this.borderWidth;
    }

    public final void setBorderWidth(float f) {
        this.borderWidth = f;
    }

    public final float getHeight() {
        return this.height;
    }

    public final void setHeight(float f) {
        this.height = f;
    }

    public final float getTextBarMargin() {
        return this.textBarMargin;
    }

    public final void setTextBarMargin(float f) {
        this.textBarMargin = f;
    }

    public final float getTextBorderWidth() {
        return this.textBorderWidth;
    }

    public final void setTextBorderWidth(float f) {
        this.textBorderWidth = f;
    }

    public final float getTextSize() {
        return this.textSize;
    }

    public final void setTextSize(float f) {
        this.textSize = f;
    }

    public final boolean isMetricUnits() {
        return this.isMetricUnits;
    }

    public final void setMetricUnits(boolean z) {
        this.isMetricUnits = z;
    }

    public final long getRefreshInterval() {
        return this.refreshInterval;
    }

    public final void setRefreshInterval(long j) {
        this.refreshInterval = j;
    }

    public final boolean getShowTextBorder() {
        return this.showTextBorder;
    }

    public final void setShowTextBorder(boolean z) {
        this.showTextBorder = z;
    }

    public final float getRatio() {
        return this.ratio;
    }

    public final void setRatio(float f) {
        this.ratio = f;
    }

    public final boolean getUseContinuousRendering() {
        return this.useContinuousRendering;
    }

    public final void setUseContinuousRendering(boolean z) {
        this.useContinuousRendering = z;
    }
}
