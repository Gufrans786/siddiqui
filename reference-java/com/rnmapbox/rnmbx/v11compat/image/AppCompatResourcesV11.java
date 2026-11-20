package com.rnmapbox.rnmbx.v11compat.image;

import android.content.Context;
import ch.qos.logback.core.CoreConstants;
import com.mapbox.maps.ImageHolder;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/rnmapbox/rnmbx/v11compat/image/AppCompatResourcesV11;", "", "<init>", "()V", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AppCompatResourcesV11 {

    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\b\u0001\u0010\b\u001a\u00020\t¨\u0006\n"}, d2 = {"Lcom/rnmapbox/rnmbx/v11compat/image/AppCompatResourcesV11$Companion;", "", "<init>", "()V", "getDrawableImageHolder", "Lcom/mapbox/maps/ImageHolder;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "resId", "", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ImageHolder getDrawableImageHolder(Context context, int resId) {
            Intrinsics.checkNotNullParameter(context, "context");
            return ImageHolder.INSTANCE.from(resId);
        }
    }
}
