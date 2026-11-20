package com.mapbox.maps.plugin.attribution;

import com.mapbox.maps.plugin.MapPlugin;
import com.mapbox.maps.plugin.Plugin;
import com.mapbox.maps.plugin.delegates.MapPluginProviderDelegate;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\b\u0010\u0005\u001a\u00020\u0001H\u0007\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028G¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"attribution", "Lcom/mapbox/maps/plugin/attribution/AttributionPlugin;", "Lcom/mapbox/maps/plugin/delegates/MapPluginProviderDelegate;", "getAttribution", "(Lcom/mapbox/maps/plugin/delegates/MapPluginProviderDelegate;)Lcom/mapbox/maps/plugin/attribution/AttributionPlugin;", "createAttributionPlugin", "plugin-attribution_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class AttributionUtils {
    public static final AttributionPlugin getAttribution(MapPluginProviderDelegate mapPluginProviderDelegate) {
        Intrinsics.checkNotNullParameter(mapPluginProviderDelegate, "<this>");
        MapPlugin plugin = mapPluginProviderDelegate.getPlugin(Plugin.MAPBOX_ATTRIBUTION_PLUGIN_ID);
        Intrinsics.checkNotNull(plugin);
        return (AttributionPlugin) plugin;
    }

    public static final AttributionPlugin createAttributionPlugin() {
        return new AttributionPluginImpl(null, 1, null);
    }
}
