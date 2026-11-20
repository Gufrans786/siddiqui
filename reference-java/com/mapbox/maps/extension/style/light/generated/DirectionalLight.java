package com.mapbox.maps.extension.style.light.generated;

import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.properties.PropertyValue;
import com.mapbox.maps.extension.style.light.Light;
import com.mapbox.maps.extension.style.types.StyleTransition;
import com.mapbox.maps.extension.style.utils.ColorUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010 \n\u0002\u0010\u0006\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u000bH\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000bH\u0016J\u0012\u0010\u000e\u001a\u00020\u00002\b\b\u0001\u0010\u000e\u001a\u00020\u0012H\u0016J\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0004H\u0016J\u0010\u0010\u0017\u001a\u00020\u00002\u0006\u00109\u001a\u00020\u0018H\u0016J!\u0010\u0017\u001a\u00020\u00002\u0017\u0010:\u001a\u0013\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020=0;¢\u0006\u0002\b>H\u0016J\u0010\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u000bH\u0017J\u0010\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0004H\u0017J\u0010\u0010\"\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u000bH\u0016J\u0016\u0010\"\u001a\u00020\u00002\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020$0#H\u0016J\u0010\u0010)\u001a\u00020\u00002\u0006\u00109\u001a\u00020\u0018H\u0016J!\u0010)\u001a\u00020\u00002\u0017\u0010:\u001a\u0013\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020=0;¢\u0006\u0002\b>H\u0016J\r\u0010?\u001a\u00020\u0004H\u0010¢\u0006\u0002\b@J\u0010\u0010+\u001a\u00020\u00002\u0006\u0010+\u001a\u00020\u000bH\u0016J\u0010\u0010+\u001a\u00020\u00002\u0006\u0010+\u001a\u00020$H\u0016J\u0010\u00100\u001a\u00020\u00002\u0006\u00109\u001a\u00020\u0018H\u0016J!\u00100\u001a\u00020\u00002\u0017\u0010:\u001a\u0013\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020=0;¢\u0006\u0002\b>H\u0016J\u0010\u00103\u001a\u00020\u00002\u0006\u00103\u001a\u00020\u000bH\u0016J\u0010\u00103\u001a\u00020\u00002\u0006\u00103\u001a\u00020$H\u0016J\u0010\u00107\u001a\u00020\u00002\u0006\u00109\u001a\u00020\u0018H\u0016J!\u00107\u001a\u00020\u00002\u0017\u0010:\u001a\u0013\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020=0;¢\u0006\u0002\b>H\u0016R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u00078F¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u00128G¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\rR\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u0010R\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u000b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b \u0010\u001d\u001a\u0004\b!\u0010\rR\u0019\u0010\"\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010#8F¢\u0006\u0006\u001a\u0004\b%\u0010&R\u0013\u0010'\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\b(\u0010\rR\u0013\u0010)\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0006\u001a\u0004\b*\u0010\u001aR\u0013\u0010+\u001a\u0004\u0018\u00010$8F¢\u0006\u0006\u001a\u0004\b,\u0010-R\u0013\u0010.\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\b/\u0010\rR\u0013\u00100\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0006\u001a\u0004\b1\u0010\u001aR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u0010\u0010R\u0013\u00103\u001a\u0004\u0018\u00010$8F¢\u0006\u0006\u001a\u0004\b4\u0010-R\u0013\u00105\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\b6\u0010\rR\u0013\u00107\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0006\u001a\u0004\b8\u0010\u001a¨\u0006A"}, d2 = {"Lcom/mapbox/maps/extension/style/light/generated/DirectionalLight;", "Lcom/mapbox/maps/extension/style/light/generated/DirectionalLightDslReceiver;", "Lcom/mapbox/maps/extension/style/light/Light;", "lightId", "", "(Ljava/lang/String;)V", "castShadows", "", "getCastShadows", "()Ljava/lang/Boolean;", "castShadowsAsExpression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getCastShadowsAsExpression", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "color", "getColor", "()Ljava/lang/String;", "colorAsColorInt", "", "getColorAsColorInt", "()Ljava/lang/Integer;", "colorAsExpression", "getColorAsExpression", "colorTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getColorTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "colorUseTheme", "getColorUseTheme$annotations", "()V", "getColorUseTheme", "colorUseThemeAsExpression", "getColorUseThemeAsExpression$annotations", "getColorUseThemeAsExpression", "direction", "", "", "getDirection", "()Ljava/util/List;", "directionAsExpression", "getDirectionAsExpression", "directionTransition", "getDirectionTransition", "intensity", "getIntensity", "()Ljava/lang/Double;", "intensityAsExpression", "getIntensityAsExpression", "intensityTransition", "getIntensityTransition", "getLightId", "shadowIntensity", "getShadowIntensity", "shadowIntensityAsExpression", "getShadowIntensityAsExpression", "shadowIntensityTransition", "getShadowIntensityTransition", "options", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "getType", "getType$extension_style_release", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class DirectionalLight extends Light implements DirectionalLightDslReceiver {
    private final String lightId;

    public static void getColorUseTheme$annotations() {
    }

    public static void getColorUseThemeAsExpression$annotations() {
    }

    public DirectionalLight(String lightId) {
        Intrinsics.checkNotNullParameter(lightId, "lightId");
        this.lightId = lightId;
    }

    @Override
    public String getLightId() {
        return this.lightId;
    }

    public final Boolean getCastShadows() {
        return (Boolean) getPropertyValueWithType("cast-shadows", Boolean.class);
    }

    @Override
    public DirectionalLight castShadows(boolean castShadows) {
        setProperty$extension_style_release(new PropertyValue<>("cast-shadows", Boolean.valueOf(castShadows)));
        return this;
    }

    public final Expression getCastShadowsAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("cast-shadows", Expression.class);
        if (expression != null) {
            return expression;
        }
        Boolean castShadows = getCastShadows();
        if (castShadows == null) {
            return null;
        }
        return Expression.INSTANCE.literal(castShadows.booleanValue());
    }

    @Override
    public DirectionalLight castShadows(Expression castShadows) {
        Intrinsics.checkNotNullParameter(castShadows, "castShadows");
        setProperty$extension_style_release(new PropertyValue<>("cast-shadows", castShadows));
        return this;
    }

    public final Integer getColorAsColorInt() {
        Expression colorAsExpression = getColorAsExpression();
        if (colorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorInt(colorAsExpression);
        }
        return null;
    }

    @Override
    public DirectionalLight color(int color) {
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
    public DirectionalLight color(String color) {
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
    public DirectionalLight color(Expression color) {
        Intrinsics.checkNotNullParameter(color, "color");
        setProperty$extension_style_release(new PropertyValue<>("color", color));
        return this;
    }

    public final StyleTransition getColorTransition() {
        return getTransitionProperty$extension_style_release("color-transition");
    }

    @Override
    public DirectionalLight colorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("color-transition", options));
        return this;
    }

    @Override
    public DirectionalLight colorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        colorTransition(builder.build());
        return this;
    }

    public final List<Double> getDirection() {
        return (List) getPropertyValueWithType("direction", List.class);
    }

    @Override
    public DirectionalLight direction(List<Double> direction) {
        Intrinsics.checkNotNullParameter(direction, "direction");
        setProperty$extension_style_release(new PropertyValue<>("direction", direction));
        return this;
    }

    public final Expression getDirectionAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("direction", Expression.class);
        if (expression != null) {
            return expression;
        }
        List<Double> direction = getDirection();
        if (direction != null) {
            return Expression.INSTANCE.literal$extension_style_release(direction);
        }
        return null;
    }

    @Override
    public DirectionalLight direction(Expression direction) {
        Intrinsics.checkNotNullParameter(direction, "direction");
        setProperty$extension_style_release(new PropertyValue<>("direction", direction));
        return this;
    }

    public final StyleTransition getDirectionTransition() {
        return getTransitionProperty$extension_style_release("direction-transition");
    }

    @Override
    public DirectionalLight directionTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("direction-transition", options));
        return this;
    }

    @Override
    public DirectionalLight directionTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        directionTransition(builder.build());
        return this;
    }

    public final Double getIntensity() {
        return (Double) getPropertyValueWithType("intensity", Double.class);
    }

    @Override
    public DirectionalLight intensity(double intensity) {
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
    public DirectionalLight intensity(Expression intensity) {
        Intrinsics.checkNotNullParameter(intensity, "intensity");
        setProperty$extension_style_release(new PropertyValue<>("intensity", intensity));
        return this;
    }

    public final StyleTransition getIntensityTransition() {
        return getTransitionProperty$extension_style_release("intensity-transition");
    }

    @Override
    public DirectionalLight intensityTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("intensity-transition", options));
        return this;
    }

    @Override
    public DirectionalLight intensityTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        intensityTransition(builder.build());
        return this;
    }

    public final Double getShadowIntensity() {
        return (Double) getPropertyValueWithType("shadow-intensity", Double.class);
    }

    @Override
    public DirectionalLight shadowIntensity(double shadowIntensity) {
        setProperty$extension_style_release(new PropertyValue<>("shadow-intensity", Double.valueOf(shadowIntensity)));
        return this;
    }

    public final Expression getShadowIntensityAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("shadow-intensity", Expression.class);
        if (expression != null) {
            return expression;
        }
        Double shadowIntensity = getShadowIntensity();
        if (shadowIntensity == null) {
            return null;
        }
        return Expression.INSTANCE.literal(shadowIntensity.doubleValue());
    }

    @Override
    public DirectionalLight shadowIntensity(Expression shadowIntensity) {
        Intrinsics.checkNotNullParameter(shadowIntensity, "shadowIntensity");
        setProperty$extension_style_release(new PropertyValue<>("shadow-intensity", shadowIntensity));
        return this;
    }

    public final StyleTransition getShadowIntensityTransition() {
        return getTransitionProperty$extension_style_release("shadow-intensity-transition");
    }

    @Override
    public DirectionalLight shadowIntensityTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("shadow-intensity-transition", options));
        return this;
    }

    @Override
    public DirectionalLight shadowIntensityTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        shadowIntensityTransition(builder.build());
        return this;
    }

    public final String getColorUseTheme() {
        return (String) getPropertyValueWithType("color-use-theme", String.class);
    }

    @Override
    public DirectionalLight colorUseTheme(String colorUseTheme) {
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
    public DirectionalLight colorUseTheme(Expression colorUseTheme) {
        Intrinsics.checkNotNullParameter(colorUseTheme, "colorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("color-use-theme", colorUseTheme));
        return this;
    }

    @Override
    public String getType$extension_style_release() {
        return "directional";
    }
}
