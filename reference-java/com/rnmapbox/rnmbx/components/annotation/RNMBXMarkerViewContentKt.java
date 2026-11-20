package com.rnmapbox.rnmbx.components.annotation;

import android.view.ViewGroup;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0002¨\u0006\u0003"}, d2 = {"allowRenderingOutside", "", "Landroid/view/ViewGroup;", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class RNMBXMarkerViewContentKt {
    public static final void allowRenderingOutside(ViewGroup viewGroup) {
        viewGroup.setClipChildren(false);
        viewGroup.setClipToPadding(false);
    }
}
