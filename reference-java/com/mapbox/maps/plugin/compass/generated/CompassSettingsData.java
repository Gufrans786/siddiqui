package com.mapbox.maps.plugin.compass.generated;

import android.os.Parcel;
import android.os.Parcelable;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.maps.ImageHolder;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b1\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0083\b\u0018\u00002\u00020\u0001Bi\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0007\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\u0002\u0010\u0012J\t\u00103\u001a\u00020\u0003HÆ\u0003J\t\u00104\u001a\u00020\u0003HÆ\u0003J\t\u00105\u001a\u00020\u0003HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\t\u00107\u001a\u00020\u0005HÆ\u0003J\t\u00108\u001a\u00020\u0007HÆ\u0003J\t\u00109\u001a\u00020\u0007HÆ\u0003J\t\u0010:\u001a\u00020\u0007HÆ\u0003J\t\u0010;\u001a\u00020\u0007HÆ\u0003J\t\u0010<\u001a\u00020\u0007HÆ\u0003J\t\u0010=\u001a\u00020\u0007HÆ\u0003J\t\u0010>\u001a\u00020\u0003HÆ\u0003J\u0083\u0001\u0010?\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u00072\b\b\u0002\u0010\n\u001a\u00020\u00072\b\b\u0002\u0010\u000b\u001a\u00020\u00072\b\b\u0002\u0010\f\u001a\u00020\u00072\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÆ\u0001J\t\u0010@\u001a\u00020\u0005HÖ\u0001J\u0013\u0010A\u001a\u00020\u00032\b\u0010B\u001a\u0004\u0018\u00010CHÖ\u0003J\t\u0010D\u001a\u00020\u0005HÖ\u0001J\t\u0010E\u001a\u00020FHÖ\u0001J\u0019\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u000f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0014\"\u0004\b\u0018\u0010\u0016R\u001a\u0010\u000e\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0014\"\u0004\b\u001a\u0010\u0016R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001a\u0010\n\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010 \"\u0004\b$\u0010\"R\u001a\u0010\t\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010 \"\u0004\b&\u0010\"R\u001a\u0010\b\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010 \"\u0004\b(\u0010\"R\u001a\u0010\u000b\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010 \"\u0004\b*\u0010\"R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u001a\u0010\f\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010 \"\u0004\b0\u0010\"R\u001a\u0010\r\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0014\"\u0004\b2\u0010\u0016¨\u0006L"}, d2 = {"Lcom/mapbox/maps/plugin/compass/generated/CompassSettingsData;", "Landroid/os/Parcelable;", ViewProps.ENABLED, "", "position", "", ViewProps.MARGIN_LEFT, "", ViewProps.MARGIN_TOP, ViewProps.MARGIN_RIGHT, ViewProps.MARGIN_BOTTOM, ViewProps.OPACITY, "rotation", "visibility", "fadeWhenFacingNorth", "clickable", "image", "Lcom/mapbox/maps/ImageHolder;", "(ZIFFFFFFZZZLcom/mapbox/maps/ImageHolder;)V", "getClickable", "()Z", "setClickable", "(Z)V", "getEnabled", "setEnabled", "getFadeWhenFacingNorth", "setFadeWhenFacingNorth", "getImage", "()Lcom/mapbox/maps/ImageHolder;", "setImage", "(Lcom/mapbox/maps/ImageHolder;)V", "getMarginBottom", "()F", "setMarginBottom", "(F)V", "getMarginLeft", "setMarginLeft", "getMarginRight", "setMarginRight", "getMarginTop", "setMarginTop", "getOpacity", "setOpacity", "getPosition", "()I", "setPosition", "(I)V", "getRotation", "setRotation", "getVisibility", "setVisibility", "component1", "component10", "component11", "component12", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "describeContents", "equals", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
final class CompassSettingsData implements Parcelable {
    public static final Parcelable.Creator<CompassSettingsData> CREATOR = new Creator();
    private boolean clickable;
    private boolean enabled;
    private boolean fadeWhenFacingNorth;
    private ImageHolder image;
    private float marginBottom;
    private float marginLeft;
    private float marginRight;
    private float marginTop;
    private float opacity;
    private int position;
    private float rotation;
    private boolean visibility;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CompassSettingsData> {
        @Override
        public final CompassSettingsData createFromParcel(Parcel parcel) {
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
            float f = parcel.readFloat();
            float f2 = parcel.readFloat();
            float f3 = parcel.readFloat();
            float f4 = parcel.readFloat();
            float f5 = parcel.readFloat();
            boolean z4 = z3;
            float f6 = parcel.readFloat();
            if (parcel.readInt() != 0) {
                z4 = true;
            }
            if (parcel.readInt() != 0) {
                z4 = z2;
            }
            if (parcel.readInt() != 0) {
                z4 = z2;
            }
            return new CompassSettingsData(z2, i, f, f2, f3, f4, f5, f6, z4, z4, z4, parcel.readInt() == 0 ? null : ImageHolder.CREATOR.createFromParcel(parcel));
        }

        @Override
        public final CompassSettingsData[] newArray(int i) {
            return new CompassSettingsData[i];
        }
    }

    public static CompassSettingsData copy$default(CompassSettingsData compassSettingsData, boolean z, int i, float f, float f2, float f3, float f4, float f5, float f6, boolean z2, boolean z3, boolean z4, ImageHolder imageHolder, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = compassSettingsData.enabled;
        }
        if ((i2 & 2) != 0) {
            i = compassSettingsData.position;
        }
        if ((i2 & 4) != 0) {
            f = compassSettingsData.marginLeft;
        }
        if ((i2 & 8) != 0) {
            f2 = compassSettingsData.marginTop;
        }
        if ((i2 & 16) != 0) {
            f3 = compassSettingsData.marginRight;
        }
        if ((i2 & 32) != 0) {
            f4 = compassSettingsData.marginBottom;
        }
        if ((i2 & 64) != 0) {
            f5 = compassSettingsData.opacity;
        }
        if ((i2 & 128) != 0) {
            f6 = compassSettingsData.rotation;
        }
        if ((i2 & 256) != 0) {
            z2 = compassSettingsData.visibility;
        }
        if ((i2 & 512) != 0) {
            z3 = compassSettingsData.fadeWhenFacingNorth;
        }
        if ((i2 & 1024) != 0) {
            z4 = compassSettingsData.clickable;
        }
        if ((i2 & 2048) != 0) {
            imageHolder = compassSettingsData.image;
        }
        boolean z5 = z4;
        ImageHolder imageHolder2 = imageHolder;
        boolean z6 = z2;
        boolean z7 = z3;
        float f7 = f5;
        float f8 = f6;
        float f9 = f3;
        float f10 = f4;
        return compassSettingsData.copy(z, i, f, f2, f9, f10, f7, f8, z6, z7, z5, imageHolder2);
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final boolean getFadeWhenFacingNorth() {
        return this.fadeWhenFacingNorth;
    }

    public final boolean getClickable() {
        return this.clickable;
    }

    public final ImageHolder getImage() {
        return this.image;
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

    public final float getOpacity() {
        return this.opacity;
    }

    public final float getRotation() {
        return this.rotation;
    }

    public final boolean getVisibility() {
        return this.visibility;
    }

    public final CompassSettingsData copy(boolean enabled, int position, float marginLeft, float marginTop, float marginRight, float marginBottom, float opacity, float rotation, boolean visibility, boolean fadeWhenFacingNorth, boolean clickable, ImageHolder image) {
        return new CompassSettingsData(enabled, position, marginLeft, marginTop, marginRight, marginBottom, opacity, rotation, visibility, fadeWhenFacingNorth, clickable, image);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CompassSettingsData)) {
            return false;
        }
        CompassSettingsData compassSettingsData = (CompassSettingsData) other;
        return this.enabled == compassSettingsData.enabled && this.position == compassSettingsData.position && Float.compare(this.marginLeft, compassSettingsData.marginLeft) == 0 && Float.compare(this.marginTop, compassSettingsData.marginTop) == 0 && Float.compare(this.marginRight, compassSettingsData.marginRight) == 0 && Float.compare(this.marginBottom, compassSettingsData.marginBottom) == 0 && Float.compare(this.opacity, compassSettingsData.opacity) == 0 && Float.compare(this.rotation, compassSettingsData.rotation) == 0 && this.visibility == compassSettingsData.visibility && this.fadeWhenFacingNorth == compassSettingsData.fadeWhenFacingNorth && this.clickable == compassSettingsData.clickable && Intrinsics.areEqual(this.image, compassSettingsData.image);
    }

    public int hashCode() {
        boolean z = this.enabled;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int iHashCode = ((((((((((((((r0 * 31) + Integer.hashCode(this.position)) * 31) + Float.hashCode(this.marginLeft)) * 31) + Float.hashCode(this.marginTop)) * 31) + Float.hashCode(this.marginRight)) * 31) + Float.hashCode(this.marginBottom)) * 31) + Float.hashCode(this.opacity)) * 31) + Float.hashCode(this.rotation)) * 31;
        boolean z2 = this.visibility;
        ?? r2 = z2;
        if (z2) {
            r2 = 1;
        }
        int i = (iHashCode + r2) * 31;
        boolean z3 = this.fadeWhenFacingNorth;
        ?? r3 = z3;
        if (z3) {
            r3 = 1;
        }
        int i2 = (i + r3) * 31;
        boolean z4 = this.clickable;
        int i3 = (i2 + (z4 ? 1 : z4)) * 31;
        ImageHolder imageHolder = this.image;
        return i3 + (imageHolder == null ? 0 : imageHolder.hashCode());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("CompassSettingsData(enabled=");
        sb.append(this.enabled).append(", position=").append(this.position).append(", marginLeft=").append(this.marginLeft).append(", marginTop=").append(this.marginTop).append(", marginRight=").append(this.marginRight).append(", marginBottom=").append(this.marginBottom).append(", opacity=").append(this.opacity).append(", rotation=").append(this.rotation).append(", visibility=").append(this.visibility).append(", fadeWhenFacingNorth=").append(this.fadeWhenFacingNorth).append(", clickable=").append(this.clickable).append(", image=");
        sb.append(this.image).append(CoreConstants.RIGHT_PARENTHESIS_CHAR);
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
        parcel.writeFloat(this.opacity);
        parcel.writeFloat(this.rotation);
        parcel.writeInt(this.visibility ? 1 : 0);
        parcel.writeInt(this.fadeWhenFacingNorth ? 1 : 0);
        parcel.writeInt(this.clickable ? 1 : 0);
        ImageHolder imageHolder = this.image;
        if (imageHolder == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            imageHolder.writeToParcel(parcel, flags);
        }
    }

    public CompassSettingsData(boolean z, int i, float f, float f2, float f3, float f4, float f5, float f6, boolean z2, boolean z3, boolean z4, ImageHolder imageHolder) {
        this.enabled = z;
        this.position = i;
        this.marginLeft = f;
        this.marginTop = f2;
        this.marginRight = f3;
        this.marginBottom = f4;
        this.opacity = f5;
        this.rotation = f6;
        this.visibility = z2;
        this.fadeWhenFacingNorth = z3;
        this.clickable = z4;
        this.image = imageHolder;
    }

    public CompassSettingsData(boolean z, int i, float f, float f2, float f3, float f4, float f5, float f6, boolean z2, boolean z3, boolean z4, ImageHolder imageHolder, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, i, f, f2, f3, f4, f5, f6, z2, z3, z4, (i2 & 2048) != 0 ? null : imageHolder);
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

    public final float getOpacity() {
        return this.opacity;
    }

    public final void setOpacity(float f) {
        this.opacity = f;
    }

    public final float getRotation() {
        return this.rotation;
    }

    public final void setRotation(float f) {
        this.rotation = f;
    }

    public final boolean getVisibility() {
        return this.visibility;
    }

    public final void setVisibility(boolean z) {
        this.visibility = z;
    }

    public final boolean getFadeWhenFacingNorth() {
        return this.fadeWhenFacingNorth;
    }

    public final void setFadeWhenFacingNorth(boolean z) {
        this.fadeWhenFacingNorth = z;
    }

    public final boolean getClickable() {
        return this.clickable;
    }

    public final void setClickable(boolean z) {
        this.clickable = z;
    }

    public final ImageHolder getImage() {
        return this.image;
    }

    public final void setImage(ImageHolder imageHolder) {
        this.image = imageHolder;
    }
}
