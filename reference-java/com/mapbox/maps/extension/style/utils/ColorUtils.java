package com.mapbox.maps.extension.style.utils;

import android.graphics.Color;
import android.util.Log;
import com.mapbox.maps.extension.style.expressions.dsl.generated.ExpressionDslKt;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Arrays;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\bJ\u0010\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u0007\u001a\u00020\bJ\u0010\u0010\u000b\u001a\u00020\n2\b\b\u0001\u0010\u0007\u001a\u00020\bJ\u0010\u0010\f\u001a\u00020\u00042\b\b\u0001\u0010\u0007\u001a\u00020\bJ(\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\bH\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0017\u0010\u0014\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002¢\u0006\u0002\u0010\u0017J\u0017\u0010\u0018\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0019\u001a\u00020\u0006H\u0007¢\u0006\u0002\u0010\u001aJ\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0019\u001a\u00020\u0006J\u0017\u0010\u001c\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0019\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u001dR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/mapbox/maps/extension/style/utils/ColorUtils;", "", "()V", "TAG", "", "colorIntToRgbaExpression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "color", "", "colorToGlRgbaArray", "", "colorToRgbaArray", "colorToRgbaString", "formatARGB", "alpha", "", "red", "green", "blue", "formatAlpha", "matchToColorOrNull", "m", "Ljava/util/regex/Matcher;", "(Ljava/util/regex/Matcher;)Ljava/lang/Integer;", "rgbaExpressionToColorInt", "value", "(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Ljava/lang/Integer;", "rgbaExpressionToColorString", "rgbaToColor", "(Ljava/lang/String;)Ljava/lang/Integer;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ColorUtils {
    public static final ColorUtils INSTANCE = new ColorUtils();
    private static final String TAG = "ColorUtils";

    private ColorUtils() {
    }

    public final Integer rgbaToColor(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        Matcher m = Pattern.compile("rgba?\\s*\\(\\s*(\\d+\\.?\\d*)\\s*,\\s*(\\d+\\.?\\d*)\\s*,\\s*(\\d+\\.?\\d*)\\s*,?\\s*(\\d+\\.?\\d*)?\\s*\\)").matcher(value);
        Intrinsics.checkNotNullExpressionValue(m, "m");
        return matchToColorOrNull(m);
    }

    public final String colorToRgbaString(int color) {
        return formatARGB(((double) ((color >> 24) & 255)) / 255.0d, (color >> 16) & 255, (color >> 8) & 255, color & 255);
    }

    public final Integer rgbaExpressionToColorInt(Expression value) {
        Intrinsics.checkNotNullParameter(value, "value");
        Matcher m = Pattern.compile("\\[?\\s*rgba?\\s*,?\\s*(\\d+\\.?\\d*)\\s*,\\s*(\\d+\\.?\\d*)\\s*,\\s*(\\d+\\.?\\d*)\\s*,?\\s*(\\d+\\.?\\d*)?\\s*\\]").matcher(value.toString());
        Intrinsics.checkNotNullExpressionValue(m, "m");
        return matchToColorOrNull(m);
    }

    public final String rgbaExpressionToColorString(Expression value) {
        Intrinsics.checkNotNullParameter(value, "value");
        Matcher matcher = Pattern.compile("\\[?\\s*rgba?\\s*,?\\s*(\\d+\\.?\\d*)\\s*,\\s*(\\d+\\.?\\d*)\\s*,\\s*(\\d+\\.?\\d*)\\s*,?\\s*(\\d+\\.?\\d*)?\\s*\\]").matcher(value.toString());
        if (matcher.matches() && matcher.groupCount() == 4) {
            String strGroup = matcher.group(4);
            double d = strGroup != null ? Double.parseDouble(strGroup) : 1.0d;
            String strGroup2 = matcher.group(1);
            Intrinsics.checkNotNull(strGroup2);
            int i = (int) Float.parseFloat(strGroup2);
            String strGroup3 = matcher.group(2);
            Intrinsics.checkNotNull(strGroup3);
            int i2 = (int) Float.parseFloat(strGroup3);
            String strGroup4 = matcher.group(3);
            Intrinsics.checkNotNull(strGroup4);
            return formatARGB(d, i, i2, (int) Float.parseFloat(strGroup4));
        }
        Log.e(TAG, "Not a valid rgb/rgba value");
        return null;
    }

    public final Expression colorIntToRgbaExpression(final int color) {
        final double d = ((double) ((color >> 24) & 255)) / 255.0d;
        return ExpressionDslKt.rgba(new Function1<Expression.ExpressionBuilder, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(Expression.ExpressionBuilder expressionBuilder) {
                invoke2(expressionBuilder);
                return Unit.INSTANCE;
            }

            public final void invoke2(Expression.ExpressionBuilder rgba) {
                Intrinsics.checkNotNullParameter(rgba, "$this$rgba");
                rgba.literal((color >> 16) & 255);
                rgba.literal((color >> 8) & 255);
                rgba.literal(color & 255);
                rgba.literal(Double.parseDouble(ColorUtils.INSTANCE.formatAlpha(d)));
            }
        });
    }

    public final float[] colorToRgbaArray(int color) {
        return new float[]{(color >> 16) & 255, (color >> 8) & 255, color & 255, ((color >> 24) & 255) / 255.0f};
    }

    public final float[] colorToGlRgbaArray(int color) {
        return new float[]{((color >> 16) & 255) / 255.0f, ((color >> 8) & 255) / 255.0f, (color & 255) / 255.0f, ((color >> 24) & 255) / 255.0f};
    }

    private final Integer matchToColorOrNull(Matcher m) {
        if (m.matches() && m.groupCount() == 4) {
            String strGroup = m.group(4);
            float f = strGroup != null ? Float.parseFloat(strGroup) : 1.0f;
            String strGroup2 = m.group(1);
            Intrinsics.checkNotNull(strGroup2);
            int i = (int) Float.parseFloat(strGroup2);
            String strGroup3 = m.group(2);
            Intrinsics.checkNotNull(strGroup3);
            int i2 = (int) Float.parseFloat(strGroup3);
            String strGroup4 = m.group(3);
            Intrinsics.checkNotNull(strGroup4);
            return Integer.valueOf(Color.argb((int) ((f * 255.0f) + 0.5f), i, i2, (int) Float.parseFloat(strGroup4)));
        }
        Log.e(TAG, "Not a valid rgb/rgba value");
        return null;
    }

    private final String formatARGB(double alpha, int red, int green, int blue) {
        String alpha2 = formatAlpha(alpha);
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str = String.format(Locale.US, "rgba(%d, %d, %d, %s)", Arrays.copyOf(new Object[]{Integer.valueOf(red), Integer.valueOf(green), Integer.valueOf(blue), alpha2}, 4));
        Intrinsics.checkNotNullExpressionValue(str, "format(locale, format, *args)");
        return str;
    }

    public final String formatAlpha(double alpha) {
        NumberFormat numberInstance = NumberFormat.getNumberInstance(Locale.US);
        Intrinsics.checkNotNull(numberInstance, "null cannot be cast to non-null type java.text.DecimalFormat");
        DecimalFormat decimalFormat = (DecimalFormat) numberInstance;
        decimalFormat.applyPattern("#.########");
        String str = decimalFormat.format(alpha);
        Intrinsics.checkNotNullExpressionValue(str, "decimalFormat.format(alpha)");
        return str;
    }
}
