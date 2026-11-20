package com.mapbox.maps.extension.style.image;

import android.graphics.Bitmap;
import com.mapbox.maps.ExtensionUtils;
import com.mapbox.maps.Image;
import com.mapbox.maps.ImageContent;
import com.mapbox.maps.ImageStretches;
import com.mapbox.maps.MapboxStyleManager;
import com.mapbox.maps.extension.style.StyleContract;
import com.mapbox.maps.extension.style.utils.ExpectedUtilsKt;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\tB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/mapbox/maps/extension/style/image/ImageExtensionImpl;", "Lcom/mapbox/maps/extension/style/StyleContract$StyleImageExtension;", "builder", "Lcom/mapbox/maps/extension/style/image/ImageExtensionImpl$Builder;", "(Lcom/mapbox/maps/extension/style/image/ImageExtensionImpl$Builder;)V", "bindTo", "", "delegate", "Lcom/mapbox/maps/MapboxStyleManager;", "Builder", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ImageExtensionImpl implements StyleContract.StyleImageExtension {
    private final Builder builder;

    public ImageExtensionImpl(Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.builder = builder;
    }

    @Override
    public void bindTo(MapboxStyleManager delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        String imageId = this.builder.getImageId();
        Float scale = this.builder.getScale();
        ExpectedUtilsKt.check(delegate.addStyleImage(imageId, scale != null ? scale.floatValue() : delegate.getPixelRatio(), this.builder.getInternalImage$extension_style_release(), this.builder.getSdf(), this.builder.getStretchX$extension_style_release(), this.builder.getStretchY$extension_style_release(), this.builder.getContent()));
    }

    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0010\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tH\u0007J\u0006\u0010/\u001a\u000200J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\fJ\u0010\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0019J\u0010\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\u001f\u001a\u00020 J\u0016\u0010%\u001a\u00020\u00002\u000e\b\u0002\u0010%\u001a\b\u0012\u0004\u0012\u00020'0&J\u0016\u0010,\u001a\u00020\u00002\u000e\b\u0002\u0010,\u001a\b\u0012\u0004\u0012\u00020'0&R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0006X\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001e\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0080\u000e¢\u0006\u0010\n\u0002\u0010\u001e\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001f\u001a\u00020 X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R \u0010%\u001a\b\u0012\u0004\u0012\u00020'0&X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R \u0010,\u001a\b\u0012\u0004\u0012\u00020'0&X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010)\"\u0004\b.\u0010+¨\u00061"}, d2 = {"Lcom/mapbox/maps/extension/style/image/ImageExtensionImpl$Builder;", "", "imageId", "", "(Ljava/lang/String;)V", "image", "Lcom/mapbox/maps/Image;", "(Ljava/lang/String;Lcom/mapbox/maps/Image;)V", "bitmap", "Landroid/graphics/Bitmap;", "(Ljava/lang/String;Landroid/graphics/Bitmap;)V", "content", "Lcom/mapbox/maps/ImageContent;", "getContent$extension_style_release", "()Lcom/mapbox/maps/ImageContent;", "setContent$extension_style_release", "(Lcom/mapbox/maps/ImageContent;)V", "getImageId", "()Ljava/lang/String;", "internalImage", "getInternalImage$extension_style_release", "()Lcom/mapbox/maps/Image;", "setInternalImage$extension_style_release", "(Lcom/mapbox/maps/Image;)V", "scale", "", "getScale$extension_style_release", "()Ljava/lang/Float;", "setScale$extension_style_release", "(Ljava/lang/Float;)V", "Ljava/lang/Float;", "sdf", "", "getSdf$extension_style_release", "()Z", "setSdf$extension_style_release", "(Z)V", "stretchX", "", "Lcom/mapbox/maps/ImageStretches;", "getStretchX$extension_style_release", "()Ljava/util/List;", "setStretchX$extension_style_release", "(Ljava/util/List;)V", "stretchY", "getStretchY$extension_style_release", "setStretchY$extension_style_release", "build", "Lcom/mapbox/maps/extension/style/image/ImageExtensionImpl;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Builder {
        private ImageContent content;
        private final String imageId;
        public Image internalImage;
        private Float scale;
        private boolean sdf;
        private List<ImageStretches> stretchX;
        private List<ImageStretches> stretchY;

        public final String getImageId() {
            return this.imageId;
        }

        public final Image getInternalImage$extension_style_release() {
            Image image = this.internalImage;
            if (image != null) {
                return image;
            }
            Intrinsics.throwUninitializedPropertyAccessException("internalImage");
            return null;
        }

        public final void setInternalImage$extension_style_release(Image image) {
            Intrinsics.checkNotNullParameter(image, "<set-?>");
            this.internalImage = image;
        }

        @Deprecated(message = "Constructing `ImageExtensionImpl.Builder` without image or bitmap is deprecated, as the image or bitmap is a required field. Please switch to `Builder(imageId: String, image: Image)` or `Builder(imageId: String, bitmap: Bitmap)` instead.", replaceWith = @ReplaceWith(expression = "ImageExtensionImpl.Builder(imageId, image)", imports = {}))
        public Builder(String imageId) {
            Intrinsics.checkNotNullParameter(imageId, "imageId");
            this.stretchX = CollectionsKt.emptyList();
            this.stretchY = CollectionsKt.emptyList();
            this.imageId = imageId;
        }

        public Builder(String imageId, Image image) {
            Intrinsics.checkNotNullParameter(imageId, "imageId");
            Intrinsics.checkNotNullParameter(image, "image");
            this.stretchX = CollectionsKt.emptyList();
            this.stretchY = CollectionsKt.emptyList();
            this.imageId = imageId;
            setInternalImage$extension_style_release(image);
        }

        public Builder(String imageId, Bitmap bitmap) {
            Intrinsics.checkNotNullParameter(imageId, "imageId");
            Intrinsics.checkNotNullParameter(bitmap, "bitmap");
            this.stretchX = CollectionsKt.emptyList();
            this.stretchY = CollectionsKt.emptyList();
            this.imageId = imageId;
            setInternalImage$extension_style_release(ExtensionUtils.toMapboxImage(bitmap));
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

        @Deprecated(message = "Configuring image through `image` function is deprecated, pass image to the `Builder(imageId: String, image: Image)` constructor instead.")
        public final Builder image(Image image) {
            Intrinsics.checkNotNullParameter(image, "image");
            setInternalImage$extension_style_release(image);
            return this;
        }

        @Deprecated(message = "Configuring image through `bitmap` function is deprecated, pass image to the `Builder(imageId: String, bitmap: Bitmap)` constructor instead.")
        public final Builder bitmap(Bitmap bitmap) {
            Intrinsics.checkNotNullParameter(bitmap, "bitmap");
            setInternalImage$extension_style_release(ExtensionUtils.toMapboxImage(bitmap));
            return this;
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

        public static Builder stretchX$default(Builder builder, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                list = CollectionsKt.emptyList();
            }
            return builder.stretchX(list);
        }

        public final Builder stretchX(List<ImageStretches> stretchX) {
            Intrinsics.checkNotNullParameter(stretchX, "stretchX");
            this.stretchX = stretchX;
            return this;
        }

        public static Builder stretchY$default(Builder builder, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                list = CollectionsKt.emptyList();
            }
            return builder.stretchY(list);
        }

        public final Builder stretchY(List<ImageStretches> stretchY) {
            Intrinsics.checkNotNullParameter(stretchY, "stretchY");
            this.stretchY = stretchY;
            return this;
        }

        public final Builder content(ImageContent content) {
            Intrinsics.checkNotNullParameter(content, "content");
            this.content = content;
            return this;
        }

        public final ImageExtensionImpl build() {
            if (this.internalImage == null) {
                throw new IllegalStateException("An image plugin requires an image input.");
            }
            return new ImageExtensionImpl(this);
        }
    }
}
