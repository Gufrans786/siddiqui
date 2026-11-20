package com.mapbox.maps.extension.style.layers.generated;

import ch.qos.logback.core.CoreConstants;
import com.facebook.react.modules.appstate.AppStateModule;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.maps.StyleManager;
import com.mapbox.maps.StylePropertyValue;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.Layer;
import com.mapbox.maps.extension.style.layers.properties.PropertyValue;
import com.mapbox.maps.extension.style.layers.properties.generated.BackgroundPitchAlignment;
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

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0006\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 K2\u00020\u00012\u00020\u0002:\u0001KB\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u000eH\u0016J\u0012\u0010\u0006\u001a\u00020\u00002\b\b\u0001\u0010\u0006\u001a\u00020\nH\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0004H\u0016J\u0010\u0010\u0011\u001a\u00020\u00002\u0006\u0010C\u001a\u00020\u0012H\u0016J!\u0010\u0011\u001a\u00020\u00002\u0017\u0010D\u001a\u0013\u0012\u0004\u0012\u00020F\u0012\u0004\u0012\u00020G0E¢\u0006\u0002\bHH\u0016J\u0010\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u000eH\u0017J\u0010\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0004H\u0017J\u0010\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u000eH\u0016J\u0010\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\"\u001a\u00020\u00002\u0006\u0010C\u001a\u00020\u0012H\u0016J!\u0010\"\u001a\u00020\u00002\u0017\u0010D\u001a\u0013\u0012\u0004\u0012\u00020F\u0012\u0004\u0012\u00020G0E¢\u0006\u0002\bHH\u0016J\u0010\u0010$\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u000eH\u0016J\u0010\u0010$\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u001dH\u0016J\u0010\u0010(\u001a\u00020\u00002\u0006\u0010C\u001a\u00020\u0012H\u0016J!\u0010(\u001a\u00020\u00002\u0017\u0010D\u001a\u0013\u0012\u0004\u0012\u00020F\u0012\u0004\u0012\u00020G0E¢\u0006\u0002\bHH\u0016J\u0010\u0010*\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u000eH\u0016J\u0010\u0010*\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u0004H\u0016J\u0010\u0010.\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u000eH\u0017J\u0010\u0010.\u001a\u00020\u00002\u0006\u0010.\u001a\u00020/H\u0017J\r\u0010I\u001a\u00020\u0004H\u0010¢\u0006\u0002\bJJ\u0010\u00107\u001a\u00020\u00002\u0006\u00107\u001a\u00020\u001dH\u0016J\u0010\u00109\u001a\u00020\u00002\u0006\u00109\u001a\u00020\u001dH\u0016J\u0010\u0010;\u001a\u00020\u00002\u0006\u0010;\u001a\u00020\u0004H\u0016J\u0010\u0010=\u001a\u00020\u00002\u0006\u0010=\u001a\u00020\u000eH\u0016J\u0010\u0010=\u001a\u00020\u00002\u0006\u0010=\u001a\u00020>H\u0016R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\t\u001a\u0004\u0018\u00010\n8G¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u00128F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\bR\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001a\u0010\u0017\u001a\u0004\b\u001b\u0010\u0010R\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u001d8F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR\u0013\u0010 \u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\b!\u0010\u0010R\u0013\u0010\"\u001a\u0004\u0018\u00010\u00128F¢\u0006\u0006\u001a\u0004\b#\u0010\u0014R\u0013\u0010$\u001a\u0004\u0018\u00010\u001d8F¢\u0006\u0006\u001a\u0004\b%\u0010\u001fR\u0013\u0010&\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\b'\u0010\u0010R\u0013\u0010(\u001a\u0004\u0018\u00010\u00128F¢\u0006\u0006\u001a\u0004\b)\u0010\u0014R\u0013\u0010*\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b+\u0010\bR\u0013\u0010,\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\b-\u0010\u0010R\u001c\u0010.\u001a\u0004\u0018\u00010/8FX\u0087\u0004¢\u0006\f\u0012\u0004\b0\u0010\u0017\u001a\u0004\b1\u00102R\u001c\u00103\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b4\u0010\u0017\u001a\u0004\b5\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b6\u0010\bR\u0016\u00107\u001a\u0004\u0018\u00010\u001d8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b8\u0010\u001fR\u0016\u00109\u001a\u0004\u0018\u00010\u001d8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b:\u0010\u001fR\u0016\u0010;\u001a\u0004\u0018\u00010\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b<\u0010\bR\u0016\u0010=\u001a\u0004\u0018\u00010>8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b?\u0010@R\u0016\u0010A\u001a\u0004\u0018\u00010\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bB\u0010\u0010¨\u0006L"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/BackgroundLayer;", "Lcom/mapbox/maps/extension/style/layers/generated/BackgroundLayerDsl;", "Lcom/mapbox/maps/extension/style/layers/Layer;", "layerId", "", "(Ljava/lang/String;)V", ViewProps.BACKGROUND_COLOR, "getBackgroundColor", "()Ljava/lang/String;", "backgroundColorAsColorInt", "", "getBackgroundColorAsColorInt", "()Ljava/lang/Integer;", "backgroundColorAsExpression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getBackgroundColorAsExpression", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "backgroundColorTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getBackgroundColorTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "backgroundColorUseTheme", "getBackgroundColorUseTheme$annotations", "()V", "getBackgroundColorUseTheme", "backgroundColorUseThemeAsExpression", "getBackgroundColorUseThemeAsExpression$annotations", "getBackgroundColorUseThemeAsExpression", "backgroundEmissiveStrength", "", "getBackgroundEmissiveStrength", "()Ljava/lang/Double;", "backgroundEmissiveStrengthAsExpression", "getBackgroundEmissiveStrengthAsExpression", "backgroundEmissiveStrengthTransition", "getBackgroundEmissiveStrengthTransition", "backgroundOpacity", "getBackgroundOpacity", "backgroundOpacityAsExpression", "getBackgroundOpacityAsExpression", "backgroundOpacityTransition", "getBackgroundOpacityTransition", "backgroundPattern", "getBackgroundPattern", "backgroundPatternAsExpression", "getBackgroundPatternAsExpression", "backgroundPitchAlignment", "Lcom/mapbox/maps/extension/style/layers/properties/generated/BackgroundPitchAlignment;", "getBackgroundPitchAlignment$annotations", "getBackgroundPitchAlignment", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/BackgroundPitchAlignment;", "backgroundPitchAlignmentAsExpression", "getBackgroundPitchAlignmentAsExpression$annotations", "getBackgroundPitchAlignmentAsExpression", "getLayerId", "maxZoom", "getMaxZoom", "minZoom", "getMinZoom", "slot", "getSlot", "visibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "getVisibility", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "visibilityAsExpression", "getVisibilityAsExpression", "options", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "getType", "getType$extension_style_release", "Companion", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class BackgroundLayer extends Layer implements BackgroundLayerDsl {

    public static final Companion INSTANCE = new Companion(null);
    private final String layerId;

    public static void getBackgroundColorUseTheme$annotations() {
    }

    public static void getBackgroundColorUseThemeAsExpression$annotations() {
    }

    public static void getBackgroundPitchAlignment$annotations() {
    }

    public static void getBackgroundPitchAlignmentAsExpression$annotations() {
    }

    public BackgroundLayer(String layerId) {
        Intrinsics.checkNotNullParameter(layerId, "layerId");
        this.layerId = layerId;
    }

    @Override
    public String getLayerId() {
        return this.layerId;
    }

    @Override
    public BackgroundLayer slot(String slot) {
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
    public BackgroundLayer visibility(Visibility visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        setProperty$extension_style_release(new PropertyValue<>("visibility", visibility));
        return this;
    }

    @Override
    public BackgroundLayer visibility(Expression visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        setProperty$extension_style_release(new PropertyValue<>("visibility", visibility));
        return this;
    }

    @Override
    public Double getMinZoom() {
        return (Double) getPropertyValueWithType("minzoom", Double.class);
    }

    @Override
    public BackgroundLayer minZoom(double minZoom) {
        setProperty$extension_style_release(new PropertyValue<>("minzoom", Double.valueOf(minZoom)));
        return this;
    }

    @Override
    public Double getMaxZoom() {
        return (Double) getPropertyValueWithType("maxzoom", Double.class);
    }

    @Override
    public BackgroundLayer maxZoom(double maxZoom) {
        setProperty$extension_style_release(new PropertyValue<>("maxzoom", Double.valueOf(maxZoom)));
        return this;
    }

    public final String getBackgroundColor() {
        Expression backgroundColorAsExpression = getBackgroundColorAsExpression();
        if (backgroundColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorString(backgroundColorAsExpression);
        }
        return null;
    }

    @Override
    public BackgroundLayer backgroundColor(String backgroundColor) {
        Intrinsics.checkNotNullParameter(backgroundColor, "backgroundColor");
        setProperty$extension_style_release(new PropertyValue<>("background-color", backgroundColor));
        return this;
    }

    public final Expression getBackgroundColorAsExpression() {
        return (Expression) getPropertyValueWithType("background-color", Expression.class);
    }

    @Override
    public BackgroundLayer backgroundColor(Expression backgroundColor) {
        Intrinsics.checkNotNullParameter(backgroundColor, "backgroundColor");
        setProperty$extension_style_release(new PropertyValue<>("background-color", backgroundColor));
        return this;
    }

    public final Integer getBackgroundColorAsColorInt() {
        Expression backgroundColorAsExpression = getBackgroundColorAsExpression();
        if (backgroundColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorInt(backgroundColorAsExpression);
        }
        return null;
    }

    @Override
    public BackgroundLayer backgroundColor(int backgroundColor) {
        setProperty$extension_style_release(new PropertyValue<>("background-color", ColorUtils.INSTANCE.colorIntToRgbaExpression(backgroundColor)));
        return this;
    }

    public final StyleTransition getBackgroundColorTransition() {
        return (StyleTransition) getPropertyValueWithType("background-color-transition", StyleTransition.class);
    }

    @Override
    public BackgroundLayer backgroundColorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("background-color-transition", options));
        return this;
    }

    @Override
    public BackgroundLayer backgroundColorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        backgroundColorTransition(builder.build());
        return this;
    }

    public final String getBackgroundColorUseTheme() {
        return (String) getPropertyValueWithType("background-color-use-theme", String.class);
    }

    @Override
    public BackgroundLayer backgroundColorUseTheme(String backgroundColorUseTheme) {
        Intrinsics.checkNotNullParameter(backgroundColorUseTheme, "backgroundColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("background-color-use-theme", backgroundColorUseTheme));
        return this;
    }

    public final Expression getBackgroundColorUseThemeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("background-color-use-theme");
    }

    @Override
    public BackgroundLayer backgroundColorUseTheme(Expression backgroundColorUseTheme) {
        Intrinsics.checkNotNullParameter(backgroundColorUseTheme, "backgroundColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("background-color-use-theme", backgroundColorUseTheme));
        return this;
    }

    public final Double getBackgroundEmissiveStrength() {
        return (Double) getPropertyValueWithType("background-emissive-strength", Double.class);
    }

    @Override
    public BackgroundLayer backgroundEmissiveStrength(double backgroundEmissiveStrength) {
        setProperty$extension_style_release(new PropertyValue<>("background-emissive-strength", Double.valueOf(backgroundEmissiveStrength)));
        return this;
    }

    public final Expression getBackgroundEmissiveStrengthAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("background-emissive-strength");
    }

    @Override
    public BackgroundLayer backgroundEmissiveStrength(Expression backgroundEmissiveStrength) {
        Intrinsics.checkNotNullParameter(backgroundEmissiveStrength, "backgroundEmissiveStrength");
        setProperty$extension_style_release(new PropertyValue<>("background-emissive-strength", backgroundEmissiveStrength));
        return this;
    }

    public final StyleTransition getBackgroundEmissiveStrengthTransition() {
        return (StyleTransition) getPropertyValueWithType("background-emissive-strength-transition", StyleTransition.class);
    }

    @Override
    public BackgroundLayer backgroundEmissiveStrengthTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("background-emissive-strength-transition", options));
        return this;
    }

    @Override
    public BackgroundLayer backgroundEmissiveStrengthTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        backgroundEmissiveStrengthTransition(builder.build());
        return this;
    }

    public final Double getBackgroundOpacity() {
        return (Double) getPropertyValueWithType("background-opacity", Double.class);
    }

    @Override
    public BackgroundLayer backgroundOpacity(double backgroundOpacity) {
        setProperty$extension_style_release(new PropertyValue<>("background-opacity", Double.valueOf(backgroundOpacity)));
        return this;
    }

    public final Expression getBackgroundOpacityAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("background-opacity");
    }

    @Override
    public BackgroundLayer backgroundOpacity(Expression backgroundOpacity) {
        Intrinsics.checkNotNullParameter(backgroundOpacity, "backgroundOpacity");
        setProperty$extension_style_release(new PropertyValue<>("background-opacity", backgroundOpacity));
        return this;
    }

    public final StyleTransition getBackgroundOpacityTransition() {
        return (StyleTransition) getPropertyValueWithType("background-opacity-transition", StyleTransition.class);
    }

    @Override
    public BackgroundLayer backgroundOpacityTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("background-opacity-transition", options));
        return this;
    }

    @Override
    public BackgroundLayer backgroundOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        backgroundOpacityTransition(builder.build());
        return this;
    }

    public final String getBackgroundPattern() {
        return (String) getPropertyValueWithType("background-pattern", String.class);
    }

    @Override
    public BackgroundLayer backgroundPattern(String backgroundPattern) {
        Intrinsics.checkNotNullParameter(backgroundPattern, "backgroundPattern");
        setProperty$extension_style_release(new PropertyValue<>("background-pattern", backgroundPattern));
        return this;
    }

    public final Expression getBackgroundPatternAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("background-pattern");
    }

    @Override
    public BackgroundLayer backgroundPattern(Expression backgroundPattern) {
        Intrinsics.checkNotNullParameter(backgroundPattern, "backgroundPattern");
        setProperty$extension_style_release(new PropertyValue<>("background-pattern", backgroundPattern));
        return this;
    }

    public final BackgroundPitchAlignment getBackgroundPitchAlignment() {
        String str = (String) getPropertyValueWithType("background-pitch-alignment", String.class);
        if (str == null) {
            return null;
        }
        BackgroundPitchAlignment.Companion companion = BackgroundPitchAlignment.INSTANCE;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    @Override
    public BackgroundLayer backgroundPitchAlignment(BackgroundPitchAlignment backgroundPitchAlignment) {
        Intrinsics.checkNotNullParameter(backgroundPitchAlignment, "backgroundPitchAlignment");
        setProperty$extension_style_release(new PropertyValue<>("background-pitch-alignment", backgroundPitchAlignment));
        return this;
    }

    public final Expression getBackgroundPitchAlignmentAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("background-pitch-alignment", Expression.class);
        if (expression != null) {
            return expression;
        }
        BackgroundPitchAlignment backgroundPitchAlignment = getBackgroundPitchAlignment();
        if (backgroundPitchAlignment != null) {
            return Expression.INSTANCE.literal(backgroundPitchAlignment.getValue());
        }
        return null;
    }

    @Override
    public BackgroundLayer backgroundPitchAlignment(Expression backgroundPitchAlignment) {
        Intrinsics.checkNotNullParameter(backgroundPitchAlignment, "backgroundPitchAlignment");
        setProperty$extension_style_release(new PropertyValue<>("background-pitch-alignment", backgroundPitchAlignment));
        return this;
    }

    @Override
    public String getType$extension_style_release() {
        return AppStateModule.APP_STATE_BACKGROUND;
    }

    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0006\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b8G¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0014\u0010\u0002\u001a\u0004\b\u0015\u0010\u0006R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0017\u0010\u0002\u001a\u0004\b\u0018\u0010\u000eR\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u001a8F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u0013\u0010\u001d\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u000eR\u0013\u0010\u001f\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\b \u0010\u0012R\u0013\u0010!\u001a\u0004\u0018\u00010\u001a8F¢\u0006\u0006\u001a\u0004\b\"\u0010\u001cR\u0013\u0010#\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b$\u0010\u000eR\u0013\u0010%\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\b&\u0010\u0012R\u0013\u0010'\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b(\u0010\u0006R\u0013\u0010)\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b*\u0010\u000eR\u001c\u0010+\u001a\u0004\u0018\u00010,8FX\u0087\u0004¢\u0006\f\u0012\u0004\b-\u0010\u0002\u001a\u0004\b.\u0010/R\u001c\u00100\u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b1\u0010\u0002\u001a\u0004\b2\u0010\u000eR\u0013\u00103\u001a\u0004\u0018\u00010\u001a8F¢\u0006\u0006\u001a\u0004\b4\u0010\u001cR\u0013\u00105\u001a\u0004\u0018\u00010\u001a8F¢\u0006\u0006\u001a\u0004\b6\u0010\u001cR\u0013\u00107\u001a\u0004\u0018\u0001088F¢\u0006\u0006\u001a\u0004\b9\u0010:¨\u0006;"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/BackgroundLayer$Companion;", "", "()V", "defaultBackgroundColor", "", "getDefaultBackgroundColor", "()Ljava/lang/String;", "defaultBackgroundColorAsColorInt", "", "getDefaultBackgroundColorAsColorInt", "()Ljava/lang/Integer;", "defaultBackgroundColorAsExpression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getDefaultBackgroundColorAsExpression", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "defaultBackgroundColorTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getDefaultBackgroundColorTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "defaultBackgroundColorUseTheme", "getDefaultBackgroundColorUseTheme$annotations", "getDefaultBackgroundColorUseTheme", "defaultBackgroundColorUseThemeAsExpression", "getDefaultBackgroundColorUseThemeAsExpression$annotations", "getDefaultBackgroundColorUseThemeAsExpression", "defaultBackgroundEmissiveStrength", "", "getDefaultBackgroundEmissiveStrength", "()Ljava/lang/Double;", "defaultBackgroundEmissiveStrengthAsExpression", "getDefaultBackgroundEmissiveStrengthAsExpression", "defaultBackgroundEmissiveStrengthTransition", "getDefaultBackgroundEmissiveStrengthTransition", "defaultBackgroundOpacity", "getDefaultBackgroundOpacity", "defaultBackgroundOpacityAsExpression", "getDefaultBackgroundOpacityAsExpression", "defaultBackgroundOpacityTransition", "getDefaultBackgroundOpacityTransition", "defaultBackgroundPattern", "getDefaultBackgroundPattern", "defaultBackgroundPatternAsExpression", "getDefaultBackgroundPatternAsExpression", "defaultBackgroundPitchAlignment", "Lcom/mapbox/maps/extension/style/layers/properties/generated/BackgroundPitchAlignment;", "getDefaultBackgroundPitchAlignment$annotations", "getDefaultBackgroundPitchAlignment", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/BackgroundPitchAlignment;", "defaultBackgroundPitchAlignmentAsExpression", "getDefaultBackgroundPitchAlignmentAsExpression$annotations", "getDefaultBackgroundPitchAlignmentAsExpression", "defaultMaxZoom", "getDefaultMaxZoom", "defaultMinZoom", "getDefaultMinZoom", "defaultVisibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "getDefaultVisibility", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void getDefaultBackgroundColorUseTheme$annotations() {
        }

        public static void getDefaultBackgroundColorUseThemeAsExpression$annotations() {
        }

        public static void getDefaultBackgroundPitchAlignment$annotations() {
        }

        public static void getDefaultBackgroundPitchAlignmentAsExpression$annotations() {
        }

        private Companion() {
        }

        public final Visibility getDefaultVisibility() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(AppStateModule.APP_STATE_BACKGROUND, "visibility");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ackground\", \"visibility\")");
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
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(AppStateModule.APP_STATE_BACKGROUND, "minzoom");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…(\"background\", \"minzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Double getDefaultMaxZoom() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(AppStateModule.APP_STATE_BACKGROUND, "maxzoom");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…(\"background\", \"maxzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final String getDefaultBackgroundColor() {
            Expression defaultBackgroundColorAsExpression = getDefaultBackgroundColorAsExpression();
            if (defaultBackgroundColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorString(defaultBackgroundColorAsExpression);
            }
            return null;
        }

        public final Expression getDefaultBackgroundColorAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(AppStateModule.APP_STATE_BACKGROUND, "background-color");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…und\", \"background-color\")");
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

        public final Integer getDefaultBackgroundColorAsColorInt() {
            Expression defaultBackgroundColorAsExpression = getDefaultBackgroundColorAsExpression();
            if (defaultBackgroundColorAsExpression != null) {
                return ColorUtils.INSTANCE.rgbaExpressionToColorInt(defaultBackgroundColorAsExpression);
            }
            return null;
        }

        public final StyleTransition getDefaultBackgroundColorTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(AppStateModule.APP_STATE_BACKGROUND, "background-color-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ground-color-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultBackgroundColorUseTheme() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(AppStateModule.APP_STATE_BACKGROUND, "background-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…kground-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultBackgroundColorUseThemeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(AppStateModule.APP_STATE_BACKGROUND, "background-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…kground-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultBackgroundColorUseTheme = getDefaultBackgroundColorUseTheme();
            if (defaultBackgroundColorUseTheme != null) {
                return Expression.INSTANCE.literal(defaultBackgroundColorUseTheme);
            }
            return null;
        }

        public final Double getDefaultBackgroundEmissiveStrength() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(AppStateModule.APP_STATE_BACKGROUND, "background-emissive-strength");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…round-emissive-strength\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultBackgroundEmissiveStrengthAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(AppStateModule.APP_STATE_BACKGROUND, "background-emissive-strength");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…round-emissive-strength\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultBackgroundEmissiveStrength = getDefaultBackgroundEmissiveStrength();
            if (defaultBackgroundEmissiveStrength == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultBackgroundEmissiveStrength.doubleValue());
        }

        public final StyleTransition getDefaultBackgroundEmissiveStrengthTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(AppStateModule.APP_STATE_BACKGROUND, "background-emissive-strength-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ive-strength-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultBackgroundOpacity() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(AppStateModule.APP_STATE_BACKGROUND, "background-opacity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…d\", \"background-opacity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultBackgroundOpacityAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(AppStateModule.APP_STATE_BACKGROUND, "background-opacity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…d\", \"background-opacity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultBackgroundOpacity = getDefaultBackgroundOpacity();
            if (defaultBackgroundOpacity == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultBackgroundOpacity.doubleValue());
        }

        public final StyleTransition getDefaultBackgroundOpacityTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(AppStateModule.APP_STATE_BACKGROUND, "background-opacity-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ound-opacity-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultBackgroundPattern() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(AppStateModule.APP_STATE_BACKGROUND, "background-pattern");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…d\", \"background-pattern\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultBackgroundPatternAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(AppStateModule.APP_STATE_BACKGROUND, "background-pattern");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…d\", \"background-pattern\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultBackgroundPattern = getDefaultBackgroundPattern();
            if (defaultBackgroundPattern != null) {
                return Expression.INSTANCE.literal(defaultBackgroundPattern);
            }
            return null;
        }

        public final BackgroundPitchAlignment getDefaultBackgroundPitchAlignment() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(AppStateModule.APP_STATE_BACKGROUND, "background-pitch-alignment");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…kground-pitch-alignment\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            String str = (String) objUnwrap;
            if (str == null) {
                return null;
            }
            BackgroundPitchAlignment.Companion companion = BackgroundPitchAlignment.INSTANCE;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String upperCase = str.toUpperCase(US);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
        }

        public final Expression getDefaultBackgroundPitchAlignmentAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue(AppStateModule.APP_STATE_BACKGROUND, "background-pitch-alignment");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…kground-pitch-alignment\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            BackgroundPitchAlignment defaultBackgroundPitchAlignment = getDefaultBackgroundPitchAlignment();
            if (defaultBackgroundPitchAlignment != null) {
                return Expression.INSTANCE.literal(defaultBackgroundPitchAlignment.getValue());
            }
            return null;
        }
    }
}
