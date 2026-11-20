package com.mapbox.maps.attribution;

import android.graphics.Bitmap;
import android.graphics.PointF;
import ch.qos.logback.core.CoreConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0007HÆ\u0003J+\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u000bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0018"}, d2 = {"Lcom/mapbox/maps/attribution/AttributionLayout;", "", "logo", "Landroid/graphics/Bitmap;", "anchorPoint", "Landroid/graphics/PointF;", "isShortText", "", "(Landroid/graphics/Bitmap;Landroid/graphics/PointF;Z)V", "getAnchorPoint", "()Landroid/graphics/PointF;", "()Z", "getLogo", "()Landroid/graphics/Bitmap;", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class AttributionLayout {
    private final PointF anchorPoint;
    private final boolean isShortText;
    private final Bitmap logo;

    public static AttributionLayout copy$default(AttributionLayout attributionLayout, Bitmap bitmap, PointF pointF, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            bitmap = attributionLayout.logo;
        }
        if ((i & 2) != 0) {
            pointF = attributionLayout.anchorPoint;
        }
        if ((i & 4) != 0) {
            z = attributionLayout.isShortText;
        }
        return attributionLayout.copy(bitmap, pointF, z);
    }

    public final Bitmap getLogo() {
        return this.logo;
    }

    public final PointF getAnchorPoint() {
        return this.anchorPoint;
    }

    public final boolean getIsShortText() {
        return this.isShortText;
    }

    public final AttributionLayout copy(Bitmap logo, PointF anchorPoint, boolean isShortText) {
        return new AttributionLayout(logo, anchorPoint, isShortText);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AttributionLayout)) {
            return false;
        }
        AttributionLayout attributionLayout = (AttributionLayout) other;
        return Intrinsics.areEqual(this.logo, attributionLayout.logo) && Intrinsics.areEqual(this.anchorPoint, attributionLayout.anchorPoint) && this.isShortText == attributionLayout.isShortText;
    }

    public int hashCode() {
        Bitmap bitmap = this.logo;
        int iHashCode = (bitmap == null ? 0 : bitmap.hashCode()) * 31;
        PointF pointF = this.anchorPoint;
        int iHashCode2 = (iHashCode + (pointF != null ? pointF.hashCode() : 0)) * 31;
        boolean z = this.isShortText;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iHashCode2 + r1;
    }

    public String toString() {
        return "AttributionLayout(logo=" + this.logo + ", anchorPoint=" + this.anchorPoint + ", isShortText=" + this.isShortText + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public AttributionLayout(Bitmap bitmap, PointF pointF, boolean z) {
        this.logo = bitmap;
        this.anchorPoint = pointF;
        this.isShortText = z;
    }

    public final Bitmap getLogo() {
        return this.logo;
    }

    public final PointF getAnchorPoint() {
        return this.anchorPoint;
    }

    public final boolean isShortText() {
        return this.isShortText;
    }
}
