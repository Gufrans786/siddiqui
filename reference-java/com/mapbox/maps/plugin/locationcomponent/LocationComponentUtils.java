package com.mapbox.maps.plugin.locationcomponent;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.core.content.res.ResourcesCompat;
import com.mapbox.maps.ImageHolder;
import com.mapbox.maps.plugin.LocationPuck2D;
import com.mapbox.maps.plugin.MapPlugin;
import com.mapbox.maps.plugin.Plugin;
import com.mapbox.maps.plugin.delegates.MapPluginProviderDelegate;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\u001a\u0012\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bH\u0007\u001a\b\u0010\t\u001a\u00020\u0001H\u0007\u001a\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b*\u00020\f2\b\b\u0001\u0010\r\u001a\u00020\u000eH\u0002\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028G¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u000f"}, d2 = {"location", "Lcom/mapbox/maps/plugin/locationcomponent/LocationComponentPlugin;", "Lcom/mapbox/maps/plugin/delegates/MapPluginProviderDelegate;", "getLocationComponent", "(Lcom/mapbox/maps/plugin/delegates/MapPluginProviderDelegate;)Lcom/mapbox/maps/plugin/locationcomponent/LocationComponentPlugin;", "createDefault2DPuck", "Lcom/mapbox/maps/plugin/LocationPuck2D;", "withBearing", "", "createLocationComponentPlugin", "getCompatDrawable", "Landroid/graphics/drawable/Drawable;", "Landroid/content/Context;", "resId", "", "plugin-locationcomponent_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class LocationComponentUtils {
    public static final LocationPuck2D createDefault2DPuck() {
        return createDefault2DPuck$default(false, 1, null);
    }

    public static final LocationComponentPlugin getLocationComponent(MapPluginProviderDelegate mapPluginProviderDelegate) {
        Intrinsics.checkNotNullParameter(mapPluginProviderDelegate, "<this>");
        MapPlugin plugin = mapPluginProviderDelegate.getPlugin(Plugin.MAPBOX_LOCATION_COMPONENT_PLUGIN_ID);
        Intrinsics.checkNotNull(plugin);
        return (LocationComponentPlugin) plugin;
    }

    private static final Drawable getCompatDrawable(Context context, int i) {
        return ResourcesCompat.getDrawable(context.getResources(), i, null);
    }

    public static LocationPuck2D createDefault2DPuck$default(boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return createDefault2DPuck(z);
    }

    public static final LocationPuck2D createDefault2DPuck(boolean z) {
        ImageHolder imageHolderFrom;
        ImageHolder imageHolderFrom2;
        ImageHolder imageHolderFrom3 = ImageHolder.INSTANCE.from(R.drawable.mapbox_user_icon);
        if (z) {
            imageHolderFrom = ImageHolder.INSTANCE.from(R.drawable.mapbox_user_bearing_icon);
        } else {
            imageHolderFrom = ImageHolder.INSTANCE.from(R.drawable.mapbox_user_stroke_icon);
        }
        if (z) {
            imageHolderFrom2 = ImageHolder.INSTANCE.from(R.drawable.mapbox_user_stroke_icon);
        } else {
            imageHolderFrom2 = ImageHolder.INSTANCE.from(R.drawable.mapbox_user_icon_shadow);
        }
        return new LocationPuck2D(imageHolderFrom3, imageHolderFrom, imageHolderFrom2, null, 0.0f, 24, null);
    }

    public static final LocationComponentPlugin createLocationComponentPlugin() {
        return new LocationComponentPluginImpl();
    }
}
