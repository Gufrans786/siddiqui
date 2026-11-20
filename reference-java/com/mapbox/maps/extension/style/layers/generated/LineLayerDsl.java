package com.mapbox.maps.extension.style.layers.generated;

import com.facebook.react.uimanager.ViewProps;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.properties.generated.LineCap;
import com.mapbox.maps.extension.style.layers.properties.generated.LineElevationReference;
import com.mapbox.maps.extension.style.layers.properties.generated.LineJoin;
import com.mapbox.maps.extension.style.layers.properties.generated.LineTranslateAnchor;
import com.mapbox.maps.extension.style.layers.properties.generated.LineWidthUnit;
import com.mapbox.maps.extension.style.layers.properties.generated.Visibility;
import com.mapbox.maps.extension.style.types.LayersDsl;
import com.mapbox.maps.extension.style.types.StyleTransition;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;

@LayersDsl
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0004H&J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0004H&J\u0012\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u0010\u0007\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0004H&J\u0012\u0010\u000f\u001a\u00020\u00032\b\b\u0001\u0010\u000f\u001a\u00020\u0010H&J\u0012\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u0011H&J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u0010\u0012\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0004H'J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0011H'J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0004H&J\u0012\u0010\u0014\u001a\u00020\u00032\b\b\u0002\u0010\u0014\u001a\u00020\u0006H&J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u0010\u0015\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0004H&J\u0012\u0010\u0016\u001a\u00020\u00032\b\b\u0002\u0010\u0016\u001a\u00020\u0017H&J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0004H&J\u0012\u0010\u0018\u001a\u00020\u00032\b\b\u0001\u0010\u0018\u001a\u00020\u0010H&J\u0012\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0018\u001a\u00020\u0011H&J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u0010\u0019\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0004H'J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0011H'J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0004H'J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0006H'J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u0004H'J\u0012\u0010\u001c\u001a\u00020\u00032\b\b\u0002\u0010\u001c\u001a\u00020\u0006H'J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH'J!\u0010\u001d\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH'J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0004H'J\u0012\u0010\u001e\u001a\u00020\u00032\b\b\u0002\u0010\u001e\u001a\u00020\u0006H'J\u0010\u0010\u001f\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH'J!\u0010\u001f\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH'J\u0010\u0010 \u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u0004H'J\u0012\u0010 \u001a\u00020\u00032\b\b\u0002\u0010 \u001a\u00020\u0006H'J\u0010\u0010!\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH'J!\u0010!\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH'J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u0004H&J\u0016\u0010\"\u001a\u00020\u00032\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00060#H&J\u0010\u0010$\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\u0004H&J\u0012\u0010$\u001a\u00020\u00032\b\b\u0002\u0010$\u001a\u00020\u0006H&J\u0010\u0010%\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u0010%\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&J\u0010\u0010&\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u0004H'J\u0012\u0010&\u001a\u00020\u00032\b\b\u0002\u0010&\u001a\u00020'H'J\u0010\u0010(\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\u0004H&J\u0012\u0010(\u001a\u00020\u00032\b\b\u0002\u0010(\u001a\u00020\u0006H&J\u0010\u0010)\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u0010)\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&J\u0010\u0010*\u001a\u00020\u00032\u0006\u0010*\u001a\u00020\u0004H&J\u0012\u0010*\u001a\u00020\u00032\b\b\u0002\u0010*\u001a\u00020\u0006H&J\u0010\u0010+\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u0010+\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&J\u0010\u0010,\u001a\u00020\u00032\u0006\u0010,\u001a\u00020\u0004H&J\u0010\u0010-\u001a\u00020\u00032\u0006\u0010-\u001a\u00020\u0004H'J\u0010\u0010-\u001a\u00020\u00032\u0006\u0010-\u001a\u00020\u0011H'J\u0010\u0010.\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u0004H&J\u0012\u0010.\u001a\u00020\u00032\b\b\u0002\u0010.\u001a\u00020/H&J\u0010\u00100\u001a\u00020\u00032\u0006\u00100\u001a\u00020\u0004H&J\u0012\u00100\u001a\u00020\u00032\b\b\u0002\u00100\u001a\u00020\u0006H&J\u0010\u00101\u001a\u00020\u00032\u0006\u00101\u001a\u00020\u0004H&J\u0012\u00101\u001a\u00020\u00032\b\b\u0002\u00101\u001a\u00020\u0006H&J\u0010\u00102\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u00102\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&J\u0010\u00103\u001a\u00020\u00032\u0006\u00103\u001a\u00020\u0004H&J\u0012\u00103\u001a\u00020\u00032\b\b\u0002\u00103\u001a\u00020\u0006H&J\u0010\u00104\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u00104\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&J\u0010\u00105\u001a\u00020\u00032\u0006\u00105\u001a\u00020\u0004H&J\u0012\u00105\u001a\u00020\u00032\b\b\u0002\u00105\u001a\u00020\u0006H&J\u0010\u00106\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u00106\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&J\u0010\u00107\u001a\u00020\u00032\u0006\u00107\u001a\u00020\u0004H&J\u0010\u00107\u001a\u00020\u00032\u0006\u00107\u001a\u00020\u0011H&J\u0010\u00108\u001a\u00020\u00032\u0006\u00108\u001a\u00020\u0004H&J\u0012\u00108\u001a\u00020\u00032\b\b\u0002\u00108\u001a\u00020\u0006H&J\u0010\u00109\u001a\u00020\u00032\u0006\u00109\u001a\u00020\u0004H&J\u0012\u00109\u001a\u00020\u00032\b\b\u0002\u00109\u001a\u00020\u0006H&J\u0010\u0010:\u001a\u00020\u00032\u0006\u0010:\u001a\u00020\u0004H&J\u0010\u0010:\u001a\u00020\u00032\u0006\u0010:\u001a\u00020\u0006H&J\u0010\u0010;\u001a\u00020\u00032\u0006\u0010;\u001a\u00020\u0004H&J\u0018\u0010;\u001a\u00020\u00032\u000e\b\u0002\u0010;\u001a\b\u0012\u0004\u0012\u00020\u00060#H&J\u0010\u0010<\u001a\u00020\u00032\u0006\u0010<\u001a\u00020\u0004H&J\u0012\u0010<\u001a\u00020\u00032\b\b\u0002\u0010<\u001a\u00020=H&J\u0010\u0010>\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u0010>\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&J\u0010\u0010?\u001a\u00020\u00032\u0006\u0010?\u001a\u00020\u0004H'J\u0012\u0010?\u001a\u00020\u00032\b\b\u0001\u0010?\u001a\u00020\u0010H'J\u0012\u0010?\u001a\u00020\u00032\b\b\u0002\u0010?\u001a\u00020\u0011H'J\u0010\u0010@\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH'J!\u0010@\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH'J\u0010\u0010A\u001a\u00020\u00032\u0006\u0010A\u001a\u00020\u0004H'J\u0010\u0010A\u001a\u00020\u00032\u0006\u0010A\u001a\u00020\u0011H'J\u0010\u0010B\u001a\u00020\u00032\u0006\u0010B\u001a\u00020\u0004H'J\u0018\u0010B\u001a\u00020\u00032\u000e\b\u0002\u0010B\u001a\b\u0012\u0004\u0012\u00020\u00060#H'J\u0010\u0010C\u001a\u00020\u00032\u0006\u0010C\u001a\u00020\u0004H&J\u0018\u0010C\u001a\u00020\u00032\u000e\b\u0002\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00060#H&J\u0010\u0010D\u001a\u00020\u00032\u0006\u0010D\u001a\u00020\u0004H&J\u0012\u0010D\u001a\u00020\u00032\b\b\u0002\u0010D\u001a\u00020\u0006H&J\u0010\u0010E\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u0010E\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&J\u0010\u0010F\u001a\u00020\u00032\u0006\u0010F\u001a\u00020\u0004H'J\u0012\u0010F\u001a\u00020\u00032\b\b\u0002\u0010F\u001a\u00020GH'J\u0010\u0010H\u001a\u00020\u00032\u0006\u0010H\u001a\u00020\u0004H'J\u0012\u0010H\u001a\u00020\u00032\b\b\u0002\u0010H\u001a\u00020\u0006H'J\u0010\u0010I\u001a\u00020\u00032\u0006\u0010I\u001a\u00020\u0006H&J\u0010\u0010J\u001a\u00020\u00032\u0006\u0010J\u001a\u00020\u0006H&J\u0010\u0010K\u001a\u00020\u00032\u0006\u0010K\u001a\u00020\u0011H&J\u0010\u0010L\u001a\u00020\u00032\u0006\u0010L\u001a\u00020\u0011H&J\u0010\u0010M\u001a\u00020\u00032\u0006\u0010M\u001a\u00020\u0004H&J\u0010\u0010M\u001a\u00020\u00032\u0006\u0010M\u001a\u00020NH&¨\u0006O"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/LineLayerDsl;", "", ViewProps.FILTER, "Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "lineBlur", "", "lineBlurTransition", "options", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "lineBorderColor", "", "", "lineBorderColorTransition", "lineBorderColorUseTheme", "lineBorderWidth", "lineBorderWidthTransition", "lineCap", "Lcom/mapbox/maps/extension/style/layers/properties/generated/LineCap;", "lineColor", "lineColorTransition", "lineColorUseTheme", "lineCrossSlope", "lineCutoutFadeWidth", "lineCutoutFadeWidthTransition", "lineCutoutOpacity", "lineCutoutOpacityTransition", "lineCutoutWidth", "lineCutoutWidthTransition", "lineDasharray", "", "lineDepthOcclusionFactor", "lineDepthOcclusionFactorTransition", "lineElevationReference", "Lcom/mapbox/maps/extension/style/layers/properties/generated/LineElevationReference;", "lineEmissiveStrength", "lineEmissiveStrengthTransition", "lineGapWidth", "lineGapWidthTransition", "lineGradient", "lineGradientUseTheme", "lineJoin", "Lcom/mapbox/maps/extension/style/layers/properties/generated/LineJoin;", "lineMiterLimit", "lineOcclusionOpacity", "lineOcclusionOpacityTransition", "lineOffset", "lineOffsetTransition", "lineOpacity", "lineOpacityTransition", "linePattern", "linePatternCrossFade", "lineRoundLimit", "lineSortKey", "lineTranslate", "lineTranslateAnchor", "Lcom/mapbox/maps/extension/style/layers/properties/generated/LineTranslateAnchor;", "lineTranslateTransition", "lineTrimColor", "lineTrimColorTransition", "lineTrimColorUseTheme", "lineTrimFadeRange", "lineTrimOffset", "lineWidth", "lineWidthTransition", "lineWidthUnit", "Lcom/mapbox/maps/extension/style/layers/properties/generated/LineWidthUnit;", "lineZOffset", "maxZoom", "minZoom", "slot", "sourceLayer", "visibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface LineLayerDsl {
    LineLayer filter(Expression filter);

    LineLayer lineBlur(double lineBlur);

    LineLayer lineBlur(Expression lineBlur);

    LineLayer lineBlurTransition(StyleTransition options);

    LineLayer lineBlurTransition(Function1<? super StyleTransition.Builder, Unit> block);

    LineLayer lineBorderColor(int lineBorderColor);

    LineLayer lineBorderColor(Expression lineBorderColor);

    LineLayer lineBorderColor(String lineBorderColor);

    LineLayer lineBorderColorTransition(StyleTransition options);

    LineLayer lineBorderColorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    LineLayer lineBorderColorUseTheme(Expression lineBorderColorUseTheme);

    LineLayer lineBorderColorUseTheme(String lineBorderColorUseTheme);

    LineLayer lineBorderWidth(double lineBorderWidth);

    LineLayer lineBorderWidth(Expression lineBorderWidth);

    LineLayer lineBorderWidthTransition(StyleTransition options);

    LineLayer lineBorderWidthTransition(Function1<? super StyleTransition.Builder, Unit> block);

    LineLayer lineCap(Expression lineCap);

    LineLayer lineCap(LineCap lineCap);

    LineLayer lineColor(int lineColor);

    LineLayer lineColor(Expression lineColor);

    LineLayer lineColor(String lineColor);

    LineLayer lineColorTransition(StyleTransition options);

    LineLayer lineColorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    LineLayer lineColorUseTheme(Expression lineColorUseTheme);

    LineLayer lineColorUseTheme(String lineColorUseTheme);

    LineLayer lineCrossSlope(double lineCrossSlope);

    LineLayer lineCrossSlope(Expression lineCrossSlope);

    LineLayer lineCutoutFadeWidth(double lineCutoutFadeWidth);

    LineLayer lineCutoutFadeWidth(Expression lineCutoutFadeWidth);

    LineLayer lineCutoutFadeWidthTransition(StyleTransition options);

    LineLayer lineCutoutFadeWidthTransition(Function1<? super StyleTransition.Builder, Unit> block);

    LineLayer lineCutoutOpacity(double lineCutoutOpacity);

    LineLayer lineCutoutOpacity(Expression lineCutoutOpacity);

    LineLayer lineCutoutOpacityTransition(StyleTransition options);

    LineLayer lineCutoutOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    LineLayer lineCutoutWidth(double lineCutoutWidth);

    LineLayer lineCutoutWidth(Expression lineCutoutWidth);

    LineLayer lineCutoutWidthTransition(StyleTransition options);

    LineLayer lineCutoutWidthTransition(Function1<? super StyleTransition.Builder, Unit> block);

    LineLayer lineDasharray(Expression lineDasharray);

    LineLayer lineDasharray(List<Double> lineDasharray);

    LineLayer lineDepthOcclusionFactor(double lineDepthOcclusionFactor);

    LineLayer lineDepthOcclusionFactor(Expression lineDepthOcclusionFactor);

    LineLayer lineDepthOcclusionFactorTransition(StyleTransition options);

    LineLayer lineDepthOcclusionFactorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    LineLayer lineElevationReference(Expression lineElevationReference);

    LineLayer lineElevationReference(LineElevationReference lineElevationReference);

    LineLayer lineEmissiveStrength(double lineEmissiveStrength);

    LineLayer lineEmissiveStrength(Expression lineEmissiveStrength);

    LineLayer lineEmissiveStrengthTransition(StyleTransition options);

    LineLayer lineEmissiveStrengthTransition(Function1<? super StyleTransition.Builder, Unit> block);

    LineLayer lineGapWidth(double lineGapWidth);

    LineLayer lineGapWidth(Expression lineGapWidth);

    LineLayer lineGapWidthTransition(StyleTransition options);

    LineLayer lineGapWidthTransition(Function1<? super StyleTransition.Builder, Unit> block);

    LineLayer lineGradient(Expression lineGradient);

    LineLayer lineGradientUseTheme(Expression lineGradientUseTheme);

    LineLayer lineGradientUseTheme(String lineGradientUseTheme);

    LineLayer lineJoin(Expression lineJoin);

    LineLayer lineJoin(LineJoin lineJoin);

    LineLayer lineMiterLimit(double lineMiterLimit);

    LineLayer lineMiterLimit(Expression lineMiterLimit);

    LineLayer lineOcclusionOpacity(double lineOcclusionOpacity);

    LineLayer lineOcclusionOpacity(Expression lineOcclusionOpacity);

    LineLayer lineOcclusionOpacityTransition(StyleTransition options);

    LineLayer lineOcclusionOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    LineLayer lineOffset(double lineOffset);

    LineLayer lineOffset(Expression lineOffset);

    LineLayer lineOffsetTransition(StyleTransition options);

    LineLayer lineOffsetTransition(Function1<? super StyleTransition.Builder, Unit> block);

    LineLayer lineOpacity(double lineOpacity);

    LineLayer lineOpacity(Expression lineOpacity);

    LineLayer lineOpacityTransition(StyleTransition options);

    LineLayer lineOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    LineLayer linePattern(Expression linePattern);

    LineLayer linePattern(String linePattern);

    LineLayer linePatternCrossFade(double linePatternCrossFade);

    LineLayer linePatternCrossFade(Expression linePatternCrossFade);

    LineLayer lineRoundLimit(double lineRoundLimit);

    LineLayer lineRoundLimit(Expression lineRoundLimit);

    LineLayer lineSortKey(double lineSortKey);

    LineLayer lineSortKey(Expression lineSortKey);

    LineLayer lineTranslate(Expression lineTranslate);

    LineLayer lineTranslate(List<Double> lineTranslate);

    LineLayer lineTranslateAnchor(Expression lineTranslateAnchor);

    LineLayer lineTranslateAnchor(LineTranslateAnchor lineTranslateAnchor);

    LineLayer lineTranslateTransition(StyleTransition options);

    LineLayer lineTranslateTransition(Function1<? super StyleTransition.Builder, Unit> block);

    LineLayer lineTrimColor(int lineTrimColor);

    LineLayer lineTrimColor(Expression lineTrimColor);

    LineLayer lineTrimColor(String lineTrimColor);

    LineLayer lineTrimColorTransition(StyleTransition options);

    LineLayer lineTrimColorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    LineLayer lineTrimColorUseTheme(Expression lineTrimColorUseTheme);

    LineLayer lineTrimColorUseTheme(String lineTrimColorUseTheme);

    LineLayer lineTrimFadeRange(Expression lineTrimFadeRange);

    LineLayer lineTrimFadeRange(List<Double> lineTrimFadeRange);

    LineLayer lineTrimOffset(Expression lineTrimOffset);

    LineLayer lineTrimOffset(List<Double> lineTrimOffset);

    LineLayer lineWidth(double lineWidth);

    LineLayer lineWidth(Expression lineWidth);

    LineLayer lineWidthTransition(StyleTransition options);

    LineLayer lineWidthTransition(Function1<? super StyleTransition.Builder, Unit> block);

    LineLayer lineWidthUnit(Expression lineWidthUnit);

    LineLayer lineWidthUnit(LineWidthUnit lineWidthUnit);

    LineLayer lineZOffset(double lineZOffset);

    LineLayer lineZOffset(Expression lineZOffset);

    LineLayer maxZoom(double maxZoom);

    LineLayer minZoom(double minZoom);

    LineLayer slot(String slot);

    LineLayer sourceLayer(String sourceLayer);

    LineLayer visibility(Expression visibility);

    LineLayer visibility(Visibility visibility);

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class DefaultImpls {
        public static LineLayer lineCap$default(LineLayerDsl lineLayerDsl, LineCap lineCap, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lineCap");
            }
            if ((i & 1) != 0) {
                lineCap = LineCap.BUTT;
            }
            return lineLayerDsl.lineCap(lineCap);
        }

        public static LineLayer lineCutoutFadeWidth$default(LineLayerDsl lineLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lineCutoutFadeWidth");
            }
            if ((i & 1) != 0) {
                d = 0.4d;
            }
            return lineLayerDsl.lineCutoutFadeWidth(d);
        }

        public static LineLayer lineCutoutOpacity$default(LineLayerDsl lineLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lineCutoutOpacity");
            }
            if ((i & 1) != 0) {
                d = 0.3d;
            }
            return lineLayerDsl.lineCutoutOpacity(d);
        }

        public static LineLayer lineCutoutWidth$default(LineLayerDsl lineLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lineCutoutWidth");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return lineLayerDsl.lineCutoutWidth(d);
        }

        public static LineLayer lineElevationReference$default(LineLayerDsl lineLayerDsl, LineElevationReference lineElevationReference, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lineElevationReference");
            }
            if ((i & 1) != 0) {
                lineElevationReference = LineElevationReference.NONE;
            }
            return lineLayerDsl.lineElevationReference(lineElevationReference);
        }

        public static LineLayer lineJoin$default(LineLayerDsl lineLayerDsl, LineJoin lineJoin, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lineJoin");
            }
            if ((i & 1) != 0) {
                lineJoin = LineJoin.MITER;
            }
            return lineLayerDsl.lineJoin(lineJoin);
        }

        public static LineLayer lineMiterLimit$default(LineLayerDsl lineLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lineMiterLimit");
            }
            if ((i & 1) != 0) {
                d = 2.0d;
            }
            return lineLayerDsl.lineMiterLimit(d);
        }

        public static LineLayer lineRoundLimit$default(LineLayerDsl lineLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lineRoundLimit");
            }
            if ((i & 1) != 0) {
                d = 1.05d;
            }
            return lineLayerDsl.lineRoundLimit(d);
        }

        public static LineLayer lineWidthUnit$default(LineLayerDsl lineLayerDsl, LineWidthUnit lineWidthUnit, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lineWidthUnit");
            }
            if ((i & 1) != 0) {
                lineWidthUnit = LineWidthUnit.PIXELS;
            }
            return lineLayerDsl.lineWidthUnit(lineWidthUnit);
        }

        public static LineLayer lineZOffset$default(LineLayerDsl lineLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lineZOffset");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return lineLayerDsl.lineZOffset(d);
        }

        public static LineLayer lineBlur$default(LineLayerDsl lineLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lineBlur");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return lineLayerDsl.lineBlur(d);
        }

        public static LineLayer lineBorderColor$default(LineLayerDsl lineLayerDsl, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lineBorderColor");
            }
            if ((i & 1) != 0) {
                str = "rgba(0, 0, 0, 0)";
            }
            return lineLayerDsl.lineBorderColor(str);
        }

        public static LineLayer lineBorderWidth$default(LineLayerDsl lineLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lineBorderWidth");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return lineLayerDsl.lineBorderWidth(d);
        }

        public static LineLayer lineColor$default(LineLayerDsl lineLayerDsl, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lineColor");
            }
            if ((i & 1) != 0) {
                str = "#000000";
            }
            return lineLayerDsl.lineColor(str);
        }

        public static LineLayer lineDepthOcclusionFactor$default(LineLayerDsl lineLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lineDepthOcclusionFactor");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return lineLayerDsl.lineDepthOcclusionFactor(d);
        }

        public static LineLayer lineEmissiveStrength$default(LineLayerDsl lineLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lineEmissiveStrength");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return lineLayerDsl.lineEmissiveStrength(d);
        }

        public static LineLayer lineGapWidth$default(LineLayerDsl lineLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lineGapWidth");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return lineLayerDsl.lineGapWidth(d);
        }

        public static LineLayer lineOcclusionOpacity$default(LineLayerDsl lineLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lineOcclusionOpacity");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return lineLayerDsl.lineOcclusionOpacity(d);
        }

        public static LineLayer lineOffset$default(LineLayerDsl lineLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lineOffset");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return lineLayerDsl.lineOffset(d);
        }

        public static LineLayer lineOpacity$default(LineLayerDsl lineLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lineOpacity");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return lineLayerDsl.lineOpacity(d);
        }

        public static LineLayer linePatternCrossFade$default(LineLayerDsl lineLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: linePatternCrossFade");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return lineLayerDsl.linePatternCrossFade(d);
        }

        public static LineLayer lineTranslate$default(LineLayerDsl lineLayerDsl, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lineTranslate");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(0.0d), Double.valueOf(0.0d)});
            }
            return lineLayerDsl.lineTranslate((List<Double>) list);
        }

        public static LineLayer lineTranslateAnchor$default(LineLayerDsl lineLayerDsl, LineTranslateAnchor lineTranslateAnchor, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lineTranslateAnchor");
            }
            if ((i & 1) != 0) {
                lineTranslateAnchor = LineTranslateAnchor.MAP;
            }
            return lineLayerDsl.lineTranslateAnchor(lineTranslateAnchor);
        }

        public static LineLayer lineTrimColor$default(LineLayerDsl lineLayerDsl, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lineTrimColor");
            }
            if ((i & 1) != 0) {
                str = "transparent";
            }
            return lineLayerDsl.lineTrimColor(str);
        }

        public static LineLayer lineTrimFadeRange$default(LineLayerDsl lineLayerDsl, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lineTrimFadeRange");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(0.0d), Double.valueOf(0.0d)});
            }
            return lineLayerDsl.lineTrimFadeRange((List<Double>) list);
        }

        public static LineLayer lineTrimOffset$default(LineLayerDsl lineLayerDsl, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lineTrimOffset");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(0.0d), Double.valueOf(0.0d)});
            }
            return lineLayerDsl.lineTrimOffset((List<Double>) list);
        }

        public static LineLayer lineWidth$default(LineLayerDsl lineLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lineWidth");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return lineLayerDsl.lineWidth(d);
        }
    }
}
