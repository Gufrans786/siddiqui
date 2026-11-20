package com.mapbox.maps.extension.style.image;

import android.graphics.Bitmap;
import com.mapbox.maps.Image;
import com.mapbox.maps.ImageContent;
import com.mapbox.maps.ImageStretches;
import com.mapbox.maps.MapboxStyleManager;
import com.mapbox.maps.extension.style.StyleContract;
import com.mapbox.maps.extension.style.utils.ExpectedUtilsKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\tB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/mapbox/maps/extension/style/image/ImageNinePatchExtensionImpl;", "Lcom/mapbox/maps/extension/style/StyleContract$StyleImageExtension;", "builder", "Lcom/mapbox/maps/extension/style/image/ImageNinePatchExtensionImpl$Builder;", "(Lcom/mapbox/maps/extension/style/image/ImageNinePatchExtensionImpl$Builder;)V", "bindTo", "", "delegate", "Lcom/mapbox/maps/MapboxStyleManager;", "Builder", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ImageNinePatchExtensionImpl implements StyleContract.StyleImageExtension {
    private final Builder builder;

    public ImageNinePatchExtensionImpl(Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.builder = builder;
    }

    @Override
    public void bindTo(MapboxStyleManager delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        String imageId = this.builder.getImageId();
        Float scale = this.builder.getScale();
        ExpectedUtilsKt.check(delegate.addStyleImage(imageId, scale != null ? scale.floatValue() : delegate.getPixelRatio(), this.builder.getInternalImage(), this.builder.getSdf(), this.builder.getStretchX$extension_style_release(), this.builder.getStretchY$extension_style_release(), this.builder.getContent()));
    }

    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010.\u001a\u00020/J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0018J\u0010\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u001e\u001a\u00020\u001fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001e\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0080\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001e\u001a\u00020\u001fX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R \u0010$\u001a\b\u0012\u0004\u0012\u00020&0%X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R \u0010+\u001a\b\u0012\u0004\u0012\u00020&0%X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010(\"\u0004\b-\u0010*¨\u00060"}, d2 = {"Lcom/mapbox/maps/extension/style/image/ImageNinePatchExtensionImpl$Builder;", "", "imageId", "", "bitmap", "Landroid/graphics/Bitmap;", "(Ljava/lang/String;Landroid/graphics/Bitmap;)V", "getBitmap", "()Landroid/graphics/Bitmap;", "content", "Lcom/mapbox/maps/ImageContent;", "getContent$extension_style_release", "()Lcom/mapbox/maps/ImageContent;", "setContent$extension_style_release", "(Lcom/mapbox/maps/ImageContent;)V", "getImageId", "()Ljava/lang/String;", "internalImage", "Lcom/mapbox/maps/Image;", "getInternalImage$extension_style_release", "()Lcom/mapbox/maps/Image;", "setInternalImage$extension_style_release", "(Lcom/mapbox/maps/Image;)V", "scale", "", "getScale$extension_style_release", "()Ljava/lang/Float;", "setScale$extension_style_release", "(Ljava/lang/Float;)V", "Ljava/lang/Float;", "sdf", "", "getSdf$extension_style_release", "()Z", "setSdf$extension_style_release", "(Z)V", "stretchX", "", "Lcom/mapbox/maps/ImageStretches;", "getStretchX$extension_style_release", "()Ljava/util/List;", "setStretchX$extension_style_release", "(Ljava/util/List;)V", "stretchY", "getStretchY$extension_style_release", "setStretchY$extension_style_release", "build", "Lcom/mapbox/maps/extension/style/image/ImageNinePatchExtensionImpl;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Builder {
        private final Bitmap bitmap;
        private ImageContent content;
        private final String imageId;
        private Image internalImage;
        private Float scale;
        private boolean sdf;
        private List<ImageStretches> stretchX;
        private List<ImageStretches> stretchY;

        public Builder(String imageId, Bitmap bitmap) {
            Intrinsics.checkNotNullParameter(imageId, "imageId");
            Intrinsics.checkNotNullParameter(bitmap, "bitmap");
            this.imageId = imageId;
            this.bitmap = bitmap;
            this.stretchX = CollectionsKt.emptyList();
            this.stretchY = CollectionsKt.emptyList();
            if (bitmap.getConfig() != Bitmap.Config.ARGB_8888) {
                throw new IllegalArgumentException("Only ARGB_8888 bitmap config is supported!");
            }
            NinePatchImage ninePatchImage = NinePatchUtils.parse9PatchBitmap(bitmap);
            this.internalImage = ninePatchImage.getInternalImage();
            this.content = ninePatchImage.getImageContent();
            this.stretchX = ninePatchImage.getStretchX();
            this.stretchY = ninePatchImage.getStretchY();
        }

        public final String getImageId() {
            return this.imageId;
        }

        public final Bitmap getBitmap() {
            return this.bitmap;
        }

        public final Image getInternalImage() {
            return this.internalImage;
        }

        public final void setInternalImage$extension_style_release(Image image) {
            Intrinsics.checkNotNullParameter(image, "<set-?>");
            this.internalImage = image;
        }

        public final Float getScale() {
            return this.scale;
        }

        public final void setScale$extension_style_release(Float f) {
            this.scale = f;
        }

        public final boolean getSdf() {
            return this.sdf;
        }

        public final void setSdf$extension_style_release(boolean z) {
            this.sdf = z;
        }

        public final List<ImageStretches> getStretchX$extension_style_release() {
            return this.stretchX;
        }

        public final void setStretchX$extension_style_release(List<ImageStretches> list) {
            Intrinsics.checkNotNullParameter(list, "<set-?>");
            this.stretchX = list;
        }

        public final List<ImageStretches> getStretchY$extension_style_release() {
            return this.stretchY;
        }

        public final void setStretchY$extension_style_release(List<ImageStretches> list) {
            Intrinsics.checkNotNullParameter(list, "<set-?>");
            this.stretchY = list;
        }

        public final ImageContent getContent() {
            return this.content;
        }

        public final void setContent$extension_style_release(ImageContent imageContent) {
            this.content = imageContent;
        }

        public final Builder scale(float scale) {
            this.scale = Float.valueOf(scale);
            return this;
        }

        public static Builder sdf$default(Builder builder, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = false;
            }
            return builder.sdf(z);
        }

        public final Builder sdf(boolean sdf) {
            this.sdf = sdf;
            return this;
        }

        public final ImageNinePatchExtensionImpl build() {
            return new ImageNinePatchExtensionImpl(this);
        }
    }
}
