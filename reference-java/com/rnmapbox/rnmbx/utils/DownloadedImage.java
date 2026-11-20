package com.rnmapbox.rnmbx.utils;

import android.graphics.Bitmap;
import app.notifee.core.event.LogEvent;
import com.rnmapbox.rnmbx.components.images.ImageInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0007HÆ\u0003J'\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/rnmapbox/rnmbx/utils/DownloadedImage;", "", "name", "", "bitmap", "Landroid/graphics/Bitmap;", LogEvent.LEVEL_INFO, "Lcom/rnmapbox/rnmbx/components/images/ImageInfo;", "<init>", "(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/rnmapbox/rnmbx/components/images/ImageInfo;)V", "getName", "()Ljava/lang/String;", "getBitmap", "()Landroid/graphics/Bitmap;", "getInfo", "()Lcom/rnmapbox/rnmbx/components/images/ImageInfo;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DownloadedImage {
    private final Bitmap bitmap;
    private final ImageInfo info;
    private final String name;

    public static DownloadedImage copy$default(DownloadedImage downloadedImage, String str, Bitmap bitmap, ImageInfo imageInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            str = downloadedImage.name;
        }
        if ((i & 2) != 0) {
            bitmap = downloadedImage.bitmap;
        }
        if ((i & 4) != 0) {
            imageInfo = downloadedImage.info;
        }
        return downloadedImage.copy(str, bitmap, imageInfo);
    }

    public final String getName() {
        return this.name;
    }

    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    public final ImageInfo getInfo() {
        return this.info;
    }

    public final DownloadedImage copy(String name, Bitmap bitmap, ImageInfo info) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(info, "info");
        return new DownloadedImage(name, bitmap, info);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DownloadedImage)) {
            return false;
        }
        DownloadedImage downloadedImage = (DownloadedImage) other;
        return Intrinsics.areEqual(this.name, downloadedImage.name) && Intrinsics.areEqual(this.bitmap, downloadedImage.bitmap) && Intrinsics.areEqual(this.info, downloadedImage.info);
    }

    public int hashCode() {
        return (((this.name.hashCode() * 31) + this.bitmap.hashCode()) * 31) + this.info.hashCode();
    }

    public String toString() {
        return "DownloadedImage(name=" + this.name + ", bitmap=" + this.bitmap + ", info=" + this.info + ")";
    }

    public DownloadedImage(String name, Bitmap bitmap, ImageInfo info) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(info, "info");
        this.name = name;
        this.bitmap = bitmap;
        this.info = info;
    }

    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    public final ImageInfo getInfo() {
        return this.info;
    }

    public final String getName() {
        return this.name;
    }
}
