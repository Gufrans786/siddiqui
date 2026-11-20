package com.mapbox.maps.extension.style.layers.generated;

import ch.qos.logback.core.CoreConstants;
import com.mapbox.maps.StyleManager;
import com.mapbox.maps.StylePropertyValue;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.Layer;
import com.mapbox.maps.extension.style.layers.properties.PropertyValue;
import com.mapbox.maps.extension.style.layers.properties.generated.RasterResampling;
import com.mapbox.maps.extension.style.layers.properties.generated.Visibility;
import com.mapbox.maps.extension.style.types.StyleTransition;
import com.mapbox.maps.extension.style.utils.TypeUtilsKt;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\b8\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \u0080\u00012\u00020\u00012\u00020\u0002:\u0002\u0080\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0002\u0010\u0006J\r\u0010x\u001a\u00020\u0004H\u0010¢\u0006\u0002\byJ\u0010\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\nH\u0016J\u0010\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0014H\u0017J\u0010\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0004H\u0017J\u0010\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0014H\u0016J\u0010\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\nH\u0016J\u0010\u0010\u001c\u001a\u00020\u00002\u0006\u0010z\u001a\u00020\u001dH\u0016J!\u0010\u001c\u001a\u00020\u00002\u0017\u0010{\u001a\u0013\u0012\u0004\u0012\u00020}\u0012\u0004\u0012\u00020~0|¢\u0006\u0002\b\u007fH\u0016J\u0010\u0010 \u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u0014H\u0016J\u0010\u0010 \u001a\u00020\u00002\u0006\u0010 \u001a\u00020\nH\u0016J\u0010\u0010$\u001a\u00020\u00002\u0006\u0010z\u001a\u00020\u001dH\u0016J!\u0010$\u001a\u00020\u00002\u0017\u0010{\u001a\u0013\u0012\u0004\u0012\u00020}\u0012\u0004\u0012\u00020~0|¢\u0006\u0002\b\u007fH\u0016J\u0010\u0010&\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\u0014H\u0016J\u0010\u0010(\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u0014H\u0016J\u0016\u0010(\u001a\u00020\u00002\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\n0)H\u0016J\u0010\u0010.\u001a\u00020\u00002\u0006\u0010z\u001a\u00020\u001dH\u0016J!\u0010.\u001a\u00020\u00002\u0017\u0010{\u001a\u0013\u0012\u0004\u0012\u00020}\u0012\u0004\u0012\u00020~0|¢\u0006\u0002\b\u007fH\u0016J\u0010\u00100\u001a\u00020\u00002\u0006\u00100\u001a\u00020\u0014H\u0016J\u0016\u00100\u001a\u00020\u00002\f\u00100\u001a\b\u0012\u0004\u0012\u00020\n0)H\u0016J\u0010\u00104\u001a\u00020\u00002\u0006\u0010z\u001a\u00020\u001dH\u0016J!\u00104\u001a\u00020\u00002\u0017\u0010{\u001a\u0013\u0012\u0004\u0012\u00020}\u0012\u0004\u0012\u00020~0|¢\u0006\u0002\b\u007fH\u0016J\u0010\u00106\u001a\u00020\u00002\u0006\u00106\u001a\u00020\u0014H\u0017J\u0010\u00106\u001a\u00020\u00002\u0006\u00106\u001a\u00020\u0004H\u0017J\u0010\u0010<\u001a\u00020\u00002\u0006\u0010<\u001a\u00020\u0014H\u0016J\u0010\u0010<\u001a\u00020\u00002\u0006\u0010<\u001a\u00020\nH\u0016J\u0010\u0010@\u001a\u00020\u00002\u0006\u0010z\u001a\u00020\u001dH\u0016J!\u0010@\u001a\u00020\u00002\u0017\u0010{\u001a\u0013\u0012\u0004\u0012\u00020}\u0012\u0004\u0012\u00020~0|¢\u0006\u0002\b\u007fH\u0016J\u0010\u0010B\u001a\u00020\u00002\u0006\u0010B\u001a\u00020\u0014H\u0017J\u0010\u0010B\u001a\u00020\u00002\u0006\u0010B\u001a\u00020\nH\u0017J\u0010\u0010H\u001a\u00020\u00002\u0006\u0010z\u001a\u00020\u001dH\u0017J!\u0010H\u001a\u00020\u00002\u0017\u0010{\u001a\u0013\u0012\u0004\u0012\u00020}\u0012\u0004\u0012\u00020~0|¢\u0006\u0002\b\u007fH\u0017J\u0010\u0010K\u001a\u00020\u00002\u0006\u0010K\u001a\u00020\u0014H\u0016J\u0010\u0010K\u001a\u00020\u00002\u0006\u0010K\u001a\u00020\nH\u0016J\u0010\u0010O\u001a\u00020\u00002\u0006\u0010z\u001a\u00020\u001dH\u0016J!\u0010O\u001a\u00020\u00002\u0017\u0010{\u001a\u0013\u0012\u0004\u0012\u00020}\u0012\u0004\u0012\u00020~0|¢\u0006\u0002\b\u007fH\u0016J\u0010\u0010Q\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020\u0014H\u0016J\u0010\u0010Q\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020\nH\u0016J\u0010\u0010U\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\u0014H\u0016J\u0010\u0010U\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\nH\u0016J\u0010\u0010Y\u001a\u00020\u00002\u0006\u0010z\u001a\u00020\u001dH\u0016J!\u0010Y\u001a\u00020\u00002\u0017\u0010{\u001a\u0013\u0012\u0004\u0012\u00020}\u0012\u0004\u0012\u00020~0|¢\u0006\u0002\b\u007fH\u0016J\u0010\u0010[\u001a\u00020\u00002\u0006\u0010[\u001a\u00020\u0014H\u0016J\u0010\u0010[\u001a\u00020\u00002\u0006\u0010[\u001a\u00020\nH\u0016J\u0010\u0010_\u001a\u00020\u00002\u0006\u0010z\u001a\u00020\u001dH\u0016J!\u0010_\u001a\u00020\u00002\u0017\u0010{\u001a\u0013\u0012\u0004\u0012\u00020}\u0012\u0004\u0012\u00020~0|¢\u0006\u0002\b\u007fH\u0016J\u0010\u0010a\u001a\u00020\u00002\u0006\u0010a\u001a\u00020\u0014H\u0016J\u0010\u0010a\u001a\u00020\u00002\u0006\u0010a\u001a\u00020bH\u0016J\u0010\u0010g\u001a\u00020\u00002\u0006\u0010g\u001a\u00020\u0014H\u0016J\u0010\u0010g\u001a\u00020\u00002\u0006\u0010g\u001a\u00020\nH\u0016J\u0010\u0010k\u001a\u00020\u00002\u0006\u0010z\u001a\u00020\u001dH\u0016J!\u0010k\u001a\u00020\u00002\u0017\u0010{\u001a\u0013\u0012\u0004\u0012\u00020}\u0012\u0004\u0012\u00020~0|¢\u0006\u0002\b\u007fH\u0016J\u0010\u0010m\u001a\u00020\u00002\u0006\u0010m\u001a\u00020\u0004H\u0016J\u0010\u0010p\u001a\u00020\u00002\u0006\u0010p\u001a\u00020\u0004H\u0016J\u0010\u0010r\u001a\u00020\u00002\u0006\u0010r\u001a\u00020\u0014H\u0016J\u0010\u0010r\u001a\u00020\u00002\u0006\u0010r\u001a\u00020sH\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\t\u001a\u0004\u0018\u00010\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\r\u001a\u0004\u0018\u00010\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\fR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\bR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u00148FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0015\u0010\u0011\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\fR\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u00148F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0017R\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u001d8F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR\u0013\u0010 \u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b!\u0010\fR\u0013\u0010\"\u001a\u0004\u0018\u00010\u00148F¢\u0006\u0006\u001a\u0004\b#\u0010\u0017R\u0013\u0010$\u001a\u0004\u0018\u00010\u001d8F¢\u0006\u0006\u001a\u0004\b%\u0010\u001fR\u0013\u0010&\u001a\u0004\u0018\u00010\u00148F¢\u0006\u0006\u001a\u0004\b'\u0010\u0017R\u0019\u0010(\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010)8F¢\u0006\u0006\u001a\u0004\b*\u0010+R\u0013\u0010,\u001a\u0004\u0018\u00010\u00148F¢\u0006\u0006\u001a\u0004\b-\u0010\u0017R\u0013\u0010.\u001a\u0004\u0018\u00010\u001d8F¢\u0006\u0006\u001a\u0004\b/\u0010\u001fR\u0019\u00100\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010)8F¢\u0006\u0006\u001a\u0004\b1\u0010+R\u0013\u00102\u001a\u0004\u0018\u00010\u00148F¢\u0006\u0006\u001a\u0004\b3\u0010\u0017R\u0013\u00104\u001a\u0004\u0018\u00010\u001d8F¢\u0006\u0006\u001a\u0004\b5\u0010\u001fR\u001c\u00106\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b7\u0010\u0011\u001a\u0004\b8\u0010\bR\u001c\u00109\u001a\u0004\u0018\u00010\u00148FX\u0087\u0004¢\u0006\f\u0012\u0004\b:\u0010\u0011\u001a\u0004\b;\u0010\u0017R\u0013\u0010<\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b=\u0010\fR\u0013\u0010>\u001a\u0004\u0018\u00010\u00148F¢\u0006\u0006\u001a\u0004\b?\u0010\u0017R\u0013\u0010@\u001a\u0004\u0018\u00010\u001d8F¢\u0006\u0006\u001a\u0004\bA\u0010\u001fR\u001c\u0010B\u001a\u0004\u0018\u00010\n8FX\u0087\u0004¢\u0006\f\u0012\u0004\bC\u0010\u0011\u001a\u0004\bD\u0010\fR\u001c\u0010E\u001a\u0004\u0018\u00010\u00148FX\u0087\u0004¢\u0006\f\u0012\u0004\bF\u0010\u0011\u001a\u0004\bG\u0010\u0017R\u001c\u0010H\u001a\u0004\u0018\u00010\u001d8FX\u0087\u0004¢\u0006\f\u0012\u0004\bI\u0010\u0011\u001a\u0004\bJ\u0010\u001fR\u0013\u0010K\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\bL\u0010\fR\u0013\u0010M\u001a\u0004\u0018\u00010\u00148F¢\u0006\u0006\u001a\u0004\bN\u0010\u0017R\u0013\u0010O\u001a\u0004\u0018\u00010\u001d8F¢\u0006\u0006\u001a\u0004\bP\u0010\u001fR\u0013\u0010Q\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\bR\u0010\fR\u0013\u0010S\u001a\u0004\u0018\u00010\u00148F¢\u0006\u0006\u001a\u0004\bT\u0010\u0017R\u0013\u0010U\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\bV\u0010\fR\u0013\u0010W\u001a\u0004\u0018\u00010\u00148F¢\u0006\u0006\u001a\u0004\bX\u0010\u0017R\u0013\u0010Y\u001a\u0004\u0018\u00010\u001d8F¢\u0006\u0006\u001a\u0004\bZ\u0010\u001fR\u0013\u0010[\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b\\\u0010\fR\u0013\u0010]\u001a\u0004\u0018\u00010\u00148F¢\u0006\u0006\u001a\u0004\b^\u0010\u0017R\u0013\u0010_\u001a\u0004\u0018\u00010\u001d8F¢\u0006\u0006\u001a\u0004\b`\u0010\u001fR\u0013\u0010a\u001a\u0004\u0018\u00010b8F¢\u0006\u0006\u001a\u0004\bc\u0010dR\u0013\u0010e\u001a\u0004\u0018\u00010\u00148F¢\u0006\u0006\u001a\u0004\bf\u0010\u0017R\u0013\u0010g\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\bh\u0010\fR\u0013\u0010i\u001a\u0004\u0018\u00010\u00148F¢\u0006\u0006\u001a\u0004\bj\u0010\u0017R\u0013\u0010k\u001a\u0004\u0018\u00010\u001d8F¢\u0006\u0006\u001a\u0004\bl\u0010\u001fR\u0016\u0010m\u001a\u0004\u0018\u00010\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bn\u0010\bR\u0011\u0010\u0005\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\bo\u0010\bR\u0013\u0010p\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bq\u0010\bR\u0016\u0010r\u001a\u0004\u0018\u00010s8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bt\u0010uR\u0016\u0010v\u001a\u0004\u0018\u00010\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bw\u0010\u0017¨\u0006\u0081\u0001"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/RasterLayer;", "Lcom/mapbox/maps/extension/style/layers/generated/RasterLayerDsl;", "Lcom/mapbox/maps/extension/style/layers/Layer;", "layerId", "", "sourceId", "(Ljava/lang/String;Ljava/lang/String;)V", "getLayerId", "()Ljava/lang/String;", "maxZoom", "", "getMaxZoom", "()Ljava/lang/Double;", "minZoom", "getMinZoom", "rasterArrayBand", "getRasterArrayBand$annotations", "()V", "getRasterArrayBand", "rasterArrayBandAsExpression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getRasterArrayBandAsExpression$annotations", "getRasterArrayBandAsExpression", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "rasterBrightnessMax", "getRasterBrightnessMax", "rasterBrightnessMaxAsExpression", "getRasterBrightnessMaxAsExpression", "rasterBrightnessMaxTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getRasterBrightnessMaxTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "rasterBrightnessMin", "getRasterBrightnessMin", "rasterBrightnessMinAsExpression", "getRasterBrightnessMinAsExpression", "rasterBrightnessMinTransition", "getRasterBrightnessMinTransition", "rasterColor", "getRasterColor", "rasterColorMix", "", "getRasterColorMix", "()Ljava/util/List;", "rasterColorMixAsExpression", "getRasterColorMixAsExpression", "rasterColorMixTransition", "getRasterColorMixTransition", "rasterColorRange", "getRasterColorRange", "rasterColorRangeAsExpression", "getRasterColorRangeAsExpression", "rasterColorRangeTransition", "getRasterColorRangeTransition", "rasterColorUseTheme", "getRasterColorUseTheme$annotations", "getRasterColorUseTheme", "rasterColorUseThemeAsExpression", "getRasterColorUseThemeAsExpression$annotations", "getRasterColorUseThemeAsExpression", "rasterContrast", "getRasterContrast", "rasterContrastAsExpression", "getRasterContrastAsExpression", "rasterContrastTransition", "getRasterContrastTransition", "rasterElevation", "getRasterElevation$annotations", "getRasterElevation", "rasterElevationAsExpression", "getRasterElevationAsExpression$annotations", "getRasterElevationAsExpression", "rasterElevationTransition", "getRasterElevationTransition$annotations", "getRasterElevationTransition", "rasterEmissiveStrength", "getRasterEmissiveStrength", "rasterEmissiveStrengthAsExpression", "getRasterEmissiveStrengthAsExpression", "rasterEmissiveStrengthTransition", "getRasterEmissiveStrengthTransition", "rasterFadeDuration", "getRasterFadeDuration", "rasterFadeDurationAsExpression", "getRasterFadeDurationAsExpression", "rasterHueRotate", "getRasterHueRotate", "rasterHueRotateAsExpression", "getRasterHueRotateAsExpression", "rasterHueRotateTransition", "getRasterHueRotateTransition", "rasterOpacity", "getRasterOpacity", "rasterOpacityAsExpression", "getRasterOpacityAsExpression", "rasterOpacityTransition", "getRasterOpacityTransition", "rasterResampling", "Lcom/mapbox/maps/extension/style/layers/properties/generated/RasterResampling;", "getRasterResampling", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/RasterResampling;", "rasterResamplingAsExpression", "getRasterResamplingAsExpression", "rasterSaturation", "getRasterSaturation", "rasterSaturationAsExpression", "getRasterSaturationAsExpression", "rasterSaturationTransition", "getRasterSaturationTransition", "slot", "getSlot", "getSourceId", "sourceLayer", "getSourceLayer", "visibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "getVisibility", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "visibilityAsExpression", "getVisibilityAsExpression", "getType", "getType$extension_style_release", "options", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "Companion", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class RasterLayer extends Layer implements RasterLayerDsl {

    public static final Companion INSTANCE = new Companion(null);
    private final String layerId;
    private final String sourceId;

    public static void getRasterArrayBand$annotations() {
    }

    public static void getRasterArrayBandAsExpression$annotations() {
    }

    public static void getRasterColorUseTheme$annotations() {
    }

    public static void getRasterColorUseThemeAsExpression$annotations() {
    }

    public static void getRasterElevation$annotations() {
    }

    public static void getRasterElevationAsExpression$annotations() {
    }

    public static void getRasterElevationTransition$annotations() {
    }

    public RasterLayer(String layerId, String sourceId) {
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
    public RasterLayer sourceLayer(String sourceLayer) {
        Intrinsics.checkNotNullParameter(sourceLayer, "sourceLayer");
        setProperty$extension_style_release(new PropertyValue<>("source-layer", sourceLayer));
        return this;
    }

    public final String getSourceLayer() {
        return (String) getPropertyValueWithType("source-layer", String.class);
    }

    @Override
    public RasterLayer slot(String slot) {
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
    public RasterLayer visibility(Visibility visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        setProperty$extension_style_release(new PropertyValue<>("visibility", visibility));
        return this;
    }

    @Override
    public RasterLayer visibility(Expression visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        setProperty$extension_style_release(new PropertyValue<>("visibility", visibility));
        return this;
    }

    @Override
    public Double getMinZoom() {
        return (Double) getPropertyValueWithType("minzoom", Double.class);
    }

    @Override
    public RasterLayer minZoom(double minZoom) {
        setProperty$extension_style_release(new PropertyValue<>("minzoom", Double.valueOf(minZoom)));
        return this;
    }

    @Override
    public Double getMaxZoom() {
        return (Double) getPropertyValueWithType("maxzoom", Double.class);
    }

    @Override
    public RasterLayer maxZoom(double maxZoom) {
        setProperty$extension_style_release(new PropertyValue<>("maxzoom", Double.valueOf(maxZoom)));
        return this;
    }

    public final String getRasterArrayBand() {
        return (String) getPropertyValueWithType("raster-array-band", String.class);
    }

    @Override
    public RasterLayer rasterArrayBand(String rasterArrayBand) {
        Intrinsics.checkNotNullParameter(rasterArrayBand, "rasterArrayBand");
        setProperty$extension_style_release(new PropertyValue<>("raster-array-band", rasterArrayBand));
        return this;
    }

    public final Expression getRasterArrayBandAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("raster-array-band");
    }

    @Override
    public RasterLayer rasterArrayBand(Expression rasterArrayBand) {
        Intrinsics.checkNotNullParameter(rasterArrayBand, "rasterArrayBand");
        setProperty$extension_style_release(new PropertyValue<>("raster-array-band", rasterArrayBand));
        return this;
    }

    public final Double getRasterBrightnessMax() {
        return (Double) getPropertyValueWithType("raster-brightness-max", Double.class);
    }

    @Override
    public RasterLayer rasterBrightnessMax(double rasterBrightnessMax) {
        setProperty$extension_style_release(new PropertyValue<>("raster-brightness-max", Double.valueOf(rasterBrightnessMax)));
        return this;
    }

    public final Expression getRasterBrightnessMaxAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("raster-brightness-max");
    }

    @Override
    public RasterLayer rasterBrightnessMax(Expression rasterBrightnessMax) {
        Intrinsics.checkNotNullParameter(rasterBrightnessMax, "rasterBrightnessMax");
        setProperty$extension_style_release(new PropertyValue<>("raster-brightness-max", rasterBrightnessMax));
        return this;
    }

    public final StyleTransition getRasterBrightnessMaxTransition() {
        return (StyleTransition) getPropertyValueWithType("raster-brightness-max-transition", StyleTransition.class);
    }

    @Override
    public RasterLayer rasterBrightnessMaxTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("raster-brightness-max-transition", options));
        return this;
    }

    @Override
    public RasterLayer rasterBrightnessMaxTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        rasterBrightnessMaxTransition(builder.build());
        return this;
    }

    public final Double getRasterBrightnessMin() {
        return (Double) getPropertyValueWithType("raster-brightness-min", Double.class);
    }

    @Override
    public RasterLayer rasterBrightnessMin(double rasterBrightnessMin) {
        setProperty$extension_style_release(new PropertyValue<>("raster-brightness-min", Double.valueOf(rasterBrightnessMin)));
        return this;
    }

    public final Expression getRasterBrightnessMinAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("raster-brightness-min");
    }

    @Override
    public RasterLayer rasterBrightnessMin(Expression rasterBrightnessMin) {
        Intrinsics.checkNotNullParameter(rasterBrightnessMin, "rasterBrightnessMin");
        setProperty$extension_style_release(new PropertyValue<>("raster-brightness-min", rasterBrightnessMin));
        return this;
    }

    public final StyleTransition getRasterBrightnessMinTransition() {
        return (StyleTransition) getPropertyValueWithType("raster-brightness-min-transition", StyleTransition.class);
    }

    @Override
    public RasterLayer rasterBrightnessMinTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("raster-brightness-min-transition", options));
        return this;
    }

    @Override
    public RasterLayer rasterBrightnessMinTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        rasterBrightnessMinTransition(builder.build());
        return this;
    }

    public final Expression getRasterColor() {
        return (Expression) getPropertyValueWithType("raster-color", Expression.class);
    }

    @Override
    public RasterLayer rasterColor(Expression rasterColor) {
        Intrinsics.checkNotNullParameter(rasterColor, "rasterColor");
        setProperty$extension_style_release(new PropertyValue<>("raster-color", rasterColor));
        return this;
    }

    public final String getRasterColorUseTheme() {
        return (String) getPropertyValueWithType("raster-color-use-theme", String.class);
    }

    @Override
    public RasterLayer rasterColorUseTheme(String rasterColorUseTheme) {
        Intrinsics.checkNotNullParameter(rasterColorUseTheme, "rasterColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("raster-color-use-theme", rasterColorUseTheme));
        return this;
    }

    public final Expression getRasterColorUseThemeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("raster-color-use-theme");
    }

    @Override
    public RasterLayer rasterColorUseTheme(Expression rasterColorUseTheme) {
        Intrinsics.checkNotNullParameter(rasterColorUseTheme, "rasterColorUseTheme");
        setProperty$extension_style_release(new PropertyValue<>("raster-color-use-theme", rasterColorUseTheme));
        return this;
    }

    public final List<Double> getRasterColorMix() {
        return (List) getPropertyValueWithType("raster-color-mix", List.class);
    }

    @Override
    public RasterLayer rasterColorMix(List<Double> rasterColorMix) {
        Intrinsics.checkNotNullParameter(rasterColorMix, "rasterColorMix");
        setProperty$extension_style_release(new PropertyValue<>("raster-color-mix", rasterColorMix));
        return this;
    }

    public final Expression getRasterColorMixAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("raster-color-mix");
    }

    @Override
    public RasterLayer rasterColorMix(Expression rasterColorMix) {
        Intrinsics.checkNotNullParameter(rasterColorMix, "rasterColorMix");
        setProperty$extension_style_release(new PropertyValue<>("raster-color-mix", rasterColorMix));
        return this;
    }

    public final StyleTransition getRasterColorMixTransition() {
        return (StyleTransition) getPropertyValueWithType("raster-color-mix-transition", StyleTransition.class);
    }

    @Override
    public RasterLayer rasterColorMixTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("raster-color-mix-transition", options));
        return this;
    }

    @Override
    public RasterLayer rasterColorMixTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        rasterColorMixTransition(builder.build());
        return this;
    }

    public final List<Double> getRasterColorRange() {
        return (List) getPropertyValueWithType("raster-color-range", List.class);
    }

    @Override
    public RasterLayer rasterColorRange(List<Double> rasterColorRange) {
        Intrinsics.checkNotNullParameter(rasterColorRange, "rasterColorRange");
        setProperty$extension_style_release(new PropertyValue<>("raster-color-range", rasterColorRange));
        return this;
    }

    public final Expression getRasterColorRangeAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("raster-color-range");
    }

    @Override
    public RasterLayer rasterColorRange(Expression rasterColorRange) {
        Intrinsics.checkNotNullParameter(rasterColorRange, "rasterColorRange");
        setProperty$extension_style_release(new PropertyValue<>("raster-color-range", rasterColorRange));
        return this;
    }

    public final StyleTransition getRasterColorRangeTransition() {
        return (StyleTransition) getPropertyValueWithType("raster-color-range-transition", StyleTransition.class);
    }

    @Override
    public RasterLayer rasterColorRangeTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("raster-color-range-transition", options));
        return this;
    }

    @Override
    public RasterLayer rasterColorRangeTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        rasterColorRangeTransition(builder.build());
        return this;
    }

    public final Double getRasterContrast() {
        return (Double) getPropertyValueWithType("raster-contrast", Double.class);
    }

    @Override
    public RasterLayer rasterContrast(double rasterContrast) {
        setProperty$extension_style_release(new PropertyValue<>("raster-contrast", Double.valueOf(rasterContrast)));
        return this;
    }

    public final Expression getRasterContrastAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("raster-contrast");
    }

    @Override
    public RasterLayer rasterContrast(Expression rasterContrast) {
        Intrinsics.checkNotNullParameter(rasterContrast, "rasterContrast");
        setProperty$extension_style_release(new PropertyValue<>("raster-contrast", rasterContrast));
        return this;
    }

    public final StyleTransition getRasterContrastTransition() {
        return (StyleTransition) getPropertyValueWithType("raster-contrast-transition", StyleTransition.class);
    }

    @Override
    public RasterLayer rasterContrastTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("raster-contrast-transition", options));
        return this;
    }

    @Override
    public RasterLayer rasterContrastTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        rasterContrastTransition(builder.build());
        return this;
    }

    public final Double getRasterElevation() {
        return (Double) getPropertyValueWithType("raster-elevation", Double.class);
    }

    @Override
    public RasterLayer rasterElevation(double rasterElevation) {
        setProperty$extension_style_release(new PropertyValue<>("raster-elevation", Double.valueOf(rasterElevation)));
        return this;
    }

    public final Expression getRasterElevationAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("raster-elevation");
    }

    @Override
    public RasterLayer rasterElevation(Expression rasterElevation) {
        Intrinsics.checkNotNullParameter(rasterElevation, "rasterElevation");
        setProperty$extension_style_release(new PropertyValue<>("raster-elevation", rasterElevation));
        return this;
    }

    public final StyleTransition getRasterElevationTransition() {
        return (StyleTransition) getPropertyValueWithType("raster-elevation-transition", StyleTransition.class);
    }

    @Override
    public RasterLayer rasterElevationTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("raster-elevation-transition", options));
        return this;
    }

    @Override
    public RasterLayer rasterElevationTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        rasterElevationTransition(builder.build());
        return this;
    }

    public final Double getRasterEmissiveStrength() {
        return (Double) getPropertyValueWithType("raster-emissive-strength", Double.class);
    }

    @Override
    public RasterLayer rasterEmissiveStrength(double rasterEmissiveStrength) {
        setProperty$extension_style_release(new PropertyValue<>("raster-emissive-strength", Double.valueOf(rasterEmissiveStrength)));
        return this;
    }

    public final Expression getRasterEmissiveStrengthAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("raster-emissive-strength");
    }

    @Override
    public RasterLayer rasterEmissiveStrength(Expression rasterEmissiveStrength) {
        Intrinsics.checkNotNullParameter(rasterEmissiveStrength, "rasterEmissiveStrength");
        setProperty$extension_style_release(new PropertyValue<>("raster-emissive-strength", rasterEmissiveStrength));
        return this;
    }

    public final StyleTransition getRasterEmissiveStrengthTransition() {
        return (StyleTransition) getPropertyValueWithType("raster-emissive-strength-transition", StyleTransition.class);
    }

    @Override
    public RasterLayer rasterEmissiveStrengthTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("raster-emissive-strength-transition", options));
        return this;
    }

    @Override
    public RasterLayer rasterEmissiveStrengthTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        rasterEmissiveStrengthTransition(builder.build());
        return this;
    }

    public final Double getRasterFadeDuration() {
        return (Double) getPropertyValueWithType("raster-fade-duration", Double.class);
    }

    @Override
    public RasterLayer rasterFadeDuration(double rasterFadeDuration) {
        setProperty$extension_style_release(new PropertyValue<>("raster-fade-duration", Double.valueOf(rasterFadeDuration)));
        return this;
    }

    public final Expression getRasterFadeDurationAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("raster-fade-duration");
    }

    @Override
    public RasterLayer rasterFadeDuration(Expression rasterFadeDuration) {
        Intrinsics.checkNotNullParameter(rasterFadeDuration, "rasterFadeDuration");
        setProperty$extension_style_release(new PropertyValue<>("raster-fade-duration", rasterFadeDuration));
        return this;
    }

    public final Double getRasterHueRotate() {
        return (Double) getPropertyValueWithType("raster-hue-rotate", Double.class);
    }

    @Override
    public RasterLayer rasterHueRotate(double rasterHueRotate) {
        setProperty$extension_style_release(new PropertyValue<>("raster-hue-rotate", Double.valueOf(rasterHueRotate)));
        return this;
    }

    public final Expression getRasterHueRotateAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("raster-hue-rotate");
    }

    @Override
    public RasterLayer rasterHueRotate(Expression rasterHueRotate) {
        Intrinsics.checkNotNullParameter(rasterHueRotate, "rasterHueRotate");
        setProperty$extension_style_release(new PropertyValue<>("raster-hue-rotate", rasterHueRotate));
        return this;
    }

    public final StyleTransition getRasterHueRotateTransition() {
        return (StyleTransition) getPropertyValueWithType("raster-hue-rotate-transition", StyleTransition.class);
    }

    @Override
    public RasterLayer rasterHueRotateTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("raster-hue-rotate-transition", options));
        return this;
    }

    @Override
    public RasterLayer rasterHueRotateTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        rasterHueRotateTransition(builder.build());
        return this;
    }

    public final Double getRasterOpacity() {
        return (Double) getPropertyValueWithType("raster-opacity", Double.class);
    }

    @Override
    public RasterLayer rasterOpacity(double rasterOpacity) {
        setProperty$extension_style_release(new PropertyValue<>("raster-opacity", Double.valueOf(rasterOpacity)));
        return this;
    }

    public final Expression getRasterOpacityAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("raster-opacity");
    }

    @Override
    public RasterLayer rasterOpacity(Expression rasterOpacity) {
        Intrinsics.checkNotNullParameter(rasterOpacity, "rasterOpacity");
        setProperty$extension_style_release(new PropertyValue<>("raster-opacity", rasterOpacity));
        return this;
    }

    public final StyleTransition getRasterOpacityTransition() {
        return (StyleTransition) getPropertyValueWithType("raster-opacity-transition", StyleTransition.class);
    }

    @Override
    public RasterLayer rasterOpacityTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("raster-opacity-transition", options));
        return this;
    }

    @Override
    public RasterLayer rasterOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        rasterOpacityTransition(builder.build());
        return this;
    }

    public final RasterResampling getRasterResampling() {
        String str = (String) getPropertyValueWithType("raster-resampling", String.class);
        if (str == null) {
            return null;
        }
        RasterResampling.Companion companion = RasterResampling.INSTANCE;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
    }

    @Override
    public RasterLayer rasterResampling(RasterResampling rasterResampling) {
        Intrinsics.checkNotNullParameter(rasterResampling, "rasterResampling");
        setProperty$extension_style_release(new PropertyValue<>("raster-resampling", rasterResampling));
        return this;
    }

    public final Expression getRasterResamplingAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("raster-resampling", Expression.class);
        if (expression != null) {
            return expression;
        }
        RasterResampling rasterResampling = getRasterResampling();
        if (rasterResampling != null) {
            return Expression.INSTANCE.literal(rasterResampling.getValue());
        }
        return null;
    }

    @Override
    public RasterLayer rasterResampling(Expression rasterResampling) {
        Intrinsics.checkNotNullParameter(rasterResampling, "rasterResampling");
        setProperty$extension_style_release(new PropertyValue<>("raster-resampling", rasterResampling));
        return this;
    }

    public final Double getRasterSaturation() {
        return (Double) getPropertyValueWithType("raster-saturation", Double.class);
    }

    @Override
    public RasterLayer rasterSaturation(double rasterSaturation) {
        setProperty$extension_style_release(new PropertyValue<>("raster-saturation", Double.valueOf(rasterSaturation)));
        return this;
    }

    public final Expression getRasterSaturationAsExpression() {
        return getPropertyValueAsExpressionOrLiteralExpression$extension_style_release("raster-saturation");
    }

    @Override
    public RasterLayer rasterSaturation(Expression rasterSaturation) {
        Intrinsics.checkNotNullParameter(rasterSaturation, "rasterSaturation");
        setProperty$extension_style_release(new PropertyValue<>("raster-saturation", rasterSaturation));
        return this;
    }

    public final StyleTransition getRasterSaturationTransition() {
        return (StyleTransition) getPropertyValueWithType("raster-saturation-transition", StyleTransition.class);
    }

    @Override
    public RasterLayer rasterSaturationTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty$extension_style_release(new PropertyValue<>("raster-saturation-transition", options));
        return this;
    }

    @Override
    public RasterLayer rasterSaturationTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        rasterSaturationTransition(builder.build());
        return this;
    }

    @Override
    public String getType$extension_style_release() {
        return "raster";
    }

    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\b8\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\b\u0010\u0006R\u001c\u0010\t\u001a\u0004\u0018\u00010\n8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u000b\u0010\u0002\u001a\u0004\b\f\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0010\u0010\u0002\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0006R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u000f8F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0012R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u0006R\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u000f8F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u0012R\u0013\u0010\u001f\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0006\u001a\u0004\b \u0010\u001aR\u0019\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\"8F¢\u0006\u0006\u001a\u0004\b#\u0010$R\u0013\u0010%\u001a\u0004\u0018\u00010\u000f8F¢\u0006\u0006\u001a\u0004\b&\u0010\u0012R\u0013\u0010'\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0006\u001a\u0004\b(\u0010\u001aR\u0019\u0010)\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\"8F¢\u0006\u0006\u001a\u0004\b*\u0010$R\u0013\u0010+\u001a\u0004\u0018\u00010\u000f8F¢\u0006\u0006\u001a\u0004\b,\u0010\u0012R\u0013\u0010-\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0006\u001a\u0004\b.\u0010\u001aR\u001c\u0010/\u001a\u0004\u0018\u00010\n8FX\u0087\u0004¢\u0006\f\u0012\u0004\b0\u0010\u0002\u001a\u0004\b1\u0010\rR\u001c\u00102\u001a\u0004\u0018\u00010\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b3\u0010\u0002\u001a\u0004\b4\u0010\u0012R\u0013\u00105\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b6\u0010\u0006R\u0013\u00107\u001a\u0004\u0018\u00010\u000f8F¢\u0006\u0006\u001a\u0004\b8\u0010\u0012R\u0013\u00109\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0006\u001a\u0004\b:\u0010\u001aR\u001c\u0010;\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b<\u0010\u0002\u001a\u0004\b=\u0010\u0006R\u001c\u0010>\u001a\u0004\u0018\u00010\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b?\u0010\u0002\u001a\u0004\b@\u0010\u0012R\u001c\u0010A\u001a\u0004\u0018\u00010\u00188FX\u0087\u0004¢\u0006\f\u0012\u0004\bB\u0010\u0002\u001a\u0004\bC\u0010\u001aR\u0013\u0010D\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bE\u0010\u0006R\u0013\u0010F\u001a\u0004\u0018\u00010\u000f8F¢\u0006\u0006\u001a\u0004\bG\u0010\u0012R\u0013\u0010H\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0006\u001a\u0004\bI\u0010\u001aR\u0013\u0010J\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bK\u0010\u0006R\u0013\u0010L\u001a\u0004\u0018\u00010\u000f8F¢\u0006\u0006\u001a\u0004\bM\u0010\u0012R\u0013\u0010N\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bO\u0010\u0006R\u0013\u0010P\u001a\u0004\u0018\u00010\u000f8F¢\u0006\u0006\u001a\u0004\bQ\u0010\u0012R\u0013\u0010R\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0006\u001a\u0004\bS\u0010\u001aR\u0013\u0010T\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\bU\u0010\u0006R\u0013\u0010V\u001a\u0004\u0018\u00010\u000f8F¢\u0006\u0006\u001a\u0004\bW\u0010\u0012R\u0013\u0010X\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0006\u001a\u0004\bY\u0010\u001aR\u0013\u0010Z\u001a\u0004\u0018\u00010[8F¢\u0006\u0006\u001a\u0004\b\\\u0010]R\u0013\u0010^\u001a\u0004\u0018\u00010\u000f8F¢\u0006\u0006\u001a\u0004\b_\u0010\u0012R\u0013\u0010`\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\ba\u0010\u0006R\u0013\u0010b\u001a\u0004\u0018\u00010\u000f8F¢\u0006\u0006\u001a\u0004\bc\u0010\u0012R\u0013\u0010d\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0006\u001a\u0004\be\u0010\u001aR\u0013\u0010f\u001a\u0004\u0018\u00010g8F¢\u0006\u0006\u001a\u0004\bh\u0010i¨\u0006j"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/RasterLayer$Companion;", "", "()V", "defaultMaxZoom", "", "getDefaultMaxZoom", "()Ljava/lang/Double;", "defaultMinZoom", "getDefaultMinZoom", "defaultRasterArrayBand", "", "getDefaultRasterArrayBand$annotations", "getDefaultRasterArrayBand", "()Ljava/lang/String;", "defaultRasterArrayBandAsExpression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getDefaultRasterArrayBandAsExpression$annotations", "getDefaultRasterArrayBandAsExpression", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "defaultRasterBrightnessMax", "getDefaultRasterBrightnessMax", "defaultRasterBrightnessMaxAsExpression", "getDefaultRasterBrightnessMaxAsExpression", "defaultRasterBrightnessMaxTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getDefaultRasterBrightnessMaxTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "defaultRasterBrightnessMin", "getDefaultRasterBrightnessMin", "defaultRasterBrightnessMinAsExpression", "getDefaultRasterBrightnessMinAsExpression", "defaultRasterBrightnessMinTransition", "getDefaultRasterBrightnessMinTransition", "defaultRasterColorMix", "", "getDefaultRasterColorMix", "()Ljava/util/List;", "defaultRasterColorMixAsExpression", "getDefaultRasterColorMixAsExpression", "defaultRasterColorMixTransition", "getDefaultRasterColorMixTransition", "defaultRasterColorRange", "getDefaultRasterColorRange", "defaultRasterColorRangeAsExpression", "getDefaultRasterColorRangeAsExpression", "defaultRasterColorRangeTransition", "getDefaultRasterColorRangeTransition", "defaultRasterColorUseTheme", "getDefaultRasterColorUseTheme$annotations", "getDefaultRasterColorUseTheme", "defaultRasterColorUseThemeAsExpression", "getDefaultRasterColorUseThemeAsExpression$annotations", "getDefaultRasterColorUseThemeAsExpression", "defaultRasterContrast", "getDefaultRasterContrast", "defaultRasterContrastAsExpression", "getDefaultRasterContrastAsExpression", "defaultRasterContrastTransition", "getDefaultRasterContrastTransition", "defaultRasterElevation", "getDefaultRasterElevation$annotations", "getDefaultRasterElevation", "defaultRasterElevationAsExpression", "getDefaultRasterElevationAsExpression$annotations", "getDefaultRasterElevationAsExpression", "defaultRasterElevationTransition", "getDefaultRasterElevationTransition$annotations", "getDefaultRasterElevationTransition", "defaultRasterEmissiveStrength", "getDefaultRasterEmissiveStrength", "defaultRasterEmissiveStrengthAsExpression", "getDefaultRasterEmissiveStrengthAsExpression", "defaultRasterEmissiveStrengthTransition", "getDefaultRasterEmissiveStrengthTransition", "defaultRasterFadeDuration", "getDefaultRasterFadeDuration", "defaultRasterFadeDurationAsExpression", "getDefaultRasterFadeDurationAsExpression", "defaultRasterHueRotate", "getDefaultRasterHueRotate", "defaultRasterHueRotateAsExpression", "getDefaultRasterHueRotateAsExpression", "defaultRasterHueRotateTransition", "getDefaultRasterHueRotateTransition", "defaultRasterOpacity", "getDefaultRasterOpacity", "defaultRasterOpacityAsExpression", "getDefaultRasterOpacityAsExpression", "defaultRasterOpacityTransition", "getDefaultRasterOpacityTransition", "defaultRasterResampling", "Lcom/mapbox/maps/extension/style/layers/properties/generated/RasterResampling;", "getDefaultRasterResampling", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/RasterResampling;", "defaultRasterResamplingAsExpression", "getDefaultRasterResamplingAsExpression", "defaultRasterSaturation", "getDefaultRasterSaturation", "defaultRasterSaturationAsExpression", "getDefaultRasterSaturationAsExpression", "defaultRasterSaturationTransition", "getDefaultRasterSaturationTransition", "defaultVisibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "getDefaultVisibility", "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void getDefaultRasterArrayBand$annotations() {
        }

        public static void getDefaultRasterArrayBandAsExpression$annotations() {
        }

        public static void getDefaultRasterColorUseTheme$annotations() {
        }

        public static void getDefaultRasterColorUseThemeAsExpression$annotations() {
        }

        public static void getDefaultRasterElevation$annotations() {
        }

        public static void getDefaultRasterElevationAsExpression$annotations() {
        }

        public static void getDefaultRasterElevationTransition$annotations() {
        }

        private Companion() {
        }

        public final Visibility getDefaultVisibility() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "visibility");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…e(\"raster\", \"visibility\")");
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
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "minzoom");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…alue(\"raster\", \"minzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Double getDefaultMaxZoom() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "maxzoom");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…alue(\"raster\", \"maxzoom\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final String getDefaultRasterArrayBand() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-array-band");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…er\", \"raster-array-band\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultRasterArrayBandAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-array-band");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…er\", \"raster-array-band\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultRasterArrayBand = getDefaultRasterArrayBand();
            if (defaultRasterArrayBand != null) {
                return Expression.INSTANCE.literal(defaultRasterArrayBand);
            }
            return null;
        }

        public final Double getDefaultRasterBrightnessMax() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-brightness-max");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef… \"raster-brightness-max\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultRasterBrightnessMaxAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-brightness-max");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef… \"raster-brightness-max\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultRasterBrightnessMax = getDefaultRasterBrightnessMax();
            if (defaultRasterBrightnessMax == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultRasterBrightnessMax.doubleValue());
        }

        public final StyleTransition getDefaultRasterBrightnessMaxTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-brightness-max-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ightness-max-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultRasterBrightnessMin() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-brightness-min");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef… \"raster-brightness-min\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultRasterBrightnessMinAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-brightness-min");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef… \"raster-brightness-min\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultRasterBrightnessMin = getDefaultRasterBrightnessMin();
            if (defaultRasterBrightnessMin == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultRasterBrightnessMin.doubleValue());
        }

        public final StyleTransition getDefaultRasterBrightnessMinTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-brightness-min-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ightness-min-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final String getDefaultRasterColorUseTheme() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"raster-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (String) objUnwrap;
        }

        public final Expression getDefaultRasterColorUseThemeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-color-use-theme");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…\"raster-color-use-theme\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            String defaultRasterColorUseTheme = getDefaultRasterColorUseTheme();
            if (defaultRasterColorUseTheme != null) {
                return Expression.INSTANCE.literal(defaultRasterColorUseTheme);
            }
            return null;
        }

        public final List<Double> getDefaultRasterColorMix() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-color-mix");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ter\", \"raster-color-mix\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, List.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (List) objUnwrap;
        }

        public final Expression getDefaultRasterColorMixAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-color-mix");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ter\", \"raster-color-mix\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            List<Double> defaultRasterColorMix = getDefaultRasterColorMix();
            if (defaultRasterColorMix != null) {
                return Expression.INSTANCE.literal$extension_style_release(defaultRasterColorMix);
            }
            return null;
        }

        public final StyleTransition getDefaultRasterColorMixTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-color-mix-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…er-color-mix-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final List<Double> getDefaultRasterColorRange() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-color-range");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…r\", \"raster-color-range\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, List.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (List) objUnwrap;
        }

        public final Expression getDefaultRasterColorRangeAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-color-range");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…r\", \"raster-color-range\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            List<Double> defaultRasterColorRange = getDefaultRasterColorRange();
            if (defaultRasterColorRange != null) {
                return Expression.INSTANCE.literal$extension_style_release(defaultRasterColorRange);
            }
            return null;
        }

        public final StyleTransition getDefaultRasterColorRangeTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-color-range-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…-color-range-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultRasterContrast() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-contrast");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ster\", \"raster-contrast\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultRasterContrastAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-contrast");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ster\", \"raster-contrast\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultRasterContrast = getDefaultRasterContrast();
            if (defaultRasterContrast == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultRasterContrast.doubleValue());
        }

        public final StyleTransition getDefaultRasterContrastTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-contrast-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ter-contrast-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultRasterElevation() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-elevation");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ter\", \"raster-elevation\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultRasterElevationAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-elevation");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ter\", \"raster-elevation\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultRasterElevation = getDefaultRasterElevation();
            if (defaultRasterElevation == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultRasterElevation.doubleValue());
        }

        public final StyleTransition getDefaultRasterElevationTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-elevation-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…er-elevation-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultRasterEmissiveStrength() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-emissive-strength");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…aster-emissive-strength\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultRasterEmissiveStrengthAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-emissive-strength");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…aster-emissive-strength\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultRasterEmissiveStrength = getDefaultRasterEmissiveStrength();
            if (defaultRasterEmissiveStrength == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultRasterEmissiveStrength.doubleValue());
        }

        public final StyleTransition getDefaultRasterEmissiveStrengthTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-emissive-strength-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ive-strength-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultRasterFadeDuration() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-fade-duration");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…, \"raster-fade-duration\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultRasterFadeDurationAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-fade-duration");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…, \"raster-fade-duration\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultRasterFadeDuration = getDefaultRasterFadeDuration();
            if (defaultRasterFadeDuration == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultRasterFadeDuration.doubleValue());
        }

        public final Double getDefaultRasterHueRotate() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-hue-rotate");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…er\", \"raster-hue-rotate\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultRasterHueRotateAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-hue-rotate");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…er\", \"raster-hue-rotate\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultRasterHueRotate = getDefaultRasterHueRotate();
            if (defaultRasterHueRotate == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultRasterHueRotate.doubleValue());
        }

        public final StyleTransition getDefaultRasterHueRotateTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-hue-rotate-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…r-hue-rotate-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final Double getDefaultRasterOpacity() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-opacity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…aster\", \"raster-opacity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultRasterOpacityAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-opacity");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…aster\", \"raster-opacity\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultRasterOpacity = getDefaultRasterOpacity();
            if (defaultRasterOpacity == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultRasterOpacity.doubleValue());
        }

        public final StyleTransition getDefaultRasterOpacityTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-opacity-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…ster-opacity-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }

        public final RasterResampling getDefaultRasterResampling() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-resampling");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…er\", \"raster-resampling\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, String.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            String str = (String) objUnwrap;
            if (str == null) {
                return null;
            }
            RasterResampling.Companion companion = RasterResampling.INSTANCE;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String upperCase = str.toUpperCase(US);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            return companion.valueOf(StringsKt.replace$default(upperCase, CoreConstants.DASH_CHAR, '_', false, 4, (Object) null));
        }

        public final Expression getDefaultRasterResamplingAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-resampling");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…er\", \"raster-resampling\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            RasterResampling defaultRasterResampling = getDefaultRasterResampling();
            if (defaultRasterResampling != null) {
                return Expression.INSTANCE.literal(defaultRasterResampling.getValue());
            }
            return null;
        }

        public final Double getDefaultRasterSaturation() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-saturation");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…er\", \"raster-saturation\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Double.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (Double) objUnwrap;
        }

        public final Expression getDefaultRasterSaturationAsExpression() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-saturation");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…er\", \"raster-saturation\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, Expression.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            Expression expression = (Expression) objUnwrap;
            if (expression != null) {
                return expression;
            }
            Double defaultRasterSaturation = getDefaultRasterSaturation();
            if (defaultRasterSaturation == null) {
                return null;
            }
            return Expression.INSTANCE.literal(defaultRasterSaturation.doubleValue());
        }

        public final StyleTransition getDefaultRasterSaturationTransition() {
            Object objUnwrap;
            StylePropertyValue styleLayerPropertyDefaultValue = StyleManager.getStyleLayerPropertyDefaultValue("raster", "raster-saturation-transition");
            Intrinsics.checkNotNullExpressionValue(styleLayerPropertyDefaultValue, "getStyleLayerPropertyDef…r-saturation-transition\")");
            try {
                objUnwrap = TypeUtilsKt.unwrap(styleLayerPropertyDefaultValue, StyleTransition.class);
            } catch (RuntimeException unused) {
                objUnwrap = null;
            }
            return (StyleTransition) objUnwrap;
        }
    }
}
