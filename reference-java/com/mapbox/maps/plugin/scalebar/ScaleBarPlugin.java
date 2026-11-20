package com.mapbox.maps.plugin.scalebar;

import android.view.View;
import com.mapbox.maps.plugin.MapSizePlugin;
import com.mapbox.maps.plugin.ViewPlugin;
import com.mapbox.maps.plugin.delegates.MapDelegateProvider;
import com.mapbox.maps.plugin.scalebar.generated.ScaleBarSettingsInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\bf\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003R\u0018\u0010\u0004\u001a\u00020\u0005X¦\u000e¢\u0006\f\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/mapbox/maps/plugin/scalebar/ScaleBarPlugin;", "Lcom/mapbox/maps/plugin/ViewPlugin;", "Lcom/mapbox/maps/plugin/MapSizePlugin;", "Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettingsInterface;", "distancePerPixel", "", "getDistancePerPixel", "()F", "setDistancePerPixel", "(F)V", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface ScaleBarPlugin extends ViewPlugin, MapSizePlugin, ScaleBarSettingsInterface {
    float getDistancePerPixel();

    void setDistancePerPixel(float f);

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class DefaultImpls {
        public static void cleanup(ScaleBarPlugin scaleBarPlugin) {
            ViewPlugin.DefaultImpls.cleanup(scaleBarPlugin);
        }

        public static void initialize(ScaleBarPlugin scaleBarPlugin) {
            ViewPlugin.DefaultImpls.initialize(scaleBarPlugin);
        }

        public static void onDelegateProvider(ScaleBarPlugin scaleBarPlugin, MapDelegateProvider delegateProvider) {
            Intrinsics.checkNotNullParameter(delegateProvider, "delegateProvider");
            ViewPlugin.DefaultImpls.onDelegateProvider(scaleBarPlugin, delegateProvider);
        }

        public static void onPluginView(ScaleBarPlugin scaleBarPlugin, View view) {
            Intrinsics.checkNotNullParameter(view, "view");
            ViewPlugin.DefaultImpls.onPluginView(scaleBarPlugin, view);
        }

        public static void onSizeChanged(ScaleBarPlugin scaleBarPlugin, int i, int i2) {
            MapSizePlugin.DefaultImpls.onSizeChanged(scaleBarPlugin, i, i2);
        }
    }
}
