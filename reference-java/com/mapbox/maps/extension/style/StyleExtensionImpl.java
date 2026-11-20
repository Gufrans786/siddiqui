package com.mapbox.maps.extension.style;

import com.mapbox.maps.ColorTheme;
import com.mapbox.maps.LayerPosition;
import com.mapbox.maps.TransitionOptions;
import com.mapbox.maps.extension.style.atmosphere.generated.Atmosphere;
import com.mapbox.maps.extension.style.image.ImageExtensionImpl;
import com.mapbox.maps.extension.style.image.ImageNinePatchExtensionImpl;
import com.mapbox.maps.extension.style.layers.Layer;
import com.mapbox.maps.extension.style.light.DynamicLight;
import com.mapbox.maps.extension.style.light.generated.FlatLight;
import com.mapbox.maps.extension.style.model.ModelExtensionImpl;
import com.mapbox.maps.extension.style.precipitations.generated.Rain;
import com.mapbox.maps.extension.style.precipitations.generated.Snow;
import com.mapbox.maps.extension.style.projection.generated.Projection;
import com.mapbox.maps.extension.style.sources.Source;
import com.mapbox.maps.extension.style.terrain.generated.Terrain;
import com.mapbox.maps.extension.style.utils.StyleTelemetryEvents;
import com.mapbox.maps.plugin.locationcomponent.ModelSourceWrapper;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001@B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\u0004\u0018\u00010\n8\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u0010X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R&\u0010\u001a\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d0\u001b0\u0016X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0019R \u0010\u001f\u001a\b\u0012\u0004\u0012\u00020 0\u0016X\u0096\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b!\u0010\f\u001a\u0004\b\"\u0010\u0019R\u0016\u0010#\u001a\u0004\u0018\u00010$X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u001e\u0010'\u001a\u0004\u0018\u00010(8\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b)\u0010\f\u001a\u0004\b*\u0010+R\u001e\u0010,\u001a\u0004\u0018\u00010-8\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b.\u0010\f\u001a\u0004\b/\u00100R\u001a\u00101\u001a\b\u0012\u0004\u0012\u0002020\u0016X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b3\u0010\u0019R\u0014\u00104\u001a\u000205X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b6\u00107R\u0016\u00108\u001a\u0004\u0018\u000109X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b:\u0010;R\u0016\u0010<\u001a\u0004\u0018\u00010=X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b>\u0010?¨\u0006A"}, d2 = {"Lcom/mapbox/maps/extension/style/StyleExtensionImpl;", "Lcom/mapbox/maps/extension/style/StyleContract$StyleExtension;", "builder", "Lcom/mapbox/maps/extension/style/StyleExtensionImpl$Builder;", "(Lcom/mapbox/maps/extension/style/StyleExtensionImpl$Builder;)V", "atmosphere", "Lcom/mapbox/maps/extension/style/atmosphere/generated/Atmosphere;", "getAtmosphere", "()Lcom/mapbox/maps/extension/style/atmosphere/generated/Atmosphere;", "colorTheme", "Lcom/mapbox/maps/ColorTheme;", "getColorTheme$annotations", "()V", "getColorTheme", "()Lcom/mapbox/maps/ColorTheme;", "dynamicLight", "Lcom/mapbox/maps/extension/style/StyleContract$StyleLightExtension;", "getDynamicLight", "()Lcom/mapbox/maps/extension/style/StyleContract$StyleLightExtension;", "flatLight", "getFlatLight", "images", "", "Lcom/mapbox/maps/extension/style/StyleContract$StyleImageExtension;", "getImages", "()Ljava/util/List;", "layers", "Lkotlin/Pair;", "Lcom/mapbox/maps/extension/style/layers/Layer;", "Lcom/mapbox/maps/LayerPosition;", "getLayers", ModelSourceWrapper.MODELS, "Lcom/mapbox/maps/extension/style/StyleContract$StyleModelExtension;", "getModels$annotations", "getModels", "projection", "Lcom/mapbox/maps/extension/style/projection/generated/Projection;", "getProjection", "()Lcom/mapbox/maps/extension/style/projection/generated/Projection;", "rain", "Lcom/mapbox/maps/extension/style/StyleContract$StyleRainExtension;", "getRain$annotations", "getRain", "()Lcom/mapbox/maps/extension/style/StyleContract$StyleRainExtension;", "snow", "Lcom/mapbox/maps/extension/style/StyleContract$StyleSnowExtension;", "getSnow$annotations", "getSnow", "()Lcom/mapbox/maps/extension/style/StyleContract$StyleSnowExtension;", "sources", "Lcom/mapbox/maps/extension/style/sources/Source;", "getSources", "style", "", "getStyle", "()Ljava/lang/String;", "terrain", "Lcom/mapbox/maps/extension/style/terrain/generated/Terrain;", "getTerrain", "()Lcom/mapbox/maps/extension/style/terrain/generated/Terrain;", "transition", "Lcom/mapbox/maps/TransitionOptions;", "getTransition", "()Lcom/mapbox/maps/TransitionOptions;", "Builder", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class StyleExtensionImpl implements StyleContract.StyleExtension {
    private final Atmosphere atmosphere;
    private final ColorTheme colorTheme;
    private final StyleContract.StyleLightExtension dynamicLight;
    private final StyleContract.StyleLightExtension flatLight;
    private final List<StyleContract.StyleImageExtension> images;
    private final List<Pair<Layer, LayerPosition>> layers;
    private final List<StyleContract.StyleModelExtension> models;
    private final Projection projection;
    private final StyleContract.StyleRainExtension rain;
    private final StyleContract.StyleSnowExtension snow;
    private final List<Source> sources;
    private final String style;
    private final Terrain terrain;
    private final TransitionOptions transition;

    public StyleExtensionImpl(Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
        this(builder);
    }

    public static void getColorTheme$annotations() {
    }

    public static void getModels$annotations() {
    }

    public static void getRain$annotations() {
    }

    public static void getSnow$annotations() {
    }

    private StyleExtensionImpl(Builder builder) {
        this.style = builder.getStyle();
        this.sources = CollectionsKt.toList(builder.getSources$extension_style_release());
        this.images = CollectionsKt.toList(builder.getImages$extension_style_release());
        this.models = CollectionsKt.toList(builder.getModels$extension_style_release());
        this.layers = CollectionsKt.toList(builder.getLayers$extension_style_release());
        this.flatLight = builder.getFlatLight();
        this.dynamicLight = builder.getDynamicLight();
        this.terrain = builder.getTerrain();
        this.projection = builder.getProjection();
        this.atmosphere = builder.getAtmosphere();
        this.transition = builder.getTransition();
        this.rain = builder.getRain();
        this.snow = builder.getSnow();
        this.colorTheme = builder.getColorTheme();
    }

    @Override
    public String getStyle() {
        return this.style;
    }

    @Override
    public List<Source> getSources() {
        return this.sources;
    }

    @Override
    public List<StyleContract.StyleImageExtension> getImages() {
        return this.images;
    }

    @Override
    public List<StyleContract.StyleModelExtension> getModels() {
        return this.models;
    }

    @Override
    public List<Pair<Layer, LayerPosition>> getLayers() {
        return this.layers;
    }

    @Override
    public StyleContract.StyleLightExtension getFlatLight() {
        return this.flatLight;
    }

    @Override
    public StyleContract.StyleLightExtension getDynamicLight() {
        return this.dynamicLight;
    }

    @Override
    public Terrain getTerrain() {
        return this.terrain;
    }

    @Override
    public Projection getProjection() {
        return this.projection;
    }

    @Override
    public Atmosphere getAtmosphere() {
        return this.atmosphere;
    }

    @Override
    public TransitionOptions getTransition() {
        return this.transition;
    }

    @Override
    public StyleContract.StyleRainExtension getRain() {
        return this.rain;
    }

    @Override
    public StyleContract.StyleSnowExtension getSnow() {
        return this.snow;
    }

    @Override
    public ColorTheme getColorTheme() {
        return this.colorTheme;
    }

    @Metadata(d1 = {"\u0000¶\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010N\u001a\u00020OJE\u0010P\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"0 2\u0006\u0010Q\u001a\u00020!2\n\b\u0002\u0010R\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010S\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010T\u001a\u0004\u0018\u00010UH\u0007¢\u0006\u0002\u0010VJ\u0012\u0010W\u001a\u00020X*\u00020\fH\u0087\u0002¢\u0006\u0002\bYJ\u0012\u0010W\u001a\u00020X*\u00020IH\u0087\u0002¢\u0006\u0002\bZJ\u0012\u0010W\u001a\u00020X*\u00020\u0006H\u0087\u0002¢\u0006\u0002\b[J\u0012\u0010W\u001a\u00020X*\u00020\\H\u0087\u0002¢\u0006\u0002\b]J\u0012\u0010W\u001a\u00020X*\u00020^H\u0087\u0002¢\u0006\u0002\b_J\u0012\u0010W\u001a\u00020X*\u00020!H\u0087\u0002¢\u0006\u0002\b`J\u0012\u0010W\u001a\u00020X*\u00020aH\u0087\u0002¢\u0006\u0002\bbJ\u0012\u0010W\u001a\u00020X*\u00020cH\u0087\u0002¢\u0006\u0002\bbJ\u0012\u0010W\u001a\u00020X*\u00020dH\u0087\u0002¢\u0006\u0002\beJ\u0012\u0010W\u001a\u00020X*\u000200H\u0087\u0002¢\u0006\u0002\bfJ\u0012\u0010W\u001a\u00020X*\u000207H\u0087\u0002¢\u0006\u0002\bgJ\u0012\u0010W\u001a\u00020X*\u00020*H\u0087\u0002¢\u0006\u0002\bhJ\u0012\u0010W\u001a\u00020X*\u00020>H\u0087\u0002¢\u0006\u0002\biJ\u0012\u0010W\u001a\u00020X*\u00020CH\u0087\u0002¢\u0006\u0002\bjJ\u001e\u0010W\u001a\u00020X*\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"0 H\u0087\u0002¢\u0006\u0002\bkR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0012X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0014\"\u0004\b\u0019\u0010\u0016R\u001a\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR&\u0010\u001f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"0 0\u001bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u001eR \u0010$\u001a\b\u0012\u0004\u0012\u00020%0\u001bX\u0080\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b&\u0010'\u001a\u0004\b(\u0010\u001eR\u001c\u0010)\u001a\u0004\u0018\u00010*X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\"\u0010/\u001a\u0004\u0018\u000100X\u0080\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b1\u0010'\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\"\u00106\u001a\u0004\u0018\u000107X\u0080\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b8\u0010'\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\u001a\u0010=\u001a\b\u0012\u0004\u0012\u00020>0\u001bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b?\u0010\u001eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b@\u0010AR\u001c\u0010B\u001a\u0004\u0018\u00010CX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR\u001c\u0010H\u001a\u0004\u0018\u00010IX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010M¨\u0006l"}, d2 = {"Lcom/mapbox/maps/extension/style/StyleExtensionImpl$Builder;", "", "style", "", "(Ljava/lang/String;)V", "atmosphere", "Lcom/mapbox/maps/extension/style/atmosphere/generated/Atmosphere;", "getAtmosphere$extension_style_release", "()Lcom/mapbox/maps/extension/style/atmosphere/generated/Atmosphere;", "setAtmosphere$extension_style_release", "(Lcom/mapbox/maps/extension/style/atmosphere/generated/Atmosphere;)V", "colorTheme", "Lcom/mapbox/maps/ColorTheme;", "getColorTheme$extension_style_release", "()Lcom/mapbox/maps/ColorTheme;", "setColorTheme$extension_style_release", "(Lcom/mapbox/maps/ColorTheme;)V", "dynamicLight", "Lcom/mapbox/maps/extension/style/StyleContract$StyleLightExtension;", "getDynamicLight$extension_style_release", "()Lcom/mapbox/maps/extension/style/StyleContract$StyleLightExtension;", "setDynamicLight$extension_style_release", "(Lcom/mapbox/maps/extension/style/StyleContract$StyleLightExtension;)V", "flatLight", "getFlatLight$extension_style_release", "setFlatLight$extension_style_release", "images", "", "Lcom/mapbox/maps/extension/style/StyleContract$StyleImageExtension;", "getImages$extension_style_release", "()Ljava/util/List;", "layers", "Lkotlin/Pair;", "Lcom/mapbox/maps/extension/style/layers/Layer;", "Lcom/mapbox/maps/LayerPosition;", "getLayers$extension_style_release", ModelSourceWrapper.MODELS, "Lcom/mapbox/maps/extension/style/StyleContract$StyleModelExtension;", "getModels$extension_style_release$annotations", "()V", "getModels$extension_style_release", "projection", "Lcom/mapbox/maps/extension/style/projection/generated/Projection;", "getProjection$extension_style_release", "()Lcom/mapbox/maps/extension/style/projection/generated/Projection;", "setProjection$extension_style_release", "(Lcom/mapbox/maps/extension/style/projection/generated/Projection;)V", "rain", "Lcom/mapbox/maps/extension/style/precipitations/generated/Rain;", "getRain$extension_style_release$annotations", "getRain$extension_style_release", "()Lcom/mapbox/maps/extension/style/precipitations/generated/Rain;", "setRain$extension_style_release", "(Lcom/mapbox/maps/extension/style/precipitations/generated/Rain;)V", "snow", "Lcom/mapbox/maps/extension/style/precipitations/generated/Snow;", "getSnow$extension_style_release$annotations", "getSnow$extension_style_release", "()Lcom/mapbox/maps/extension/style/precipitations/generated/Snow;", "setSnow$extension_style_release", "(Lcom/mapbox/maps/extension/style/precipitations/generated/Snow;)V", "sources", "Lcom/mapbox/maps/extension/style/sources/Source;", "getSources$extension_style_release", "getStyle", "()Ljava/lang/String;", "terrain", "Lcom/mapbox/maps/extension/style/terrain/generated/Terrain;", "getTerrain$extension_style_release", "()Lcom/mapbox/maps/extension/style/terrain/generated/Terrain;", "setTerrain$extension_style_release", "(Lcom/mapbox/maps/extension/style/terrain/generated/Terrain;)V", "transition", "Lcom/mapbox/maps/TransitionOptions;", "getTransition$extension_style_release", "()Lcom/mapbox/maps/TransitionOptions;", "setTransition$extension_style_release", "(Lcom/mapbox/maps/TransitionOptions;)V", "build", "Lcom/mapbox/maps/extension/style/StyleContract$StyleExtension;", "layerAtPosition", "layer", "above", "below", "at", "", "(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lkotlin/Pair;", "unaryPlus", "", "setColorTheme", "setTransition", "setAtmosphere", "Lcom/mapbox/maps/extension/style/image/ImageExtensionImpl;", "addImage", "Lcom/mapbox/maps/extension/style/image/ImageNinePatchExtensionImpl;", "addImage9Patch", "addLayer", "Lcom/mapbox/maps/extension/style/light/DynamicLight;", "setLight", "Lcom/mapbox/maps/extension/style/light/generated/FlatLight;", "Lcom/mapbox/maps/extension/style/model/ModelExtensionImpl;", "addModel", "setRain", "setSnow", "setProjection", "addSource", "setTerrain", "addLayerAtPosition", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Builder {
        private Atmosphere atmosphere;
        private ColorTheme colorTheme;
        private StyleContract.StyleLightExtension dynamicLight;
        private StyleContract.StyleLightExtension flatLight;
        private final List<StyleContract.StyleImageExtension> images;
        private final List<Pair<Layer, LayerPosition>> layers;
        private final List<StyleContract.StyleModelExtension> models;
        private Projection projection;
        private Rain rain;
        private Snow snow;
        private final List<Source> sources;
        private final String style;
        private Terrain terrain;
        private TransitionOptions transition;

        public static void getModels$extension_style_release$annotations() {
        }

        public static void getRain$extension_style_release$annotations() {
        }

        public static void getSnow$extension_style_release$annotations() {
        }

        public final Pair<Layer, LayerPosition> layerAtPosition(Layer layer) {
            Intrinsics.checkNotNullParameter(layer, "layer");
            return layerAtPosition$default(this, layer, null, null, null, 14, null);
        }

        public final Pair<Layer, LayerPosition> layerAtPosition(Layer layer, String str) {
            Intrinsics.checkNotNullParameter(layer, "layer");
            return layerAtPosition$default(this, layer, str, null, null, 12, null);
        }

        public final Pair<Layer, LayerPosition> layerAtPosition(Layer layer, String str, String str2) {
            Intrinsics.checkNotNullParameter(layer, "layer");
            return layerAtPosition$default(this, layer, str, str2, null, 8, null);
        }

        public Builder(String style) {
            Intrinsics.checkNotNullParameter(style, "style");
            this.style = style;
            this.layers = new ArrayList();
            this.sources = new ArrayList();
            this.images = new ArrayList();
            this.models = new ArrayList();
        }

        public final String getStyle() {
            return this.style;
        }

        public final List<Pair<Layer, LayerPosition>> getLayers$extension_style_release() {
            return this.layers;
        }

        public final List<Source> getSources$extension_style_release() {
            return this.sources;
        }

        public final List<StyleContract.StyleImageExtension> getImages$extension_style_release() {
            return this.images;
        }

        public final List<StyleContract.StyleModelExtension> getModels$extension_style_release() {
            return this.models;
        }

        public final StyleContract.StyleLightExtension getFlatLight() {
            return this.flatLight;
        }

        public final void setFlatLight$extension_style_release(StyleContract.StyleLightExtension styleLightExtension) {
            this.flatLight = styleLightExtension;
        }

        public final StyleContract.StyleLightExtension getDynamicLight() {
            return this.dynamicLight;
        }

        public final void setDynamicLight$extension_style_release(StyleContract.StyleLightExtension styleLightExtension) {
            this.dynamicLight = styleLightExtension;
        }

        public final Terrain getTerrain() {
            return this.terrain;
        }

        public final void setTerrain$extension_style_release(Terrain terrain) {
            this.terrain = terrain;
        }

        public final Atmosphere getAtmosphere() {
            return this.atmosphere;
        }

        public final void setAtmosphere$extension_style_release(Atmosphere atmosphere) {
            this.atmosphere = atmosphere;
        }

        public final Projection getProjection() {
            return this.projection;
        }

        public final void setProjection$extension_style_release(Projection projection) {
            this.projection = projection;
        }

        public final TransitionOptions getTransition() {
            return this.transition;
        }

        public final void setTransition$extension_style_release(TransitionOptions transitionOptions) {
            this.transition = transitionOptions;
        }

        public final Snow getSnow() {
            return this.snow;
        }

        public final void setSnow$extension_style_release(Snow snow) {
            this.snow = snow;
        }

        public final Rain getRain() {
            return this.rain;
        }

        public final void setRain$extension_style_release(Rain rain) {
            this.rain = rain;
        }

        public final ColorTheme getColorTheme() {
            return this.colorTheme;
        }

        public final void setColorTheme$extension_style_release(ColorTheme colorTheme) {
            this.colorTheme = colorTheme;
        }

        public final void addLayer(Layer layer) {
            Intrinsics.checkNotNullParameter(layer, "<this>");
            this.layers.add(new Pair<>(layer, new LayerPosition(null, null, null)));
        }

        public final void addLayerAtPosition(Pair<? extends Layer, LayerPosition> pair) {
            Intrinsics.checkNotNullParameter(pair, "<this>");
            this.layers.add(pair);
        }

        public final void addSource(Source source) {
            Intrinsics.checkNotNullParameter(source, "<this>");
            this.sources.add(source);
        }

        public final void setLight(FlatLight flatLight) {
            Intrinsics.checkNotNullParameter(flatLight, "<this>");
            this.flatLight = flatLight;
        }

        public final void setLight(DynamicLight dynamicLight) {
            Intrinsics.checkNotNullParameter(dynamicLight, "<this>");
            this.dynamicLight = dynamicLight;
        }

        public final void setTerrain(Terrain terrain) {
            Intrinsics.checkNotNullParameter(terrain, "<this>");
            this.terrain = terrain;
        }

        public final void setAtmosphere(Atmosphere atmosphere) {
            Intrinsics.checkNotNullParameter(atmosphere, "<this>");
            this.atmosphere = atmosphere;
        }

        public final void setProjection(Projection projection) {
            Intrinsics.checkNotNullParameter(projection, "<this>");
            this.projection = projection;
        }

        public final void setTransition(TransitionOptions transitionOptions) {
            Intrinsics.checkNotNullParameter(transitionOptions, "<this>");
            this.transition = transitionOptions;
        }

        public final void setSnow(Snow snow) {
            Intrinsics.checkNotNullParameter(snow, "<this>");
            this.snow = snow;
        }

        public final void setRain(Rain rain) {
            Intrinsics.checkNotNullParameter(rain, "<this>");
            this.rain = rain;
        }

        public final void setColorTheme(ColorTheme colorTheme) {
            Intrinsics.checkNotNullParameter(colorTheme, "<this>");
            this.colorTheme = colorTheme;
        }

        public final void addImage(ImageExtensionImpl imageExtensionImpl) {
            Intrinsics.checkNotNullParameter(imageExtensionImpl, "<this>");
            this.images.add(imageExtensionImpl);
        }

        public final void addModel(ModelExtensionImpl modelExtensionImpl) {
            Intrinsics.checkNotNullParameter(modelExtensionImpl, "<this>");
            this.models.add(modelExtensionImpl);
        }

        public final void addImage9Patch(ImageNinePatchExtensionImpl imageNinePatchExtensionImpl) {
            Intrinsics.checkNotNullParameter(imageNinePatchExtensionImpl, "<this>");
            this.images.add(imageNinePatchExtensionImpl);
        }

        public static Pair layerAtPosition$default(Builder builder, Layer layer, String str, String str2, Integer num, int i, Object obj) {
            if ((i & 2) != 0) {
                str = null;
            }
            if ((i & 4) != 0) {
                str2 = null;
            }
            if ((i & 8) != 0) {
                num = null;
            }
            return builder.layerAtPosition(layer, str, str2, num);
        }

        public final Pair<Layer, LayerPosition> layerAtPosition(Layer layer, String above, String below, Integer at) {
            Intrinsics.checkNotNullParameter(layer, "layer");
            return new Pair<>(layer, new LayerPosition(above, below, at));
        }

        public final StyleContract.StyleExtension build() {
            StyleTelemetryEvents.INSTANCE.getDsl().increment();
            return new StyleExtensionImpl(this, null);
        }
    }
}
