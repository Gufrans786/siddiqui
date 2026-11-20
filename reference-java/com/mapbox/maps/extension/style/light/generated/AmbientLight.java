package com.mapbox.maps.extension.style.light.generated;

import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.properties.PropertyValue;
import com.mapbox.maps.extension.style.light.Light;
import com.mapbox.maps.extension.style.types.StyleTransition;
import com.mapbox.maps.extension.style.utils.ColorUtils;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0006\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u000eH\u0016J\u0012\u0010\u0006\u001a\u00020\u00002\b\b\u0001\u0010\u0006\u001a\u00020\nH\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0004H\u0016J\u0010\u0010\u0011\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u0012H\u0016J!\u0010\u0011\u001a\u00020\u00002\u0017\u0010&\u001a\u0013\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020)0'¢\u0006\u0002\b*H\u0016J\u0010\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u000eH\u0017J\u0010\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0004H\u0017J\r\u0010+\u001a\u00020\u0004H\u0010¢\u0006\u0002\b,J\u0010\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u000eH\u0016J\u0010\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\"\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u0012H\u0016J!\u0010\"\u001a\u00020\u00002\u0017\u0010&\u001a\u0013\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020)0'¢\u0006\u0002\b*H\u0016R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\t\u001a\u0004\u0018\u00010\n8G¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u00128F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\bR\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001a\u0010\u0017\u001a\u0004\b\u001b\u0010\u0010R\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u001d8F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR\u0013\u0010 \u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\b!\u0010\u0010R\u0013\u0010\"\u001a\u0004\u0018\u00010\u00128F¢\u0006\u0006\u001a\u0004\b#\u0010\u0014R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\b¨\u0006-"}, d2 = {"Lcom/mapbox/maps/extension/style/light/generated/AmbientLight;", "Lcom/mapbox/maps/extension/style/light/generated/AmbientLightDslReceiver;", "Lcom/mapbox/maps/extension/style/light/Light;", "lightId", "", "(Ljava/lang/String;)V", "color", "getColor", "()Ljava/lang/String;", "colorAsColorInt", "", "getColorAsColorInt", "()Ljava/lang/Integer;", "colorAsExpression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getColorAsExpression", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "colorTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getColorTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "colorUseTheme", "getColorUseTheme$annotations", "()V", "getColorUseTheme", "colorUseThemeAsExpression", "getColorUseThemeAsExpression$annotations", "getColorUseThemeAsExpression", "intensity", "", "getIntensity", "()Ljava/lang/Double;", "intensityAsExpression", "getIntensityAsExpression", "intensityTransition", "getIntensityTransition", "getLightId", "options", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "getType", "getType$extension_style_release", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class AmbientLight extends Light implements AmbientLightDslReceiver {
    private final String lightId;

    public static void getColorUseTheme$annotations() {
    }

    public static void getColorUseThemeAsExpression$annotations() {
    }

    public AmbientLight(String lightId) {
        Intrinsics.checkNotNullParameter(lightId, "lightId");
        this.lightId = lightId;
    }

    @Override
    public String getLightId() {
        return this.lightId;
    }

    public final Integer getColorAsColorInt() {
        Expression colorAsExpression = getColorAsExpression();
        if (colorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorInt(colorAsExpression);
        }
        return null;
    }

    @Override
    public AmbientLight color(int color) {
        setProperty$extension_style_release(new PropertyValue<>("color", ColorUtils.INSTANCE.colorIntToRgbaExpression(color)));
        return this;
    }

    public final String getColor() {
        Expression colorAsExpression = getColorAsExpression();
        if (colorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorString(colorAsExpression);
        }
        return null;
    }

    @Override
    public AmbientLight color(String color) {
        Intrinsics.checkNotNullParameter(color, "color");
        setProperty$extension_style_release(new PropertyValue<>("color", color));
        return this;
    }

    public final Expression getColorAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("color", Expression.class);
        if (expression != null) {
            return expression;
        }
        return null;
    }

    @Override
    public AmbientLight color(Expression color) {
        Intrinsics.checkNotNullParameter(color, "color");
        setProperty$extension_style_release(new PropertyValue<>("color", color));
        return this;
    }

    public final StyleTransition getColorTransition() {
        return getTransitionProperty$extension_style_release("color-transition");
    }

    @Override
    public AmbientLight colorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("color-transition", options));
        return this;
    }

    @Override
    public AmbientLight colorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        colorTransition(builder.build());
        return this;
    }

    public final Double getIntensity() {
        return (Double) getPropertyValueWithType("intensity", Double.class);
    }

    @Override
    public AmbientLight intensity(double intensity) {
        setProperty$extension_style_release(new PropertyValue<>("intensity", Double.valueOf(intensity)));
        return this;
    }

    public final Expression getIntensityAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("intensity", Expression.class);
        if (expression != null) {
            return expression;
        }
        Double intensity = getIntensity();
        if (intensity == null) {
            return null;
        }
        return Expression.INSTANCE.literal(intensity.doubleValue());
    }

    @Override
    public AmbientLight intensity(Expression intensity) {
        Intrinsics.checkNotNullParameter(intensity, "intensity");
        setProperty$extension_style_release(new PropertyValue<>("intensity", intensity));
        return this;
    }

    public final StyleTransition getIntensityTransition() {
        return getTransitionProperty$extension_style_release("intensity-transition");
    }

    @Override
    public AmbientLight intensityTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("intensity-transition", options));
        return this;
    }

    @Override
    public AmbientLight intensityTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        intensityTransition(builder.build());
        return this;
    }

    public final String getColorUseTheme() {
        return (String) getPropertyValueWithType("color-use-theme", String.class);
    }

    @Override
    public AmbientLight colorUseTheme(String colorUseTheme) {
        Intrinsics.checkNotNullParameter(colorUseTheme, "colorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("color-use-theme", colorUseTheme));
        return this;
    }

    public final Expression getColorUseThemeAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("color-use-theme", Expression.class);
        if (expression != null) {
            return expression;
        }
        String colorUseTheme = getColorUseTheme();
        if (colorUseTheme != null) {
            return Expression.INSTANCE.literal(colorUseTheme);
        }
        return null;
    }

    @Override
    public AmbientLight colorUseTheme(Expression colorUseTheme) {
        Intrinsics.checkNotNullParameter(colorUseTheme, "colorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("color-use-theme", colorUseTheme));
        return this;
    }

    @Override
    public String getType$extension_style_release() {
        return "ambient";
    }
}
