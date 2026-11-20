package com.mapbox.maps.extension.style.layers.generated;

import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.maps.StyleManager;
import com.mapbox.maps.StylePropertyValue;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.Layer;
import com.mapbox.maps.extension.style.layers.properties.PropertyValue;
import com.mapbox.maps.extension.style.layers.properties.generated.SkyType;
import com.mapbox.maps.extension.style.layers.properties.generated.Visibility;
import com.mapbox.maps.extension.style.types.StyleTransition;
import com.mapbox.maps.extension.style.utils.ColorUtils;
import com.mapbox.maps.extension.style.utils.TypeUtilsKt;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0018\n\u0002\u0010 \n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 e2\u00020\u00012\u00020\u0002:\u0001eB\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\r\u0010]\u001a\u00020\u0004H\u0010¢\u0006\u0002\b^J\u0010\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\rH\u0016J\u0010\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0007H\u0016J\u0012\u0010\u0012\u001a\u00020\u00002\b\b\u0001\u0010\u0012\u001a\u00020\u0015H\u0016J\u0010\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0004H\u0016J\u0010\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0007H\u0017J\u0010\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0004H\u0017J\u0010\u0010!\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0007H\u0016J\u0012\u0010!\u001a\u00020\u00002\b\b\u0001\u0010!\u001a\u00020\u0015H\u0016J\u0010\u0010!\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0004H\u0016J\u0010\u0010'\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\u0007H\u0017J\u0010\u0010'\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\u0004H\u0017J\u0010\u0010-\u001a\u00020\u00002\u0006\u0010-\u001a\u00020\u0007H\u0016J\u0016\u0010-\u001a\u00020\u00002\f\u0010-\u001a\b\u0012\u0004\u0012\u00020\r0.H\u0016J\u0010\u00103\u001a\u00020\u00002\u0006\u00103\u001a\u00020\u0007H\u0016J\u0010\u00103\u001a\u00020\u00002\u0006\u00103\u001a\u00020\rH\u0016J\u0010\u00107\u001a\u00020\u00002\u0006\u00107\u001a\u00020\u0007H\u0016J\u0010\u00109\u001a\u00020\u00002\u0006\u00109\u001a\u00020\u0007H\u0016J\u0016\u00109\u001a\u00020\u00002\f\u00109\u001a\b\u0012\u0004\u0012\u00020\r0.H\u0016J\u0010\u0010=\u001a\u00020\u00002\u0006\u0010=\u001a\u00020\u0007H\u0016J\u0010\u0010=\u001a\u00020\u00002\u0006\u0010=\u001a\u00020\rH\u0016J\u0010\u0010A\u001a\u00020\u00002\u0006\u0010A\u001a\u00020\u0007H\u0017J\u0010\u0010A\u001a\u00020\u00002\u0006\u0010A\u001a\u00020\u0004H\u0017J\u0010\u0010G\u001a\u00020\u00002\u0006\u0010G\u001a\u00020\u0007H\u0016J\u0010\u0010G\u001a\u00020\u00002\u0006\u0010G\u001a\u00020\rH\u0016J\u0010\u0010K\u001a\u00020\u00002\u0006\u0010_\u001a\u00020LH\u0016J!\u0010K\u001a\u00020\u00002\u0017\u0010`\u001a\u0013\u0012\u0004\u0012\u00020b\u0012\u0004\u0012\u00020c0a¢\u0006\u0002\bdH\u0016J\u0010\u0010O\u001a\u00020\u00002\u0006\u0010O\u001a\u00020\u0007H\u0016J\u0010\u0010O\u001a\u00020\u00002\u0006\u0010O\u001a\u00020PH\u0016J\u0010\u0010U\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\u0004H\u0016J\u0010\u0010W\u001a\u00020\u00002\u0006\u0010W\u001a\u00020\u0007H\u0016J\u0010\u0010W\u001a\u00020\u00002\u0006\u0010W\u001a\u00020XH\u0016R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u00078F¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\f\u001a\u0004\u0018\u00010\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000fR\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u000bR\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u00158G¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u00078F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\tR\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u000bR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u00078FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001f\u0010\u001c\u001a\u0004\b \u0010\tR\u0013\u0010!\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\"\u0010\u000bR\u0013\u0010#\u001a\u0004\u0018\u00010\u00158G¢\u0006\u0006\u001a\u0004\b$\u0010\u0017R\u0013\u0010%\u001a\u0004\u0018\u00010\u00078F¢\u0006\u0006\u001a\u0004\b&\u0010\tR\u001c\u0010'\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b(\u0010\u001c\u001a\u0004\b)\u0010\u000bR\u001c\u0010*\u001a\u0004\u0018\u00010\u00078FX\u0087\u0004¢\u0006\f\u0012\u0004\b+\u0010\u001c\u001a\u0004\b,\u0010\tR\u0019\u0010-\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010.8F¢\u0006\u0006\u001a\u0004\b/\u00100R\u0013\u00101\u001a\u0004\u0018\u00010\u00078F¢\u0006\u0006\u001a\u0004\b2\u0010\tR\u0013\u00103\u001a\u0004\u0018\u00010\r8F¢\u0006\u0006\u001a\u0004\b4\u0010\u000fR\u0013\u00105\u001a\u0004\u0018\u00010\u00078F¢\u0006\u0006\u001a\u0004\b6\u0010\tR\u0013\u00107\u001a\u0004\u0018\u00010\u00078F¢\u0006\u0006\u001a\u0004\b8\u0010\tR\u0019\u00109\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010.8F¢\u0006\u0006\u001a\u0004\b:\u00100R\u0013\u0010;\u001a\u0004\u0018\u00010\u00078F¢\u0006\u0006\u001a\u0004\b<\u0010\tR\u0013\u0010=\u001a\u0004\u0018\u00010\r8F¢\u0006\u0006\u001a\u0004\b>\u0010\u000fR\u0013\u0010?\u001a\u0004\u0018\u00010\u00078F¢\u0006\u0006\u001a\u0004\b@\u0010\tR\u001c\u0010A\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\bB\u0010\u001c\u001a\u0004\bC\u0010\u000bR\u001c\u0010D\u001a\u0004\u0018\u00010\u00078FX\u0087\u0004¢\u0006\f\u0012\u0004\bE\u0010\u001c\u001a\u0004\bF\u0010\tR\u0013\u0010G\u001a\u0004\u0018\u00010\r8F¢\u0006\u0006\u001a\u0004\bH\u0010\u000fR\u0013\u0010I\u001a\u0004\u0018\u00010\u00078F¢\u0006\u0006\u001a\u0004\bJ\u0010\tR\u0013\u0010K\u001a\u0004\u0018\u00010L8F¢\u0006\u0006\u001a\u0004\bM\u0010NR\u0013\u0010O\u001a\u0004\u0018\u00010P8F¢\u0006\u0006\u001a\u0004\bQ\u0010RR\u0013\u0010S\u001a\u0004\u0018\u00010\u00078F¢\u0006\u0006\u001a\u0004\bT\u0010\tR\u0016\u0010U\u001a\u0004\u0018\u00010\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bV\u0010\u000bR\u0016\u0010W\u001a\u0004\u0018\u00010X8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bY\u0010ZR\u0016\u0010[\u001a\u0004\u0018\u00010\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\\\u0010\t¨\u0006f"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/SkyLayer;", "Lcom/mapbox/maps/extension/style/layers/generated/SkyLayerDsl;", "Lcom/mapbox/maps/extension/style/layers/Layer;", "layerId", "", "(Ljava/lang/String;)V", ViewProps.FILTER, "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getFilter", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getLayerId", "()Ljava/lang/String;", "maxZoom", "", "getMaxZoom", "()Ljava/lang/Double;", "minZoom", "getMinZoom", "skyAtmosphereColor", "getSkyAtmosphereColor", "skyAtmosphereColorAsColorInt", "", "getSkyAtmosphereColorAsColorInt", "()Ljava/lang/Integer;", "skyAtmosphereColorAsExpression", "getSkyAtmosphereColorAsExpression", "skyAtmosphereColorUseTheme", "getSkyAtmosphereColorUseTheme$annotations", "()V", "getSkyAtmosphereColorUseTheme", "skyAtmosphereColorUseThemeAsExpression", "getSkyAtmosphereColorUseThemeAsExpression$annotations", "getSkyAtmosphereColorUseThemeAsExpression", "skyAtmosphereHaloColor", "getSkyAtmosphereHaloColor", "skyAtmosphereHaloColorAsColorInt", "getSkyAtmosphereHaloColorAsColorInt", "skyAtmosphereHaloColorAsExpression", "getSkyAtmosphereHaloColorAsExpression", "skyAtmosphereHaloColorUseTheme", "getSkyAtmosphereHaloColorUseTheme$annotations", "getSkyAtmosphereHaloColorUseTheme", "skyAtmosphereHaloColorUseThemeAsExpression", "getSkyAtmosphereHaloColorUseThemeAsExpression$annotations", "getSkyAtmosphereHaloColorUseThemeAsExpression", "skyAtmosphereSun", "", "getSkyAtmosphereSun", "()Ljava/util/List;", "skyAtmosphereSunAsExpression", "getSkyAtmosphereSunAsExpression", "skyAtmosphereSunIntensity", "getSkyAtmosphereSunIntensity", "skyAtmosphereSunIntensityAsExpression", "getSkyAtmosphereSunIntensityAsExpression", "skyGradient", "getSkyGradient", "skyGradientCenter", "getSkyGradientCenter", "skyGradientCenterAsExpression", "getSkyGradientCenterAsExpression", "skyGradientRadius", "getSkyGradientRadius", "skyGradientRadiusAsExpression", "getSkyGradientRadiusAsExpression", "skyGradientUseTheme", "getSkyGradientUseTheme$annotations", "getSkyGradientUseTheme", "skyGradientUseThemeAsExpression", "getSkyGradientUseThemeAsExpression$annotations", "getSkyGradientUseThemeAsExpression", "skyOpacity", "getSkyOpacity", "skyOpacityAsExpression", "getSkyOpacityAsExpression", "skyOpacityTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getSkyOpacityTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "skyType", "Lcom/mapbox/maps/extension/style/layers/properties/generated/SkyType;", "getSkyType", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/SkyType;", "skyTypeAsExpression", "getSkyTypeAsExpression", "slot", "getSlot", "visibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "getVisibility", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "visibilityAsExpression", "getVisibilityAsExpression", "getType", "getType$extension_style_release", "options", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "Companion", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class SkyLayer extends Layer implements SkyLayerDsl {

    public static final Companion INSTANCE = new Companion(null);
    private final String layerId;

    public static void getSkyAtmosphereColorUseTheme$annotations() {
    }

    public static void getSkyAtmosphereColorUseThemeAsExpression$annotations() {
    }

    public static void getSkyAtmosphereHaloColorUseTheme$annotations() {
    }

    public static void getSkyAtmosphereHaloColorUseThemeAsExpression$annotations() {
    }

    public static void getSkyGradientUseTheme$annotations() {
    }

    public static void getSkyGradientUseThemeAsExpression$annotations() {
    }

    public SkyLayer(String layerId) {
        Intrinsics.checkNotNullParameter(layerId, "layerId");
        this.layerId = layerId;
    }

    @Override
    public String getLayerId() {
        return this.layerId;
    }

    @Override
    public SkyLayer slot(String slot) {
        Intrinsics.checkNotNullParameter(slot, "slot");
        setProperty$extension_style_release(new PropertyValue<>("slot", slot));
        return this;
    }

    @Override
    public String getSlot() {
        return (String) getPropertyValueWithType("slot", String.class);
    }

    @Override
    public SkyLayer filter(Expression filter) {
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
    public SkyLayer visibility(Visibility visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        setProperty$extension_style_release(new PropertyValue<>("visibility", visibility));
        return this;
    }

    @Override
    public SkyLayer visibility(Expression visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        setProperty$extension_style_release(new PropertyValue<>("visibility", visibility));
        return this;
    }

    @Override
    public Double getMinZoom() {
        return (Double) getPropertyValueWithType("minzoom", Double.class);
    }

    @Override
    public SkyLayer minZoom(double minZoom) {
        setProperty$extension_style_release(new PropertyValue<>("minzoom", Double.valueOf(minZoom)));
        return this;
    }

    @Override
    public Double getMaxZoom() {
        return (Double) getPropertyValueWithType("maxzoom", Double.class);
    }

    @Override
    public SkyLayer maxZoom(double maxZoom) {
        setProperty$extension_style_release(new PropertyValue<>("maxzoom", Double.valueOf(maxZoom)));
        return this;
    }

    public final String getSkyAtmosphereColor() {
        Expression skyAtmosphereColorAsExpression = getSkyAtmosphereColorAsExpression();
        if (skyAtmosphereColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorString(skyAtmosphereColorAsExpression);
        }
        return null;
    }

    @Override
    public SkyLayer skyAtmosphereColor(String skyAtmosphereColor) {
        Intrinsics.checkNotNullParameter(skyAtmosphereColor, "skyAtmosphereColor");
        setProperty$extension_style_release(new PropertyValue<>("sky-atmosphere-color", skyAtmosphereColor));
        return this;
    }

    public final Expression getSkyAtmosphereColorAsExpression() {
        return (Expression) getPropertyValueWithType("sky-atmosphere-color", Expression.class);
    }

    @Override
    public SkyLayer skyAtmosphereColor(Expression skyAtmosphereColor) {
        Intrinsics.checkNotNullParameter(skyAtmosphereColor, "skyAtmosphereColor");
        setProperty$extension_style_release(new PropertyValue<>("sky-atmosphere-color", skyAtmosphereColor));
        return this;
    }

    public final Integer getSkyAtmosphereColorAsColorInt() {
        Expression skyAtmosphereColorAsExpression = getSkyAtmosphereColorAsExpression();
        if (skyAtmosphereColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorInt(skyAtmosphereColorAsExpression);
        }
        return null;
    }

    @Override
    public SkyLayer skyAtmosphereColor(int skyAtmosphereColor) {
        setProperty$extension_style_release(new PropertyValue<>("sky-atmosphere-color", ColorUtils.INSTANCE.colorIntToRgbaExpression(skyAtmosphereColor)));
        return this;
    }

    public final String getSkyAtmosphereColorUseTheme() {
        return (String) getPropertyValueWithType("sky-atmosphere-color-use-theme", String.class);
    }

    @Override
    public SkyLayer skyAtmosphereColorUseTheme(String skyAtmosphereColorUseTheme) {
        Intrinsics.checkNotNullParameter(skyAtmosphereColorUseTheme, "skyAtmosphereColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("sky-atmosphere-color-use-theme", skyAtmosphereColorUseTheme));
        return this;
    }

    public final Expression getSkyAtmosphereColorUseThemeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("sky-atmosphere-color-use-theme");
    }

    @Override
    public SkyLayer skyAtmosphereColorUseTheme(Expression skyAtmosphereColorUseTheme) {
        Intrinsics.checkNotNullParameter(skyAtmosphereColorUseTheme, "skyAtmosphereColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("sky-atmosphere-color-use-theme", skyAtmosphereColorUseTheme));
        return this;
    }

    public final String getSkyAtmosphereHaloColor() {
        Expression skyAtmosphereHaloColorAsExpression = getSkyAtmosphereHaloColorAsExpression();
        if (skyAtmosphereHaloColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorString(skyAtmosphereHaloColorAsExpression);
        }
        return null;
    }

    @Override
    public SkyLayer skyAtmosphereHaloColor(String skyAtmosphereHaloColor) {
        Intrinsics.checkNotNullParameter(skyAtmosphereHaloColor, "skyAtmosphereHaloColor");
        setProperty$extension_style_release(new PropertyValue<>("sky-atmosphere-halo-color", skyAtmosphereHaloColor));
        return this;
    }

    public final Expression getSkyAtmosphereHaloColorAsExpression() {
        return (Expression) getPropertyValueWithType("sky-atmosphere-halo-color", Expression.class);
    }

    @Override
    public SkyLayer skyAtmosphereHaloColor(Expression skyAtmosphereHaloColor) {
        Intrinsics.checkNotNullParameter(skyAtmosphereHaloColor, "skyAtmosphereHaloColor");
        setProperty$extension_style_release(new PropertyValue<>("sky-atmosphere-halo-color", skyAtmosphereHaloColor));
        return this;
    }

    public final Integer getSkyAtmosphereHaloColorAsColorInt() {
        Expression skyAtmosphereHaloColorAsExpression = getSkyAtmosphereHaloColorAsExpression();
        if (skyAtmosphereHaloColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorInt(skyAtmosphereHaloColorAsExpression);
        }
        return null;
    }

    @Override
    public SkyLayer skyAtmosphereHaloColor(int skyAtmosphereHaloColor) {
        setProperty$extension_style_release(new PropertyValue<>("sky-atmosphere-halo-color", ColorUtils.INSTANCE.colorIntToRgbaExpression(skyAtmosphereHaloColor)));
        return this;
    }

    public final String getSkyAtmosphereHaloColorUseTheme() {
        return (String) getPropertyValueWithType("sky-atmosphere-halo-color-use-theme", String.class);
    }

    @Override
    public SkyLayer skyAtmosphereHaloColorUseTheme(String skyAtmosphereHaloColorUseTheme) {
        Intrinsics.checkNotNullParameter(skyAtmosphereHaloColorUseTheme, "skyAtmosphereHaloColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("sky-atmosphere-halo-color-use-theme", skyAtmosphereHaloColorUseTheme));
        return this;
    }

    public final Expression getSkyAtmosphereHaloColorUseThemeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("sky-atmosphere-halo-color-use-theme");
    }

    @Override
    public SkyLayer skyAtmosphereHaloColorUseTheme(Expression skyAtmosphereHaloColorUseTheme) {
        Intrinsics.checkNotNullParameter(skyAtmosphereHaloColorUseTheme, "skyAtmosphereHaloColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("sky-atmosphere-halo-color-use-theme", skyAtmosphereHaloColorUseTheme));
        return this;
    }

    public final List<Double> getSkyAtmosphereSun() {
        return (List) getPropertyValueWithType("sky-atmosphere-sun", List.class);
    }

    @Override
    public SkyLayer skyAtmosphereSun(List<Double> skyAtmosphereSun) {
        Intrinsics.checkNotNullParameter(skyAtmosphereSun, "skyAtmosphereSun");
        setProperty$extension_style_release(new PropertyValue<>("sky-atmosphere-sun", skyAtmosphereSun));
        return this;
    }

    public final Expression getSkyAtmosphereSunAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("sky-atmosphere-sun");
    }

    @Override
    public SkyLayer skyAtmosphereSun(Expression skyAtmosphereSun) {
        Intrinsics.checkNotNullParameter(skyAtmosphereSun, "skyAtmosphereSun");
        setProperty$extension_style_release(new PropertyValue<>("sky-atmosphere-sun", skyAtmosphereSun));
        return this;
    }

    public final Double getSkyAtmosphereSunIntensity() {
        return (Double) getPropertyValueWithType("sky-atmosphere-sun-intensity", Double.class);
    }

    @Override
    public SkyLayer skyAtmosphereSunIntensity(double skyAtmosphereSunIntensity) {
        setProperty$extension_style_release(new PropertyValue<>("sky-atmosphere-sun-intensity", Double.valueOf(skyAtmosphereSunIntensity)));
        return this;
    }

    public final Expression getSkyAtmosphereSunIntensityAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("sky-atmosphere-sun-intensity");
    }

    @Override
    public SkyLayer skyAtmosphereSunIntensity(Expression skyAtmosphereSunIntensity) {
        Intrinsics.checkNotNullParameter(skyAtmosphereSunIntensity, "skyAtmosphereSunIntensity");
        setProperty$extension_style_release(new PropertyValue<>("sky-atmosphere-sun-intensity", skyAtmosphereSunIntensity));
        return this;
    }

    public final Expression getSkyGradient() {
        return (Expression) getPropertyValueWithType("sky-gradient", Expression.class);
    }

    @Override
    public SkyLayer skyGradient(Expression skyGradient) {
        Intrinsics.checkNotNullParameter(skyGradient, "skyGradient");
        setProperty$extension_style_release(new PropertyValue<>("sky-gradient", skyGradient));
        return this;
    }

    public final String getSkyGradientUseTheme() {
        return (String) getPropertyValueWithType("sky-gradient-use-theme", String.class);
    }

    @Override
    public SkyLayer skyGradientUseTheme(String skyGradientUseTheme) {
        Intrinsics.checkNotNullParameter(skyGradientUseTheme, "skyGradientUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("sky-gradient-use-theme", skyGradientUseTheme));
        return this;
    }

    public final Expression getSkyGradientUseThemeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("sky-gradient-use-theme");
    }

    @Override
    public SkyLayer skyGradientUseTheme(Expression skyGradientUseTheme) {
        Intrinsics.checkNotNullParameter(skyGradientUseTheme, "skyGradientUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("sky-gradient-use-theme", skyGradientUseTheme));
        return this;
    }

    public final List<Double> getSkyGradientCenter() {
        return (List) getPropertyValueWithType("sky-gradient-center", List.class);
    }

    @Override
    public SkyLayer skyGradientCenter(List<Double> skyGradientCenter) {
        Intrinsics.checkNotNullParameter(skyGradientCenter, "skyGradientCenter");
        setProperty$extension_style_release(new PropertyValue<>("sky-gradient-center", skyGradientCenter));
        return this;
    }

    public final Expression getSkyGradientCenterAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("sky-gradient-center");
    }

    @Override
    public SkyLayer skyGradientCenter(Expression skyGradientCenter) {
        Intrinsics.checkNotNullParameter(skyGradientCenter, "skyGradientCenter");
        setProperty$extension_style_release(new PropertyValue<>("sky-gradient-center", skyGradientCenter));
        return this;
    }

    public final Double getSkyGradientRadius() {
        return (Double) getPropertyValueWithType("sky-gradient-radius", Double.class);
    }

    @Override
    public SkyLayer skyGradientRadius(double skyGradientRadius) {
        setProperty$extension_style_release(new PropertyValue<>("sky-gradient-radius", Double.valueOf(skyGradientRadius)));
        return this;
    }

    public final Expression getSkyGradientRadiusAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("sky-gradient-radius");
    }

    @Override
    public SkyLayer skyGradientRadius(Expression skyGradientRadius) {
        Intrinsics.checkNotNullParameter(skyGradientRadius, "skyGradientRadius");
        setProperty$extension_style_release(new PropertyValue<>("sky-gradient-radius", skyGradientRadius));
        return this;
    }

    public final Double getSkyOpacity() {
        return (Double) getPropertyValueWithType("sky-opacity", Double.class);
    }

    @Override
    public SkyLayer skyOpacity(double skyOpacity) {
        setProperty$extension_style_release(new PropertyValue<>("sky-opacity", Double.valueOf(skyOpacity)));
        return this;
    }

    public final Expression getSkyOpacityAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("sky-opacity");
    }

    @Override
    public SkyLayer skyOpacity(Expression skyOpacity) {
        Intrinsics.checkNotNullParameter(skyOpacity, "skyOpacity");
        setProperty$extension_style_release(new PropertyValue<>("sky-opacity", skyOpacity));
        return this;
    }

    public final StyleTransition getSkyOpacityTransition() {
        return (StyleTransition) getPropertyValueWithType("sky-opacity-transition", StyleTransition.class);
    }

    @Override
    public SkyLayer skyOpacityTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("sky-opacity-transition", options));
        return this;
    }

    @Override
    public SkyLayer skyOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        skyOpacityTransition(builder.build());
        return this;
    }

    public final SkyType getSkyType() {
        String str = (String) getPropertyValueWithType("sky-type", String.class);
        if (str == null) {
            return null;
        }
        SkyType.Companion companion = SkyType.INSTANCE;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    @Override
    public SkyLayer skyType(SkyType skyType) {
        Intrinsics.checkNotNullParameter(skyType, "skyType");
        setProperty$extension_style_release(new PropertyValue<>("sky-type", skyType));
        return this;
    }

    public final Expression getSkyTypeAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("sky-type", Expression.class);
        if (expression != null) {
            return expression;
        }
        SkyType skyType = getSkyType();
        if (skyType != null) {
            return Expression.INSTANCE.literal(skyType.getValue());
        }
        return null;
    }

    @Override
    public SkyLayer skyType(Expression skyType) {
        Intrinsics.checkNotNullParameter(skyType, "skyType");
        setProperty$extension_style_release(new PropertyValue<>("sky-type", skyType));
        return this;
    }

    @Override
    public String getType$extension_style_release() {
        return "sky";
    }

    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010 \n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\b\u0010\u0006R\u0013\u0010\t\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e8G¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u00128F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\n8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0016\u0010\u0002\u001a\u0004\b\u0017\u0010\fR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u00128FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0019\u0010\u0002\u001a\u0004\b\u001a\u0010\u0014R\u0013\u0010\u001b\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\fR\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u000e8G¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u0010R\u0013\u0010\u001f\u001a\u0004\u0018\u00010\u00128F¢\u0006\u0006\u001a\u0004\b \u0010\u0014R\u001c\u0010!\u001a\u0004\u0018\u00010\n8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\"\u0010\u0002\u001a\u0004\b#\u0010\fR\u001c\u0010$\u001a\u0004\u0018\u00010\u00128FX\u0087\u0004¢\u0006\f\u0012\u0004\b%\u0010\u0002\u001a\u0004\b&\u0010\u0014R\u0019\u0010'\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010(8F¢\u0006\u0006\u001a\u0004\b)\u0010*R\u0013\u0010+\u001a\u0004\u0018\u00010\u00128F¢\u0006\u0006\u001a\u0004\b,\u0010\u0014R\u0013\u0010-\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b.\u0010\u0006R\u0013\u0010/\u001a\u0004\u0018\u00010\u00128F¢\u0006\u0006\u001a\u0004\b0\u0010\u0014R\u0013\u00101\u001a\u0004\u0018\u00010\u00128F¢\u0006\u0006\u001a\u0004\b2\u0010\u0014R\u0019\u00103\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010(8F¢\u0006\u0006\u001a\u0004\b4\u0010*R\u0013\u00105\u001a\u0004\u0018\u00010\u00128F¢\u0006\u0006\u001a\u0004\b6\u0010\u0014R\u0013\u00107\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b8\u0010\u0006R\u0013\u00109\u001a\u0004\u0018\u00010\u00128F¢\u0006\u0006\u001a\u0004\b:\u0010\u0014R\u001c\u0010;\u001a\u0004\u0018\u00010\n8FX\u0087\u0004¢\u0006\f\u0012\u0004\b<\u0010\u0002\u001a\u0004\b=\u0010\fR\u001c\u0010>\u001a\u0004\u0018\u00010\u00128FX\u0087\u0004¢\u0006\f\u0012\u0004\b?\u0010\u0002\u001a\u0004\b@\u0010\u0014R\u0013\u0010A\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bB\u0010\u0006R\u0013\u0010C\u001a\u0004\u0018\u00010\u00128F¢\u0006\u0006\u001a\u0004\bD\u0010\u0014R\u0013\u0010E\u001a\u0004\u0018\u00010F8F¢\u0006\u0006\u001a\u0004\bG\u0010HR\u0013\u0010I\u001a\u0004\u0018\u00010J8F¢\u0006\u0006\u001a\u0004\bK\u0010LR\u0013\u0010M\u001a\u0004\u0018\u00010\u00128F¢\u0006\u0006\u001a\u0004\bN\u0010\u0014R\u0013\u0010O\u001a\u0004\u0018\u00010P8F¢\u0006\u0006\u001a\u0004\bQ\u0010R¨\u0006S"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/SkyLayer$Companion;", "", "()V", "defaultMaxZoom", "", "getDefaultMaxZoom", "()Ljava/lang/Double;", "defaultMinZoom", "getDefaultMinZoom", "defaultSkyAtmosphereColor", "", "getDefaultSkyAtmosphereColor", "()Ljava/lang/String;", "defaultSkyAtmosphereColorAsColorInt", "", "getDefaultSkyAtmosphereColorAsColorInt", "()Ljava/lang/Integer;", "defaultSkyAtmosphereColorAsExpression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getDefaultSkyAtmosphereColorAsExpression", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "defaultSkyAtmosphereColorUseTheme", "getDefaultSkyAtmosphereColorUseTheme$annotations", "getDefaultSkyAtmosphereColorUseTheme", "defaultSkyAtmosphereColorUseThemeAsExpression", "getDefaultSkyAtmosphereColorUseThemeAsExpression$annotations", "getDefaultSkyAtmosphereColorUseThemeAsExpression", "defaultSkyAtmosphereHaloColor", "getDefaultSkyAtmosphereHaloColor", "defaultSkyAtmosphereHaloColorAsColorInt", "getDefaultSkyAtmosphereHaloColorAsColorInt", "defaultSkyAtmosphereHaloColorAsExpression", "getDefaultSkyAtmosphereHaloColorAsExpression", "defaultSkyAtmosphereHaloColorUseTheme", "getDefaultSkyAtmosphereHaloColorUseTheme$annotations", "getDefaultSkyAtmosphereHaloColorUseTheme", "defaultSkyAtmosphereHaloColorUseThemeAsExpression", "getDefaultSkyAtmosphereHaloColorUseThemeAsExpression$annotations", "getDefaultSkyAtmosphereHaloColorUseThemeAsExpression", "defaultSkyAtmosphereSun", "", "getDefaultSkyAtmosphereSun", "()Ljava/util/List;", "defaultSkyAtmosphereSunAsExpression", "getDefaultSkyAtmosphereSunAsExpression", "defaultSkyAtmosphereSunIntensity", "getDefaultSkyAtmosphereSunIntensity", "defaultSkyAtmosphereSunIntensityAsExpression", "getDefaultSkyAtmosphereSunIntensityAsExpression", "defaultSkyGradient", "getDefaultSkyGradient", "defaultSkyGradientCenter", "getDefaultSkyGradientCenter", "defaultSkyGradientCenterAsExpression", "getDefaultSkyGradientCenterAsExpression", "defaultSkyGradientRadius", "getDefaultSkyGradientRadius", "defaultSkyGradientRadiusAsExpression", "getDefaultSkyGradientRadiusAsExpression", "defaultSkyGradientUseTheme", "getDefaultSkyGradientUseTheme$annotations", "getDefaultSkyGradientUseTheme", "defaultSkyGradientUseThemeAsExpression", "getDefaultSkyGradientUseThemeAsExpression$annotations", "getDefaultSkyGradientUseThemeAsExpression", "defaultSkyOpacity", "getDefaultSkyOpacity", "defaultSkyOpacityAsExpression", "getDefaultSkyOpacityAsExpression", "defaultSkyOpacityTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getDefaultSkyOpacityTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "defaultSkyType", "Lcom/mapbox/maps/extension/style/layers/properties/generated/SkyType;", "getDefaultSkyType", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/SkyType;", "defaultSkyTypeAsExpression", "getDefaultSkyTypeAsExpression", "defaultVisibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "getDefaultVisibility", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void getDefaultSkyAtmosphereColorUseTheme$annotations() {
        }

        public static void getDefaultSkyAtmosphereColorUseThemeAsExpression$annotations() {
        }

        public static void getDefaultSkyAtmosphereHaloColorUseTheme$annotations() {
        }

        public static void getDefaultSkyAtmosphereHaloColorUseThemeAsExpression$annotations() {
        }

        public static void getDefaultSkyGradientUseTheme$annotations() {
        }

        public static void getDefaultSkyGradientUseThemeAsExpression$annotations() {
        }

        private Companion() {
        }

        public final Visibility getDefaultVisibility() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("sky", "visibility");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…alue(\"sky\", \"visibility\")");
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
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("sky", "minzoom");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ltValue(\"sky\", \"minzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Double getDefaultMaxZoom() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("sky", "maxzoom");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ltValue(\"sky\", \"maxzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final String getDefaultSkyAtmosphereColor() {
            Expression defaultSkyAtmosphereColorAsExpression = getDefaultSkyAtmosphereColorAsExpression();
            if (defaultSkyAtmosphereColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorString(defaultSkyAtmosphereColorAsExpression);
            }
            return null;
        }

        public final Expression getDefaultSkyAtmosphereColorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("sky", "sky-atmosphere-color");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…, \"sky-atmosphere-color\")");
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

        public final Integer getDefaultSkyAtmosphereColorAsColorInt() {
            Expression defaultSkyAtmosphereColorAsExpression = getDefaultSkyAtmosphereColorAsExpression();
            if (defaultSkyAtmosphereColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorInt(defaultSkyAtmosphereColorAsExpression);
            }
            return null;
        }

        public final String getDefaultSkyAtmosphereColorUseTheme() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("sky", "sky-atmosphere-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…osphere-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultSkyAtmosphereColorUseThemeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("sky", "sky-atmosphere-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…osphere-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultSkyAtmosphereColorUseTheme = getDefaultSkyAtmosphereColorUseTheme();
            if (defaultSkyAtmosphereColorUseTheme != null) {
                return Expression.INSTANCE.literal(defaultSkyAtmosphereColorUseTheme);
            }
            return null;
        }

        public final String getDefaultSkyAtmosphereHaloColor() {
            Expression defaultSkyAtmosphereHaloColorAsExpression = getDefaultSkyAtmosphereHaloColorAsExpression();
            if (defaultSkyAtmosphereHaloColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorString(defaultSkyAtmosphereHaloColorAsExpression);
            }
            return null;
        }

        public final Expression getDefaultSkyAtmosphereHaloColorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("sky", "sky-atmosphere-halo-color");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…y-atmosphere-halo-color\")");
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

        public final Integer getDefaultSkyAtmosphereHaloColorAsColorInt() {
            Expression defaultSkyAtmosphereHaloColorAsExpression = getDefaultSkyAtmosphereHaloColorAsExpression();
            if (defaultSkyAtmosphereHaloColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorInt(defaultSkyAtmosphereHaloColorAsExpression);
            }
            return null;
        }

        public final String getDefaultSkyAtmosphereHaloColorUseTheme() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("sky", "sky-atmosphere-halo-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…re-halo-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultSkyAtmosphereHaloColorUseThemeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("sky", "sky-atmosphere-halo-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…re-halo-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultSkyAtmosphereHaloColorUseTheme = getDefaultSkyAtmosphereHaloColorUseTheme();
            if (defaultSkyAtmosphereHaloColorUseTheme != null) {
                return Expression.INSTANCE.literal(defaultSkyAtmosphereHaloColorUseTheme);
            }
            return null;
        }

        public final List<Double> getDefaultSkyAtmosphereSun() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("sky", "sky-atmosphere-sun");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…y\", \"sky-atmosphere-sun\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, List.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (List) objUnwrap;
        }

        public final Expression getDefaultSkyAtmosphereSunAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("sky", "sky-atmosphere-sun");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…y\", \"sky-atmosphere-sun\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            List<Double> defaultSkyAtmosphereSun = getDefaultSkyAtmosphereSun();
            if (defaultSkyAtmosphereSun != null) {
                return Expression.INSTANCE.literal$extension_style_release(defaultSkyAtmosphereSun);
            }
            return null;
        }

        public final Double getDefaultSkyAtmosphereSunIntensity() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("sky", "sky-atmosphere-sun-intensity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…tmosphere-sun-intensity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultSkyAtmosphereSunIntensityAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("sky", "sky-atmosphere-sun-intensity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…tmosphere-sun-intensity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultSkyAtmosphereSunIntensity = getDefaultSkyAtmosphereSunIntensity();
            if (defaultSkyAtmosphereSunIntensity == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultSkyAtmosphereSunIntensity.doubleValue());
        }

        public final Expression getDefaultSkyGradient() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("sky", "sky-gradient");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ue(\"sky\", \"sky-gradient\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Expression) objUnwrap;
        }

        public final String getDefaultSkyGradientUseTheme() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("sky", "sky-gradient-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"sky-gradient-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultSkyGradientUseThemeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("sky", "sky-gradient-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"sky-gradient-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultSkyGradientUseTheme = getDefaultSkyGradientUseTheme();
            if (defaultSkyGradientUseTheme != null) {
                return Expression.INSTANCE.literal(defaultSkyGradientUseTheme);
            }
            return null;
        }

        public final List<Double> getDefaultSkyGradientCenter() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("sky", "sky-gradient-center");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\", \"sky-gradient-center\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, List.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (List) objUnwrap;
        }

        public final Expression getDefaultSkyGradientCenterAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("sky", "sky-gradient-center");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\", \"sky-gradient-center\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            List<Double> defaultSkyGradientCenter = getDefaultSkyGradientCenter();
            if (defaultSkyGradientCenter != null) {
                return Expression.INSTANCE.literal$extension_style_release(defaultSkyGradientCenter);
            }
            return null;
        }

        public final Double getDefaultSkyGradientRadius() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("sky", "sky-gradient-radius");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\", \"sky-gradient-radius\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultSkyGradientRadiusAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("sky", "sky-gradient-radius");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\", \"sky-gradient-radius\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultSkyGradientRadius = getDefaultSkyGradientRadius();
            if (defaultSkyGradientRadius == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultSkyGradientRadius.doubleValue());
        }

        public final Double getDefaultSkyOpacity() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("sky", "sky-opacity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…lue(\"sky\", \"sky-opacity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultSkyOpacityAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("sky", "sky-opacity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…lue(\"sky\", \"sky-opacity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultSkyOpacity = getDefaultSkyOpacity();
            if (defaultSkyOpacity == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultSkyOpacity.doubleValue());
        }

        public final StyleTransition getDefaultSkyOpacityTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("sky", "sky-opacity-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"sky-opacity-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final SkyType getDefaultSkyType() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("sky", "sky-type");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…tValue(\"sky\", \"sky-type\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            String str = (String) objUnwrap;
            if (str == null) {
                return null;
            }
            SkyType.Companion companion = SkyType.INSTANCE;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String upperCase = str.toUpperCase(US);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
        }

        public final Expression getDefaultSkyTypeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("sky", "sky-type");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…tValue(\"sky\", \"sky-type\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            SkyType defaultSkyType = getDefaultSkyType();
            if (defaultSkyType != null) {
                return Expression.INSTANCE.literal(defaultSkyType.getValue());
            }
            return null;
        }
    }
}
