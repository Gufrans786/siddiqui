package com.mapbox.maps.extension.style.layers.generated;

import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.maps.StyleManager;
import com.mapbox.maps.StylePropertyValue;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.Layer;
import com.mapbox.maps.extension.style.layers.properties.PropertyValue;
import com.mapbox.maps.extension.style.layers.properties.generated.Visibility;
import com.mapbox.maps.extension.style.types.StyleTransition;
import com.mapbox.maps.extension.style.utils.TypeUtilsKt;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 G2\u00020\u00012\u00020\u0002:\u0001GB\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bH\u0016J\r\u0010?\u001a\u00020\u0004H\u0010¢\u0006\u0002\b@J\u0010\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\bH\u0016J\u0010\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\bH\u0017J\u0010\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0004H\u0017J\u0010\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\bH\u0016J\u0010\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u001b\u001a\u00020\u00002\u0006\u0010A\u001a\u00020\u001cH\u0016J!\u0010\u001b\u001a\u00020\u00002\u0017\u0010B\u001a\u0013\u0012\u0004\u0012\u00020D\u0012\u0004\u0012\u00020E0C¢\u0006\u0002\bFH\u0016J\u0010\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\bH\u0016J\u0010\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u0016H\u0016J\u0010\u0010#\u001a\u00020\u00002\u0006\u0010A\u001a\u00020\u001cH\u0016J!\u0010#\u001a\u00020\u00002\u0017\u0010B\u001a\u0013\u0012\u0004\u0012\u00020D\u0012\u0004\u0012\u00020E0C¢\u0006\u0002\bFH\u0016J\u0010\u0010%\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\bH\u0016J\u0010\u0010%\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u0016H\u0016J\u0010\u0010)\u001a\u00020\u00002\u0006\u0010A\u001a\u00020\u001cH\u0016J!\u0010)\u001a\u00020\u00002\u0017\u0010B\u001a\u0013\u0012\u0004\u0012\u00020D\u0012\u0004\u0012\u00020E0C¢\u0006\u0002\bFH\u0016J\u0010\u0010+\u001a\u00020\u00002\u0006\u0010+\u001a\u00020\bH\u0016J\u0010\u0010+\u001a\u00020\u00002\u0006\u0010+\u001a\u00020\u0016H\u0016J\u0010\u00100\u001a\u00020\u00002\u0006\u00100\u001a\u00020\u0016H\u0016J\u0010\u00102\u001a\u00020\u00002\u0006\u00102\u001a\u00020\u0016H\u0016J\u0010\u00104\u001a\u00020\u00002\u0006\u00104\u001a\u00020\u0004H\u0016J\u0010\u00107\u001a\u00020\u00002\u0006\u00107\u001a\u00020\u0004H\u0016J\u0010\u00109\u001a\u00020\u00002\u0006\u00109\u001a\u00020\bH\u0016J\u0010\u00109\u001a\u00020\u00002\u0006\u00109\u001a\u00020:H\u0016R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\f\u0010\nR\u001c\u0010\r\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0013\u0010\u000f\u001a\u0004\b\u0014\u0010\nR\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u00168F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\u0019\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\nR\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u001c8F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u0013\u0010\u001f\u001a\u0004\u0018\u00010\u00168F¢\u0006\u0006\u001a\u0004\b \u0010\u0018R\u0013\u0010!\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\"\u0010\nR\u0013\u0010#\u001a\u0004\u0018\u00010\u001c8F¢\u0006\u0006\u001a\u0004\b$\u0010\u001eR\u0013\u0010%\u001a\u0004\u0018\u00010\u00168F¢\u0006\u0006\u001a\u0004\b&\u0010\u0018R\u0013\u0010'\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b(\u0010\nR\u0013\u0010)\u001a\u0004\u0018\u00010\u001c8F¢\u0006\u0006\u001a\u0004\b*\u0010\u001eR\u0013\u0010+\u001a\u0004\u0018\u00010\u00168F¢\u0006\u0006\u001a\u0004\b,\u0010\u0018R\u0013\u0010-\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b.\u0010\nR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b/\u0010\u0011R\u0016\u00100\u001a\u0004\u0018\u00010\u00168VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b1\u0010\u0018R\u0016\u00102\u001a\u0004\u0018\u00010\u00168VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b3\u0010\u0018R\u0016\u00104\u001a\u0004\u0018\u00010\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b5\u0010\u0011R\u0011\u0010\u0005\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b6\u0010\u0011R\u0013\u00107\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b8\u0010\u0011R\u0016\u00109\u001a\u0004\u0018\u00010:8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b;\u0010<R\u0016\u0010=\u001a\u0004\u0018\u00010\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b>\u0010\n¨\u0006H"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/HeatmapLayer;", "Lcom/mapbox/maps/extension/style/layers/generated/HeatmapLayerDsl;", "Lcom/mapbox/maps/extension/style/layers/Layer;", "layerId", "", "sourceId", "(Ljava/lang/String;Ljava/lang/String;)V", ViewProps.FILTER, "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getFilter", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "heatmapColor", "getHeatmapColor", "heatmapColorUseTheme", "getHeatmapColorUseTheme$annotations", "()V", "getHeatmapColorUseTheme", "()Ljava/lang/String;", "heatmapColorUseThemeAsExpression", "getHeatmapColorUseThemeAsExpression$annotations", "getHeatmapColorUseThemeAsExpression", "heatmapIntensity", "", "getHeatmapIntensity", "()Ljava/lang/Double;", "heatmapIntensityAsExpression", "getHeatmapIntensityAsExpression", "heatmapIntensityTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getHeatmapIntensityTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "heatmapOpacity", "getHeatmapOpacity", "heatmapOpacityAsExpression", "getHeatmapOpacityAsExpression", "heatmapOpacityTransition", "getHeatmapOpacityTransition", "heatmapRadius", "getHeatmapRadius", "heatmapRadiusAsExpression", "getHeatmapRadiusAsExpression", "heatmapRadiusTransition", "getHeatmapRadiusTransition", "heatmapWeight", "getHeatmapWeight", "heatmapWeightAsExpression", "getHeatmapWeightAsExpression", "getLayerId", "maxZoom", "getMaxZoom", "minZoom", "getMinZoom", "slot", "getSlot", "getSourceId", "sourceLayer", "getSourceLayer", "visibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "getVisibility", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "visibilityAsExpression", "getVisibilityAsExpression", "getType", "getType$extension_style_release", "options", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "Companion", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class HeatmapLayer extends Layer implements HeatmapLayerDsl {

    public static final Companion INSTANCE = new Companion(null);
    private final String layerId;
    private final String sourceId;

    public static void getHeatmapColorUseTheme$annotations() {
    }

    public static void getHeatmapColorUseThemeAsExpression$annotations() {
    }

    public HeatmapLayer(String layerId, String sourceId) {
        Intrinsics.checkNotNullParameter(layerId, "layerId");
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        this.layerId = layerId;
        this.sourceId = sourceId;
        setInternalSourceId$extension_style_release(sourceId);
    }

    @Override
    public String getLayerId() {
        return this.layerId;
    }

    public final String getSourceId() {
        return this.sourceId;
    }

    @Override
    public HeatmapLayer sourceLayer(String sourceLayer) {
        Intrinsics.checkNotNullParameter(sourceLayer, "sourceLayer");
        setProperty$extension_style_release(new PropertyValue<>("source-layer", sourceLayer));
        return this;
    }

    public final String getSourceLayer() {
        return (String) getPropertyValueWithType("source-layer", String.class);
    }

    @Override
    public HeatmapLayer slot(String slot) {
        Intrinsics.checkNotNullParameter(slot, "slot");
        setProperty$extension_style_release(new PropertyValue<>("slot", slot));
        return this;
    }

    @Override
    public String getSlot() {
        return (String) getPropertyValueWithType("slot", String.class);
    }

    @Override
    public HeatmapLayer filter(Expression filter) {
        Intrinsics.checkNotNullParameter(filter, "filter");
        setProperty$extension_style_release(new PropertyValue<>(ViewProps.FILTER, filter));
        return this;
    }

    public final Expression getFilter() {
        return (Expression) getPropertyValueWithType(ViewProps.FILTER, Expression.class);
    }

    @Override
    public Visibility getVisibility() {
        String str = (String) getPropertyValueWithType("visibility", String.class);
        if (str == null) {
            return null;
        }
        Visibility.Companion companion = Visibility.INSTANCE;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    @Override
    public Expression getVisibilityAsExpression() {
        return (Expression) getPropertyValueWithType("visibility", Expression.class);
    }

    @Override
    public HeatmapLayer visibility(Visibility visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        setProperty$extension_style_release(new PropertyValue<>("visibility", visibility));
        return this;
    }

    @Override
    public HeatmapLayer visibility(Expression visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        setProperty$extension_style_release(new PropertyValue<>("visibility", visibility));
        return this;
    }

    @Override
    public Double getMinZoom() {
        return (Double) getPropertyValueWithType("minzoom", Double.class);
    }

    @Override
    public HeatmapLayer minZoom(double minZoom) {
        setProperty$extension_style_release(new PropertyValue<>("minzoom", Double.valueOf(minZoom)));
        return this;
    }

    @Override
    public Double getMaxZoom() {
        return (Double) getPropertyValueWithType("maxzoom", Double.class);
    }

    @Override
    public HeatmapLayer maxZoom(double maxZoom) {
        setProperty$extension_style_release(new PropertyValue<>("maxzoom", Double.valueOf(maxZoom)));
        return this;
    }

    public final Expression getHeatmapColor() {
        return (Expression) getPropertyValueWithType("heatmap-color", Expression.class);
    }

    @Override
    public HeatmapLayer heatmapColor(Expression heatmapColor) {
        Intrinsics.checkNotNullParameter(heatmapColor, "heatmapColor");
        setProperty$extension_style_release(new PropertyValue<>("heatmap-color", heatmapColor));
        return this;
    }

    public final String getHeatmapColorUseTheme() {
        return (String) getPropertyValueWithType("heatmap-color-use-theme", String.class);
    }

    @Override
    public HeatmapLayer heatmapColorUseTheme(String heatmapColorUseTheme) {
        Intrinsics.checkNotNullParameter(heatmapColorUseTheme, "heatmapColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("heatmap-color-use-theme", heatmapColorUseTheme));
        return this;
    }

    public final Expression getHeatmapColorUseThemeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("heatmap-color-use-theme");
    }

    @Override
    public HeatmapLayer heatmapColorUseTheme(Expression heatmapColorUseTheme) {
        Intrinsics.checkNotNullParameter(heatmapColorUseTheme, "heatmapColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("heatmap-color-use-theme", heatmapColorUseTheme));
        return this;
    }

    public final Double getHeatmapIntensity() {
        return (Double) getPropertyValueWithType("heatmap-intensity", Double.class);
    }

    @Override
    public HeatmapLayer heatmapIntensity(double heatmapIntensity) {
        setProperty$extension_style_release(new PropertyValue<>("heatmap-intensity", Double.valueOf(heatmapIntensity)));
        return this;
    }

    public final Expression getHeatmapIntensityAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("heatmap-intensity");
    }

    @Override
    public HeatmapLayer heatmapIntensity(Expression heatmapIntensity) {
        Intrinsics.checkNotNullParameter(heatmapIntensity, "heatmapIntensity");
        setProperty$extension_style_release(new PropertyValue<>("heatmap-intensity", heatmapIntensity));
        return this;
    }

    public final StyleTransition getHeatmapIntensityTransition() {
        return (StyleTransition) getPropertyValueWithType("heatmap-intensity-transition", StyleTransition.class);
    }

    @Override
    public HeatmapLayer heatmapIntensityTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("heatmap-intensity-transition", options));
        return this;
    }

    @Override
    public HeatmapLayer heatmapIntensityTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        heatmapIntensityTransition(builder.build());
        return this;
    }

    public final Double getHeatmapOpacity() {
        return (Double) getPropertyValueWithType("heatmap-opacity", Double.class);
    }

    @Override
    public HeatmapLayer heatmapOpacity(double heatmapOpacity) {
        setProperty$extension_style_release(new PropertyValue<>("heatmap-opacity", Double.valueOf(heatmapOpacity)));
        return this;
    }

    public final Expression getHeatmapOpacityAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("heatmap-opacity");
    }

    @Override
    public HeatmapLayer heatmapOpacity(Expression heatmapOpacity) {
        Intrinsics.checkNotNullParameter(heatmapOpacity, "heatmapOpacity");
        setProperty$extension_style_release(new PropertyValue<>("heatmap-opacity", heatmapOpacity));
        return this;
    }

    public final StyleTransition getHeatmapOpacityTransition() {
        return (StyleTransition) getPropertyValueWithType("heatmap-opacity-transition", StyleTransition.class);
    }

    @Override
    public HeatmapLayer heatmapOpacityTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("heatmap-opacity-transition", options));
        return this;
    }

    @Override
    public HeatmapLayer heatmapOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        heatmapOpacityTransition(builder.build());
        return this;
    }

    public final Double getHeatmapRadius() {
        return (Double) getPropertyValueWithType("heatmap-radius", Double.class);
    }

    @Override
    public HeatmapLayer heatmapRadius(double heatmapRadius) {
        setProperty$extension_style_release(new PropertyValue<>("heatmap-radius", Double.valueOf(heatmapRadius)));
        return this;
    }

    public final Expression getHeatmapRadiusAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("heatmap-radius");
    }

    @Override
    public HeatmapLayer heatmapRadius(Expression heatmapRadius) {
        Intrinsics.checkNotNullParameter(heatmapRadius, "heatmapRadius");
        setProperty$extension_style_release(new PropertyValue<>("heatmap-radius", heatmapRadius));
        return this;
    }

    public final StyleTransition getHeatmapRadiusTransition() {
        return (StyleTransition) getPropertyValueWithType("heatmap-radius-transition", StyleTransition.class);
    }

    @Override
    public HeatmapLayer heatmapRadiusTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("heatmap-radius-transition", options));
        return this;
    }

    @Override
    public HeatmapLayer heatmapRadiusTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        heatmapRadiusTransition(builder.build());
        return this;
    }

    public final Double getHeatmapWeight() {
        return (Double) getPropertyValueWithType("heatmap-weight", Double.class);
    }

    @Override
    public HeatmapLayer heatmapWeight(double heatmapWeight) {
        setProperty$extension_style_release(new PropertyValue<>("heatmap-weight", Double.valueOf(heatmapWeight)));
        return this;
    }

    public final Expression getHeatmapWeightAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("heatmap-weight");
    }

    @Override
    public HeatmapLayer heatmapWeight(Expression heatmapWeight) {
        Intrinsics.checkNotNullParameter(heatmapWeight, "heatmapWeight");
        setProperty$extension_style_release(new PropertyValue<>("heatmap-weight", heatmapWeight));
        return this;
    }

    @Override
    public String getType$extension_style_release() {
        return "heatmap";
    }

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\t\u0010\u0002\u001a\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\r\u0010\u0002\u001a\u0004\b\u000e\u0010\u0006R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0006R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u00168F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0012R\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u0006R\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u00168F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u0018R\u0013\u0010\u001f\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\b \u0010\u0012R\u0013\u0010!\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\"\u0010\u0006R\u0013\u0010#\u001a\u0004\u0018\u00010\u00168F¢\u0006\u0006\u001a\u0004\b$\u0010\u0018R\u0013\u0010%\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\b&\u0010\u0012R\u0013\u0010'\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b(\u0010\u0006R\u0013\u0010)\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\b*\u0010\u0012R\u0013\u0010+\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\b,\u0010\u0012R\u0013\u0010-\u001a\u0004\u0018\u00010.8F¢\u0006\u0006\u001a\u0004\b/\u00100¨\u00061"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/HeatmapLayer$Companion;", "", "()V", "defaultHeatmapColor", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getDefaultHeatmapColor", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "defaultHeatmapColorUseTheme", "", "getDefaultHeatmapColorUseTheme$annotations", "getDefaultHeatmapColorUseTheme", "()Ljava/lang/String;", "defaultHeatmapColorUseThemeAsExpression", "getDefaultHeatmapColorUseThemeAsExpression$annotations", "getDefaultHeatmapColorUseThemeAsExpression", "defaultHeatmapIntensity", "", "getDefaultHeatmapIntensity", "()Ljava/lang/Double;", "defaultHeatmapIntensityAsExpression", "getDefaultHeatmapIntensityAsExpression", "defaultHeatmapIntensityTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getDefaultHeatmapIntensityTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "defaultHeatmapOpacity", "getDefaultHeatmapOpacity", "defaultHeatmapOpacityAsExpression", "getDefaultHeatmapOpacityAsExpression", "defaultHeatmapOpacityTransition", "getDefaultHeatmapOpacityTransition", "defaultHeatmapRadius", "getDefaultHeatmapRadius", "defaultHeatmapRadiusAsExpression", "getDefaultHeatmapRadiusAsExpression", "defaultHeatmapRadiusTransition", "getDefaultHeatmapRadiusTransition", "defaultHeatmapWeight", "getDefaultHeatmapWeight", "defaultHeatmapWeightAsExpression", "getDefaultHeatmapWeightAsExpression", "defaultMaxZoom", "getDefaultMaxZoom", "defaultMinZoom", "getDefaultMinZoom", "defaultVisibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "getDefaultVisibility", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void getDefaultHeatmapColorUseTheme$annotations() {
        }

        public static void getDefaultHeatmapColorUseThemeAsExpression$annotations() {
        }

        private Companion() {
        }

        public final Visibility getDefaultVisibility() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("heatmap", "visibility");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…(\"heatmap\", \"visibility\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            String str = (String) objUnwrap;
            if (str == null) {
                return null;
            }
            Visibility.Companion companion = Visibility.INSTANCE;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String upperCase = str.toUpperCase(US);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
        }

        public final Double getDefaultMinZoom() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("heatmap", "minzoom");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…lue(\"heatmap\", \"minzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Double getDefaultMaxZoom() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("heatmap", "maxzoom");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…lue(\"heatmap\", \"maxzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultHeatmapColor() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("heatmap", "heatmap-color");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…eatmap\", \"heatmap-color\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Expression) objUnwrap;
        }

        public final String getDefaultHeatmapColorUseTheme() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("heatmap", "heatmap-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…heatmap-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultHeatmapColorUseThemeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("heatmap", "heatmap-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…heatmap-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultHeatmapColorUseTheme = getDefaultHeatmapColorUseTheme();
            if (defaultHeatmapColorUseTheme != null) {
                return Expression.INSTANCE.literal(defaultHeatmapColorUseTheme);
            }
            return null;
        }

        public final Double getDefaultHeatmapIntensity() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("heatmap", "heatmap-intensity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ap\", \"heatmap-intensity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultHeatmapIntensityAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("heatmap", "heatmap-intensity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ap\", \"heatmap-intensity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultHeatmapIntensity = getDefaultHeatmapIntensity();
            if (defaultHeatmapIntensity == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultHeatmapIntensity.doubleValue());
        }

        public final StyleTransition getDefaultHeatmapIntensityTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("heatmap", "heatmap-intensity-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ap-intensity-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultHeatmapOpacity() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("heatmap", "heatmap-opacity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…tmap\", \"heatmap-opacity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultHeatmapOpacityAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("heatmap", "heatmap-opacity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…tmap\", \"heatmap-opacity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultHeatmapOpacity = getDefaultHeatmapOpacity();
            if (defaultHeatmapOpacity == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultHeatmapOpacity.doubleValue());
        }

        public final StyleTransition getDefaultHeatmapOpacityTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("heatmap", "heatmap-opacity-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…tmap-opacity-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultHeatmapRadius() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("heatmap", "heatmap-radius");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…atmap\", \"heatmap-radius\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultHeatmapRadiusAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("heatmap", "heatmap-radius");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…atmap\", \"heatmap-radius\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultHeatmapRadius = getDefaultHeatmapRadius();
            if (defaultHeatmapRadius == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultHeatmapRadius.doubleValue());
        }

        public final StyleTransition getDefaultHeatmapRadiusTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("heatmap", "heatmap-radius-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…atmap-radius-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultHeatmapWeight() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("heatmap", "heatmap-weight");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…atmap\", \"heatmap-weight\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultHeatmapWeightAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("heatmap", "heatmap-weight");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…atmap\", \"heatmap-weight\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultHeatmapWeight = getDefaultHeatmapWeight();
            if (defaultHeatmapWeight == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultHeatmapWeight.doubleValue());
        }
    }
}
