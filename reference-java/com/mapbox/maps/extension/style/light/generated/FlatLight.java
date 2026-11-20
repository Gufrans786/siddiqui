package com.mapbox.maps.extension.style.light.generated;

import ch.qos.logback.core.CoreConstants;
import com.mapbox.maps.MapboxStyleManager;
import com.mapbox.maps.extension.style.StyleContract;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.properties.PropertyValue;
import com.mapbox.maps.extension.style.layers.properties.generated.Anchor;
import com.mapbox.maps.extension.style.light.Light;
import com.mapbox.maps.extension.style.light.LightPosition;
import com.mapbox.maps.extension.style.light.LightUtils;
import com.mapbox.maps.extension.style.types.StyleTransition;
import com.mapbox.maps.extension.style.utils.ColorUtils;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0006\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u000f\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\fH\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u00104\u001a\u0002052\u0006\u00106\u001a\u000207H\u0016J\u0010\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\fH\u0016J\u0012\u0010\u000f\u001a\u00020\u00002\b\b\u0001\u0010\u000f\u001a\u00020\u0013H\u0016J\u0010\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0005H\u0016J\u0010\u0010\u0018\u001a\u00020\u00002\u0006\u00108\u001a\u00020\u0019H\u0016J!\u0010\u0018\u001a\u00020\u00002\u0017\u00109\u001a\u0013\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u0002050:¢\u0006\u0002\b<H\u0016J\u0010\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\fH\u0017J\u0010\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0005H\u0017J\r\u0010=\u001a\u00020\u0005H\u0010¢\u0006\u0002\b>J\u0010\u0010#\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\fH\u0016J\u0010\u0010#\u001a\u00020\u00002\u0006\u0010#\u001a\u00020$H\u0016J\u0010\u0010)\u001a\u00020\u00002\u0006\u00108\u001a\u00020\u0019H\u0016J!\u0010)\u001a\u00020\u00002\u0017\u00109\u001a\u0013\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u0002050:¢\u0006\u0002\b<H\u0016J\u0010\u0010,\u001a\u00020\u00002\u0006\u0010,\u001a\u00020\fH\u0016J\u0010\u0010,\u001a\u00020\u00002\u0006\u0010,\u001a\u00020-H\u0016J \u0010,\u001a\u00020\u00002\u0006\u0010?\u001a\u00020$2\u0006\u0010@\u001a\u00020$2\u0006\u0010A\u001a\u00020$H\u0016J\u0010\u00102\u001a\u00020\u00002\u0006\u00108\u001a\u00020\u0019H\u0016J!\u00102\u001a\u00020\u00002\u0017\u00109\u001a\u0013\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u0002050:¢\u0006\u0002\b<H\u0016R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00058F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u00138G¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u000eR\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u00198F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u00058FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010\u0011R\u001c\u0010 \u001a\u0004\u0018\u00010\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b!\u0010\u001e\u001a\u0004\b\"\u0010\u000eR\u0013\u0010#\u001a\u0004\u0018\u00010$8F¢\u0006\u0006\u001a\u0004\b%\u0010&R\u0013\u0010'\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b(\u0010\u000eR\u0013\u0010)\u001a\u0004\u0018\u00010\u00198F¢\u0006\u0006\u001a\u0004\b*\u0010\u001bR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u0011R\u0013\u0010,\u001a\u0004\u0018\u00010-8F¢\u0006\u0006\u001a\u0004\b.\u0010/R\u0013\u00100\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b1\u0010\u000eR\u0013\u00102\u001a\u0004\u0018\u00010\u00198F¢\u0006\u0006\u001a\u0004\b3\u0010\u001b¨\u0006B"}, d2 = {"Lcom/mapbox/maps/extension/style/light/generated/FlatLight;", "Lcom/mapbox/maps/extension/style/light/generated/FlatLightDslReceiver;", "Lcom/mapbox/maps/extension/style/StyleContract$StyleLightExtension;", "Lcom/mapbox/maps/extension/style/light/Light;", "lightId", "", "(Ljava/lang/String;)V", "anchor", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Anchor;", "getAnchor", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Anchor;", "anchorAsExpression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getAnchorAsExpression", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "color", "getColor", "()Ljava/lang/String;", "colorAsColorInt", "", "getColorAsColorInt", "()Ljava/lang/Integer;", "colorAsExpression", "getColorAsExpression", "colorTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getColorTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "colorUseTheme", "getColorUseTheme$annotations", "()V", "getColorUseTheme", "colorUseThemeAsExpression", "getColorUseThemeAsExpression$annotations", "getColorUseThemeAsExpression", "intensity", "", "getIntensity", "()Ljava/lang/Double;", "intensityAsExpression", "getIntensityAsExpression", "intensityTransition", "getIntensityTransition", "getLightId", "position", "Lcom/mapbox/maps/extension/style/light/LightPosition;", "getPosition", "()Lcom/mapbox/maps/extension/style/light/LightPosition;", "positionAsExpression", "getPositionAsExpression", "positionTransition", "getPositionTransition", "bindTo", "", "delegate", "Lcom/mapbox/maps/MapboxStyleManager;", "options", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "Lkotlin/ExtensionFunctionType;", "getType", "getType$extension_style_release", "radialCoordinate", "azimuthalAngle", "polarAngle", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class FlatLight extends Light implements FlatLightDslReceiver, StyleContract.StyleLightExtension {
    private final String lightId;

    public static void getColorUseTheme$annotations() {
    }

    public static void getColorUseThemeAsExpression$annotations() {
    }

    public FlatLight(String lightId) {
        Intrinsics.checkNotNullParameter(lightId, "lightId");
        this.lightId = lightId;
    }

    @Override
    public String getLightId() {
        return this.lightId;
    }

    public final Anchor getAnchor() {
        String str = (String) getPropertyValueWithType("anchor", String.class);
        if (str == null) {
            return null;
        }
        Anchor.Companion companion = Anchor.INSTANCE;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    @Override
    public FlatLight anchor(Anchor anchor) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        setProperty$extension_style_release(new PropertyValue<>("anchor", anchor));
        return this;
    }

    public final Expression getAnchorAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("anchor", Expression.class);
        if (expression != null) {
            return expression;
        }
        Anchor anchor = getAnchor();
        if (anchor != null) {
            return Expression.INSTANCE.literal(anchor.getValue());
        }
        return null;
    }

    @Override
    public FlatLight anchor(Expression anchor) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        setProperty$extension_style_release(new PropertyValue<>("anchor", anchor));
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
    public FlatLight color(int color) {
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
    public FlatLight color(String color) {
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
    public FlatLight color(Expression color) {
        Intrinsics.checkNotNullParameter(color, "color");
        setProperty$extension_style_release(new PropertyValue<>("color", color));
        return this;
    }

    public final StyleTransition getColorTransition() {
        return getTransitionProperty$extension_style_release("color-transition");
    }

    @Override
    public FlatLight colorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("color-transition", options));
        return this;
    }

    @Override
    public FlatLight colorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
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
    public FlatLight intensity(double intensity) {
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
    public FlatLight intensity(Expression intensity) {
        Intrinsics.checkNotNullParameter(intensity, "intensity");
        setProperty$extension_style_release(new PropertyValue<>("intensity", intensity));
        return this;
    }

    public final StyleTransition getIntensityTransition() {
        return getTransitionProperty$extension_style_release("intensity-transition");
    }

    @Override
    public FlatLight intensityTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("intensity-transition", options));
        return this;
    }

    @Override
    public FlatLight intensityTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        intensityTransition(builder.build());
        return this;
    }

    public final LightPosition getPosition() {
        List<Double> list = (List) getPropertyValueWithType("position", List.class);
        if (list != null) {
            return LightPosition.INSTANCE.fromList(list);
        }
        return null;
    }

    @Override
    public FlatLight position(double radialCoordinate, double azimuthalAngle, double polarAngle) {
        position(new LightPosition(radialCoordinate, azimuthalAngle, polarAngle));
        return this;
    }

    @Override
    public FlatLight position(LightPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        setProperty$extension_style_release(new PropertyValue<>("position", position));
        return this;
    }

    public final Expression getPositionAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("position", Expression.class);
        if (expression != null) {
            return expression;
        }
        LightPosition position = getPosition();
        if (position != null) {
            return Expression.INSTANCE.literal$extension_style_release(position.toList());
        }
        return null;
    }

    @Override
    public FlatLight position(Expression position) {
        Intrinsics.checkNotNullParameter(position, "position");
        setProperty$extension_style_release(new PropertyValue<>("position", position));
        return this;
    }

    public final StyleTransition getPositionTransition() {
        return getTransitionProperty$extension_style_release("position-transition");
    }

    @Override
    public FlatLight positionTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("position-transition", options));
        return this;
    }

    @Override
    public FlatLight positionTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        positionTransition(builder.build());
        return this;
    }

    public final String getColorUseTheme() {
        return (String) getPropertyValueWithType("color-use-theme", String.class);
    }

    @Override
    public FlatLight colorUseTheme(String colorUseTheme) {
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
    public FlatLight colorUseTheme(Expression colorUseTheme) {
        Intrinsics.checkNotNullParameter(colorUseTheme, "colorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("color-use-theme", colorUseTheme));
        return this;
    }

    @Override
    public String getType$extension_style_release() {
        return "flat";
    }

    @Override
    public void bindTo(MapboxStyleManager delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        LightUtils.setLight(delegate, this);
    }
}
