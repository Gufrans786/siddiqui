package com.rnmapbox.rnmbx.components.mapview.helpers;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\b\"\u0004\b\t\u0010\nR\u0011\u0010\r\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\r\u0010\bR\u0011\u0010\u000e\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\bR\u0011\u0010\u000f\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\b¨\u0006\u0010"}, d2 = {"Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeTracker;", "", "<init>", "()V", "reason", "Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeReason;", "isAnimating", "", "()Z", "setAnimating", "(Z)V", "setReason", "", "isUserInteraction", "isAnimated", "isEmpty", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CameraChangeTracker {
    private boolean isAnimating;
    private CameraChangeReason reason = CameraChangeReason.NONE;

    public final boolean getIsAnimating() {
        return this.isAnimating;
    }

    public final void setAnimating(boolean z) {
        this.isAnimating = z;
    }

    public final void setReason(CameraChangeReason reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        this.reason = reason;
    }

    public final boolean isUserInteraction() {
        return this.reason == CameraChangeReason.USER_GESTURE || this.reason == CameraChangeReason.DEVELOPER_ANIMATION;
    }

    public final boolean isAnimated() {
        return this.reason == CameraChangeReason.DEVELOPER_ANIMATION || this.reason == CameraChangeReason.SDK_ANIMATION;
    }

    public final boolean isEmpty() {
        return this.reason == CameraChangeReason.NONE;
    }
}
