package com.rnmapbox.rnmbx.utils;

import app.notifee.core.event.LogEvent;
import com.mapbox.maps.plugin.locationcomponent.ModelSourceWrapper;
import com.rnmapbox.rnmbx.components.images.ImageInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0018"}, d2 = {"Lcom/rnmapbox/rnmbx/utils/ImageEntry;", "", ModelSourceWrapper.URL, "", LogEvent.LEVEL_INFO, "Lcom/rnmapbox/rnmbx/components/images/ImageInfo;", "<init>", "(Ljava/lang/String;Lcom/rnmapbox/rnmbx/components/images/ImageInfo;)V", "getUri", "()Ljava/lang/String;", "getInfo", "()Lcom/rnmapbox/rnmbx/components/images/ImageInfo;", "getScaleOr", "", "v", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ImageEntry {
    private final ImageInfo info;
    private final String uri;

    public static ImageEntry copy$default(ImageEntry imageEntry, String str, ImageInfo imageInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            str = imageEntry.uri;
        }
        if ((i & 2) != 0) {
            imageInfo = imageEntry.info;
        }
        return imageEntry.copy(str, imageInfo);
    }

    public final String getUri() {
        return this.uri;
    }

    public final ImageInfo getInfo() {
        return this.info;
    }

    public final ImageEntry copy(String uri, ImageInfo info) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intrinsics.checkNotNullParameter(info, "info");
        return new ImageEntry(uri, info);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ImageEntry)) {
            return false;
        }
        ImageEntry imageEntry = (ImageEntry) other;
        return Intrinsics.areEqual(this.uri, imageEntry.uri) && Intrinsics.areEqual(this.info, imageEntry.info);
    }

    public int hashCode() {
        return (this.uri.hashCode() * 31) + this.info.hashCode();
    }

    public String toString() {
        return "ImageEntry(uri=" + this.uri + ", info=" + this.info + ")";
    }

    public ImageEntry(String uri, ImageInfo info) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intrinsics.checkNotNullParameter(info, "info");
        this.uri = uri;
        this.info = info;
    }

    public final ImageInfo getInfo() {
        return this.info;
    }

    public final String getUri() {
        return this.uri;
    }

    public final double getScaleOr(double v) {
        return this.info.getScaleOr(v);
    }
}
