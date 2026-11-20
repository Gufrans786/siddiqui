package com.mapbox.maps.plugin;

import android.os.Parcel;
import android.os.Parcelable;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.maps.ImageHolder;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0018\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BA\b\u0007\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010\u001f\u001a\u00020\tHÆ\u0003JC\u0010 \u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\t\u0010!\u001a\u00020\"HÖ\u0001J\u0013\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010&HÖ\u0003J\t\u0010'\u001a\u00020\"HÖ\u0001J\t\u0010(\u001a\u00020\u0007HÖ\u0001J\u0019\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\"HÖ\u0001R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\f\"\u0004\b\u0018\u0010\u000eR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\f\"\u0004\b\u001a\u0010\u000e¨\u0006."}, d2 = {"Lcom/mapbox/maps/plugin/LocationPuck2D;", "Lcom/mapbox/maps/plugin/LocationPuck;", "topImage", "Lcom/mapbox/maps/ImageHolder;", "bearingImage", "shadowImage", "scaleExpression", "", ViewProps.OPACITY, "", "(Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/ImageHolder;Lcom/mapbox/maps/ImageHolder;Ljava/lang/String;F)V", "getBearingImage", "()Lcom/mapbox/maps/ImageHolder;", "setBearingImage", "(Lcom/mapbox/maps/ImageHolder;)V", "getOpacity", "()F", "setOpacity", "(F)V", "getScaleExpression", "()Ljava/lang/String;", "setScaleExpression", "(Ljava/lang/String;)V", "getShadowImage", "setShadowImage", "getTopImage", "setTopImage", "component1", "component2", "component3", "component4", "component5", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class LocationPuck2D extends LocationPuck {
    public static final Parcelable.Creator<LocationPuck2D> CREATOR = new Creator();
    private ImageHolder bearingImage;
    private float opacity;
    private String scaleExpression;
    private ImageHolder shadowImage;
    private ImageHolder topImage;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class Creator implements Parcelable.Creator<LocationPuck2D> {
        @Override
        public final LocationPuck2D createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new LocationPuck2D(parcel.readInt() == 0 ? null : ImageHolder.CREATOR.createFromParcel(parcel), parcel.readInt() == 0 ? null : ImageHolder.CREATOR.createFromParcel(parcel), parcel.readInt() != 0 ? ImageHolder.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readFloat());
        }

        @Override
        public final LocationPuck2D[] newArray(int i) {
            return new LocationPuck2D[i];
        }
    }

    public LocationPuck2D() {
        this(null, null, null, null, 0.0f, 31, null);
    }

    public LocationPuck2D(ImageHolder imageHolder) {
        this(imageHolder, null, null, null, 0.0f, 30, null);
    }

    public LocationPuck2D(ImageHolder imageHolder, ImageHolder imageHolder2) {
        this(imageHolder, imageHolder2, null, null, 0.0f, 28, null);
    }

    public LocationPuck2D(ImageHolder imageHolder, ImageHolder imageHolder2, ImageHolder imageHolder3) {
        this(imageHolder, imageHolder2, imageHolder3, null, 0.0f, 24, null);
    }

    public LocationPuck2D(ImageHolder imageHolder, ImageHolder imageHolder2, ImageHolder imageHolder3, String str) {
        this(imageHolder, imageHolder2, imageHolder3, str, 0.0f, 16, null);
    }

    public static LocationPuck2D copy$default(LocationPuck2D locationPuck2D, ImageHolder imageHolder, ImageHolder imageHolder2, ImageHolder imageHolder3, String str, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            imageHolder = locationPuck2D.topImage;
        }
        if ((i & 2) != 0) {
            imageHolder2 = locationPuck2D.bearingImage;
        }
        if ((i & 4) != 0) {
            imageHolder3 = locationPuck2D.shadowImage;
        }
        if ((i & 8) != 0) {
            str = locationPuck2D.scaleExpression;
        }
        if ((i & 16) != 0) {
            f = locationPuck2D.opacity;
        }
        float f2 = f;
        ImageHolder imageHolder4 = imageHolder3;
        return locationPuck2D.copy(imageHolder, imageHolder2, imageHolder4, str, f2);
    }

    public final ImageHolder getTopImage() {
        return this.topImage;
    }

    public final ImageHolder getBearingImage() {
        return this.bearingImage;
    }

    public final ImageHolder getShadowImage() {
        return this.shadowImage;
    }

    public final String getScaleExpression() {
        return this.scaleExpression;
    }

    public final float getOpacity() {
        return this.opacity;
    }

    public final LocationPuck2D copy(ImageHolder topImage, ImageHolder bearingImage, ImageHolder shadowImage, String scaleExpression, float opacity) {
        return new LocationPuck2D(topImage, bearingImage, shadowImage, scaleExpression, opacity);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LocationPuck2D)) {
            return false;
        }
        LocationPuck2D locationPuck2D = (LocationPuck2D) other;
        return Intrinsics.areEqual(this.topImage, locationPuck2D.topImage) && Intrinsics.areEqual(this.bearingImage, locationPuck2D.bearingImage) && Intrinsics.areEqual(this.shadowImage, locationPuck2D.shadowImage) && Intrinsics.areEqual(this.scaleExpression, locationPuck2D.scaleExpression) && Float.compare(this.opacity, locationPuck2D.opacity) == 0;
    }

    public int hashCode() {
        ImageHolder imageHolder = this.topImage;
        int iHashCode = (imageHolder == null ? 0 : imageHolder.hashCode()) * 31;
        ImageHolder imageHolder2 = this.bearingImage;
        int iHashCode2 = (iHashCode + (imageHolder2 == null ? 0 : imageHolder2.hashCode())) * 31;
        ImageHolder imageHolder3 = this.shadowImage;
        int iHashCode3 = (iHashCode2 + (imageHolder3 == null ? 0 : imageHolder3.hashCode())) * 31;
        String str = this.scaleExpression;
        return ((iHashCode3 + (str != null ? str.hashCode() : 0)) * 31) + Float.hashCode(this.opacity);
    }

    public String toString() {
        return "LocationPuck2D(topImage=" + this.topImage + ", bearingImage=" + this.bearingImage + ", shadowImage=" + this.shadowImage + ", scaleExpression=" + this.scaleExpression + ", opacity=" + this.opacity + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.checkNotNullParameter(parcel, "out");
        ImageHolder imageHolder = this.topImage;
        if (imageHolder == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            imageHolder.writeToParcel(parcel, flags);
        }
        ImageHolder imageHolder2 = this.bearingImage;
        if (imageHolder2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            imageHolder2.writeToParcel(parcel, flags);
        }
        ImageHolder imageHolder3 = this.shadowImage;
        if (imageHolder3 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            imageHolder3.writeToParcel(parcel, flags);
        }
        parcel.writeString(this.scaleExpression);
        parcel.writeFloat(this.opacity);
    }

    public LocationPuck2D(ImageHolder imageHolder, ImageHolder imageHolder2, ImageHolder imageHolder3, String str, float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : imageHolder, (i & 2) != 0 ? null : imageHolder2, (i & 4) != 0 ? null : imageHolder3, (i & 8) != 0 ? null : str, (i & 16) != 0 ? 1.0f : f);
    }

    public final ImageHolder getTopImage() {
        return this.topImage;
    }

    public final void setTopImage(ImageHolder imageHolder) {
        this.topImage = imageHolder;
    }

    public final ImageHolder getBearingImage() {
        return this.bearingImage;
    }

    public final void setBearingImage(ImageHolder imageHolder) {
        this.bearingImage = imageHolder;
    }

    public final ImageHolder getShadowImage() {
        return this.shadowImage;
    }

    public final void setShadowImage(ImageHolder imageHolder) {
        this.shadowImage = imageHolder;
    }

    public final String getScaleExpression() {
        return this.scaleExpression;
    }

    public final void setScaleExpression(String str) {
        this.scaleExpression = str;
    }

    public final float getOpacity() {
        return this.opacity;
    }

    public final void setOpacity(float f) {
        this.opacity = f;
    }

    public LocationPuck2D(ImageHolder imageHolder, ImageHolder imageHolder2, ImageHolder imageHolder3, String str, float f) {
        super(null);
        this.topImage = imageHolder;
        this.bearingImage = imageHolder2;
        this.shadowImage = imageHolder3;
        this.scaleExpression = str;
        this.opacity = f;
    }
}
