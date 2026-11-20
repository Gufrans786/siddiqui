package com.mapbox.maps.extension.style.atmosphere.generated;

import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.None;
import com.mapbox.bindgen.Value;
import com.mapbox.maps.MapboxStyleException;
import com.mapbox.maps.MapboxStyleManager;
import com.mapbox.maps.extension.style.StyleContract;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.properties.PropertyValue;
import com.mapbox.maps.extension.style.light.LightUtils;
import com.mapbox.maps.extension.style.types.StyleTransition;
import com.mapbox.maps.extension.style.utils.ColorUtils;
import com.mapbox.maps.extension.style.utils.TypeUtilsKt;
import com.transistorsoft.tsbackgroundfetch.BackgroundFetchConfig;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u0006\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b!\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u0000 p2\u00020\u00012\u00020\u0002:\u0001pB\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\\\u001a\u00020]2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\rH\u0016J\u0012\u0010\u0004\u001a\u00020\u00002\b\b\u0001\u0010\u0004\u001a\u00020\tH\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0010\u001a\u00020\u00002\u0006\u0010^\u001a\u00020\u0011H\u0016J!\u0010\u0010\u001a\u00020\u00002\u0017\u0010_\u001a\u0013\u0012\u0004\u0012\u00020a\u0012\u0004\u0012\u00020]0`¢\u0006\u0002\bbH\u0016J\u0010\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\rH\u0017J\u0010\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0005H\u0017J \u0010c\u001a\u0004\u0018\u0001Hd\"\u0006\b\u0000\u0010d\u0018\u00012\u0006\u0010e\u001a\u00020\u0005H\u0082\b¢\u0006\u0002\u0010fJ+\u0010c\u001a\u0004\u0018\u0001Hd\"\u0004\b\u0000\u0010d2\u0006\u0010e\u001a\u00020\u00052\f\u0010g\u001a\b\u0012\u0004\u0012\u0002Hd0hH\u0002¢\u0006\u0002\u0010iJ\u0012\u0010j\u001a\u0004\u0018\u00010\u00112\u0006\u0010k\u001a\u00020\u0005H\u0002J\u0010\u0010 \u001a\u00020\u00002\u0006\u0010 \u001a\u00020\rH\u0016J\u0012\u0010 \u001a\u00020\u00002\b\b\u0001\u0010 \u001a\u00020\tH\u0016J\u0010\u0010 \u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u0005H\u0016J\u0010\u0010&\u001a\u00020\u00002\u0006\u0010^\u001a\u00020\u0011H\u0016J!\u0010&\u001a\u00020\u00002\u0017\u0010_\u001a\u0013\u0012\u0004\u0012\u00020a\u0012\u0004\u0012\u00020]0`¢\u0006\u0002\bbH\u0016J\u0010\u0010(\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\rH\u0017J\u0010\u0010(\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u0005H\u0017J\u0010\u0010.\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\rH\u0016J\u0010\u0010.\u001a\u00020\u00002\u0006\u0010.\u001a\u00020/H\u0016J\u0010\u00104\u001a\u00020\u00002\u0006\u0010^\u001a\u00020\u0011H\u0016J!\u00104\u001a\u00020\u00002\u0017\u0010_\u001a\u0013\u0012\u0004\u0012\u00020a\u0012\u0004\u0012\u00020]0`¢\u0006\u0002\bbH\u0016J\u0010\u0010:\u001a\u00020\u00002\u0006\u0010:\u001a\u00020\rH\u0016J\u0016\u0010:\u001a\u00020\u00002\f\u0010:\u001a\b\u0012\u0004\u0012\u00020/0;H\u0016J\u0010\u0010@\u001a\u00020\u00002\u0006\u0010^\u001a\u00020\u0011H\u0016J!\u0010@\u001a\u00020\u00002\u0017\u0010_\u001a\u0013\u0012\u0004\u0012\u00020a\u0012\u0004\u0012\u00020]0`¢\u0006\u0002\bbH\u0016J\u0014\u0010l\u001a\u00020]2\n\u0010m\u001a\u0006\u0012\u0002\b\u000308H\u0002J\u0010\u0010B\u001a\u00020\u00002\u0006\u0010B\u001a\u00020\rH\u0016J\u0012\u0010B\u001a\u00020\u00002\b\b\u0001\u0010B\u001a\u00020\tH\u0016J\u0010\u0010B\u001a\u00020\u00002\u0006\u0010B\u001a\u00020\u0005H\u0016J\u0010\u0010H\u001a\u00020\u00002\u0006\u0010^\u001a\u00020\u0011H\u0016J!\u0010H\u001a\u00020\u00002\u0017\u0010_\u001a\u0013\u0012\u0004\u0012\u00020a\u0012\u0004\u0012\u00020]0`¢\u0006\u0002\bbH\u0016J\u0010\u0010J\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\rH\u0017J\u0010\u0010J\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\u0005H\u0017J\u0010\u0010P\u001a\u00020\u00002\u0006\u0010P\u001a\u00020\rH\u0016J\u0010\u0010P\u001a\u00020\u00002\u0006\u0010P\u001a\u00020/H\u0016J\u0010\u0010T\u001a\u00020\u00002\u0006\u0010^\u001a\u00020\u0011H\u0016J!\u0010T\u001a\u00020\u00002\u0017\u0010_\u001a\u0013\u0012\u0004\u0012\u00020a\u0012\u0004\u0012\u00020]0`¢\u0006\u0002\bbH\u0016J\u0014\u0010n\u001a\u00020]2\n\u0010o\u001a\u0006\u0012\u0002\b\u000308H\u0002J\u0010\u0010V\u001a\u00020\u00002\u0006\u0010V\u001a\u00020\rH\u0016J\u0016\u0010V\u001a\u00020\u00002\f\u0010V\u001a\b\u0012\u0004\u0012\u00020/0;H\u0016J\u0010\u0010Z\u001a\u00020\u00002\u0006\u0010^\u001a\u00020\u0011H\u0016J!\u0010Z\u001a\u00020\u00002\u0017\u0010_\u001a\u0013\u0012\u0004\u0012\u00020a\u0012\u0004\u0012\u00020]0`¢\u0006\u0002\bbH\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u00058F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\b\u001a\u0004\u0018\u00010\t8G¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\f\u001a\u0004\u0018\u00010\r8F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u00118F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u00058FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0015\u0010\u0003\u001a\u0004\b\u0016\u0010\u0007R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\r8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0018\u0010\u0003\u001a\u0004\b\u0019\u0010\u000fR\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0013\u0010 \u001a\u0004\u0018\u00010\u00058F¢\u0006\u0006\u001a\u0004\b!\u0010\u0007R\u0013\u0010\"\u001a\u0004\u0018\u00010\t8G¢\u0006\u0006\u001a\u0004\b#\u0010\u000bR\u0013\u0010$\u001a\u0004\u0018\u00010\r8F¢\u0006\u0006\u001a\u0004\b%\u0010\u000fR\u0013\u0010&\u001a\u0004\u0018\u00010\u00118F¢\u0006\u0006\u001a\u0004\b'\u0010\u0013R\u001c\u0010(\u001a\u0004\u0018\u00010\u00058FX\u0087\u0004¢\u0006\f\u0012\u0004\b)\u0010\u0003\u001a\u0004\b*\u0010\u0007R\u001c\u0010+\u001a\u0004\u0018\u00010\r8FX\u0087\u0004¢\u0006\f\u0012\u0004\b,\u0010\u0003\u001a\u0004\b-\u0010\u000fR\u0013\u0010.\u001a\u0004\u0018\u00010/8F¢\u0006\u0006\u001a\u0004\b0\u00101R\u0013\u00102\u001a\u0004\u0018\u00010\r8F¢\u0006\u0006\u001a\u0004\b3\u0010\u000fR\u0013\u00104\u001a\u0004\u0018\u00010\u00118F¢\u0006\u0006\u001a\u0004\b5\u0010\u0013R2\u00106\u001a&\u0012\u0004\u0012\u00020\u0005\u0012\b\u0012\u0006\u0012\u0002\b\u00030807j\u0012\u0012\u0004\u0012\u00020\u0005\u0012\b\u0012\u0006\u0012\u0002\b\u000308`9X\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010:\u001a\n\u0012\u0004\u0012\u00020/\u0018\u00010;8F¢\u0006\u0006\u001a\u0004\b<\u0010=R\u0013\u0010>\u001a\u0004\u0018\u00010\r8F¢\u0006\u0006\u001a\u0004\b?\u0010\u000fR\u0013\u0010@\u001a\u0004\u0018\u00010\u00118F¢\u0006\u0006\u001a\u0004\bA\u0010\u0013R\u0013\u0010B\u001a\u0004\u0018\u00010\u00058F¢\u0006\u0006\u001a\u0004\bC\u0010\u0007R\u0013\u0010D\u001a\u0004\u0018\u00010\t8G¢\u0006\u0006\u001a\u0004\bE\u0010\u000bR\u0013\u0010F\u001a\u0004\u0018\u00010\r8F¢\u0006\u0006\u001a\u0004\bG\u0010\u000fR\u0013\u0010H\u001a\u0004\u0018\u00010\u00118F¢\u0006\u0006\u001a\u0004\bI\u0010\u0013R\u001c\u0010J\u001a\u0004\u0018\u00010\u00058FX\u0087\u0004¢\u0006\f\u0012\u0004\bK\u0010\u0003\u001a\u0004\bL\u0010\u0007R\u001c\u0010M\u001a\u0004\u0018\u00010\r8FX\u0087\u0004¢\u0006\f\u0012\u0004\bN\u0010\u0003\u001a\u0004\bO\u0010\u000fR\u0013\u0010P\u001a\u0004\u0018\u00010/8F¢\u0006\u0006\u001a\u0004\bQ\u00101R\u0013\u0010R\u001a\u0004\u0018\u00010\r8F¢\u0006\u0006\u001a\u0004\bS\u0010\u000fR\u0013\u0010T\u001a\u0004\u0018\u00010\u00118F¢\u0006\u0006\u001a\u0004\bU\u0010\u0013R\u0019\u0010V\u001a\n\u0012\u0004\u0012\u00020/\u0018\u00010;8F¢\u0006\u0006\u001a\u0004\bW\u0010=R\u0013\u0010X\u001a\u0004\u0018\u00010\r8F¢\u0006\u0006\u001a\u0004\bY\u0010\u000fR\u0013\u0010Z\u001a\u0004\u0018\u00010\u00118F¢\u0006\u0006\u001a\u0004\b[\u0010\u0013¨\u0006q"}, d2 = {"Lcom/mapbox/maps/extension/style/atmosphere/generated/Atmosphere;", "Lcom/mapbox/maps/extension/style/atmosphere/generated/AtmosphereDslReceiver;", "Lcom/mapbox/maps/extension/style/StyleContract$StyleAtmosphereExtension;", "()V", "color", "", "getColor", "()Ljava/lang/String;", "colorAsColorInt", "", "getColorAsColorInt", "()Ljava/lang/Integer;", "colorAsExpression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getColorAsExpression", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "colorTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getColorTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "colorUseTheme", "getColorUseTheme$annotations", "getColorUseTheme", "colorUseThemeAsExpression", "getColorUseThemeAsExpression$annotations", "getColorUseThemeAsExpression", "delegate", "Lcom/mapbox/maps/MapboxStyleManager;", "getDelegate$extension_style_release", "()Lcom/mapbox/maps/MapboxStyleManager;", "setDelegate$extension_style_release", "(Lcom/mapbox/maps/MapboxStyleManager;)V", "highColor", "getHighColor", "highColorAsColorInt", "getHighColorAsColorInt", "highColorAsExpression", "getHighColorAsExpression", "highColorTransition", "getHighColorTransition", "highColorUseTheme", "getHighColorUseTheme$annotations", "getHighColorUseTheme", "highColorUseThemeAsExpression", "getHighColorUseThemeAsExpression$annotations", "getHighColorUseThemeAsExpression", "horizonBlend", "", "getHorizonBlend", "()Ljava/lang/Double;", "horizonBlendAsExpression", "getHorizonBlendAsExpression", "horizonBlendTransition", "getHorizonBlendTransition", LightUtils.LIGHT_PROPERTIES, "Ljava/util/HashMap;", "Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;", "Lkotlin/collections/HashMap;", "range", "", "getRange", "()Ljava/util/List;", "rangeAsExpression", "getRangeAsExpression", "rangeTransition", "getRangeTransition", "spaceColor", "getSpaceColor", "spaceColorAsColorInt", "getSpaceColorAsColorInt", "spaceColorAsExpression", "getSpaceColorAsExpression", "spaceColorTransition", "getSpaceColorTransition", "spaceColorUseTheme", "getSpaceColorUseTheme$annotations", "getSpaceColorUseTheme", "spaceColorUseThemeAsExpression", "getSpaceColorUseThemeAsExpression$annotations", "getSpaceColorUseThemeAsExpression", "starIntensity", "getStarIntensity", "starIntensityAsExpression", "getStarIntensityAsExpression", "starIntensityTransition", "getStarIntensityTransition", "verticalRange", "getVerticalRange", "verticalRangeAsExpression", "getVerticalRangeAsExpression", "verticalRangeTransition", "getVerticalRangeTransition", "bindTo", "", "options", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "Lkotlin/ExtensionFunctionType;", "getPropertyValue", ExifInterface.GPS_DIRECTION_TRUE, "propertyName", "(Ljava/lang/String;)Ljava/lang/Object;", "clazz", "Ljava/lang/Class;", "(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;", "getTransitionProperty", "transitionName", "setProperty", "property", "updateProperty", "propertyValue", "Companion", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class Atmosphere implements AtmosphereDslReceiver, StyleContract.StyleAtmosphereExtension {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    private static final String TAG = "Mbgl-Atmosphere";
    private MapboxStyleManager delegate;
    private final HashMap<String, PropertyValue<?>> properties = new HashMap<>();

    public static void getColorUseTheme$annotations() {
    }

    public static void getColorUseThemeAsExpression$annotations() {
    }

    public static void getHighColorUseTheme$annotations() {
    }

    public static void getHighColorUseThemeAsExpression$annotations() {
    }

    public static void getSpaceColorUseTheme$annotations() {
    }

    public static void getSpaceColorUseThemeAsExpression$annotations() {
    }

    public final MapboxStyleManager getDelegate() {
        return this.delegate;
    }

    public final void setDelegate$extension_style_release(MapboxStyleManager mapboxStyleManager) {
        this.delegate = mapboxStyleManager;
    }

    public final Integer getColorAsColorInt() {
        Expression colorAsExpression = getColorAsExpression();
        if (colorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorInt(colorAsExpression);
        }
        return null;
    }

    @Override
    public Atmosphere color(int color) {
        setProperty(new PropertyValue<>("color", ColorUtils.INSTANCE.colorIntToRgbaExpression(color)));
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
    public Atmosphere color(String color) {
        Intrinsics.checkNotNullParameter(color, "color");
        setProperty(new PropertyValue<>("color", color));
        return this;
    }

    public final StyleTransition getColorTransition() {
        return getTransitionProperty("color-transition");
    }

    @Override
    public Atmosphere colorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty(new PropertyValue<>("color-transition", options));
        return this;
    }

    @Override
    public Atmosphere colorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        colorTransition(builder.build());
        return this;
    }

    public final Expression getColorAsExpression() {
        Expression expression = (Expression) getPropertyValue("color", Expression.class);
        if (expression != null) {
            return expression;
        }
        return null;
    }

    @Override
    public Atmosphere color(Expression color) {
        Intrinsics.checkNotNullParameter(color, "color");
        setProperty(new PropertyValue<>("color", color));
        return this;
    }

    public final String getColorUseTheme() {
        return (String) getPropertyValue("color-use-theme", String.class);
    }

    @Override
    public Atmosphere colorUseTheme(String colorUseTheme) {
        Intrinsics.checkNotNullParameter(colorUseTheme, "colorUseTheme");
        setProperty(new PropertyValue<>("color-use-theme", colorUseTheme));
        return this;
    }

    public final Expression getColorUseThemeAsExpression() {
        Expression expression = (Expression) getPropertyValue("color-use-theme", Expression.class);
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
    public Atmosphere colorUseTheme(Expression colorUseTheme) {
        Intrinsics.checkNotNullParameter(colorUseTheme, "colorUseTheme");
        setProperty(new PropertyValue<>("color-use-theme", colorUseTheme));
        return this;
    }

    public final Integer getHighColorAsColorInt() {
        Expression highColorAsExpression = getHighColorAsExpression();
        if (highColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorInt(highColorAsExpression);
        }
        return null;
    }

    @Override
    public Atmosphere highColor(int highColor) {
        setProperty(new PropertyValue<>("high-color", ColorUtils.INSTANCE.colorIntToRgbaExpression(highColor)));
        return this;
    }

    public final String getHighColor() {
        Expression highColorAsExpression = getHighColorAsExpression();
        if (highColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorString(highColorAsExpression);
        }
        return null;
    }

    @Override
    public Atmosphere highColor(String highColor) {
        Intrinsics.checkNotNullParameter(highColor, "highColor");
        setProperty(new PropertyValue<>("high-color", highColor));
        return this;
    }

    public final StyleTransition getHighColorTransition() {
        return getTransitionProperty("high-color-transition");
    }

    @Override
    public Atmosphere highColorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty(new PropertyValue<>("high-color-transition", options));
        return this;
    }

    @Override
    public Atmosphere highColorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        highColorTransition(builder.build());
        return this;
    }

    public final Expression getHighColorAsExpression() {
        Expression expression = (Expression) getPropertyValue("high-color", Expression.class);
        if (expression != null) {
            return expression;
        }
        return null;
    }

    @Override
    public Atmosphere highColor(Expression highColor) {
        Intrinsics.checkNotNullParameter(highColor, "highColor");
        setProperty(new PropertyValue<>("high-color", highColor));
        return this;
    }

    public final String getHighColorUseTheme() {
        return (String) getPropertyValue("high-color-use-theme", String.class);
    }

    @Override
    public Atmosphere highColorUseTheme(String highColorUseTheme) {
        Intrinsics.checkNotNullParameter(highColorUseTheme, "highColorUseTheme");
        setProperty(new PropertyValue<>("high-color-use-theme", highColorUseTheme));
        return this;
    }

    public final Expression getHighColorUseThemeAsExpression() {
        Expression expression = (Expression) getPropertyValue("high-color-use-theme", Expression.class);
        if (expression != null) {
            return expression;
        }
        String highColorUseTheme = getHighColorUseTheme();
        if (highColorUseTheme != null) {
            return Expression.INSTANCE.literal(highColorUseTheme);
        }
        return null;
    }

    @Override
    public Atmosphere highColorUseTheme(Expression highColorUseTheme) {
        Intrinsics.checkNotNullParameter(highColorUseTheme, "highColorUseTheme");
        setProperty(new PropertyValue<>("high-color-use-theme", highColorUseTheme));
        return this;
    }

    public final Double getHorizonBlend() {
        return (Double) getPropertyValue("horizon-blend", Double.class);
    }

    @Override
    public Atmosphere horizonBlend(double horizonBlend) {
        setProperty(new PropertyValue<>("horizon-blend", Double.valueOf(horizonBlend)));
        return this;
    }

    public final StyleTransition getHorizonBlendTransition() {
        return getTransitionProperty("horizon-blend-transition");
    }

    @Override
    public Atmosphere horizonBlendTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty(new PropertyValue<>("horizon-blend-transition", options));
        return this;
    }

    @Override
    public Atmosphere horizonBlendTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        horizonBlendTransition(builder.build());
        return this;
    }

    public final Expression getHorizonBlendAsExpression() {
        Expression expression = (Expression) getPropertyValue("horizon-blend", Expression.class);
        if (expression != null) {
            return expression;
        }
        Double horizonBlend = getHorizonBlend();
        if (horizonBlend == null) {
            return null;
        }
        return Expression.INSTANCE.literal(horizonBlend.doubleValue());
    }

    @Override
    public Atmosphere horizonBlend(Expression horizonBlend) {
        Intrinsics.checkNotNullParameter(horizonBlend, "horizonBlend");
        setProperty(new PropertyValue<>("horizon-blend", horizonBlend));
        return this;
    }

    public final List<Double> getRange() {
        return (List) getPropertyValue("range", List.class);
    }

    @Override
    public Atmosphere range(List<Double> range) {
        Intrinsics.checkNotNullParameter(range, "range");
        setProperty(new PropertyValue<>("range", range));
        return this;
    }

    public final StyleTransition getRangeTransition() {
        return getTransitionProperty("range-transition");
    }

    @Override
    public Atmosphere rangeTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty(new PropertyValue<>("range-transition", options));
        return this;
    }

    @Override
    public Atmosphere rangeTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        rangeTransition(builder.build());
        return this;
    }

    public final Expression getRangeAsExpression() {
        Expression expression = (Expression) getPropertyValue("range", Expression.class);
        if (expression != null) {
            return expression;
        }
        List<Double> range = getRange();
        if (range != null) {
            return Expression.INSTANCE.literal$extension_style_release(range);
        }
        return null;
    }

    @Override
    public Atmosphere range(Expression range) {
        Intrinsics.checkNotNullParameter(range, "range");
        setProperty(new PropertyValue<>("range", range));
        return this;
    }

    public final Integer getSpaceColorAsColorInt() {
        Expression spaceColorAsExpression = getSpaceColorAsExpression();
        if (spaceColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorInt(spaceColorAsExpression);
        }
        return null;
    }

    @Override
    public Atmosphere spaceColor(int spaceColor) {
        setProperty(new PropertyValue<>("space-color", ColorUtils.INSTANCE.colorIntToRgbaExpression(spaceColor)));
        return this;
    }

    public final String getSpaceColor() {
        Expression spaceColorAsExpression = getSpaceColorAsExpression();
        if (spaceColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorString(spaceColorAsExpression);
        }
        return null;
    }

    @Override
    public Atmosphere spaceColor(String spaceColor) {
        Intrinsics.checkNotNullParameter(spaceColor, "spaceColor");
        setProperty(new PropertyValue<>("space-color", spaceColor));
        return this;
    }

    public final StyleTransition getSpaceColorTransition() {
        return getTransitionProperty("space-color-transition");
    }

    @Override
    public Atmosphere spaceColorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty(new PropertyValue<>("space-color-transition", options));
        return this;
    }

    @Override
    public Atmosphere spaceColorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        spaceColorTransition(builder.build());
        return this;
    }

    public final Expression getSpaceColorAsExpression() {
        Expression expression = (Expression) getPropertyValue("space-color", Expression.class);
        if (expression != null) {
            return expression;
        }
        return null;
    }

    @Override
    public Atmosphere spaceColor(Expression spaceColor) {
        Intrinsics.checkNotNullParameter(spaceColor, "spaceColor");
        setProperty(new PropertyValue<>("space-color", spaceColor));
        return this;
    }

    public final String getSpaceColorUseTheme() {
        return (String) getPropertyValue("space-color-use-theme", String.class);
    }

    @Override
    public Atmosphere spaceColorUseTheme(String spaceColorUseTheme) {
        Intrinsics.checkNotNullParameter(spaceColorUseTheme, "spaceColorUseTheme");
        setProperty(new PropertyValue<>("space-color-use-theme", spaceColorUseTheme));
        return this;
    }

    public final Expression getSpaceColorUseThemeAsExpression() {
        Expression expression = (Expression) getPropertyValue("space-color-use-theme", Expression.class);
        if (expression != null) {
            return expression;
        }
        String spaceColorUseTheme = getSpaceColorUseTheme();
        if (spaceColorUseTheme != null) {
            return Expression.INSTANCE.literal(spaceColorUseTheme);
        }
        return null;
    }

    @Override
    public Atmosphere spaceColorUseTheme(Expression spaceColorUseTheme) {
        Intrinsics.checkNotNullParameter(spaceColorUseTheme, "spaceColorUseTheme");
        setProperty(new PropertyValue<>("space-color-use-theme", spaceColorUseTheme));
        return this;
    }

    public final Double getStarIntensity() {
        return (Double) getPropertyValue("star-intensity", Double.class);
    }

    @Override
    public Atmosphere starIntensity(double starIntensity) {
        setProperty(new PropertyValue<>("star-intensity", Double.valueOf(starIntensity)));
        return this;
    }

    public final StyleTransition getStarIntensityTransition() {
        return getTransitionProperty("star-intensity-transition");
    }

    @Override
    public Atmosphere starIntensityTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty(new PropertyValue<>("star-intensity-transition", options));
        return this;
    }

    @Override
    public Atmosphere starIntensityTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        starIntensityTransition(builder.build());
        return this;
    }

    public final Expression getStarIntensityAsExpression() {
        Expression expression = (Expression) getPropertyValue("star-intensity", Expression.class);
        if (expression != null) {
            return expression;
        }
        Double starIntensity = getStarIntensity();
        if (starIntensity == null) {
            return null;
        }
        return Expression.INSTANCE.literal(starIntensity.doubleValue());
    }

    @Override
    public Atmosphere starIntensity(Expression starIntensity) {
        Intrinsics.checkNotNullParameter(starIntensity, "starIntensity");
        setProperty(new PropertyValue<>("star-intensity", starIntensity));
        return this;
    }

    public final List<Double> getVerticalRange() {
        return (List) getPropertyValue("vertical-range", List.class);
    }

    @Override
    public Atmosphere verticalRange(List<Double> verticalRange) {
        Intrinsics.checkNotNullParameter(verticalRange, "verticalRange");
        setProperty(new PropertyValue<>("vertical-range", verticalRange));
        return this;
    }

    public final StyleTransition getVerticalRangeTransition() {
        return getTransitionProperty("vertical-range-transition");
    }

    @Override
    public Atmosphere verticalRangeTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty(new PropertyValue<>("vertical-range-transition", options));
        return this;
    }

    @Override
    public Atmosphere verticalRangeTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        verticalRangeTransition(builder.build());
        return this;
    }

    public final Expression getVerticalRangeAsExpression() {
        Expression expression = (Expression) getPropertyValue("vertical-range", Expression.class);
        if (expression != null) {
            return expression;
        }
        List<Double> verticalRange = getVerticalRange();
        if (verticalRange != null) {
            return Expression.INSTANCE.literal$extension_style_release(verticalRange);
        }
        return null;
    }

    @Override
    public Atmosphere verticalRange(Expression verticalRange) {
        Intrinsics.checkNotNullParameter(verticalRange, "verticalRange");
        setProperty(new PropertyValue<>("vertical-range", verticalRange));
        return this;
    }

    @Override
    public void bindTo(MapboxStyleManager delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
        HashMap map = new HashMap();
        for (Map.Entry<String, PropertyValue<?>> entry : this.properties.entrySet()) {
            map.put(entry.getKey(), entry.getValue().getValue());
        }
        String error = delegate.setStyleAtmosphere(new Value((HashMap<String, Value>) map)).getError();
        if (error != null) {
            throw new MapboxStyleException("Set atmosphere failed: " + error);
        }
    }

    private final void setProperty(PropertyValue<?> property) {
        this.properties.put(property.getPropertyName(), property);
        updateProperty(property);
    }

    private final void updateProperty(PropertyValue<?> propertyValue) {
        String error;
        MapboxStyleManager mapboxStyleManager = this.delegate;
        Expected<String, None> styleAtmosphereProperty = mapboxStyleManager != null ? mapboxStyleManager.setStyleAtmosphereProperty(propertyValue.getPropertyName(), propertyValue.getValue()) : null;
        if (styleAtmosphereProperty != null && (error = styleAtmosphereProperty.getError()) != null) {
            throw new MapboxStyleException("Set atmosphere property failed: " + error);
        }
    }

    private final <T> T getPropertyValue(String propertyName) {
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) getPropertyValue(propertyName, Object.class);
    }

    private final <T> T getPropertyValue(String propertyName, Class<T> clazz) {
        MapboxStyleManager mapboxStyleManager = this.delegate;
        if (mapboxStyleManager != null) {
            try {
                return (T) TypeUtilsKt.unwrap(mapboxStyleManager.getStyleAtmosphereProperty(propertyName), clazz);
            } catch (RuntimeException e) {
                Log.e(TAG, "Get atmosphere property failed: " + e.getMessage());
                Log.e(TAG, mapboxStyleManager.getStyleAtmosphereProperty(propertyName).toString());
                return null;
            }
        }
        throw new MapboxStyleException("Get property " + propertyName + " failed: atmosphere is not added to style yet.");
    }

    private final StyleTransition getTransitionProperty(String transitionName) {
        MapboxStyleManager mapboxStyleManager = this.delegate;
        if (mapboxStyleManager != null) {
            try {
                Object contents = mapboxStyleManager.getStyleAtmosphereProperty(transitionName).getValue().getContents();
                Intrinsics.checkNotNull(contents, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, com.mapbox.bindgen.Value>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, com.mapbox.bindgen.Value> }");
                HashMap map = (HashMap) contents;
                Value value = (Value) map.get(TypedValues.TransitionType.S_DURATION);
                Object contents2 = value != null ? value.getContents() : null;
                Intrinsics.checkNotNull(contents2, "null cannot be cast to non-null type kotlin.Long");
                long jLongValue = ((Long) contents2).longValue();
                Value value2 = (Value) map.get(BackgroundFetchConfig.FIELD_DELAY);
                Object contents3 = value2 != null ? value2.getContents() : null;
                Intrinsics.checkNotNull(contents3, "null cannot be cast to non-null type kotlin.Long");
                return new StyleTransition.Builder().delay(((Long) contents3).longValue()).duration(jLongValue).build();
            } catch (RuntimeException e) {
                Log.e(TAG, "Get atmosphere property failed: " + e.getMessage());
                Log.e(TAG, mapboxStyleManager.getStyleAtmosphereProperty(transitionName).toString());
                return null;
            }
        }
        throw new MapboxStyleException("Get property " + transitionName + " failed: atmosphere is not added to style yet.");
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/mapbox/maps/extension/style/atmosphere/generated/Atmosphere$Companion;", "", "()V", "TAG", "", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
