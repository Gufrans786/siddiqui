package com.rnmapbox.rnmbx.components.images;

import com.mapbox.maps.ImageContent;
import com.mapbox.maps.ImageStretches;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b!\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001Bi\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010 \u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0005J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\u0010\u0010#\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0015J\t\u0010$\u001a\u00020\u0007HÆ\u0003J\u000f\u0010%\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0003J\u000f\u0010&\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\rHÆ\u0003J\u0010\u0010(\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010)\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0015Jr\u0010*\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010+J\u0013\u0010,\u001a\u00020\u00072\b\u0010-\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010.\u001a\u00020/HÖ\u0001J\t\u00100\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001aR\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u001e\u0010\u0015R\u0015\u0010\u000f\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u001f\u0010\u0015¨\u00061"}, d2 = {"Lcom/rnmapbox/rnmbx/components/images/ImageInfo;", "", "name", "", "scale", "", "sdf", "", "stretchX", "", "Lcom/mapbox/maps/ImageStretches;", "stretchY", "content", "Lcom/mapbox/maps/ImageContent;", "width", "height", "<init>", "(Ljava/lang/String;Ljava/lang/Double;ZLjava/util/List;Ljava/util/List;Lcom/mapbox/maps/ImageContent;Ljava/lang/Double;Ljava/lang/Double;)V", "getName", "()Ljava/lang/String;", "getScale", "()Ljava/lang/Double;", "Ljava/lang/Double;", "getSdf", "()Z", "getStretchX", "()Ljava/util/List;", "getStretchY", "getContent", "()Lcom/mapbox/maps/ImageContent;", "getWidth", "getHeight", "getScaleOr", "default", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/String;Ljava/lang/Double;ZLjava/util/List;Ljava/util/List;Lcom/mapbox/maps/ImageContent;Ljava/lang/Double;Ljava/lang/Double;)Lcom/rnmapbox/rnmbx/components/images/ImageInfo;", "equals", "other", "hashCode", "", "toString", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ImageInfo {
    private final ImageContent content;
    private final Double height;
    private final String name;
    private final Double scale;
    private final boolean sdf;
    private final List<ImageStretches> stretchX;
    private final List<ImageStretches> stretchY;
    private final Double width;

    public static ImageInfo copy$default(ImageInfo imageInfo, String str, Double d, boolean z, List list, List list2, ImageContent imageContent, Double d2, Double d3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = imageInfo.name;
        }
        if ((i & 2) != 0) {
            d = imageInfo.scale;
        }
        if ((i & 4) != 0) {
            z = imageInfo.sdf;
        }
        if ((i & 8) != 0) {
            list = imageInfo.stretchX;
        }
        if ((i & 16) != 0) {
            list2 = imageInfo.stretchY;
        }
        if ((i & 32) != 0) {
            imageContent = imageInfo.content;
        }
        if ((i & 64) != 0) {
            d2 = imageInfo.width;
        }
        if ((i & 128) != 0) {
            d3 = imageInfo.height;
        }
        Double d4 = d2;
        Double d5 = d3;
        List list3 = list2;
        ImageContent imageContent2 = imageContent;
        return imageInfo.copy(str, d, z, list, list3, imageContent2, d4, d5);
    }

    public final String getName() {
        return this.name;
    }

    public final Double getScale() {
        return this.scale;
    }

    public final boolean getSdf() {
        return this.sdf;
    }

    public final List<ImageStretches> component4() {
        return this.stretchX;
    }

    public final List<ImageStretches> component5() {
        return this.stretchY;
    }

    public final ImageContent getContent() {
        return this.content;
    }

    public final Double getWidth() {
        return this.width;
    }

    public final Double getHeight() {
        return this.height;
    }

    public final ImageInfo copy(String name, Double scale, boolean sdf, List<ImageStretches> stretchX, List<ImageStretches> stretchY, ImageContent content, Double width, Double height) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(stretchX, "stretchX");
        Intrinsics.checkNotNullParameter(stretchY, "stretchY");
        return new ImageInfo(name, scale, sdf, stretchX, stretchY, content, width, height);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ImageInfo)) {
            return false;
        }
        ImageInfo imageInfo = (ImageInfo) other;
        return Intrinsics.areEqual(this.name, imageInfo.name) && Intrinsics.areEqual((Object) this.scale, (Object) imageInfo.scale) && this.sdf == imageInfo.sdf && Intrinsics.areEqual(this.stretchX, imageInfo.stretchX) && Intrinsics.areEqual(this.stretchY, imageInfo.stretchY) && Intrinsics.areEqual(this.content, imageInfo.content) && Intrinsics.areEqual((Object) this.width, (Object) imageInfo.width) && Intrinsics.areEqual((Object) this.height, (Object) imageInfo.height);
    }

    public int hashCode() {
        int iHashCode = this.name.hashCode() * 31;
        Double d = this.scale;
        int iHashCode2 = (((((((iHashCode + (d == null ? 0 : d.hashCode())) * 31) + Boolean.hashCode(this.sdf)) * 31) + this.stretchX.hashCode()) * 31) + this.stretchY.hashCode()) * 31;
        ImageContent imageContent = this.content;
        int iHashCode3 = (iHashCode2 + (imageContent == null ? 0 : imageContent.hashCode())) * 31;
        Double d2 = this.width;
        int iHashCode4 = (iHashCode3 + (d2 == null ? 0 : d2.hashCode())) * 31;
        Double d3 = this.height;
        return iHashCode4 + (d3 != null ? d3.hashCode() : 0);
    }

    public String toString() {
        return "ImageInfo(name=" + this.name + ", scale=" + this.scale + ", sdf=" + this.sdf + ", stretchX=" + this.stretchX + ", stretchY=" + this.stretchY + ", content=" + this.content + ", width=" + this.width + ", height=" + this.height + ")";
    }

    public ImageInfo(String name, Double d, boolean z, List<ImageStretches> stretchX, List<ImageStretches> stretchY, ImageContent imageContent, Double d2, Double d3) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(stretchX, "stretchX");
        Intrinsics.checkNotNullParameter(stretchY, "stretchY");
        this.name = name;
        this.scale = d;
        this.sdf = z;
        this.stretchX = stretchX;
        this.stretchY = stretchY;
        this.content = imageContent;
        this.width = d2;
        this.height = d3;
    }

    public ImageInfo(String str, Double d, boolean z, List list, List list2, ImageContent imageContent, Double d2, Double d3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? Double.valueOf(1.0d) : d, (i & 4) != 0 ? false : z, (i & 8) != 0 ? CollectionsKt.emptyList() : list, (i & 16) != 0 ? CollectionsKt.emptyList() : list2, (i & 32) != 0 ? null : imageContent, (i & 64) != 0 ? null : d2, (i & 128) != 0 ? null : d3);
    }

    public final String getName() {
        return this.name;
    }

    public final Double getScale() {
        return this.scale;
    }

    public final boolean getSdf() {
        return this.sdf;
    }

    public final List<ImageStretches> getStretchX() {
        return this.stretchX;
    }

    public final ImageContent getContent() {
        return this.content;
    }

    public final Double getHeight() {
        return this.height;
    }

    public final List<ImageStretches> getStretchY() {
        return this.stretchY;
    }

    public final Double getWidth() {
        return this.width;
    }

    public final double getScaleOr(double d) {
        Double d2 = this.scale;
        return d2 != null ? d2.doubleValue() : d;
    }
}
