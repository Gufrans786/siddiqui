package com.mapbox.maps.extension.style.layers.generated;

import ch.qos.logback.core.CoreConstants;
import com.mapbox.maps.StyleManager;
import com.mapbox.maps.StylePropertyValue;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.Layer;
import com.mapbox.maps.extension.style.layers.properties.PropertyValue;
import com.mapbox.maps.extension.style.layers.properties.generated.HillshadeIlluminationAnchor;
import com.mapbox.maps.extension.style.layers.properties.generated.Visibility;
import com.mapbox.maps.extension.style.types.StyleTransition;
import com.mapbox.maps.extension.style.utils.ColorUtils;
import com.mapbox.maps.extension.style.utils.TypeUtilsKt;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0006\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b!\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 i2\u00020\u00012\u00020\u0002:\u0001iB\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0002\u0010\u0006J\r\u0010a\u001a\u00020\u0004H\u0010¢\u0006\u0002\bbJ\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u000fH\u0016J\u0012\u0010\u0007\u001a\u00020\u00002\b\b\u0001\u0010\u0007\u001a\u00020\u000bH\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0004H\u0016J\u0010\u0010\u0012\u001a\u00020\u00002\u0006\u0010c\u001a\u00020\u0013H\u0016J!\u0010\u0012\u001a\u00020\u00002\u0017\u0010d\u001a\u0013\u0012\u0004\u0012\u00020f\u0012\u0004\u0012\u00020g0e¢\u0006\u0002\bhH\u0016J\u0010\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u000fH\u0017J\u0010\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0004H\u0017J\u0010\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u000fH\u0016J\u0010\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0010\u0010#\u001a\u00020\u00002\u0006\u0010c\u001a\u00020\u0013H\u0016J!\u0010#\u001a\u00020\u00002\u0017\u0010d\u001a\u0013\u0012\u0004\u0012\u00020f\u0012\u0004\u0012\u00020g0e¢\u0006\u0002\bhH\u0016J\u0010\u0010%\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u000fH\u0016J\u0010\u0010%\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u001eH\u0016J\u0010\u0010)\u001a\u00020\u00002\u0006\u0010c\u001a\u00020\u0013H\u0016J!\u0010)\u001a\u00020\u00002\u0017\u0010d\u001a\u0013\u0012\u0004\u0012\u00020f\u0012\u0004\u0012\u00020g0e¢\u0006\u0002\bhH\u0016J\u0010\u0010+\u001a\u00020\u00002\u0006\u0010+\u001a\u00020\u000fH\u0016J\u0012\u0010+\u001a\u00020\u00002\b\b\u0001\u0010+\u001a\u00020\u000bH\u0016J\u0010\u0010+\u001a\u00020\u00002\u0006\u0010+\u001a\u00020\u0004H\u0016J\u0010\u00101\u001a\u00020\u00002\u0006\u0010c\u001a\u00020\u0013H\u0016J!\u00101\u001a\u00020\u00002\u0017\u0010d\u001a\u0013\u0012\u0004\u0012\u00020f\u0012\u0004\u0012\u00020g0e¢\u0006\u0002\bhH\u0016J\u0010\u00103\u001a\u00020\u00002\u0006\u00103\u001a\u00020\u000fH\u0017J\u0010\u00103\u001a\u00020\u00002\u0006\u00103\u001a\u00020\u0004H\u0017J\u0010\u00109\u001a\u00020\u00002\u0006\u00109\u001a\u00020\u000fH\u0016J\u0010\u00109\u001a\u00020\u00002\u0006\u00109\u001a\u00020:H\u0016J\u0010\u0010?\u001a\u00020\u00002\u0006\u0010?\u001a\u00020\u000fH\u0016J\u0010\u0010?\u001a\u00020\u00002\u0006\u0010?\u001a\u00020\u001eH\u0016J\u0010\u0010C\u001a\u00020\u00002\u0006\u0010C\u001a\u00020\u000fH\u0016J\u0012\u0010C\u001a\u00020\u00002\b\b\u0001\u0010C\u001a\u00020\u000bH\u0016J\u0010\u0010C\u001a\u00020\u00002\u0006\u0010C\u001a\u00020\u0004H\u0016J\u0010\u0010I\u001a\u00020\u00002\u0006\u0010c\u001a\u00020\u0013H\u0016J!\u0010I\u001a\u00020\u00002\u0017\u0010d\u001a\u0013\u0012\u0004\u0012\u00020f\u0012\u0004\u0012\u00020g0e¢\u0006\u0002\bhH\u0016J\u0010\u0010K\u001a\u00020\u00002\u0006\u0010K\u001a\u00020\u000fH\u0017J\u0010\u0010K\u001a\u00020\u00002\u0006\u0010K\u001a\u00020\u0004H\u0017J\u0010\u0010R\u001a\u00020\u00002\u0006\u0010R\u001a\u00020\u001eH\u0016J\u0010\u0010T\u001a\u00020\u00002\u0006\u0010T\u001a\u00020\u001eH\u0016J\u0010\u0010V\u001a\u00020\u00002\u0006\u0010V\u001a\u00020\u0004H\u0016J\u0010\u0010Y\u001a\u00020\u00002\u0006\u0010Y\u001a\u00020\u0004H\u0016J\u0010\u0010[\u001a\u00020\u00002\u0006\u0010[\u001a\u00020\u000fH\u0016J\u0010\u0010[\u001a\u00020\u00002\u0006\u0010[\u001a\u00020\\H\u0016R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b8G¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u00138F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\tR\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001b\u0010\u0018\u001a\u0004\b\u001c\u0010\u0011R\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u001e8F¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u0013\u0010!\u001a\u0004\u0018\u00010\u000f8F¢\u0006\u0006\u001a\u0004\b\"\u0010\u0011R\u0013\u0010#\u001a\u0004\u0018\u00010\u00138F¢\u0006\u0006\u001a\u0004\b$\u0010\u0015R\u0013\u0010%\u001a\u0004\u0018\u00010\u001e8F¢\u0006\u0006\u001a\u0004\b&\u0010 R\u0013\u0010'\u001a\u0004\u0018\u00010\u000f8F¢\u0006\u0006\u001a\u0004\b(\u0010\u0011R\u0013\u0010)\u001a\u0004\u0018\u00010\u00138F¢\u0006\u0006\u001a\u0004\b*\u0010\u0015R\u0013\u0010+\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b,\u0010\tR\u0013\u0010-\u001a\u0004\u0018\u00010\u000b8G¢\u0006\u0006\u001a\u0004\b.\u0010\rR\u0013\u0010/\u001a\u0004\u0018\u00010\u000f8F¢\u0006\u0006\u001a\u0004\b0\u0010\u0011R\u0013\u00101\u001a\u0004\u0018\u00010\u00138F¢\u0006\u0006\u001a\u0004\b2\u0010\u0015R\u001c\u00103\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b4\u0010\u0018\u001a\u0004\b5\u0010\tR\u001c\u00106\u001a\u0004\u0018\u00010\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b7\u0010\u0018\u001a\u0004\b8\u0010\u0011R\u0013\u00109\u001a\u0004\u0018\u00010:8F¢\u0006\u0006\u001a\u0004\b;\u0010<R\u0013\u0010=\u001a\u0004\u0018\u00010\u000f8F¢\u0006\u0006\u001a\u0004\b>\u0010\u0011R\u0013\u0010?\u001a\u0004\u0018\u00010\u001e8F¢\u0006\u0006\u001a\u0004\b@\u0010 R\u0013\u0010A\u001a\u0004\u0018\u00010\u000f8F¢\u0006\u0006\u001a\u0004\bB\u0010\u0011R\u0013\u0010C\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bD\u0010\tR\u0013\u0010E\u001a\u0004\u0018\u00010\u000b8G¢\u0006\u0006\u001a\u0004\bF\u0010\rR\u0013\u0010G\u001a\u0004\u0018\u00010\u000f8F¢\u0006\u0006\u001a\u0004\bH\u0010\u0011R\u0013\u0010I\u001a\u0004\u0018\u00010\u00138F¢\u0006\u0006\u001a\u0004\bJ\u0010\u0015R\u001c\u0010K\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\bL\u0010\u0018\u001a\u0004\bM\u0010\tR\u001c\u0010N\u001a\u0004\u0018\u00010\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\bO\u0010\u0018\u001a\u0004\bP\u0010\u0011R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\bQ\u0010\tR\u0016\u0010R\u001a\u0004\u0018\u00010\u001e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bS\u0010 R\u0016\u0010T\u001a\u0004\u0018\u00010\u001e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bU\u0010 R\u0016\u0010V\u001a\u0004\u0018\u00010\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bW\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\bX\u0010\tR\u0013\u0010Y\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bZ\u0010\tR\u0016\u0010[\u001a\u0004\u0018\u00010\\8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b]\u0010^R\u0016\u0010_\u001a\u0004\u0018\u00010\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b`\u0010\u0011¨\u0006j"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/HillshadeLayer;", "Lcom/mapbox/maps/extension/style/layers/generated/HillshadeLayerDsl;", "Lcom/mapbox/maps/extension/style/layers/Layer;", "layerId", "", "sourceId", "(Ljava/lang/String;Ljava/lang/String;)V", "hillshadeAccentColor", "getHillshadeAccentColor", "()Ljava/lang/String;", "hillshadeAccentColorAsColorInt", "", "getHillshadeAccentColorAsColorInt", "()Ljava/lang/Integer;", "hillshadeAccentColorAsExpression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getHillshadeAccentColorAsExpression", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "hillshadeAccentColorTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getHillshadeAccentColorTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "hillshadeAccentColorUseTheme", "getHillshadeAccentColorUseTheme$annotations", "()V", "getHillshadeAccentColorUseTheme", "hillshadeAccentColorUseThemeAsExpression", "getHillshadeAccentColorUseThemeAsExpression$annotations", "getHillshadeAccentColorUseThemeAsExpression", "hillshadeEmissiveStrength", "", "getHillshadeEmissiveStrength", "()Ljava/lang/Double;", "hillshadeEmissiveStrengthAsExpression", "getHillshadeEmissiveStrengthAsExpression", "hillshadeEmissiveStrengthTransition", "getHillshadeEmissiveStrengthTransition", "hillshadeExaggeration", "getHillshadeExaggeration", "hillshadeExaggerationAsExpression", "getHillshadeExaggerationAsExpression", "hillshadeExaggerationTransition", "getHillshadeExaggerationTransition", "hillshadeHighlightColor", "getHillshadeHighlightColor", "hillshadeHighlightColorAsColorInt", "getHillshadeHighlightColorAsColorInt", "hillshadeHighlightColorAsExpression", "getHillshadeHighlightColorAsExpression", "hillshadeHighlightColorTransition", "getHillshadeHighlightColorTransition", "hillshadeHighlightColorUseTheme", "getHillshadeHighlightColorUseTheme$annotations", "getHillshadeHighlightColorUseTheme", "hillshadeHighlightColorUseThemeAsExpression", "getHillshadeHighlightColorUseThemeAsExpression$annotations", "getHillshadeHighlightColorUseThemeAsExpression", "hillshadeIlluminationAnchor", "Lcom/mapbox/maps/extension/style/layers/properties/generated/HillshadeIlluminationAnchor;", "getHillshadeIlluminationAnchor", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/HillshadeIlluminationAnchor;", "hillshadeIlluminationAnchorAsExpression", "getHillshadeIlluminationAnchorAsExpression", "hillshadeIlluminationDirection", "getHillshadeIlluminationDirection", "hillshadeIlluminationDirectionAsExpression", "getHillshadeIlluminationDirectionAsExpression", "hillshadeShadowColor", "getHillshadeShadowColor", "hillshadeShadowColorAsColorInt", "getHillshadeShadowColorAsColorInt", "hillshadeShadowColorAsExpression", "getHillshadeShadowColorAsExpression", "hillshadeShadowColorTransition", "getHillshadeShadowColorTransition", "hillshadeShadowColorUseTheme", "getHillshadeShadowColorUseTheme$annotations", "getHillshadeShadowColorUseTheme", "hillshadeShadowColorUseThemeAsExpression", "getHillshadeShadowColorUseThemeAsExpression$annotations", "getHillshadeShadowColorUseThemeAsExpression", "getLayerId", "maxZoom", "getMaxZoom", "minZoom", "getMinZoom", "slot", "getSlot", "getSourceId", "sourceLayer", "getSourceLayer", "visibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "getVisibility", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "visibilityAsExpression", "getVisibilityAsExpression", "getType", "getType$extension_style_release", "options", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "Companion", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class HillshadeLayer extends Layer implements HillshadeLayerDsl {

    public static final Companion INSTANCE = new Companion(null);
    private final String layerId;
    private final String sourceId;

    public static void getHillshadeAccentColorUseTheme$annotations() {
    }

    public static void getHillshadeAccentColorUseThemeAsExpression$annotations() {
    }

    public static void getHillshadeHighlightColorUseTheme$annotations() {
    }

    public static void getHillshadeHighlightColorUseThemeAsExpression$annotations() {
    }

    public static void getHillshadeShadowColorUseTheme$annotations() {
    }

    public static void getHillshadeShadowColorUseThemeAsExpression$annotations() {
    }

    public HillshadeLayer(String layerId, String sourceId) {
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
    public HillshadeLayer sourceLayer(String sourceLayer) {
        Intrinsics.checkNotNullParameter(sourceLayer, "sourceLayer");
        setProperty$extension_style_release(new PropertyValue<>("source-layer", sourceLayer));
        return this;
    }

    public final String getSourceLayer() {
        return (String) getPropertyValueWithType("source-layer", String.class);
    }

    @Override
    public HillshadeLayer slot(String slot) {
        Intrinsics.checkNotNullParameter(slot, "slot");
        setProperty$extension_style_release(new PropertyValue<>("slot", slot));
        return this;
    }

    @Override
    public String getSlot() {
        return (String) getPropertyValueWithType("slot", String.class);
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
    public HillshadeLayer visibility(Visibility visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        setProperty$extension_style_release(new PropertyValue<>("visibility", visibility));
        return this;
    }

    @Override
    public HillshadeLayer visibility(Expression visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        setProperty$extension_style_release(new PropertyValue<>("visibility", visibility));
        return this;
    }

    @Override
    public Double getMinZoom() {
        return (Double) getPropertyValueWithType("minzoom", Double.class);
    }

    @Override
    public HillshadeLayer minZoom(double minZoom) {
        setProperty$extension_style_release(new PropertyValue<>("minzoom", Double.valueOf(minZoom)));
        return this;
    }

    @Override
    public Double getMaxZoom() {
        return (Double) getPropertyValueWithType("maxzoom", Double.class);
    }

    @Override
    public HillshadeLayer maxZoom(double maxZoom) {
        setProperty$extension_style_release(new PropertyValue<>("maxzoom", Double.valueOf(maxZoom)));
        return this;
    }

    public final String getHillshadeAccentColor() {
        Expression hillshadeAccentColorAsExpression = getHillshadeAccentColorAsExpression();
        if (hillshadeAccentColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorString(hillshadeAccentColorAsExpression);
        }
        return null;
    }

    @Override
    public HillshadeLayer hillshadeAccentColor(String hillshadeAccentColor) {
        Intrinsics.checkNotNullParameter(hillshadeAccentColor, "hillshadeAccentColor");
        setProperty$extension_style_release(new PropertyValue<>("hillshade-accent-color", hillshadeAccentColor));
        return this;
    }

    public final Expression getHillshadeAccentColorAsExpression() {
        return (Expression) getPropertyValueWithType("hillshade-accent-color", Expression.class);
    }

    @Override
    public HillshadeLayer hillshadeAccentColor(Expression hillshadeAccentColor) {
        Intrinsics.checkNotNullParameter(hillshadeAccentColor, "hillshadeAccentColor");
        setProperty$extension_style_release(new PropertyValue<>("hillshade-accent-color", hillshadeAccentColor));
        return this;
    }

    public final Integer getHillshadeAccentColorAsColorInt() {
        Expression hillshadeAccentColorAsExpression = getHillshadeAccentColorAsExpression();
        if (hillshadeAccentColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorInt(hillshadeAccentColorAsExpression);
        }
        return null;
    }

    @Override
    public HillshadeLayer hillshadeAccentColor(int hillshadeAccentColor) {
        setProperty$extension_style_release(new PropertyValue<>("hillshade-accent-color", ColorUtils.INSTANCE.colorIntToRgbaExpression(hillshadeAccentColor)));
        return this;
    }

    public final StyleTransition getHillshadeAccentColorTransition() {
        return (StyleTransition) getPropertyValueWithType("hillshade-accent-color-transition", StyleTransition.class);
    }

    @Override
    public HillshadeLayer hillshadeAccentColorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("hillshade-accent-color-transition", options));
        return this;
    }

    @Override
    public HillshadeLayer hillshadeAccentColorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        hillshadeAccentColorTransition(builder.build());
        return this;
    }

    public final String getHillshadeAccentColorUseTheme() {
        return (String) getPropertyValueWithType("hillshade-accent-color-use-theme", String.class);
    }

    @Override
    public HillshadeLayer hillshadeAccentColorUseTheme(String hillshadeAccentColorUseTheme) {
        Intrinsics.checkNotNullParameter(hillshadeAccentColorUseTheme, "hillshadeAccentColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("hillshade-accent-color-use-theme", hillshadeAccentColorUseTheme));
        return this;
    }

    public final Expression getHillshadeAccentColorUseThemeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("hillshade-accent-color-use-theme");
    }

    @Override
    public HillshadeLayer hillshadeAccentColorUseTheme(Expression hillshadeAccentColorUseTheme) {
        Intrinsics.checkNotNullParameter(hillshadeAccentColorUseTheme, "hillshadeAccentColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("hillshade-accent-color-use-theme", hillshadeAccentColorUseTheme));
        return this;
    }

    public final Double getHillshadeEmissiveStrength() {
        return (Double) getPropertyValueWithType("hillshade-emissive-strength", Double.class);
    }

    @Override
    public HillshadeLayer hillshadeEmissiveStrength(double hillshadeEmissiveStrength) {
        setProperty$extension_style_release(new PropertyValue<>("hillshade-emissive-strength", Double.valueOf(hillshadeEmissiveStrength)));
        return this;
    }

    public final Expression getHillshadeEmissiveStrengthAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("hillshade-emissive-strength");
    }

    @Override
    public HillshadeLayer hillshadeEmissiveStrength(Expression hillshadeEmissiveStrength) {
        Intrinsics.checkNotNullParameter(hillshadeEmissiveStrength, "hillshadeEmissiveStrength");
        setProperty$extension_style_release(new PropertyValue<>("hillshade-emissive-strength", hillshadeEmissiveStrength));
        return this;
    }

    public final StyleTransition getHillshadeEmissiveStrengthTransition() {
        return (StyleTransition) getPropertyValueWithType("hillshade-emissive-strength-transition", StyleTransition.class);
    }

    @Override
    public HillshadeLayer hillshadeEmissiveStrengthTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("hillshade-emissive-strength-transition", options));
        return this;
    }

    @Override
    public HillshadeLayer hillshadeEmissiveStrengthTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        hillshadeEmissiveStrengthTransition(builder.build());
        return this;
    }

    public final Double getHillshadeExaggeration() {
        return (Double) getPropertyValueWithType("hillshade-exaggeration", Double.class);
    }

    @Override
    public HillshadeLayer hillshadeExaggeration(double hillshadeExaggeration) {
        setProperty$extension_style_release(new PropertyValue<>("hillshade-exaggeration", Double.valueOf(hillshadeExaggeration)));
        return this;
    }

    public final Expression getHillshadeExaggerationAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("hillshade-exaggeration");
    }

    @Override
    public HillshadeLayer hillshadeExaggeration(Expression hillshadeExaggeration) {
        Intrinsics.checkNotNullParameter(hillshadeExaggeration, "hillshadeExaggeration");
        setProperty$extension_style_release(new PropertyValue<>("hillshade-exaggeration", hillshadeExaggeration));
        return this;
    }

    public final StyleTransition getHillshadeExaggerationTransition() {
        return (StyleTransition) getPropertyValueWithType("hillshade-exaggeration-transition", StyleTransition.class);
    }

    @Override
    public HillshadeLayer hillshadeExaggerationTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("hillshade-exaggeration-transition", options));
        return this;
    }

    @Override
    public HillshadeLayer hillshadeExaggerationTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        hillshadeExaggerationTransition(builder.build());
        return this;
    }

    public final String getHillshadeHighlightColor() {
        Expression hillshadeHighlightColorAsExpression = getHillshadeHighlightColorAsExpression();
        if (hillshadeHighlightColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorString(hillshadeHighlightColorAsExpression);
        }
        return null;
    }

    @Override
    public HillshadeLayer hillshadeHighlightColor(String hillshadeHighlightColor) {
        Intrinsics.checkNotNullParameter(hillshadeHighlightColor, "hillshadeHighlightColor");
        setProperty$extension_style_release(new PropertyValue<>("hillshade-highlight-color", hillshadeHighlightColor));
        return this;
    }

    public final Expression getHillshadeHighlightColorAsExpression() {
        return (Expression) getPropertyValueWithType("hillshade-highlight-color", Expression.class);
    }

    @Override
    public HillshadeLayer hillshadeHighlightColor(Expression hillshadeHighlightColor) {
        Intrinsics.checkNotNullParameter(hillshadeHighlightColor, "hillshadeHighlightColor");
        setProperty$extension_style_release(new PropertyValue<>("hillshade-highlight-color", hillshadeHighlightColor));
        return this;
    }

    public final Integer getHillshadeHighlightColorAsColorInt() {
        Expression hillshadeHighlightColorAsExpression = getHillshadeHighlightColorAsExpression();
        if (hillshadeHighlightColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorInt(hillshadeHighlightColorAsExpression);
        }
        return null;
    }

    @Override
    public HillshadeLayer hillshadeHighlightColor(int hillshadeHighlightColor) {
        setProperty$extension_style_release(new PropertyValue<>("hillshade-highlight-color", ColorUtils.INSTANCE.colorIntToRgbaExpression(hillshadeHighlightColor)));
        return this;
    }

    public final StyleTransition getHillshadeHighlightColorTransition() {
        return (StyleTransition) getPropertyValueWithType("hillshade-highlight-color-transition", StyleTransition.class);
    }

    @Override
    public HillshadeLayer hillshadeHighlightColorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("hillshade-highlight-color-transition", options));
        return this;
    }

    @Override
    public HillshadeLayer hillshadeHighlightColorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        hillshadeHighlightColorTransition(builder.build());
        return this;
    }

    public final String getHillshadeHighlightColorUseTheme() {
        return (String) getPropertyValueWithType("hillshade-highlight-color-use-theme", String.class);
    }

    @Override
    public HillshadeLayer hillshadeHighlightColorUseTheme(String hillshadeHighlightColorUseTheme) {
        Intrinsics.checkNotNullParameter(hillshadeHighlightColorUseTheme, "hillshadeHighlightColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("hillshade-highlight-color-use-theme", hillshadeHighlightColorUseTheme));
        return this;
    }

    public final Expression getHillshadeHighlightColorUseThemeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("hillshade-highlight-color-use-theme");
    }

    @Override
    public HillshadeLayer hillshadeHighlightColorUseTheme(Expression hillshadeHighlightColorUseTheme) {
        Intrinsics.checkNotNullParameter(hillshadeHighlightColorUseTheme, "hillshadeHighlightColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("hillshade-highlight-color-use-theme", hillshadeHighlightColorUseTheme));
        return this;
    }

    public final HillshadeIlluminationAnchor getHillshadeIlluminationAnchor() {
        String str = (String) getPropertyValueWithType("hillshade-illumination-anchor", String.class);
        if (str == null) {
            return null;
        }
        HillshadeIlluminationAnchor.Companion companion = HillshadeIlluminationAnchor.INSTANCE;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    @Override
    public HillshadeLayer hillshadeIlluminationAnchor(HillshadeIlluminationAnchor hillshadeIlluminationAnchor) {
        Intrinsics.checkNotNullParameter(hillshadeIlluminationAnchor, "hillshadeIlluminationAnchor");
        setProperty$extension_style_release(new PropertyValue<>("hillshade-illumination-anchor", hillshadeIlluminationAnchor));
        return this;
    }

    public final Expression getHillshadeIlluminationAnchorAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("hillshade-illumination-anchor", Expression.class);
        if (expression != null) {
            return expression;
        }
        HillshadeIlluminationAnchor hillshadeIlluminationAnchor = getHillshadeIlluminationAnchor();
        if (hillshadeIlluminationAnchor != null) {
            return Expression.INSTANCE.literal(hillshadeIlluminationAnchor.getValue());
        }
        return null;
    }

    @Override
    public HillshadeLayer hillshadeIlluminationAnchor(Expression hillshadeIlluminationAnchor) {
        Intrinsics.checkNotNullParameter(hillshadeIlluminationAnchor, "hillshadeIlluminationAnchor");
        setProperty$extension_style_release(new PropertyValue<>("hillshade-illumination-anchor", hillshadeIlluminationAnchor));
        return this;
    }

    public final Double getHillshadeIlluminationDirection() {
        return (Double) getPropertyValueWithType("hillshade-illumination-direction", Double.class);
    }

    @Override
    public HillshadeLayer hillshadeIlluminationDirection(double hillshadeIlluminationDirection) {
        setProperty$extension_style_release(new PropertyValue<>("hillshade-illumination-direction", Double.valueOf(hillshadeIlluminationDirection)));
        return this;
    }

    public final Expression getHillshadeIlluminationDirectionAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("hillshade-illumination-direction");
    }

    @Override
    public HillshadeLayer hillshadeIlluminationDirection(Expression hillshadeIlluminationDirection) {
        Intrinsics.checkNotNullParameter(hillshadeIlluminationDirection, "hillshadeIlluminationDirection");
        setProperty$extension_style_release(new PropertyValue<>("hillshade-illumination-direction", hillshadeIlluminationDirection));
        return this;
    }

    public final String getHillshadeShadowColor() {
        Expression hillshadeShadowColorAsExpression = getHillshadeShadowColorAsExpression();
        if (hillshadeShadowColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorString(hillshadeShadowColorAsExpression);
        }
        return null;
    }

    @Override
    public HillshadeLayer hillshadeShadowColor(String hillshadeShadowColor) {
        Intrinsics.checkNotNullParameter(hillshadeShadowColor, "hillshadeShadowColor");
        setProperty$extension_style_release(new PropertyValue<>("hillshade-shadow-color", hillshadeShadowColor));
        return this;
    }

    public final Expression getHillshadeShadowColorAsExpression() {
        return (Expression) getPropertyValueWithType("hillshade-shadow-color", Expression.class);
    }

    @Override
    public HillshadeLayer hillshadeShadowColor(Expression hillshadeShadowColor) {
        Intrinsics.checkNotNullParameter(hillshadeShadowColor, "hillshadeShadowColor");
        setProperty$extension_style_release(new PropertyValue<>("hillshade-shadow-color", hillshadeShadowColor));
        return this;
    }

    public final Integer getHillshadeShadowColorAsColorInt() {
        Expression hillshadeShadowColorAsExpression = getHillshadeShadowColorAsExpression();
        if (hillshadeShadowColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorInt(hillshadeShadowColorAsExpression);
        }
        return null;
    }

    @Override
    public HillshadeLayer hillshadeShadowColor(int hillshadeShadowColor) {
        setProperty$extension_style_release(new PropertyValue<>("hillshade-shadow-color", ColorUtils.INSTANCE.colorIntToRgbaExpression(hillshadeShadowColor)));
        return this;
    }

    public final StyleTransition getHillshadeShadowColorTransition() {
        return (StyleTransition) getPropertyValueWithType("hillshade-shadow-color-transition", StyleTransition.class);
    }

    @Override
    public HillshadeLayer hillshadeShadowColorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("hillshade-shadow-color-transition", options));
        return this;
    }

    @Override
    public HillshadeLayer hillshadeShadowColorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        hillshadeShadowColorTransition(builder.build());
        return this;
    }

    public final String getHillshadeShadowColorUseTheme() {
        return (String) getPropertyValueWithType("hillshade-shadow-color-use-theme", String.class);
    }

    @Override
    public HillshadeLayer hillshadeShadowColorUseTheme(String hillshadeShadowColorUseTheme) {
        Intrinsics.checkNotNullParameter(hillshadeShadowColorUseTheme, "hillshadeShadowColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("hillshade-shadow-color-use-theme", hillshadeShadowColorUseTheme));
        return this;
    }

    public final Expression getHillshadeShadowColorUseThemeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("hillshade-shadow-color-use-theme");
    }

    @Override
    public HillshadeLayer hillshadeShadowColorUseTheme(Expression hillshadeShadowColorUseTheme) {
        Intrinsics.checkNotNullParameter(hillshadeShadowColorUseTheme, "hillshadeShadowColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("hillshade-shadow-color-use-theme", hillshadeShadowColorUseTheme));
        return this;
    }

    @Override
    public String getType$extension_style_release() {
        return "hillshade";
    }

    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0006\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b8G¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0014\u0010\u0002\u001a\u0004\b\u0015\u0010\u0006R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0017\u0010\u0002\u001a\u0004\b\u0018\u0010\u000eR\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u001a8F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u0013\u0010\u001d\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u000eR\u0013\u0010\u001f\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\b \u0010\u0012R\u0013\u0010!\u001a\u0004\u0018\u00010\u001a8F¢\u0006\u0006\u001a\u0004\b\"\u0010\u001cR\u0013\u0010#\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b$\u0010\u000eR\u0013\u0010%\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\b&\u0010\u0012R\u0013\u0010'\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b(\u0010\u0006R\u0013\u0010)\u001a\u0004\u0018\u00010\b8G¢\u0006\u0006\u001a\u0004\b*\u0010\nR\u0013\u0010+\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b,\u0010\u000eR\u0013\u0010-\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\b.\u0010\u0012R\u001c\u0010/\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b0\u0010\u0002\u001a\u0004\b1\u0010\u0006R\u001c\u00102\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b3\u0010\u0002\u001a\u0004\b4\u0010\u000eR\u0013\u00105\u001a\u0004\u0018\u0001068F¢\u0006\u0006\u001a\u0004\b7\u00108R\u0013\u00109\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b:\u0010\u000eR\u0013\u0010;\u001a\u0004\u0018\u00010\u001a8F¢\u0006\u0006\u001a\u0004\b<\u0010\u001cR\u0013\u0010=\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b>\u0010\u000eR\u0013\u0010?\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b@\u0010\u0006R\u0013\u0010A\u001a\u0004\u0018\u00010\b8G¢\u0006\u0006\u001a\u0004\bB\u0010\nR\u0013\u0010C\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\bD\u0010\u000eR\u0013\u0010E\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\bF\u0010\u0012R\u001c\u0010G\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\bH\u0010\u0002\u001a\u0004\bI\u0010\u0006R\u001c\u0010J\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\bK\u0010\u0002\u001a\u0004\bL\u0010\u000eR\u0013\u0010M\u001a\u0004\u0018\u00010\u001a8F¢\u0006\u0006\u001a\u0004\bN\u0010\u001cR\u0013\u0010O\u001a\u0004\u0018\u00010\u001a8F¢\u0006\u0006\u001a\u0004\bP\u0010\u001cR\u0013\u0010Q\u001a\u0004\u0018\u00010R8F¢\u0006\u0006\u001a\u0004\bS\u0010T¨\u0006U"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/HillshadeLayer$Companion;", "", "()V", "defaultHillshadeAccentColor", "", "getDefaultHillshadeAccentColor", "()Ljava/lang/String;", "defaultHillshadeAccentColorAsColorInt", "", "getDefaultHillshadeAccentColorAsColorInt", "()Ljava/lang/Integer;", "defaultHillshadeAccentColorAsExpression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getDefaultHillshadeAccentColorAsExpression", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "defaultHillshadeAccentColorTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getDefaultHillshadeAccentColorTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "defaultHillshadeAccentColorUseTheme", "getDefaultHillshadeAccentColorUseTheme$annotations", "getDefaultHillshadeAccentColorUseTheme", "defaultHillshadeAccentColorUseThemeAsExpression", "getDefaultHillshadeAccentColorUseThemeAsExpression$annotations", "getDefaultHillshadeAccentColorUseThemeAsExpression", "defaultHillshadeEmissiveStrength", "", "getDefaultHillshadeEmissiveStrength", "()Ljava/lang/Double;", "defaultHillshadeEmissiveStrengthAsExpression", "getDefaultHillshadeEmissiveStrengthAsExpression", "defaultHillshadeEmissiveStrengthTransition", "getDefaultHillshadeEmissiveStrengthTransition", "defaultHillshadeExaggeration", "getDefaultHillshadeExaggeration", "defaultHillshadeExaggerationAsExpression", "getDefaultHillshadeExaggerationAsExpression", "defaultHillshadeExaggerationTransition", "getDefaultHillshadeExaggerationTransition", "defaultHillshadeHighlightColor", "getDefaultHillshadeHighlightColor", "defaultHillshadeHighlightColorAsColorInt", "getDefaultHillshadeHighlightColorAsColorInt", "defaultHillshadeHighlightColorAsExpression", "getDefaultHillshadeHighlightColorAsExpression", "defaultHillshadeHighlightColorTransition", "getDefaultHillshadeHighlightColorTransition", "defaultHillshadeHighlightColorUseTheme", "getDefaultHillshadeHighlightColorUseTheme$annotations", "getDefaultHillshadeHighlightColorUseTheme", "defaultHillshadeHighlightColorUseThemeAsExpression", "getDefaultHillshadeHighlightColorUseThemeAsExpression$annotations", "getDefaultHillshadeHighlightColorUseThemeAsExpression", "defaultHillshadeIlluminationAnchor", "Lcom/mapbox/maps/extension/style/layers/properties/generated/HillshadeIlluminationAnchor;", "getDefaultHillshadeIlluminationAnchor", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/HillshadeIlluminationAnchor;", "defaultHillshadeIlluminationAnchorAsExpression", "getDefaultHillshadeIlluminationAnchorAsExpression", "defaultHillshadeIlluminationDirection", "getDefaultHillshadeIlluminationDirection", "defaultHillshadeIlluminationDirectionAsExpression", "getDefaultHillshadeIlluminationDirectionAsExpression", "defaultHillshadeShadowColor", "getDefaultHillshadeShadowColor", "defaultHillshadeShadowColorAsColorInt", "getDefaultHillshadeShadowColorAsColorInt", "defaultHillshadeShadowColorAsExpression", "getDefaultHillshadeShadowColorAsExpression", "defaultHillshadeShadowColorTransition", "getDefaultHillshadeShadowColorTransition", "defaultHillshadeShadowColorUseTheme", "getDefaultHillshadeShadowColorUseTheme$annotations", "getDefaultHillshadeShadowColorUseTheme", "defaultHillshadeShadowColorUseThemeAsExpression", "getDefaultHillshadeShadowColorUseThemeAsExpression$annotations", "getDefaultHillshadeShadowColorUseThemeAsExpression", "defaultMaxZoom", "getDefaultMaxZoom", "defaultMinZoom", "getDefaultMinZoom", "defaultVisibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "getDefaultVisibility", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void getDefaultHillshadeAccentColorUseTheme$annotations() {
        }

        public static void getDefaultHillshadeAccentColorUseThemeAsExpression$annotations() {
        }

        public static void getDefaultHillshadeHighlightColorUseTheme$annotations() {
        }

        public static void getDefaultHillshadeHighlightColorUseThemeAsExpression$annotations() {
        }

        public static void getDefaultHillshadeShadowColorUseTheme$annotations() {
        }

        public static void getDefaultHillshadeShadowColorUseThemeAsExpression$annotations() {
        }

        private Companion() {
        }

        public final Visibility getDefaultVisibility() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("hillshade", "visibility");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…hillshade\", \"visibility\")");
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
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("hillshade", "minzoom");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…e(\"hillshade\", \"minzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Double getDefaultMaxZoom() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("hillshade", "maxzoom");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…e(\"hillshade\", \"maxzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final String getDefaultHillshadeAccentColor() {
            Expression defaultHillshadeAccentColorAsExpression = getDefaultHillshadeAccentColorAsExpression();
            if (defaultHillshadeAccentColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorString(defaultHillshadeAccentColorAsExpression);
            }
            return null;
        }

        public final Expression getDefaultHillshadeAccentColorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("hillshade", "hillshade-accent-color");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"hillshade-accent-color\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            return null;
        }

        public final Integer getDefaultHillshadeAccentColorAsColorInt() {
            Expression defaultHillshadeAccentColorAsExpression = getDefaultHillshadeAccentColorAsExpression();
            if (defaultHillshadeAccentColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorInt(defaultHillshadeAccentColorAsExpression);
            }
            return null;
        }

        public final StyleTransition getDefaultHillshadeAccentColorTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("hillshade", "hillshade-accent-color-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…accent-color-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultHillshadeAccentColorUseTheme() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("hillshade", "hillshade-accent-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-accent-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultHillshadeAccentColorUseThemeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("hillshade", "hillshade-accent-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-accent-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultHillshadeAccentColorUseTheme = getDefaultHillshadeAccentColorUseTheme();
            if (defaultHillshadeAccentColorUseTheme != null) {
                return Expression.INSTANCE.literal(defaultHillshadeAccentColorUseTheme);
            }
            return null;
        }

        public final Double getDefaultHillshadeEmissiveStrength() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("hillshade", "hillshade-emissive-strength");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…shade-emissive-strength\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultHillshadeEmissiveStrengthAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("hillshade", "hillshade-emissive-strength");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…shade-emissive-strength\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultHillshadeEmissiveStrength = getDefaultHillshadeEmissiveStrength();
            if (defaultHillshadeEmissiveStrength == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultHillshadeEmissiveStrength.doubleValue());
        }

        public final StyleTransition getDefaultHillshadeEmissiveStrengthTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("hillshade", "hillshade-emissive-strength-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ive-strength-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultHillshadeExaggeration() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("hillshade", "hillshade-exaggeration");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"hillshade-exaggeration\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultHillshadeExaggerationAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("hillshade", "hillshade-exaggeration");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"hillshade-exaggeration\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultHillshadeExaggeration = getDefaultHillshadeExaggeration();
            if (defaultHillshadeExaggeration == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultHillshadeExaggeration.doubleValue());
        }

        public final StyleTransition getDefaultHillshadeExaggerationTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("hillshade", "hillshade-exaggeration-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…exaggeration-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultHillshadeHighlightColor() {
            Expression defaultHillshadeHighlightColorAsExpression = getDefaultHillshadeHighlightColorAsExpression();
            if (defaultHillshadeHighlightColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorString(defaultHillshadeHighlightColorAsExpression);
            }
            return null;
        }

        public final Expression getDefaultHillshadeHighlightColorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("hillshade", "hillshade-highlight-color");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…llshade-highlight-color\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            return null;
        }

        public final Integer getDefaultHillshadeHighlightColorAsColorInt() {
            Expression defaultHillshadeHighlightColorAsExpression = getDefaultHillshadeHighlightColorAsExpression();
            if (defaultHillshadeHighlightColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorInt(defaultHillshadeHighlightColorAsExpression);
            }
            return null;
        }

        public final StyleTransition getDefaultHillshadeHighlightColorTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("hillshade", "hillshade-highlight-color-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…hlight-color-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultHillshadeHighlightColorUseTheme() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("hillshade", "hillshade-highlight-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ghlight-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultHillshadeHighlightColorUseThemeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("hillshade", "hillshade-highlight-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ghlight-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultHillshadeHighlightColorUseTheme = getDefaultHillshadeHighlightColorUseTheme();
            if (defaultHillshadeHighlightColorUseTheme != null) {
                return Expression.INSTANCE.literal(defaultHillshadeHighlightColorUseTheme);
            }
            return null;
        }

        public final HillshadeIlluminationAnchor getDefaultHillshadeIlluminationAnchor() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("hillshade", "hillshade-illumination-anchor");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ade-illumination-anchor\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            String str = (String) objUnwrap;
            if (str == null) {
                return null;
            }
            HillshadeIlluminationAnchor.Companion companion = HillshadeIlluminationAnchor.INSTANCE;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String upperCase = str.toUpperCase(US);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
        }

        public final Expression getDefaultHillshadeIlluminationAnchorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("hillshade", "hillshade-illumination-anchor");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ade-illumination-anchor\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            HillshadeIlluminationAnchor defaultHillshadeIlluminationAnchor = getDefaultHillshadeIlluminationAnchor();
            if (defaultHillshadeIlluminationAnchor != null) {
                return Expression.INSTANCE.literal(defaultHillshadeIlluminationAnchor.getValue());
            }
            return null;
        }

        public final Double getDefaultHillshadeIlluminationDirection() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("hillshade", "hillshade-illumination-direction");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-illumination-direction\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultHillshadeIlluminationDirectionAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("hillshade", "hillshade-illumination-direction");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-illumination-direction\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultHillshadeIlluminationDirection = getDefaultHillshadeIlluminationDirection();
            if (defaultHillshadeIlluminationDirection == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultHillshadeIlluminationDirection.doubleValue());
        }

        public final String getDefaultHillshadeShadowColor() {
            Expression defaultHillshadeShadowColorAsExpression = getDefaultHillshadeShadowColorAsExpression();
            if (defaultHillshadeShadowColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorString(defaultHillshadeShadowColorAsExpression);
            }
            return null;
        }

        public final Expression getDefaultHillshadeShadowColorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("hillshade", "hillshade-shadow-color");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"hillshade-shadow-color\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            return null;
        }

        public final Integer getDefaultHillshadeShadowColorAsColorInt() {
            Expression defaultHillshadeShadowColorAsExpression = getDefaultHillshadeShadowColorAsExpression();
            if (defaultHillshadeShadowColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorInt(defaultHillshadeShadowColorAsExpression);
            }
            return null;
        }

        public final StyleTransition getDefaultHillshadeShadowColorTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("hillshade", "hillshade-shadow-color-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…shadow-color-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultHillshadeShadowColorUseTheme() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("hillshade", "hillshade-shadow-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-shadow-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultHillshadeShadowColorUseThemeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("hillshade", "hillshade-shadow-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-shadow-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultHillshadeShadowColorUseTheme = getDefaultHillshadeShadowColorUseTheme();
            if (defaultHillshadeShadowColorUseTheme != null) {
                return Expression.INSTANCE.literal(defaultHillshadeShadowColorUseTheme);
            }
            return null;
        }
    }
}
