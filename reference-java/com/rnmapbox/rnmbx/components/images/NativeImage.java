package com.rnmapbox.rnmbx.components.images;

import android.graphics.drawable.BitmapDrawable;
import app.notifee.core.event.LogEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/rnmapbox/rnmbx/components/images/NativeImage;", "", LogEvent.LEVEL_INFO, "Lcom/rnmapbox/rnmbx/components/images/ImageInfo;", "drawable", "Landroid/graphics/drawable/BitmapDrawable;", "<init>", "(Lcom/rnmapbox/rnmbx/components/images/ImageInfo;Landroid/graphics/drawable/BitmapDrawable;)V", "getInfo", "()Lcom/rnmapbox/rnmbx/components/images/ImageInfo;", "getDrawable", "()Landroid/graphics/drawable/BitmapDrawable;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NativeImage {
    private final BitmapDrawable drawable;
    private final ImageInfo info;

    public static NativeImage copy$default(NativeImage nativeImage, ImageInfo imageInfo, BitmapDrawable bitmapDrawable, int i, Object obj) {
        if ((i & 1) != 0) {
            imageInfo = nativeImage.info;
        }
        if ((i & 2) != 0) {
            bitmapDrawable = nativeImage.drawable;
        }
        return nativeImage.copy(imageInfo, bitmapDrawable);
    }

    public final ImageInfo getInfo() {
        return this.info;
    }

    public final BitmapDrawable getDrawable() {
        return this.drawable;
    }

    public final NativeImage copy(ImageInfo info, BitmapDrawable drawable) {
        Intrinsics.checkNotNullParameter(info, "info");
        Intrinsics.checkNotNullParameter(drawable, "drawable");
        return new NativeImage(info, drawable);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NativeImage)) {
            return false;
        }
        NativeImage nativeImage = (NativeImage) other;
        return Intrinsics.areEqual(this.info, nativeImage.info) && Intrinsics.areEqual(this.drawable, nativeImage.drawable);
    }

    public int hashCode() {
        return (this.info.hashCode() * 31) + this.drawable.hashCode();
    }

    public String toString() {
        return "NativeImage(info=" + this.info + ", drawable=" + this.drawable + ")";
    }

    public NativeImage(ImageInfo info, BitmapDrawable drawable) {
        Intrinsics.checkNotNullParameter(info, "info");
        Intrinsics.checkNotNullParameter(drawable, "drawable");
        this.info = info;
        this.drawable = drawable;
    }

    public final BitmapDrawable getDrawable() {
        return this.drawable;
    }

    public final ImageInfo getInfo() {
        return this.info;
    }
}
