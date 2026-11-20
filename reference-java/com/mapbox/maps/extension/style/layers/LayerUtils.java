package com.mapbox.maps.extension.style.layers;

import androidx.exifinterface.media.ExifInterface;
import com.caverock.androidsvg.SVGParser;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mapbox.bindgen.Expected;
import com.mapbox.maps.CustomLayerHost;
import com.mapbox.maps.CustomLayerRenderParameters;
import com.mapbox.maps.LayerPosition;
import com.mapbox.maps.MapboxLogger;
import com.mapbox.maps.MapboxStyleManager;
import com.mapbox.maps.extension.style.StyleContract;
import com.mapbox.maps.extension.style.layers.generated.BackgroundLayer;
import com.mapbox.maps.extension.style.layers.generated.CircleLayer;
import com.mapbox.maps.extension.style.layers.generated.ClipLayer;
import com.mapbox.maps.extension.style.layers.generated.FillExtrusionLayer;
import com.mapbox.maps.extension.style.layers.generated.FillLayer;
import com.mapbox.maps.extension.style.layers.generated.HeatmapLayer;
import com.mapbox.maps.extension.style.layers.generated.HillshadeLayer;
import com.mapbox.maps.extension.style.layers.generated.LineLayer;
import com.mapbox.maps.extension.style.layers.generated.LocationIndicatorLayer;
import com.mapbox.maps.extension.style.layers.generated.ModelLayer;
import com.mapbox.maps.extension.style.layers.generated.RasterLayer;
import com.mapbox.maps.extension.style.layers.generated.RasterParticleLayer;
import com.mapbox.maps.extension.style.layers.generated.SkyLayer;
import com.mapbox.maps.extension.style.layers.generated.SlotLayer;
import com.mapbox.maps.extension.style.layers.generated.SymbolLayer;
import com.mapbox.maps.extension.style.utils.TypeUtilsKt;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a\u0012\u0010\u0004\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b\u001a\u001c\u0010\t\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\n\u001a\u0004\u0018\u00010\u0001\u001a!\u0010\u000b\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000e\u001a\u001c\u0010\u000f\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001\u001a \u0010\u0011\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007\u001a\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u0012*\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0001\u001a(\u0010\u0017\u001a\u0004\u0018\u0001H\u0018\"\n\b\u0000\u0010\u0018\u0018\u0001*\u00020\u0012*\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0001H\u0086\b¢\u0006\u0002\u0010\u0019\u001a\u0011\u0010\u001a\u001a\u0004\u0018\u00010\u001b*\u00020\u0012¢\u0006\u0002\u0010\u001c\"\u0016\u0010\u0000\u001a\u00020\u00018\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u0002\u0010\u0003¨\u0006\u001d²\u0006\n\u0010\u001e\u001a\u00020\u0001X\u008a\u0084\u0002"}, d2 = {"TAG", "", "getTAG$annotations", "()V", "addLayer", "", "Lcom/mapbox/maps/MapboxStyleManager;", "layer", "Lcom/mapbox/maps/extension/style/StyleContract$StyleLayerExtension;", "addLayerAbove", "above", "addLayerAt", FirebaseAnalytics.Param.INDEX, "", "(Lcom/mapbox/maps/MapboxStyleManager;Lcom/mapbox/maps/extension/style/StyleContract$StyleLayerExtension;Ljava/lang/Integer;)V", "addLayerBelow", "below", "addPersistentLayer", "Lcom/mapbox/maps/extension/style/layers/Layer;", "position", "Lcom/mapbox/maps/LayerPosition;", "getLayer", "layerId", "getLayerAs", ExifInterface.GPS_DIRECTION_TRUE, "(Lcom/mapbox/maps/MapboxStyleManager;Ljava/lang/String;)Lcom/mapbox/maps/extension/style/layers/Layer;", "isPersistent", "", "(Lcom/mapbox/maps/extension/style/layers/Layer;)Ljava/lang/Boolean;", "extension-style_release", "source"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class LayerUtils {
    public static final String TAG = "Mbgl-LayerUtils";

    public static final void addPersistentLayer(MapboxStyleManager mapboxStyleManager, Layer layer) {
        Intrinsics.checkNotNullParameter(mapboxStyleManager, "<this>");
        Intrinsics.checkNotNullParameter(layer, "layer");
        addPersistentLayer$default(mapboxStyleManager, layer, null, 2, null);
    }

    public static void getTAG$annotations() {
    }

    public static final Layer getLayer(final MapboxStyleManager mapboxStyleManager, final String layerId) {
        Object objUnwrap;
        CircleLayer circleLayer;
        Intrinsics.checkNotNullParameter(mapboxStyleManager, "<this>");
        Intrinsics.checkNotNullParameter(layerId, "layerId");
        Lazy lazy = LazyKt.lazy(new Function0<String>() {
            {
                super(0);
            }

            @Override
            public final String invoke() {
                return (String) TypeUtilsKt.unwrap(mapboxStyleManager.getStyleLayerProperty(layerId, "source"), String.class);
            }
        });
        try {
            objUnwrap = TypeUtilsKt.unwrap(mapboxStyleManager.getStyleLayerProperty(layerId, SVGParser.XML_STYLESHEET_ATTR_TYPE), String.class);
        } catch (RuntimeException unused) {
            objUnwrap = null;
        }
        String str = (String) objUnwrap;
        if (str != null) {
            switch (str) {
                case "circle":
                    circleLayer = new CircleLayer(layerId, getLayer$lambda$0(lazy));
                    break;
                case "custom":
                    circleLayer = new CustomLayer(layerId, new CustomLayerHost() {
                        @Override
                        public void contextLost() {
                        }

                        @Override
                        public void deinitialize() {
                        }

                        @Override
                        public void initialize() {
                        }

                        @Override
                        public void render(CustomLayerRenderParameters parameters) {
                            Intrinsics.checkNotNullParameter(parameters, "parameters");
                        }
                    });
                    break;
                case "background":
                    circleLayer = new BackgroundLayer(layerId);
                    break;
                case "fill-extrusion":
                    circleLayer = new FillExtrusionLayer(layerId, getLayer$lambda$0(lazy));
                    break;
                case "raster":
                    circleLayer = new RasterLayer(layerId, getLayer$lambda$0(lazy));
                    break;
                case "symbol":
                    circleLayer = new SymbolLayer(layerId, getLayer$lambda$0(lazy));
                    break;
                case "hillshade":
                    circleLayer = new HillshadeLayer(layerId, getLayer$lambda$0(lazy));
                    break;
                case "sky":
                    circleLayer = new SkyLayer(layerId);
                    break;
                case "clip":
                    circleLayer = new ClipLayer(layerId, getLayer$lambda$0(lazy));
                    break;
                case "fill":
                    circleLayer = new FillLayer(layerId, getLayer$lambda$0(lazy));
                    break;
                case "line":
                    circleLayer = new LineLayer(layerId, getLayer$lambda$0(lazy));
                    break;
                case "slot":
                    circleLayer = new SlotLayer(layerId);
                    break;
                case "model":
                    circleLayer = new ModelLayer(layerId, getLayer$lambda$0(lazy));
                    break;
                case "raster-particle":
                    circleLayer = new RasterParticleLayer(layerId, getLayer$lambda$0(lazy));
                    break;
                case "heatmap":
                    circleLayer = new HeatmapLayer(layerId, getLayer$lambda$0(lazy));
                    break;
                case "location-indicator":
                    circleLayer = new LocationIndicatorLayer(layerId);
                    break;
                default:
                    MapboxLogger.logE(TAG, "Layer type: " + str + " unknown.");
                    circleLayer = null;
                    break;
            }
        } else {
            MapboxLogger.logE(TAG, "Layer type: " + str + " unknown.");
            circleLayer = null;
        }
        if (circleLayer == null) {
            return null;
        }
        circleLayer.setDelegate$extension_style_release(mapboxStyleManager);
        circleLayer.setAppliedLayerPropertiesValue$extension_style_release(mapboxStyleManager.getStyleLayerProperties(layerId).getValue());
        return circleLayer;
    }

    private static final String getLayer$lambda$0(Lazy<String> lazy) {
        return lazy.getValue();
    }

    public static final <T extends Layer> T getLayerAs(MapboxStyleManager mapboxStyleManager, String layerId) {
        Intrinsics.checkNotNullParameter(mapboxStyleManager, "<this>");
        Intrinsics.checkNotNullParameter(layerId, "layerId");
        T t = (T) getLayer(mapboxStyleManager, layerId);
        Intrinsics.reifiedOperationMarker(2, ExifInterface.GPS_DIRECTION_TRUE);
        if (t != null) {
            return t;
        }
        MapboxLogger.logE(TAG, "Given layerId = " + layerId + " is not requested type in Layer");
        return null;
    }

    public static final void addLayerBelow(MapboxStyleManager mapboxStyleManager, StyleContract.StyleLayerExtension layer, String str) {
        Intrinsics.checkNotNullParameter(mapboxStyleManager, "<this>");
        Intrinsics.checkNotNullParameter(layer, "layer");
        layer.bindTo(mapboxStyleManager, new LayerPosition(null, str, null));
    }

    public static final void addLayerAbove(MapboxStyleManager mapboxStyleManager, StyleContract.StyleLayerExtension layer, String str) {
        Intrinsics.checkNotNullParameter(mapboxStyleManager, "<this>");
        Intrinsics.checkNotNullParameter(layer, "layer");
        layer.bindTo(mapboxStyleManager, new LayerPosition(str, null, null));
    }

    public static final void addLayerAt(MapboxStyleManager mapboxStyleManager, StyleContract.StyleLayerExtension layer, Integer num) {
        Intrinsics.checkNotNullParameter(mapboxStyleManager, "<this>");
        Intrinsics.checkNotNullParameter(layer, "layer");
        layer.bindTo(mapboxStyleManager, new LayerPosition(null, null, num));
    }

    public static final void addLayer(MapboxStyleManager mapboxStyleManager, StyleContract.StyleLayerExtension layer) {
        Intrinsics.checkNotNullParameter(mapboxStyleManager, "<this>");
        Intrinsics.checkNotNullParameter(layer, "layer");
        StyleContract.StyleLayerExtension.DefaultImpls.bindTo$default(layer, mapboxStyleManager, null, 2, null);
    }

    public static void addPersistentLayer$default(MapboxStyleManager mapboxStyleManager, Layer layer, LayerPosition layerPosition, int i, Object obj) {
        if ((i & 2) != 0) {
            layerPosition = null;
        }
        addPersistentLayer(mapboxStyleManager, layer, layerPosition);
    }

    public static final void addPersistentLayer(MapboxStyleManager mapboxStyleManager, Layer layer, LayerPosition layerPosition) {
        Intrinsics.checkNotNullParameter(mapboxStyleManager, "<this>");
        Intrinsics.checkNotNullParameter(layer, "layer");
        layer.bindPersistentlyTo$extension_style_release(mapboxStyleManager, layerPosition);
    }

    public static final Boolean isPersistent(Layer layer) {
        Expected<String, Boolean> expectedIsStyleLayerPersistent;
        Intrinsics.checkNotNullParameter(layer, "<this>");
        MapboxStyleManager delegate = layer.getDelegate();
        if (delegate == null || (expectedIsStyleLayerPersistent = delegate.isStyleLayerPersistent(layer.getLayerId())) == null) {
            return null;
        }
        return expectedIsStyleLayerPersistent.getValue();
    }
}
