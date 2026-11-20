package com.rnmapbox.rnmbx.components.location;

import android.content.Context;
import ch.qos.logback.core.CoreConstants;
import com.mapbox.maps.ImageHolder;
import com.mapbox.maps.plugin.LocationPuck2D;
import com.mapbox.maps.plugin.locationcomponent.R;
import com.rnmapbox.rnmbx.v11compat.image.AppCompatResourcesV11;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005¨\u0006\u0006"}, d2 = {"makeDefaultLocationPuck2D", "Lcom/mapbox/maps/plugin/LocationPuck2D;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "renderMode", "Lcom/rnmapbox/rnmbx/components/location/RenderMode;", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class RNMBXNativeUserLocationKt {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[RenderMode.values().length];
            try {
                iArr[RenderMode.GPS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RenderMode.COMPASS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[RenderMode.NORMAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final LocationPuck2D makeDefaultLocationPuck2D(Context context, RenderMode renderMode) {
        int i;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(renderMode, "renderMode");
        ImageHolder drawableImageHolder = AppCompatResourcesV11.INSTANCE.getDrawableImageHolder(context, R.drawable.mapbox_user_icon);
        AppCompatResourcesV11.Companion companion = AppCompatResourcesV11.INSTANCE;
        int i2 = WhenMappings.$EnumSwitchMapping$0[renderMode.ordinal()];
        if (i2 == 1) {
            i = R.drawable.mapbox_user_bearing_icon;
        } else if (i2 == 2) {
            i = R.drawable.mapbox_user_puck_icon;
        } else {
            if (i2 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            i = R.drawable.mapbox_user_stroke_icon;
        }
        return new LocationPuck2D(drawableImageHolder, companion.getDrawableImageHolder(context, i), AppCompatResourcesV11.INSTANCE.getDrawableImageHolder(context, R.drawable.mapbox_user_icon_shadow), null, 0.0f, 24, null);
    }
}
