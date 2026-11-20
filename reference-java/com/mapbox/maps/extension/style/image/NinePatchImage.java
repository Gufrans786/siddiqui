package com.mapbox.maps.extension.style.image;

import ch.qos.logback.core.CoreConstants;
import com.mapbox.maps.Image;
import com.mapbox.maps.ImageContent;
import com.mapbox.maps.ImageStretches;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u000f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\tHÆ\u0003J=\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010¨\u0006\u001e"}, d2 = {"Lcom/mapbox/maps/extension/style/image/NinePatchImage;", "", "internalImage", "Lcom/mapbox/maps/Image;", "stretchX", "", "Lcom/mapbox/maps/ImageStretches;", "stretchY", "imageContent", "Lcom/mapbox/maps/ImageContent;", "(Lcom/mapbox/maps/Image;Ljava/util/List;Ljava/util/List;Lcom/mapbox/maps/ImageContent;)V", "getImageContent", "()Lcom/mapbox/maps/ImageContent;", "getInternalImage", "()Lcom/mapbox/maps/Image;", "getStretchX", "()Ljava/util/List;", "getStretchY", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class NinePatchImage {
    private final ImageContent imageContent;
    private final Image internalImage;
    private final List<ImageStretches> stretchX;
    private final List<ImageStretches> stretchY;

    public static NinePatchImage copy$default(NinePatchImage ninePatchImage, Image image, List list, List list2, ImageContent imageContent, int i, Object obj) {
        if ((i & 1) != 0) {
            image = ninePatchImage.internalImage;
        }
        if ((i & 2) != 0) {
            list = ninePatchImage.stretchX;
        }
        if ((i & 4) != 0) {
            list2 = ninePatchImage.stretchY;
        }
        if ((i & 8) != 0) {
            imageContent = ninePatchImage.imageContent;
        }
        return ninePatchImage.copy(image, list, list2, imageContent);
    }

    public final Image getInternalImage() {
        return this.internalImage;
    }

    public final List<ImageStretches> component2() {
        return this.stretchX;
    }

    public final List<ImageStretches> component3() {
        return this.stretchY;
    }

    public final ImageContent getImageContent() {
        return this.imageContent;
    }

    public final NinePatchImage copy(Image internalImage, List<ImageStretches> stretchX, List<ImageStretches> stretchY, ImageContent imageContent) {
        Intrinsics.checkNotNullParameter(internalImage, "internalImage");
        Intrinsics.checkNotNullParameter(stretchX, "stretchX");
        Intrinsics.checkNotNullParameter(stretchY, "stretchY");
        Intrinsics.checkNotNullParameter(imageContent, "imageContent");
        return new NinePatchImage(internalImage, stretchX, stretchY, imageContent);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NinePatchImage)) {
            return false;
        }
        NinePatchImage ninePatchImage = (NinePatchImage) other;
        return Intrinsics.areEqual(this.internalImage, ninePatchImage.internalImage) && Intrinsics.areEqual(this.stretchX, ninePatchImage.stretchX) && Intrinsics.areEqual(this.stretchY, ninePatchImage.stretchY) && Intrinsics.areEqual(this.imageContent, ninePatchImage.imageContent);
    }

    public int hashCode() {
        return (((((this.internalImage.hashCode() * 31) + this.stretchX.hashCode()) * 31) + this.stretchY.hashCode()) * 31) + this.imageContent.hashCode();
    }

    public String toString() {
        return "NinePatchImage(internalImage=" + this.internalImage + ", stretchX=" + this.stretchX + ", stretchY=" + this.stretchY + ", imageContent=" + this.imageContent + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public NinePatchImage(Image internalImage, List<ImageStretches> stretchX, List<ImageStretches> stretchY, ImageContent imageContent) {
        Intrinsics.checkNotNullParameter(internalImage, "internalImage");
        Intrinsics.checkNotNullParameter(stretchX, "stretchX");
        Intrinsics.checkNotNullParameter(stretchY, "stretchY");
        Intrinsics.checkNotNullParameter(imageContent, "imageContent");
        this.internalImage = internalImage;
        this.stretchX = stretchX;
        this.stretchY = stretchY;
        this.imageContent = imageContent;
    }

    public final Image getInternalImage() {
        return this.internalImage;
    }

    public final List<ImageStretches> getStretchX() {
        return this.stretchX;
    }

    public final List<ImageStretches> getStretchY() {
        return this.stretchY;
    }

    public final ImageContent getImageContent() {
        return this.imageContent;
    }
}
