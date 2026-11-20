package com.mapbox.maps.plugin.attribution.generated;

import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0013\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001:\u0001'BG\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\f\u001a\u00020\u0003¢\u0006\u0002\u0010\rJ\t\u0010\u0019\u001a\u00020\u0005HÖ\u0001J\u0013\u0010\u001a\u001a\u00020\u00032\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0096\u0002J\b\u0010\u001d\u001a\u00020\u0005H\u0016J\u0006\u0010\u001e\u001a\u00020\u001fJ\b\u0010 \u001a\u00020!H\u0016J\u0019\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u000b\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0011\u0010\n\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0014R\u0011\u0010\t\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0012¨\u0006("}, d2 = {"Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettings;", "Landroid/os/Parcelable;", ViewProps.ENABLED, "", "iconColor", "", "position", ViewProps.MARGIN_LEFT, "", ViewProps.MARGIN_TOP, ViewProps.MARGIN_RIGHT, ViewProps.MARGIN_BOTTOM, "clickable", "(ZIIFFFFZ)V", "getClickable", "()Z", "getEnabled", "getIconColor", "()I", "getMarginBottom", "()F", "getMarginLeft", "getMarginRight", "getMarginTop", "getPosition", "describeContents", "equals", "other", "", "hashCode", "toBuilder", "Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettings$Builder;", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "Builder", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class AttributionSettings implements Parcelable {
    public static final Parcelable.Creator<AttributionSettings> CREATOR = new Creator();
    private final boolean clickable;
    private final boolean enabled;
    private final int iconColor;
    private final float marginBottom;
    private final float marginLeft;
    private final float marginRight;
    private final float marginTop;
    private final int position;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class Creator implements Parcelable.Creator<AttributionSettings> {
        @Override
        public final AttributionSettings createFromParcel(Parcel parcel) {
            boolean z;
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            boolean z2 = true;
            if (parcel.readInt() != 0) {
                z = false;
            } else {
                z2 = false;
                z = false;
            }
            int i = parcel.readInt();
            boolean z3 = z;
            int i2 = parcel.readInt();
            float f = parcel.readFloat();
            float f2 = parcel.readFloat();
            float f3 = parcel.readFloat();
            boolean z4 = z3;
            float f4 = parcel.readFloat();
            if (parcel.readInt() != 0) {
                z4 = true;
            }
            return new AttributionSettings(z2, i, i2, f, f2, f3, f4, z4, null);
        }

        @Override
        public final AttributionSettings[] newArray(int i) {
            return new AttributionSettings[i];
        }
    }

    public AttributionSettings(boolean z, int i, int i2, float f, float f2, float f3, float f4, boolean z2, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, i, i2, f, f2, f3, f4, z2);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.checkNotNullParameter(parcel, "out");
        parcel.writeInt(this.enabled ? 1 : 0);
        parcel.writeInt(this.iconColor);
        parcel.writeInt(this.position);
        parcel.writeFloat(this.marginLeft);
        parcel.writeFloat(this.marginTop);
        parcel.writeFloat(this.marginRight);
        parcel.writeFloat(this.marginBottom);
        parcel.writeInt(this.clickable ? 1 : 0);
    }

    private AttributionSettings(boolean z, int i, int i2, float f, float f2, float f3, float f4, boolean z2) {
        this.enabled = z;
        this.iconColor = i;
        this.position = i2;
        this.marginLeft = f;
        this.marginTop = f2;
        this.marginRight = f3;
        this.marginBottom = f4;
        this.clickable = z2;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final int getIconColor() {
        return this.iconColor;
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

    public final boolean getClickable() {
        return this.clickable;
    }

    public String toString() {
        return StringsKt.trimIndent("AttributionSettings(enabled=" + this.enabled + ", iconColor=" + this.iconColor + ",\n      position=" + this.position + ", marginLeft=" + this.marginLeft + ", marginTop=" + this.marginTop + ", marginRight=" + this.marginRight + ",\n      marginBottom=" + this.marginBottom + ", clickable=" + this.clickable + CoreConstants.RIGHT_PARENTHESIS_CHAR);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!Intrinsics.areEqual(getClass(), other != null ? other.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(other, "null cannot be cast to non-null type com.mapbox.maps.plugin.attribution.generated.AttributionSettings");
        AttributionSettings attributionSettings = (AttributionSettings) other;
        return this.enabled == attributionSettings.enabled && this.iconColor == attributionSettings.iconColor && this.position == attributionSettings.position && Float.compare(this.marginLeft, attributionSettings.marginLeft) == 0 && Float.compare(this.marginTop, attributionSettings.marginTop) == 0 && Float.compare(this.marginRight, attributionSettings.marginRight) == 0 && Float.compare(this.marginBottom, attributionSettings.marginBottom) == 0 && this.clickable == attributionSettings.clickable;
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.enabled), Integer.valueOf(this.iconColor), Integer.valueOf(this.position), Float.valueOf(this.marginLeft), Float.valueOf(this.marginTop), Float.valueOf(this.marginRight), Float.valueOf(this.marginBottom), Boolean.valueOf(this.clickable));
    }

    public final Builder toBuilder() {
        return new Builder().setEnabled(this.enabled).setIconColor(this.iconColor).setPosition(this.position).setMarginLeft(this.marginLeft).setMarginTop(this.marginTop).setMarginRight(this.marginRight).setMarginBottom(this.marginBottom).setClickable(this.clickable);
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010%\u001a\u00020&J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0013J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0013J\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0013J\u000e\u0010!\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u0013J\u000e\u0010$\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\rR$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR$\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u0013@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R$\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u0013@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0016\"\u0004\b\u001b\u0010\u0018R$\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u0013@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0016\"\u0004\b\u001e\u0010\u0018R$\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u0013@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0016\"\u0004\b!\u0010\u0018R$\u0010\"\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0010\"\u0004\b$\u0010\u0012¨\u0006'"}, d2 = {"Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettings$Builder;", "", "()V", "<set-?>", "", "clickable", "getClickable", "()Z", "setClickable", "(Z)V", ViewProps.ENABLED, "getEnabled", "setEnabled", "", "iconColor", "getIconColor", "()I", "setIconColor", "(I)V", "", ViewProps.MARGIN_BOTTOM, "getMarginBottom", "()F", "setMarginBottom", "(F)V", ViewProps.MARGIN_LEFT, "getMarginLeft", "setMarginLeft", ViewProps.MARGIN_RIGHT, "getMarginRight", "setMarginRight", ViewProps.MARGIN_TOP, "getMarginTop", "setMarginTop", "position", "getPosition", "setPosition", "build", "Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettings;", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Builder {
        private boolean enabled = true;
        private int iconColor = Color.parseColor("#FF1E8CAB");
        private int position = 8388691;
        private float marginLeft = 92.0f;
        private float marginTop = 4.0f;
        private float marginRight = 4.0f;
        private float marginBottom = 4.0f;
        private boolean clickable = true;

        public final boolean getEnabled() {
            return this.enabled;
        }

        public final void m1060setEnabled(boolean z) {
            this.enabled = z;
        }

        public final int getIconColor() {
            return this.iconColor;
        }

        public final void m1061setIconColor(int i) {
            this.iconColor = i;
        }

        public final int getPosition() {
            return this.position;
        }

        public final void m1066setPosition(int i) {
            this.position = i;
        }

        public final float getMarginLeft() {
            return this.marginLeft;
        }

        public final void m1063setMarginLeft(float f) {
            this.marginLeft = f;
        }

        public final float getMarginTop() {
            return this.marginTop;
        }

        public final void m1065setMarginTop(float f) {
            this.marginTop = f;
        }

        public final float getMarginRight() {
            return this.marginRight;
        }

        public final void m1064setMarginRight(float f) {
            this.marginRight = f;
        }

        public final float getMarginBottom() {
            return this.marginBottom;
        }

        public final void m1062setMarginBottom(float f) {
            this.marginBottom = f;
        }

        public final boolean getClickable() {
            return this.clickable;
        }

        public final void m1059setClickable(boolean z) {
            this.clickable = z;
        }

        public final Builder setEnabled(boolean enabled) {
            this.enabled = enabled;
            return this;
        }

        public final Builder setIconColor(int iconColor) {
            this.iconColor = iconColor;
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

        public final Builder setClickable(boolean clickable) {
            this.clickable = clickable;
            return this;
        }

        public final AttributionSettings build() {
            return new AttributionSettings(this.enabled, this.iconColor, this.position, this.marginLeft, this.marginTop, this.marginRight, this.marginBottom, this.clickable, null);
        }
    }
}
