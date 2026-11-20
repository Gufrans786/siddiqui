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

@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0015\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 ^2\u00020\u00012\u00020\u0002:\u0001^B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bH\u0016J\r\u0010V\u001a\u00020\u0004H\u0010¢\u0006\u0002\bWJ\u0010\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0010\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\bH\u0017J\u0010\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0004H\u0017J\u0010\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\bH\u0017J\u0010\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\bH\u0017J\u0010\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u0004H\u0017J\u0010\u0010#\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\bH\u0017J\u0010\u0010#\u001a\u00020\u00002\u0006\u0010#\u001a\u00020$H\u0017J\u0010\u0010+\u001a\u00020\u00002\u0006\u0010+\u001a\u00020\bH\u0017J\u0010\u0010+\u001a\u00020\u00002\u0006\u0010+\u001a\u00020\u000eH\u0017J\u0010\u00101\u001a\u00020\u00002\u0006\u0010X\u001a\u000202H\u0017J!\u00101\u001a\u00020\u00002\u0017\u0010Y\u001a\u0013\u0012\u0004\u0012\u00020[\u0012\u0004\u0012\u00020\\0Z¢\u0006\u0002\b]H\u0017J\u0010\u00106\u001a\u00020\u00002\u0006\u00106\u001a\u00020\bH\u0017J\u0010\u00106\u001a\u00020\u00002\u0006\u00106\u001a\u00020\u000eH\u0017J\u0010\u0010<\u001a\u00020\u00002\u0006\u0010<\u001a\u00020\bH\u0017J\u0010\u0010<\u001a\u00020\u00002\u0006\u0010<\u001a\u00020\u000eH\u0017J\u0010\u0010B\u001a\u00020\u00002\u0006\u0010B\u001a\u00020\bH\u0017J\u0010\u0010B\u001a\u00020\u00002\u0006\u0010B\u001a\u00020\u000eH\u0017J\u0010\u0010H\u001a\u00020\u00002\u0006\u0010X\u001a\u000202H\u0017J!\u0010H\u001a\u00020\u00002\u0017\u0010Y\u001a\u0013\u0012\u0004\u0012\u00020[\u0012\u0004\u0012\u00020\\0Z¢\u0006\u0002\b]H\u0017J\u0010\u0010K\u001a\u00020\u00002\u0006\u0010K\u001a\u00020\u0004H\u0016J\u0010\u0010N\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\u0004H\u0016J\u0010\u0010P\u001a\u00020\u00002\u0006\u0010P\u001a\u00020\bH\u0016J\u0010\u0010P\u001a\u00020\u00002\u0006\u0010P\u001a\u00020QH\u0016R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\r\u001a\u0004\u0018\u00010\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0010R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\fR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0018\u0010\u0015\u001a\u0004\b\u0019\u0010\nR\u001c\u0010\u001a\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001b\u0010\u0015\u001a\u0004\b\u001c\u0010\nR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001e\u0010\u0015\u001a\u0004\b\u001f\u0010\fR\u001c\u0010 \u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b!\u0010\u0015\u001a\u0004\b\"\u0010\nR\u001c\u0010#\u001a\u0004\u0018\u00010$8FX\u0087\u0004¢\u0006\f\u0012\u0004\b%\u0010\u0015\u001a\u0004\b&\u0010'R\u001c\u0010(\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b)\u0010\u0015\u001a\u0004\b*\u0010\nR\u001c\u0010+\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b,\u0010\u0015\u001a\u0004\b-\u0010\u0010R\u001c\u0010.\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b/\u0010\u0015\u001a\u0004\b0\u0010\nR\u001c\u00101\u001a\u0004\u0018\u0001028FX\u0087\u0004¢\u0006\f\u0012\u0004\b3\u0010\u0015\u001a\u0004\b4\u00105R\u001c\u00106\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b7\u0010\u0015\u001a\u0004\b8\u0010\u0010R\u001c\u00109\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b:\u0010\u0015\u001a\u0004\b;\u0010\nR\u001c\u0010<\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b=\u0010\u0015\u001a\u0004\b>\u0010\u0010R\u001c\u0010?\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b@\u0010\u0015\u001a\u0004\bA\u0010\nR\u001c\u0010B\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\bC\u0010\u0015\u001a\u0004\bD\u0010\u0010R\u001c\u0010E\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\bF\u0010\u0015\u001a\u0004\bG\u0010\nR\u001c\u0010H\u001a\u0004\u0018\u0001028FX\u0087\u0004¢\u0006\f\u0012\u0004\bI\u0010\u0015\u001a\u0004\bJ\u00105R\u0016\u0010K\u001a\u0004\u0018\u00010\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bL\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\bM\u0010\fR\u0013\u0010N\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bO\u0010\fR\u0016\u0010P\u001a\u0004\u0018\u00010Q8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bR\u0010SR\u0016\u0010T\u001a\u0004\u0018\u00010\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bU\u0010\n¨\u0006_"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/RasterParticleLayer;", "Lcom/mapbox/maps/extension/style/layers/generated/RasterParticleLayerDsl;", "Lcom/mapbox/maps/extension/style/layers/Layer;", "layerId", "", "sourceId", "(Ljava/lang/String;Ljava/lang/String;)V", ViewProps.FILTER, "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getFilter", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getLayerId", "()Ljava/lang/String;", "maxZoom", "", "getMaxZoom", "()Ljava/lang/Double;", "minZoom", "getMinZoom", "rasterParticleArrayBand", "getRasterParticleArrayBand$annotations", "()V", "getRasterParticleArrayBand", "rasterParticleArrayBandAsExpression", "getRasterParticleArrayBandAsExpression$annotations", "getRasterParticleArrayBandAsExpression", "rasterParticleColor", "getRasterParticleColor$annotations", "getRasterParticleColor", "rasterParticleColorUseTheme", "getRasterParticleColorUseTheme$annotations", "getRasterParticleColorUseTheme", "rasterParticleColorUseThemeAsExpression", "getRasterParticleColorUseThemeAsExpression$annotations", "getRasterParticleColorUseThemeAsExpression", "rasterParticleCount", "", "getRasterParticleCount$annotations", "getRasterParticleCount", "()Ljava/lang/Long;", "rasterParticleCountAsExpression", "getRasterParticleCountAsExpression$annotations", "getRasterParticleCountAsExpression", "rasterParticleFadeOpacityFactor", "getRasterParticleFadeOpacityFactor$annotations", "getRasterParticleFadeOpacityFactor", "rasterParticleFadeOpacityFactorAsExpression", "getRasterParticleFadeOpacityFactorAsExpression$annotations", "getRasterParticleFadeOpacityFactorAsExpression", "rasterParticleFadeOpacityFactorTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getRasterParticleFadeOpacityFactorTransition$annotations", "getRasterParticleFadeOpacityFactorTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "rasterParticleMaxSpeed", "getRasterParticleMaxSpeed$annotations", "getRasterParticleMaxSpeed", "rasterParticleMaxSpeedAsExpression", "getRasterParticleMaxSpeedAsExpression$annotations", "getRasterParticleMaxSpeedAsExpression", "rasterParticleResetRateFactor", "getRasterParticleResetRateFactor$annotations", "getRasterParticleResetRateFactor", "rasterParticleResetRateFactorAsExpression", "getRasterParticleResetRateFactorAsExpression$annotations", "getRasterParticleResetRateFactorAsExpression", "rasterParticleSpeedFactor", "getRasterParticleSpeedFactor$annotations", "getRasterParticleSpeedFactor", "rasterParticleSpeedFactorAsExpression", "getRasterParticleSpeedFactorAsExpression$annotations", "getRasterParticleSpeedFactorAsExpression", "rasterParticleSpeedFactorTransition", "getRasterParticleSpeedFactorTransition$annotations", "getRasterParticleSpeedFactorTransition", "slot", "getSlot", "getSourceId", "sourceLayer", "getSourceLayer", "visibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "getVisibility", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "visibilityAsExpression", "getVisibilityAsExpression", "getType", "getType$extension_style_release", "options", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "Companion", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class RasterParticleLayer extends Layer implements RasterParticleLayerDsl {

    public static final Companion INSTANCE = new Companion(null);
    private final String layerId;
    private final String sourceId;

    public static void getRasterParticleArrayBand$annotations() {
    }

    public static void getRasterParticleArrayBandAsExpression$annotations() {
    }

    public static void getRasterParticleColor$annotations() {
    }

    public static void getRasterParticleColorUseTheme$annotations() {
    }

    public static void getRasterParticleColorUseThemeAsExpression$annotations() {
    }

    public static void getRasterParticleCount$annotations() {
    }

    public static void getRasterParticleCountAsExpression$annotations() {
    }

    public static void getRasterParticleFadeOpacityFactor$annotations() {
    }

    public static void getRasterParticleFadeOpacityFactorAsExpression$annotations() {
    }

    public static void getRasterParticleFadeOpacityFactorTransition$annotations() {
    }

    public static void getRasterParticleMaxSpeed$annotations() {
    }

    public static void getRasterParticleMaxSpeedAsExpression$annotations() {
    }

    public static void getRasterParticleResetRateFactor$annotations() {
    }

    public static void getRasterParticleResetRateFactorAsExpression$annotations() {
    }

    public static void getRasterParticleSpeedFactor$annotations() {
    }

    public static void getRasterParticleSpeedFactorAsExpression$annotations() {
    }

    public static void getRasterParticleSpeedFactorTransition$annotations() {
    }

    public RasterParticleLayer(String layerId, String sourceId) {
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
    public RasterParticleLayer sourceLayer(String sourceLayer) {
        Intrinsics.checkNotNullParameter(sourceLayer, "sourceLayer");
        setProperty$extension_style_release(new PropertyValue<>("source-layer", sourceLayer));
        return this;
    }

    public final String getSourceLayer() {
        return (String) getPropertyValueWithType("source-layer", String.class);
    }

    @Override
    public RasterParticleLayer slot(String slot) {
        Intrinsics.checkNotNullParameter(slot, "slot");
        setProperty$extension_style_release(new PropertyValue<>("slot", slot));
        return this;
    }

    @Override
    public String getSlot() {
        return (String) getPropertyValueWithType("slot", String.class);
    }

    @Override
    public RasterParticleLayer filter(Expression filter) {
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
    public RasterParticleLayer visibility(Visibility visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        setProperty$extension_style_release(new PropertyValue<>("visibility", visibility));
        return this;
    }

    @Override
    public RasterParticleLayer visibility(Expression visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        setProperty$extension_style_release(new PropertyValue<>("visibility", visibility));
        return this;
    }

    @Override
    public Double getMinZoom() {
        return (Double) getPropertyValueWithType("minzoom", Double.class);
    }

    @Override
    public RasterParticleLayer minZoom(double minZoom) {
        setProperty$extension_style_release(new PropertyValue<>("minzoom", Double.valueOf(minZoom)));
        return this;
    }

    @Override
    public Double getMaxZoom() {
        return (Double) getPropertyValueWithType("maxzoom", Double.class);
    }

    @Override
    public RasterParticleLayer maxZoom(double maxZoom) {
        setProperty$extension_style_release(new PropertyValue<>("maxzoom", Double.valueOf(maxZoom)));
        return this;
    }

    public final String getRasterParticleArrayBand() {
        return (String) getPropertyValueWithType("raster-particle-array-band", String.class);
    }

    @Override
    public RasterParticleLayer rasterParticleArrayBand(String rasterParticleArrayBand) {
        Intrinsics.checkNotNullParameter(rasterParticleArrayBand, "rasterParticleArrayBand");
        setProperty$extension_style_release(new PropertyValue<>("raster-particle-array-band", rasterParticleArrayBand));
        return this;
    }

    public final Expression getRasterParticleArrayBandAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("raster-particle-array-band");
    }

    @Override
    public RasterParticleLayer rasterParticleArrayBand(Expression rasterParticleArrayBand) {
        Intrinsics.checkNotNullParameter(rasterParticleArrayBand, "rasterParticleArrayBand");
        setProperty$extension_style_release(new PropertyValue<>("raster-particle-array-band", rasterParticleArrayBand));
        return this;
    }

    public final Expression getRasterParticleColor() {
        return (Expression) getPropertyValueWithType("raster-particle-color", Expression.class);
    }

    @Override
    public RasterParticleLayer rasterParticleColor(Expression rasterParticleColor) {
        Intrinsics.checkNotNullParameter(rasterParticleColor, "rasterParticleColor");
        setProperty$extension_style_release(new PropertyValue<>("raster-particle-color", rasterParticleColor));
        return this;
    }

    public final String getRasterParticleColorUseTheme() {
        return (String) getPropertyValueWithType("raster-particle-color-use-theme", String.class);
    }

    @Override
    public RasterParticleLayer rasterParticleColorUseTheme(String rasterParticleColorUseTheme) {
        Intrinsics.checkNotNullParameter(rasterParticleColorUseTheme, "rasterParticleColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("raster-particle-color-use-theme", rasterParticleColorUseTheme));
        return this;
    }

    public final Expression getRasterParticleColorUseThemeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("raster-particle-color-use-theme");
    }

    @Override
    public RasterParticleLayer rasterParticleColorUseTheme(Expression rasterParticleColorUseTheme) {
        Intrinsics.checkNotNullParameter(rasterParticleColorUseTheme, "rasterParticleColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("raster-particle-color-use-theme", rasterParticleColorUseTheme));
        return this;
    }

    public final Long getRasterParticleCount() {
        Number number = (Number) getPropertyValueWithType("raster-particle-count", Number.class);
        if (number != null) {
            return Long.valueOf(number.longValue());
        }
        return null;
    }

    @Override
    public RasterParticleLayer rasterParticleCount(long rasterParticleCount) {
        setProperty$extension_style_release(new PropertyValue<>("raster-particle-count", Long.valueOf(rasterParticleCount)));
        return this;
    }

    public final Expression getRasterParticleCountAsExpression() {
        Expression propertyValueAsExpressionOrLiteralExpression$extension_style_release = getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("raster-particle-count");
        if (propertyValueAsExpressionOrLiteralExpression$extension_style_release == null) {
            return null;
        }
        Object literalValue = propertyValueAsExpressionOrLiteralExpression$extension_style_release.getLiteralValue();
        Number number = literalValue instanceof Number ? (Number) literalValue : null;
        if (number != null) {
            Expression expressionLiteral = Expression.INSTANCE.literal(number.longValue());
            if (expressionLiteral != null) {
                return expressionLiteral;
            }
        }
        return propertyValueAsExpressionOrLiteralExpression$extension_style_release;
    }

    @Override
    public RasterParticleLayer rasterParticleCount(Expression rasterParticleCount) {
        Intrinsics.checkNotNullParameter(rasterParticleCount, "rasterParticleCount");
        setProperty$extension_style_release(new PropertyValue<>("raster-particle-count", rasterParticleCount));
        return this;
    }

    public final Double getRasterParticleFadeOpacityFactor() {
        return (Double) getPropertyValueWithType("raster-particle-fade-opacity-factor", Double.class);
    }

    @Override
    public RasterParticleLayer rasterParticleFadeOpacityFactor(double rasterParticleFadeOpacityFactor) {
        setProperty$extension_style_release(new PropertyValue<>("raster-particle-fade-opacity-factor", Double.valueOf(rasterParticleFadeOpacityFactor)));
        return this;
    }

    public final Expression getRasterParticleFadeOpacityFactorAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("raster-particle-fade-opacity-factor");
    }

    @Override
    public RasterParticleLayer rasterParticleFadeOpacityFactor(Expression rasterParticleFadeOpacityFactor) {
        Intrinsics.checkNotNullParameter(rasterParticleFadeOpacityFactor, "rasterParticleFadeOpacityFactor");
        setProperty$extension_style_release(new PropertyValue<>("raster-particle-fade-opacity-factor", rasterParticleFadeOpacityFactor));
        return this;
    }

    public final StyleTransition getRasterParticleFadeOpacityFactorTransition() {
        return (StyleTransition) getPropertyValueWithType("raster-particle-fade-opacity-factor-transition", StyleTransition.class);
    }

    @Override
    public RasterParticleLayer rasterParticleFadeOpacityFactorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("raster-particle-fade-opacity-factor-transition", options));
        return this;
    }

    @Override
    public RasterParticleLayer rasterParticleFadeOpacityFactorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        rasterParticleFadeOpacityFactorTransition(builder.build());
        return this;
    }

    public final Double getRasterParticleMaxSpeed() {
        return (Double) getPropertyValueWithType("raster-particle-max-speed", Double.class);
    }

    @Override
    public RasterParticleLayer rasterParticleMaxSpeed(double rasterParticleMaxSpeed) {
        setProperty$extension_style_release(new PropertyValue<>("raster-particle-max-speed", Double.valueOf(rasterParticleMaxSpeed)));
        return this;
    }

    public final Expression getRasterParticleMaxSpeedAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("raster-particle-max-speed");
    }

    @Override
    public RasterParticleLayer rasterParticleMaxSpeed(Expression rasterParticleMaxSpeed) {
        Intrinsics.checkNotNullParameter(rasterParticleMaxSpeed, "rasterParticleMaxSpeed");
        setProperty$extension_style_release(new PropertyValue<>("raster-particle-max-speed", rasterParticleMaxSpeed));
        return this;
    }

    public final Double getRasterParticleResetRateFactor() {
        return (Double) getPropertyValueWithType("raster-particle-reset-rate-factor", Double.class);
    }

    @Override
    public RasterParticleLayer rasterParticleResetRateFactor(double rasterParticleResetRateFactor) {
        setProperty$extension_style_release(new PropertyValue<>("raster-particle-reset-rate-factor", Double.valueOf(rasterParticleResetRateFactor)));
        return this;
    }

    public final Expression getRasterParticleResetRateFactorAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("raster-particle-reset-rate-factor");
    }

    @Override
    public RasterParticleLayer rasterParticleResetRateFactor(Expression rasterParticleResetRateFactor) {
        Intrinsics.checkNotNullParameter(rasterParticleResetRateFactor, "rasterParticleResetRateFactor");
        setProperty$extension_style_release(new PropertyValue<>("raster-particle-reset-rate-factor", rasterParticleResetRateFactor));
        return this;
    }

    public final Double getRasterParticleSpeedFactor() {
        return (Double) getPropertyValueWithType("raster-particle-speed-factor", Double.class);
    }

    @Override
    public RasterParticleLayer rasterParticleSpeedFactor(double rasterParticleSpeedFactor) {
        setProperty$extension_style_release(new PropertyValue<>("raster-particle-speed-factor", Double.valueOf(rasterParticleSpeedFactor)));
        return this;
    }

    public final Expression getRasterParticleSpeedFactorAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("raster-particle-speed-factor");
    }

    @Override
    public RasterParticleLayer rasterParticleSpeedFactor(Expression rasterParticleSpeedFactor) {
        Intrinsics.checkNotNullParameter(rasterParticleSpeedFactor, "rasterParticleSpeedFactor");
        setProperty$extension_style_release(new PropertyValue<>("raster-particle-speed-factor", rasterParticleSpeedFactor));
        return this;
    }

    public final StyleTransition getRasterParticleSpeedFactorTransition() {
        return (StyleTransition) getPropertyValueWithType("raster-particle-speed-factor-transition", StyleTransition.class);
    }

    @Override
    public RasterParticleLayer rasterParticleSpeedFactorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("raster-particle-speed-factor-transition", options));
        return this;
    }

    @Override
    public RasterParticleLayer rasterParticleSpeedFactorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        rasterParticleSpeedFactorTransition(builder.build());
        return this;
    }

    @Override
    public String getType$extension_style_release() {
        return "raster-particle";
    }

    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\b\u0010\u0006R\u001c\u0010\t\u001a\u0004\u0018\u00010\n8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u000b\u0010\u0002\u001a\u0004\b\f\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0010\u0010\u0002\u001a\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0014\u0010\u0002\u001a\u0004\b\u0015\u0010\u0012R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\n8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0017\u0010\u0002\u001a\u0004\b\u0018\u0010\rR\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001a\u0010\u0002\u001a\u0004\b\u001b\u0010\u0012R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001d8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001e\u0010\u0002\u001a\u0004\b\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\"\u0010\u0002\u001a\u0004\b#\u0010\u0012R\u001c\u0010$\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b%\u0010\u0002\u001a\u0004\b&\u0010\u0006R\u001c\u0010'\u001a\u0004\u0018\u00010\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b(\u0010\u0002\u001a\u0004\b)\u0010\u0012R\u001c\u0010*\u001a\u0004\u0018\u00010+8FX\u0087\u0004¢\u0006\f\u0012\u0004\b,\u0010\u0002\u001a\u0004\b-\u0010.R\u001c\u0010/\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b0\u0010\u0002\u001a\u0004\b1\u0010\u0006R\u001c\u00102\u001a\u0004\u0018\u00010\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b3\u0010\u0002\u001a\u0004\b4\u0010\u0012R\u001c\u00105\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b6\u0010\u0002\u001a\u0004\b7\u0010\u0006R\u001c\u00108\u001a\u0004\u0018\u00010\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b9\u0010\u0002\u001a\u0004\b:\u0010\u0012R\u001c\u0010;\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b<\u0010\u0002\u001a\u0004\b=\u0010\u0006R\u001c\u0010>\u001a\u0004\u0018\u00010\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b?\u0010\u0002\u001a\u0004\b@\u0010\u0012R\u001c\u0010A\u001a\u0004\u0018\u00010+8FX\u0087\u0004¢\u0006\f\u0012\u0004\bB\u0010\u0002\u001a\u0004\bC\u0010.R\u0013\u0010D\u001a\u0004\u0018\u00010E8F¢\u0006\u0006\u001a\u0004\bF\u0010G¨\u0006H"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/RasterParticleLayer$Companion;", "", "()V", "defaultMaxZoom", "", "getDefaultMaxZoom", "()Ljava/lang/Double;", "defaultMinZoom", "getDefaultMinZoom", "defaultRasterParticleArrayBand", "", "getDefaultRasterParticleArrayBand$annotations", "getDefaultRasterParticleArrayBand", "()Ljava/lang/String;", "defaultRasterParticleArrayBandAsExpression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getDefaultRasterParticleArrayBandAsExpression$annotations", "getDefaultRasterParticleArrayBandAsExpression", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "defaultRasterParticleColor", "getDefaultRasterParticleColor$annotations", "getDefaultRasterParticleColor", "defaultRasterParticleColorUseTheme", "getDefaultRasterParticleColorUseTheme$annotations", "getDefaultRasterParticleColorUseTheme", "defaultRasterParticleColorUseThemeAsExpression", "getDefaultRasterParticleColorUseThemeAsExpression$annotations", "getDefaultRasterParticleColorUseThemeAsExpression", "defaultRasterParticleCount", "", "getDefaultRasterParticleCount$annotations", "getDefaultRasterParticleCount", "()Ljava/lang/Long;", "defaultRasterParticleCountAsExpression", "getDefaultRasterParticleCountAsExpression$annotations", "getDefaultRasterParticleCountAsExpression", "defaultRasterParticleFadeOpacityFactor", "getDefaultRasterParticleFadeOpacityFactor$annotations", "getDefaultRasterParticleFadeOpacityFactor", "defaultRasterParticleFadeOpacityFactorAsExpression", "getDefaultRasterParticleFadeOpacityFactorAsExpression$annotations", "getDefaultRasterParticleFadeOpacityFactorAsExpression", "defaultRasterParticleFadeOpacityFactorTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getDefaultRasterParticleFadeOpacityFactorTransition$annotations", "getDefaultRasterParticleFadeOpacityFactorTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "defaultRasterParticleMaxSpeed", "getDefaultRasterParticleMaxSpeed$annotations", "getDefaultRasterParticleMaxSpeed", "defaultRasterParticleMaxSpeedAsExpression", "getDefaultRasterParticleMaxSpeedAsExpression$annotations", "getDefaultRasterParticleMaxSpeedAsExpression", "defaultRasterParticleResetRateFactor", "getDefaultRasterParticleResetRateFactor$annotations", "getDefaultRasterParticleResetRateFactor", "defaultRasterParticleResetRateFactorAsExpression", "getDefaultRasterParticleResetRateFactorAsExpression$annotations", "getDefaultRasterParticleResetRateFactorAsExpression", "defaultRasterParticleSpeedFactor", "getDefaultRasterParticleSpeedFactor$annotations", "getDefaultRasterParticleSpeedFactor", "defaultRasterParticleSpeedFactorAsExpression", "getDefaultRasterParticleSpeedFactorAsExpression$annotations", "getDefaultRasterParticleSpeedFactorAsExpression", "defaultRasterParticleSpeedFactorTransition", "getDefaultRasterParticleSpeedFactorTransition$annotations", "getDefaultRasterParticleSpeedFactorTransition", "defaultVisibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "getDefaultVisibility", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void getDefaultRasterParticleArrayBand$annotations() {
        }

        public static void getDefaultRasterParticleArrayBandAsExpression$annotations() {
        }

        public static void getDefaultRasterParticleColor$annotations() {
        }

        public static void getDefaultRasterParticleColorUseTheme$annotations() {
        }

        public static void getDefaultRasterParticleColorUseThemeAsExpression$annotations() {
        }

        public static void getDefaultRasterParticleCount$annotations() {
        }

        public static void getDefaultRasterParticleCountAsExpression$annotations() {
        }

        public static void getDefaultRasterParticleFadeOpacityFactor$annotations() {
        }

        public static void getDefaultRasterParticleFadeOpacityFactorAsExpression$annotations() {
        }

        public static void getDefaultRasterParticleFadeOpacityFactorTransition$annotations() {
        }

        public static void getDefaultRasterParticleMaxSpeed$annotations() {
        }

        public static void getDefaultRasterParticleMaxSpeedAsExpression$annotations() {
        }

        public static void getDefaultRasterParticleResetRateFactor$annotations() {
        }

        public static void getDefaultRasterParticleResetRateFactorAsExpression$annotations() {
        }

        public static void getDefaultRasterParticleSpeedFactor$annotations() {
        }

        public static void getDefaultRasterParticleSpeedFactorAsExpression$annotations() {
        }

        public static void getDefaultRasterParticleSpeedFactorTransition$annotations() {
        }

        private Companion() {
        }

        public final Visibility getDefaultVisibility() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster-particle", "visibility");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-particle\", \"visibility\")");
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
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster-particle", "minzoom");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ter-particle\", \"minzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Double getDefaultMaxZoom() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster-particle", "maxzoom");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ter-particle\", \"maxzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final String getDefaultRasterParticleArrayBand() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster-particle", "raster-particle-array-band");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ter-particle-array-band\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultRasterParticleArrayBandAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster-particle", "raster-particle-array-band");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ter-particle-array-band\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultRasterParticleArrayBand = getDefaultRasterParticleArrayBand();
            if (defaultRasterParticleArrayBand != null) {
                return Expression.INSTANCE.literal(defaultRasterParticleArrayBand);
            }
            return null;
        }

        public final Expression getDefaultRasterParticleColor() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster-particle", "raster-particle-color");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef… \"raster-particle-color\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Expression) objUnwrap;
        }

        public final String getDefaultRasterParticleColorUseTheme() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster-particle", "raster-particle-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…article-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultRasterParticleColorUseThemeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster-particle", "raster-particle-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…article-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultRasterParticleColorUseTheme = getDefaultRasterParticleColorUseTheme();
            if (defaultRasterParticleColorUseTheme != null) {
                return Expression.INSTANCE.literal(defaultRasterParticleColorUseTheme);
            }
            return null;
        }

        public final Long getDefaultRasterParticleCount() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster-particle", "raster-particle-count");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef… \"raster-particle-count\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Number.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Number number = (Number) objUnwrap;
            if (number != null) {
                return Long.valueOf(number.longValue());
            }
            return null;
        }

        public final Expression getDefaultRasterParticleCountAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster-particle", "raster-particle-count");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef… \"raster-particle-count\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Long defaultRasterParticleCount = getDefaultRasterParticleCount();
            if (defaultRasterParticleCount == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultRasterParticleCount.longValue());
        }

        public final Double getDefaultRasterParticleFadeOpacityFactor() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster-particle", "raster-particle-fade-opacity-factor");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…cle-fade-opacity-factor\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultRasterParticleFadeOpacityFactorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster-particle", "raster-particle-fade-opacity-factor");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…cle-fade-opacity-factor\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultRasterParticleFadeOpacityFactor = getDefaultRasterParticleFadeOpacityFactor();
            if (defaultRasterParticleFadeOpacityFactor == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultRasterParticleFadeOpacityFactor.doubleValue());
        }

        public final StyleTransition getDefaultRasterParticleFadeOpacityFactorTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster-particle", "raster-particle-fade-opacity-factor-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…acity-factor-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultRasterParticleMaxSpeed() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster-particle", "raster-particle-max-speed");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ster-particle-max-speed\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultRasterParticleMaxSpeedAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster-particle", "raster-particle-max-speed");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ster-particle-max-speed\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultRasterParticleMaxSpeed = getDefaultRasterParticleMaxSpeed();
            if (defaultRasterParticleMaxSpeed == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultRasterParticleMaxSpeed.doubleValue());
        }

        public final Double getDefaultRasterParticleResetRateFactor() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster-particle", "raster-particle-reset-rate-factor");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ticle-reset-rate-factor\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultRasterParticleResetRateFactorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster-particle", "raster-particle-reset-rate-factor");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ticle-reset-rate-factor\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultRasterParticleResetRateFactor = getDefaultRasterParticleResetRateFactor();
            if (defaultRasterParticleResetRateFactor == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultRasterParticleResetRateFactor.doubleValue());
        }

        public final Double getDefaultRasterParticleSpeedFactor() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster-particle", "raster-particle-speed-factor");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…r-particle-speed-factor\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultRasterParticleSpeedFactorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster-particle", "raster-particle-speed-factor");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…r-particle-speed-factor\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultRasterParticleSpeedFactor = getDefaultRasterParticleSpeedFactor();
            if (defaultRasterParticleSpeedFactor == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultRasterParticleSpeedFactor.doubleValue());
        }

        public final StyleTransition getDefaultRasterParticleSpeedFactorTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster-particle", "raster-particle-speed-factor-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…speed-factor-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }
    }
}
