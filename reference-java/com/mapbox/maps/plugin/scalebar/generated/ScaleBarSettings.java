package com.mapbox.maps.plugin.scalebar.generated;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.view.ViewCompat;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import com.reactcommunity.rndatetimepicker.Common;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\r\n\u0002\u0010\t\n\u0002\b\u001d\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001:\u0001>B\u009f\u0001\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0005\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u0007\u0012\u0006\u0010\u0010\u001a\u00020\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u0007\u0012\u0006\u0010\u0012\u001a\u00020\u0007\u0012\u0006\u0010\u0013\u001a\u00020\u0003\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0003\u0012\u0006\u0010\u0017\u001a\u00020\u0007\u0012\u0006\u0010\u0018\u001a\u00020\u0003¢\u0006\u0002\u0010\u0019J\t\u00100\u001a\u00020\u0005HÖ\u0001J\u0013\u00101\u001a\u00020\u00032\b\u00102\u001a\u0004\u0018\u000103H\u0096\u0002J\b\u00104\u001a\u00020\u0005H\u0016J\u0006\u00105\u001a\u000206J\b\u00107\u001a\u000208H\u0016J\u0019\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u000e\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0011\u0010\u000f\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001bR\u0011\u0010\u0013\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u001dR\u0011\u0010\n\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001bR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001bR\u0011\u0010\t\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001bR\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0011\u0010\f\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b%\u0010$R\u0011\u0010\u0017\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001bR\u0011\u0010\u0014\u001a\u00020\u0015¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0011\u0010\r\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b)\u0010$R\u0011\u0010\u0016\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u001dR\u0011\u0010\u0010\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u001bR\u0011\u0010\u0011\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u001bR\u0011\u0010\u000b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b-\u0010$R\u0011\u0010\u0012\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b.\u0010\u001bR\u0011\u0010\u0018\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b/\u0010\u001d¨\u0006?"}, d2 = {"Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings;", "Landroid/os/Parcelable;", ViewProps.ENABLED, "", "position", "", ViewProps.MARGIN_LEFT, "", ViewProps.MARGIN_TOP, ViewProps.MARGIN_RIGHT, ViewProps.MARGIN_BOTTOM, Common.TEXT_COLOR, "primaryColor", "secondaryColor", ViewProps.BORDER_WIDTH, "height", "textBarMargin", "textBorderWidth", "textSize", "isMetricUnits", "refreshInterval", "", "showTextBorder", "ratio", "useContinuousRendering", "(ZIFFFFIIIFFFFFZJZFZ)V", "getBorderWidth", "()F", "getEnabled", "()Z", "getHeight", "getMarginBottom", "getMarginLeft", "getMarginRight", "getMarginTop", "getPosition", "()I", "getPrimaryColor", "getRatio", "getRefreshInterval", "()J", "getSecondaryColor", "getShowTextBorder", "getTextBarMargin", "getTextBorderWidth", "getTextColor", "getTextSize", "getUseContinuousRendering", "describeContents", "equals", "other", "", "hashCode", "toBuilder", "Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings$Builder;", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "Builder", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ScaleBarSettings implements Parcelable {
    public static final Parcelable.Creator<ScaleBarSettings> CREATOR = new Creator();
    private final float borderWidth;
    private final boolean enabled;
    private final float height;
    private final boolean isMetricUnits;
    private final float marginBottom;
    private final float marginLeft;
    private final float marginRight;
    private final float marginTop;
    private final int position;
    private final int primaryColor;
    private final float ratio;
    private final long refreshInterval;
    private final int secondaryColor;
    private final boolean showTextBorder;
    private final float textBarMargin;
    private final float textBorderWidth;
    private final int textColor;
    private final float textSize;
    private final boolean useContinuousRendering;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class Creator implements Parcelable.Creator<ScaleBarSettings> {
        @Override
        public final ScaleBarSettings createFromParcel(Parcel parcel) {
            boolean z;
            boolean z2;
            boolean z3;
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            boolean z4 = true;
            if (parcel.readInt() != 0) {
                z = false;
            } else {
                z4 = false;
                z = false;
            }
            int i = parcel.readInt();
            boolean z5 = z;
            float f = parcel.readFloat();
            float f2 = parcel.readFloat();
            float f3 = parcel.readFloat();
            float f4 = parcel.readFloat();
            int i2 = parcel.readInt();
            int i3 = parcel.readInt();
            int i4 = parcel.readInt();
            float f5 = parcel.readFloat();
            float f6 = parcel.readFloat();
            float f7 = parcel.readFloat();
            float f8 = parcel.readFloat();
            boolean z6 = z5;
            float f9 = parcel.readFloat();
            if (parcel.readInt() != 0) {
                z6 = true;
            }
            long j = parcel.readLong();
            if (parcel.readInt() != 0) {
                z2 = z6;
                z3 = z4;
            } else {
                z2 = z6;
                z3 = z2;
            }
            return new ScaleBarSettings(z4, i, f, f2, f3, f4, i2, i3, i4, f5, f6, f7, f8, f9, z6, j, z3, parcel.readFloat(), parcel.readInt() == 0 ? z2 : true, null);
        }

        @Override
        public final ScaleBarSettings[] newArray(int i) {
            return new ScaleBarSettings[i];
        }
    }

    public ScaleBarSettings(boolean z, int i, float f, float f2, float f3, float f4, int i2, int i3, int i4, float f5, float f6, float f7, float f8, float f9, boolean z2, long j, boolean z3, float f10, boolean z4, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, i, f, f2, f3, f4, i2, i3, i4, f5, f6, f7, f8, f9, z2, j, z3, f10, z4);
    }

    @Override
    public int describeContents() {
        return 0;
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

    private ScaleBarSettings(boolean z, int i, float f, float f2, float f3, float f4, int i2, int i3, int i4, float f5, float f6, float f7, float f8, float f9, boolean z2, long j, boolean z3, float f10, boolean z4) {
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

    public String toString() {
        StringBuilder sb = new StringBuilder("ScaleBarSettings(enabled=");
        sb.append(this.enabled).append(", position=").append(this.position).append(",\n      marginLeft=").append(this.marginLeft).append(", marginTop=").append(this.marginTop).append(", marginRight=").append(this.marginRight).append(",\n      marginBottom=").append(this.marginBottom).append(", textColor=").append(this.textColor).append(", primaryColor=").append(this.primaryColor).append(",\n      secondaryColor=").append(this.secondaryColor).append(", borderWidth=").append(this.borderWidth).append(", height=").append(this.height).append(",\n      textBarMargin=");
        sb.append(this.textBarMargin).append(", textBorderWidth=").append(this.textBorderWidth).append(", textSize=").append(this.textSize).append(",\n      isMetricUnits=").append(this.isMetricUnits).append(", refreshInterval=").append(this.refreshInterval).append(",\n      showTextBorder=").append(this.showTextBorder).append(", ratio=").append(this.ratio).append(",\n      useContinuousRendering=").append(this.useContinuousRendering).append(CoreConstants.RIGHT_PARENTHESIS_CHAR);
        return StringsKt.trimIndent(sb.toString());
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!Intrinsics.areEqual(getClass(), other != null ? other.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(other, "null cannot be cast to non-null type com.mapbox.maps.plugin.scalebar.generated.ScaleBarSettings");
        ScaleBarSettings scaleBarSettings = (ScaleBarSettings) other;
        return this.enabled == scaleBarSettings.enabled && this.position == scaleBarSettings.position && Float.compare(this.marginLeft, scaleBarSettings.marginLeft) == 0 && Float.compare(this.marginTop, scaleBarSettings.marginTop) == 0 && Float.compare(this.marginRight, scaleBarSettings.marginRight) == 0 && Float.compare(this.marginBottom, scaleBarSettings.marginBottom) == 0 && this.textColor == scaleBarSettings.textColor && this.primaryColor == scaleBarSettings.primaryColor && this.secondaryColor == scaleBarSettings.secondaryColor && Float.compare(this.borderWidth, scaleBarSettings.borderWidth) == 0 && Float.compare(this.height, scaleBarSettings.height) == 0 && Float.compare(this.textBarMargin, scaleBarSettings.textBarMargin) == 0 && Float.compare(this.textBorderWidth, scaleBarSettings.textBorderWidth) == 0 && Float.compare(this.textSize, scaleBarSettings.textSize) == 0 && this.isMetricUnits == scaleBarSettings.isMetricUnits && this.refreshInterval == scaleBarSettings.refreshInterval && this.showTextBorder == scaleBarSettings.showTextBorder && Float.compare(this.ratio, scaleBarSettings.ratio) == 0 && this.useContinuousRendering == scaleBarSettings.useContinuousRendering;
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.enabled), Integer.valueOf(this.position), Float.valueOf(this.marginLeft), Float.valueOf(this.marginTop), Float.valueOf(this.marginRight), Float.valueOf(this.marginBottom), Integer.valueOf(this.textColor), Integer.valueOf(this.primaryColor), Integer.valueOf(this.secondaryColor), Float.valueOf(this.borderWidth), Float.valueOf(this.height), Float.valueOf(this.textBarMargin), Float.valueOf(this.textBorderWidth), Float.valueOf(this.textSize), Boolean.valueOf(this.isMetricUnits), Long.valueOf(this.refreshInterval), Boolean.valueOf(this.showTextBorder), Float.valueOf(this.ratio), Boolean.valueOf(this.useContinuousRendering));
    }

    public final Builder toBuilder() {
        return new Builder().setEnabled(this.enabled).setPosition(this.position).setMarginLeft(this.marginLeft).setMarginTop(this.marginTop).setMarginRight(this.marginRight).setMarginBottom(this.marginBottom).setTextColor(this.textColor).setPrimaryColor(this.primaryColor).setSecondaryColor(this.secondaryColor).setBorderWidth(this.borderWidth).setHeight(this.height).setTextBarMargin(this.textBarMargin).setTextBorderWidth(this.textBorderWidth).setTextSize(this.textSize).setIsMetricUnits(this.isMetricUnits).setRefreshInterval(this.refreshInterval).setShowTextBorder(this.showTextBorder).setRatio(this.ratio).setUseContinuousRendering(this.useContinuousRendering);
    }

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0016\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\t\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010H\u001a\u00020IJ\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0004J\u000e\u0010J\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\nJ\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0004J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0004J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0004J\u000e\u0010 \u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0004J\u000e\u0010%\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020!J\u000e\u0010)\u001a\u00020\u00002\u0006\u0010'\u001a\u00020!J\u000e\u0010,\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u0004J\u000e\u00101\u001a\u00020\u00002\u0006\u0010.\u001a\u00020-J\u000e\u00105\u001a\u00020\u00002\u0006\u00103\u001a\u00020!J\u000e\u00108\u001a\u00020\u00002\u0006\u00106\u001a\u00020\nJ\u000e\u0010;\u001a\u00020\u00002\u0006\u00109\u001a\u00020\u0004J\u000e\u0010>\u001a\u00020\u00002\u0006\u0010<\u001a\u00020\u0004J\u000e\u0010A\u001a\u00020\u00002\u0006\u0010?\u001a\u00020!J\u000e\u0010D\u001a\u00020\u00002\u0006\u0010B\u001a\u00020\u0004J\u000e\u0010G\u001a\u00020\u00002\u0006\u0010E\u001a\u00020\nR$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR$\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0007\"\u0004\b\u0012\u0010\tR$\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\r\"\u0004\b\u0014\u0010\u000fR$\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0007\"\u0004\b\u0017\u0010\tR$\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0007\"\u0004\b\u001a\u0010\tR$\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0007\"\u0004\b\u001d\u0010\tR$\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0007\"\u0004\b \u0010\tR$\u0010\"\u001a\u00020!2\u0006\u0010\u0003\u001a\u00020!@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R$\u0010'\u001a\u00020!2\u0006\u0010\u0003\u001a\u00020!@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010$\"\u0004\b)\u0010&R$\u0010*\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0007\"\u0004\b,\u0010\tR$\u0010.\u001a\u00020-2\u0006\u0010\u0003\u001a\u00020-@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R$\u00103\u001a\u00020!2\u0006\u0010\u0003\u001a\u00020!@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010$\"\u0004\b5\u0010&R$\u00106\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\r\"\u0004\b8\u0010\u000fR$\u00109\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010\u0007\"\u0004\b;\u0010\tR$\u0010<\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010\u0007\"\u0004\b>\u0010\tR$\u0010?\u001a\u00020!2\u0006\u0010\u0003\u001a\u00020!@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010$\"\u0004\bA\u0010&R$\u0010B\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bC\u0010\u0007\"\u0004\bD\u0010\tR$\u0010E\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bF\u0010\r\"\u0004\bG\u0010\u000f¨\u0006K"}, d2 = {"Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings$Builder;", "", "()V", "<set-?>", "", ViewProps.BORDER_WIDTH, "getBorderWidth", "()F", "setBorderWidth", "(F)V", "", ViewProps.ENABLED, "getEnabled", "()Z", "setEnabled", "(Z)V", "height", "getHeight", "setHeight", "isMetricUnits", "setMetricUnits", ViewProps.MARGIN_BOTTOM, "getMarginBottom", "setMarginBottom", ViewProps.MARGIN_LEFT, "getMarginLeft", "setMarginLeft", ViewProps.MARGIN_RIGHT, "getMarginRight", "setMarginRight", ViewProps.MARGIN_TOP, "getMarginTop", "setMarginTop", "", "position", "getPosition", "()I", "setPosition", "(I)V", "primaryColor", "getPrimaryColor", "setPrimaryColor", "ratio", "getRatio", "setRatio", "", "refreshInterval", "getRefreshInterval", "()J", "setRefreshInterval", "(J)V", "secondaryColor", "getSecondaryColor", "setSecondaryColor", "showTextBorder", "getShowTextBorder", "setShowTextBorder", "textBarMargin", "getTextBarMargin", "setTextBarMargin", "textBorderWidth", "getTextBorderWidth", "setTextBorderWidth", Common.TEXT_COLOR, "getTextColor", "setTextColor", "textSize", "getTextSize", "setTextSize", "useContinuousRendering", "getUseContinuousRendering", "setUseContinuousRendering", "build", "Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings;", "setIsMetricUnits", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Builder {
        private boolean useContinuousRendering;
        private boolean enabled = true;
        private int position = 8388659;
        private float marginLeft = 4.0f;
        private float marginTop = 4.0f;
        private float marginRight = 4.0f;
        private float marginBottom = 4.0f;
        private int textColor = ViewCompat.MEASURED_STATE_MASK;
        private int primaryColor = ViewCompat.MEASURED_STATE_MASK;
        private int secondaryColor = -1;
        private float borderWidth = 2.0f;
        private float height = 2.0f;
        private float textBarMargin = 8.0f;
        private float textBorderWidth = 2.0f;
        private float textSize = 8.0f;
        private boolean isMetricUnits = true;
        private long refreshInterval = 15;
        private boolean showTextBorder = true;
        private float ratio = 0.5f;

        public final boolean getEnabled() {
            return this.enabled;
        }

        public final void m1120setEnabled(boolean z) {
            this.enabled = z;
        }

        public final int getPosition() {
            return this.position;
        }

        public final void m1126setPosition(int i) {
            this.position = i;
        }

        public final float getMarginLeft() {
            return this.marginLeft;
        }

        public final void m1123setMarginLeft(float f) {
            this.marginLeft = f;
        }

        public final float getMarginTop() {
            return this.marginTop;
        }

        public final void m1125setMarginTop(float f) {
            this.marginTop = f;
        }

        public final float getMarginRight() {
            return this.marginRight;
        }

        public final void m1124setMarginRight(float f) {
            this.marginRight = f;
        }

        public final float getMarginBottom() {
            return this.marginBottom;
        }

        public final void m1122setMarginBottom(float f) {
            this.marginBottom = f;
        }

        public final int getTextColor() {
            return this.textColor;
        }

        public final void m1134setTextColor(int i) {
            this.textColor = i;
        }

        public final int getPrimaryColor() {
            return this.primaryColor;
        }

        public final void m1127setPrimaryColor(int i) {
            this.primaryColor = i;
        }

        public final int getSecondaryColor() {
            return this.secondaryColor;
        }

        public final void m1130setSecondaryColor(int i) {
            this.secondaryColor = i;
        }

        public final float getBorderWidth() {
            return this.borderWidth;
        }

        public final void m1119setBorderWidth(float f) {
            this.borderWidth = f;
        }

        public final float getHeight() {
            return this.height;
        }

        public final void m1121setHeight(float f) {
            this.height = f;
        }

        public final float getTextBarMargin() {
            return this.textBarMargin;
        }

        public final void m1132setTextBarMargin(float f) {
            this.textBarMargin = f;
        }

        public final float getTextBorderWidth() {
            return this.textBorderWidth;
        }

        public final void m1133setTextBorderWidth(float f) {
            this.textBorderWidth = f;
        }

        public final float getTextSize() {
            return this.textSize;
        }

        public final void m1135setTextSize(float f) {
            this.textSize = f;
        }

        public final boolean getIsMetricUnits() {
            return this.isMetricUnits;
        }

        public final void setMetricUnits(boolean z) {
            this.isMetricUnits = z;
        }

        public final long getRefreshInterval() {
            return this.refreshInterval;
        }

        public final void m1129setRefreshInterval(long j) {
            this.refreshInterval = j;
        }

        public final boolean getShowTextBorder() {
            return this.showTextBorder;
        }

        public final void m1131setShowTextBorder(boolean z) {
            this.showTextBorder = z;
        }

        public final float getRatio() {
            return this.ratio;
        }

        public final void m1128setRatio(float f) {
            this.ratio = f;
        }

        public final boolean getUseContinuousRendering() {
            return this.useContinuousRendering;
        }

        public final void m1136setUseContinuousRendering(boolean z) {
            this.useContinuousRendering = z;
        }

        public final Builder setEnabled(boolean enabled) {
            this.enabled = enabled;
            return this;
        }

        public final Builder setPosition(int position) {
            this.position = position;
            return this;
        }

        public final Builder setMarginLeft(float marginLeft) {
            this.marginLeft = marginLeft;
            return this;
        }

        public final Builder setMarginTop(float marginTop) {
            this.marginTop = marginTop;
            return this;
        }

        public final Builder setMarginRight(float marginRight) {
            this.marginRight = marginRight;
            return this;
        }

        public final Builder setMarginBottom(float marginBottom) {
            this.marginBottom = marginBottom;
            return this;
        }

        public final Builder setTextColor(int textColor) {
            this.textColor = textColor;
            return this;
        }

        public final Builder setPrimaryColor(int primaryColor) {
            this.primaryColor = primaryColor;
            return this;
        }

        public final Builder setSecondaryColor(int secondaryColor) {
            this.secondaryColor = secondaryColor;
            return this;
        }

        public final Builder setBorderWidth(float borderWidth) {
            this.borderWidth = borderWidth;
            return this;
        }

        public final Builder setHeight(float height) {
            this.height = height;
            return this;
        }

        public final Builder setTextBarMargin(float textBarMargin) {
            this.textBarMargin = textBarMargin;
            return this;
        }

        public final Builder setTextBorderWidth(float textBorderWidth) {
            this.textBorderWidth = textBorderWidth;
            return this;
        }

        public final Builder setTextSize(float textSize) {
            this.textSize = textSize;
            return this;
        }

        public final Builder setIsMetricUnits(boolean isMetricUnits) {
            this.isMetricUnits = isMetricUnits;
            return this;
        }

        public final Builder setRefreshInterval(long refreshInterval) {
            this.refreshInterval = refreshInterval;
            return this;
        }

        public final Builder setShowTextBorder(boolean showTextBorder) {
            this.showTextBorder = showTextBorder;
            return this;
        }

        public final Builder setRatio(float ratio) {
            this.ratio = ratio;
            return this;
        }

        public final Builder setUseContinuousRendering(boolean useContinuousRendering) {
            this.useContinuousRendering = useContinuousRendering;
            return this;
        }

        public final ScaleBarSettings build() {
            return new ScaleBarSettings(this.enabled, this.position, this.marginLeft, this.marginTop, this.marginRight, this.marginBottom, this.textColor, this.primaryColor, this.secondaryColor, this.borderWidth, this.height, this.textBarMargin, this.textBorderWidth, this.textSize, this.isMetricUnits, this.refreshInterval, this.showTextBorder, this.ratio, this.useContinuousRendering, null);
        }
    }
}
