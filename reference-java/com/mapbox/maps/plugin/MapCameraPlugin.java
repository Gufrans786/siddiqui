package com.mapbox.maps.plugin;

import com.facebook.react.uimanager.ViewProps;
import com.mapbox.geojson.Point;
import com.mapbox.maps.EdgeInsets;
import com.mapbox.maps.plugin.delegates.MapDelegateProvider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH&¨\u0006\f"}, d2 = {"Lcom/mapbox/maps/plugin/MapCameraPlugin;", "Lcom/mapbox/maps/plugin/MapPlugin;", "onCameraMove", "", "center", "Lcom/mapbox/geojson/Point;", "zoom", "", "pitch", "bearing", ViewProps.PADDING, "Lcom/mapbox/maps/EdgeInsets;", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface MapCameraPlugin extends MapPlugin {
    void onCameraMove(Point center, double zoom, double pitch, double bearing, EdgeInsets padding);

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class DefaultImpls {
        public static void cleanup(MapCameraPlugin mapCameraPlugin) {
            MapPlugin.DefaultImpls.cleanup(mapCameraPlugin);
        }

        public static void initialize(MapCameraPlugin mapCameraPlugin) {
            MapPlugin.DefaultImpls.initialize(mapCameraPlugin);
        }

        public static void onDelegateProvider(MapCameraPlugin mapCameraPlugin, MapDelegateProvider delegateProvider) {
            Intrinsics.checkNotNullParameter(delegateProvider, "delegateProvider");
            MapPlugin.DefaultImpls.onDelegateProvider(mapCameraPlugin, delegateProvider);
        }
    }
}
