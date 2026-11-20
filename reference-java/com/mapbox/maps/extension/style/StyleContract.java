package com.mapbox.maps.extension.style;

import com.mapbox.maps.ColorTheme;
import com.mapbox.maps.LayerPosition;
import com.mapbox.maps.MapboxStyleManager;
import com.mapbox.maps.TransitionOptions;
import com.mapbox.maps.plugin.locationcomponent.ModelSourceWrapper;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\f\bf\u0018\u00002\u00020\u0001:\u000b\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f¨\u0006\r"}, d2 = {"Lcom/mapbox/maps/extension/style/StyleContract;", "", "StyleAtmosphereExtension", "StyleExtension", "StyleImageExtension", "StyleLayerExtension", "StyleLightExtension", "StyleModelExtension", "StyleProjectionExtension", "StyleRainExtension", "StyleSnowExtension", "StyleSourceExtension", "StyleTerrainExtension", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface StyleContract {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/mapbox/maps/extension/style/StyleContract$StyleAtmosphereExtension;", "", "bindTo", "", "delegate", "Lcom/mapbox/maps/MapboxStyleManager;", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public interface StyleAtmosphereExtension {
        void bindTo(MapboxStyleManager delegate);
    }

    @Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u00078&X§\u0004¢\u0006\f\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u0004\u0018\u00010\rX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u0004\u0018\u00010\rX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000fR\u0018\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R$\u0010\u0017\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\u00180\u0013X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0016R \u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001d0\u00138&X§\u0004¢\u0006\f\u0012\u0004\b\u001e\u0010\t\u001a\u0004\b\u001f\u0010\u0016R\u0014\u0010 \u001a\u0004\u0018\u00010!X¦\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#R\u001c\u0010$\u001a\u0004\u0018\u00010%8&X§\u0004¢\u0006\f\u0012\u0004\b&\u0010\t\u001a\u0004\b'\u0010(R\u001c\u0010)\u001a\u0004\u0018\u00010*8&X§\u0004¢\u0006\f\u0012\u0004\b+\u0010\t\u001a\u0004\b,\u0010-R\u0018\u0010.\u001a\b\u0012\u0004\u0012\u00020/0\u0013X¦\u0004¢\u0006\u0006\u001a\u0004\b0\u0010\u0016R\u0012\u00101\u001a\u000202X¦\u0004¢\u0006\u0006\u001a\u0004\b3\u00104R\u0014\u00105\u001a\u0004\u0018\u000106X¦\u0004¢\u0006\u0006\u001a\u0004\b7\u00108R\u0014\u00109\u001a\u0004\u0018\u00010:X¦\u0004¢\u0006\u0006\u001a\u0004\b;\u0010<¨\u0006="}, d2 = {"Lcom/mapbox/maps/extension/style/StyleContract$StyleExtension;", "", "atmosphere", "Lcom/mapbox/maps/extension/style/StyleContract$StyleAtmosphereExtension;", "getAtmosphere", "()Lcom/mapbox/maps/extension/style/StyleContract$StyleAtmosphereExtension;", "colorTheme", "Lcom/mapbox/maps/ColorTheme;", "getColorTheme$annotations", "()V", "getColorTheme", "()Lcom/mapbox/maps/ColorTheme;", "dynamicLight", "Lcom/mapbox/maps/extension/style/StyleContract$StyleLightExtension;", "getDynamicLight", "()Lcom/mapbox/maps/extension/style/StyleContract$StyleLightExtension;", "flatLight", "getFlatLight", "images", "", "Lcom/mapbox/maps/extension/style/StyleContract$StyleImageExtension;", "getImages", "()Ljava/util/List;", "layers", "Lkotlin/Pair;", "Lcom/mapbox/maps/extension/style/StyleContract$StyleLayerExtension;", "Lcom/mapbox/maps/LayerPosition;", "getLayers", ModelSourceWrapper.MODELS, "Lcom/mapbox/maps/extension/style/StyleContract$StyleModelExtension;", "getModels$annotations", "getModels", "projection", "Lcom/mapbox/maps/extension/style/StyleContract$StyleProjectionExtension;", "getProjection", "()Lcom/mapbox/maps/extension/style/StyleContract$StyleProjectionExtension;", "rain", "Lcom/mapbox/maps/extension/style/StyleContract$StyleRainExtension;", "getRain$annotations", "getRain", "()Lcom/mapbox/maps/extension/style/StyleContract$StyleRainExtension;", "snow", "Lcom/mapbox/maps/extension/style/StyleContract$StyleSnowExtension;", "getSnow$annotations", "getSnow", "()Lcom/mapbox/maps/extension/style/StyleContract$StyleSnowExtension;", "sources", "Lcom/mapbox/maps/extension/style/StyleContract$StyleSourceExtension;", "getSources", "style", "", "getStyle", "()Ljava/lang/String;", "terrain", "Lcom/mapbox/maps/extension/style/StyleContract$StyleTerrainExtension;", "getTerrain", "()Lcom/mapbox/maps/extension/style/StyleContract$StyleTerrainExtension;", "transition", "Lcom/mapbox/maps/TransitionOptions;", "getTransition", "()Lcom/mapbox/maps/TransitionOptions;", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public interface StyleExtension {

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        public static final class DefaultImpls {
            public static void getColorTheme$annotations() {
            }

            public static void getModels$annotations() {
            }

            public static void getRain$annotations() {
            }

            public static void getSnow$annotations() {
            }
        }

        StyleAtmosphereExtension getAtmosphere();

        ColorTheme getColorTheme();

        StyleLightExtension getDynamicLight();

        StyleLightExtension getFlatLight();

        List<StyleImageExtension> getImages();

        List<Pair<StyleLayerExtension, LayerPosition>> getLayers();

        List<StyleModelExtension> getModels();

        StyleProjectionExtension getProjection();

        StyleRainExtension getRain();

        StyleSnowExtension getSnow();

        List<StyleSourceExtension> getSources();

        String getStyle();

        StyleTerrainExtension getTerrain();

        TransitionOptions getTransition();
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/mapbox/maps/extension/style/StyleContract$StyleImageExtension;", "", "bindTo", "", "delegate", "Lcom/mapbox/maps/MapboxStyleManager;", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public interface StyleImageExtension {
        void bindTo(MapboxStyleManager delegate);
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/mapbox/maps/extension/style/StyleContract$StyleLightExtension;", "", "bindTo", "", "delegate", "Lcom/mapbox/maps/MapboxStyleManager;", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public interface StyleLightExtension {
        void bindTo(MapboxStyleManager delegate);
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bç\u0080\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/mapbox/maps/extension/style/StyleContract$StyleModelExtension;", "", "bindTo", "", "delegate", "Lcom/mapbox/maps/MapboxStyleManager;", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public interface StyleModelExtension {
        void bindTo(MapboxStyleManager delegate);
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/mapbox/maps/extension/style/StyleContract$StyleProjectionExtension;", "", "bindTo", "", "delegate", "Lcom/mapbox/maps/MapboxStyleManager;", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public interface StyleProjectionExtension {
        void bindTo(MapboxStyleManager delegate);
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bç\u0080\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/mapbox/maps/extension/style/StyleContract$StyleRainExtension;", "", "bindTo", "", "delegate", "Lcom/mapbox/maps/MapboxStyleManager;", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public interface StyleRainExtension {
        void bindTo(MapboxStyleManager delegate);
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bç\u0080\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/mapbox/maps/extension/style/StyleContract$StyleSnowExtension;", "", "bindTo", "", "delegate", "Lcom/mapbox/maps/MapboxStyleManager;", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public interface StyleSnowExtension {
        void bindTo(MapboxStyleManager delegate);
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/mapbox/maps/extension/style/StyleContract$StyleSourceExtension;", "", "bindTo", "", "delegate", "Lcom/mapbox/maps/MapboxStyleManager;", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public interface StyleSourceExtension {
        void bindTo(MapboxStyleManager delegate);
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/mapbox/maps/extension/style/StyleContract$StyleTerrainExtension;", "", "bindTo", "", "delegate", "Lcom/mapbox/maps/MapboxStyleManager;", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public interface StyleTerrainExtension {
        void bindTo(MapboxStyleManager delegate);
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&¨\u0006\b"}, d2 = {"Lcom/mapbox/maps/extension/style/StyleContract$StyleLayerExtension;", "", "bindTo", "", "delegate", "Lcom/mapbox/maps/MapboxStyleManager;", "position", "Lcom/mapbox/maps/LayerPosition;", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public interface StyleLayerExtension {
        void bindTo(MapboxStyleManager delegate, LayerPosition position);

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        public static final class DefaultImpls {
            public static void bindTo$default(StyleLayerExtension styleLayerExtension, MapboxStyleManager mapboxStyleManager, LayerPosition layerPosition, int i, Object obj) {
                if (obj != null) {
                    throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: bindTo");
                }
                if ((i & 2) != 0) {
                    layerPosition = null;
                }
                styleLayerExtension.bindTo(mapboxStyleManager, layerPosition);
            }
        }
    }
}
