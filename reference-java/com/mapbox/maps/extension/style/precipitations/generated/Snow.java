package com.mapbox.maps.extension.style.precipitations.generated;

import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.react.uimanager.ViewProps;
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

@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010 \n\u0002\b%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u0000 \u0092\u00012\u00020\u00012\u00020\u0002:\u0002\u0092\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010}\u001a\u00020~2\u0006\u0010)\u001a\u00020*H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\nH\u0017J\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005H\u0017J\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u007f\u001a\u00020\u000fH\u0017J%\u0010\u000e\u001a\u00020\u00002\u001b\u0010\u0080\u0001\u001a\u0016\u0012\u0005\u0012\u00030\u0082\u0001\u0012\u0004\u0012\u00020~0\u0081\u0001¢\u0006\u0003\b\u0083\u0001H\u0017J\u0010\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\nH\u0017J\u0012\u0010\u0013\u001a\u00020\u00002\b\b\u0001\u0010\u0013\u001a\u00020\u0019H\u0017J\u0010\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0014H\u0017J\u0010\u0010 \u001a\u00020\u00002\u0006\u0010\u007f\u001a\u00020\u000fH\u0017J%\u0010 \u001a\u00020\u00002\u001b\u0010\u0080\u0001\u001a\u0016\u0012\u0005\u0012\u00030\u0082\u0001\u0012\u0004\u0012\u00020~0\u0081\u0001¢\u0006\u0003\b\u0083\u0001H\u0017J\u0010\u0010#\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\nH\u0017J\u0010\u0010#\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u0014H\u0017J\u0010\u0010/\u001a\u00020\u00002\u0006\u0010/\u001a\u00020\nH\u0017J\u0010\u0010/\u001a\u00020\u00002\u0006\u0010/\u001a\u00020\u0005H\u0017J\u0010\u00105\u001a\u00020\u00002\u0006\u0010\u007f\u001a\u00020\u000fH\u0017J%\u00105\u001a\u00020\u00002\u001b\u0010\u0080\u0001\u001a\u0016\u0012\u0005\u0012\u00030\u0082\u0001\u0012\u0004\u0012\u00020~0\u0081\u0001¢\u0006\u0003\b\u0083\u0001H\u0017J\u0010\u00108\u001a\u00020\u00002\u0006\u00108\u001a\u00020\nH\u0017J\u0016\u00108\u001a\u00020\u00002\f\u00108\u001a\b\u0012\u0004\u0012\u00020\u000509H\u0017J\u0010\u0010@\u001a\u00020\u00002\u0006\u0010\u007f\u001a\u00020\u000fH\u0017J%\u0010@\u001a\u00020\u00002\u001b\u0010\u0080\u0001\u001a\u0016\u0012\u0005\u0012\u00030\u0082\u0001\u0012\u0004\u0012\u00020~0\u0081\u0001¢\u0006\u0003\b\u0083\u0001H\u0017J\u0010\u0010C\u001a\u00020\u00002\u0006\u0010C\u001a\u00020\nH\u0017J\u0010\u0010C\u001a\u00020\u00002\u0006\u0010C\u001a\u00020\u0005H\u0017J\u0010\u0010I\u001a\u00020\u00002\u0006\u0010\u007f\u001a\u00020\u000fH\u0017J%\u0010I\u001a\u00020\u00002\u001b\u0010\u0080\u0001\u001a\u0016\u0012\u0005\u0012\u00030\u0082\u0001\u0012\u0004\u0012\u00020~0\u0081\u0001¢\u0006\u0003\b\u0083\u0001H\u0017J%\u0010\u0084\u0001\u001a\u0005\u0018\u0001H\u0085\u0001\"\u0007\b\u0000\u0010\u0085\u0001\u0018\u00012\u0007\u0010\u0086\u0001\u001a\u00020\u0014H\u0082\b¢\u0006\u0003\u0010\u0087\u0001J3\u0010\u0088\u0001\u001a\u0005\u0018\u0001H\u0085\u0001\"\u0005\b\u0000\u0010\u0085\u00012\u0007\u0010\u0086\u0001\u001a\u00020\u00142\u000f\u0010\u0089\u0001\u001a\n\u0012\u0005\u0012\u0003H\u0085\u00010\u008a\u0001H\u0002¢\u0006\u0003\u0010\u008b\u0001J\u0014\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u000f2\u0007\u0010\u008d\u0001\u001a\u00020\u0014H\u0002J\u0010\u0010L\u001a\u00020\u00002\u0006\u0010L\u001a\u00020\nH\u0017J\u0010\u0010L\u001a\u00020\u00002\u0006\u0010L\u001a\u00020\u0005H\u0017J\u0010\u0010R\u001a\u00020\u00002\u0006\u0010\u007f\u001a\u00020\u000fH\u0017J%\u0010R\u001a\u00020\u00002\u001b\u0010\u0080\u0001\u001a\u0016\u0012\u0005\u0012\u00030\u0082\u0001\u0012\u0004\u0012\u00020~0\u0081\u0001¢\u0006\u0003\b\u0083\u0001H\u0017J\u0010\u0010U\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\nH\u0017J\u0010\u0010U\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\u0005H\u0017J\u0010\u0010[\u001a\u00020\u00002\u0006\u0010\u007f\u001a\u00020\u000fH\u0017J%\u0010[\u001a\u00020\u00002\u001b\u0010\u0080\u0001\u001a\u0016\u0012\u0005\u0012\u00030\u0082\u0001\u0012\u0004\u0012\u00020~0\u0081\u0001¢\u0006\u0003\b\u0083\u0001H\u0017J\u0016\u0010\u008e\u0001\u001a\u00020~2\u000b\u0010\u008f\u0001\u001a\u0006\u0012\u0002\b\u00030`H\u0002J\u0016\u0010\u0090\u0001\u001a\u00020~2\u000b\u0010\u0091\u0001\u001a\u0006\u0012\u0002\b\u00030`H\u0002J\u0010\u0010b\u001a\u00020\u00002\u0006\u0010b\u001a\u00020\nH\u0017J\u0010\u0010b\u001a\u00020\u00002\u0006\u0010b\u001a\u00020\u0005H\u0017J\u0010\u0010h\u001a\u00020\u00002\u0006\u0010h\u001a\u00020\nH\u0017J\u0012\u0010h\u001a\u00020\u00002\b\b\u0001\u0010h\u001a\u00020\u0019H\u0017J\u0010\u0010h\u001a\u00020\u00002\u0006\u0010h\u001a\u00020\u0014H\u0017J\u0010\u0010q\u001a\u00020\u00002\u0006\u0010\u007f\u001a\u00020\u000fH\u0017J%\u0010q\u001a\u00020\u00002\u001b\u0010\u0080\u0001\u001a\u0016\u0012\u0005\u0012\u00030\u0082\u0001\u0012\u0004\u0012\u00020~0\u0081\u0001¢\u0006\u0003\b\u0083\u0001H\u0017J\u0010\u0010t\u001a\u00020\u00002\u0006\u0010t\u001a\u00020\nH\u0017J\u0010\u0010t\u001a\u00020\u00002\u0006\u0010t\u001a\u00020\u0014H\u0017J\u0010\u0010z\u001a\u00020\u00002\u0006\u0010\u007f\u001a\u00020\u000fH\u0017J%\u0010z\u001a\u00020\u00002\u001b\u0010\u0080\u0001\u001a\u0016\u0012\u0005\u0012\u00030\u0082\u0001\u0012\u0004\u0012\u00020~0\u0081\u0001¢\u0006\u0003\b\u0083\u0001H\u0017R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u00058FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0006\u0010\u0003\u001a\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\n8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u000b\u0010\u0003\u001a\u0004\b\f\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0010\u0010\u0003\u001a\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u00148FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0015\u0010\u0003\u001a\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u00198GX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001a\u0010\u0003\u001a\u0004\b\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\n8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001e\u0010\u0003\u001a\u0004\b\u001f\u0010\rR\u001c\u0010 \u001a\u0004\u0018\u00010\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b!\u0010\u0003\u001a\u0004\b\"\u0010\u0012R\u001c\u0010#\u001a\u0004\u0018\u00010\u00148FX\u0087\u0004¢\u0006\f\u0012\u0004\b$\u0010\u0003\u001a\u0004\b%\u0010\u0017R\u001c\u0010&\u001a\u0004\u0018\u00010\n8FX\u0087\u0004¢\u0006\f\u0012\u0004\b'\u0010\u0003\u001a\u0004\b(\u0010\rR\u001c\u0010)\u001a\u0004\u0018\u00010*X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u001c\u0010/\u001a\u0004\u0018\u00010\u00058FX\u0087\u0004¢\u0006\f\u0012\u0004\b0\u0010\u0003\u001a\u0004\b1\u0010\bR\u001c\u00102\u001a\u0004\u0018\u00010\n8FX\u0087\u0004¢\u0006\f\u0012\u0004\b3\u0010\u0003\u001a\u0004\b4\u0010\rR\u001c\u00105\u001a\u0004\u0018\u00010\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b6\u0010\u0003\u001a\u0004\b7\u0010\u0012R\"\u00108\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u0001098FX\u0087\u0004¢\u0006\f\u0012\u0004\b:\u0010\u0003\u001a\u0004\b;\u0010<R\u001c\u0010=\u001a\u0004\u0018\u00010\n8FX\u0087\u0004¢\u0006\f\u0012\u0004\b>\u0010\u0003\u001a\u0004\b?\u0010\rR\u001c\u0010@\u001a\u0004\u0018\u00010\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\bA\u0010\u0003\u001a\u0004\bB\u0010\u0012R\u001c\u0010C\u001a\u0004\u0018\u00010\u00058FX\u0087\u0004¢\u0006\f\u0012\u0004\bD\u0010\u0003\u001a\u0004\bE\u0010\bR\u001c\u0010F\u001a\u0004\u0018\u00010\n8FX\u0087\u0004¢\u0006\f\u0012\u0004\bG\u0010\u0003\u001a\u0004\bH\u0010\rR\u001c\u0010I\u001a\u0004\u0018\u00010\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\bJ\u0010\u0003\u001a\u0004\bK\u0010\u0012R\u001c\u0010L\u001a\u0004\u0018\u00010\u00058FX\u0087\u0004¢\u0006\f\u0012\u0004\bM\u0010\u0003\u001a\u0004\bN\u0010\bR\u001c\u0010O\u001a\u0004\u0018\u00010\n8FX\u0087\u0004¢\u0006\f\u0012\u0004\bP\u0010\u0003\u001a\u0004\bQ\u0010\rR\u001c\u0010R\u001a\u0004\u0018\u00010\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\bS\u0010\u0003\u001a\u0004\bT\u0010\u0012R\u001c\u0010U\u001a\u0004\u0018\u00010\u00058FX\u0087\u0004¢\u0006\f\u0012\u0004\bV\u0010\u0003\u001a\u0004\bW\u0010\bR\u001c\u0010X\u001a\u0004\u0018\u00010\n8FX\u0087\u0004¢\u0006\f\u0012\u0004\bY\u0010\u0003\u001a\u0004\bZ\u0010\rR\u001c\u0010[\u001a\u0004\u0018\u00010\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\\\u0010\u0003\u001a\u0004\b]\u0010\u0012R2\u0010^\u001a&\u0012\u0004\u0012\u00020\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030`0_j\u0012\u0012\u0004\u0012\u00020\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030``aX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010b\u001a\u0004\u0018\u00010\u00058FX\u0087\u0004¢\u0006\f\u0012\u0004\bc\u0010\u0003\u001a\u0004\bd\u0010\bR\u001c\u0010e\u001a\u0004\u0018\u00010\n8FX\u0087\u0004¢\u0006\f\u0012\u0004\bf\u0010\u0003\u001a\u0004\bg\u0010\rR\u001c\u0010h\u001a\u0004\u0018\u00010\u00148FX\u0087\u0004¢\u0006\f\u0012\u0004\bi\u0010\u0003\u001a\u0004\bj\u0010\u0017R\u001c\u0010k\u001a\u0004\u0018\u00010\u00198GX\u0087\u0004¢\u0006\f\u0012\u0004\bl\u0010\u0003\u001a\u0004\bm\u0010\u001cR\u001c\u0010n\u001a\u0004\u0018\u00010\n8FX\u0087\u0004¢\u0006\f\u0012\u0004\bo\u0010\u0003\u001a\u0004\bp\u0010\rR\u001c\u0010q\u001a\u0004\u0018\u00010\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\br\u0010\u0003\u001a\u0004\bs\u0010\u0012R\u001c\u0010t\u001a\u0004\u0018\u00010\u00148FX\u0087\u0004¢\u0006\f\u0012\u0004\bu\u0010\u0003\u001a\u0004\bv\u0010\u0017R\u001c\u0010w\u001a\u0004\u0018\u00010\n8FX\u0087\u0004¢\u0006\f\u0012\u0004\bx\u0010\u0003\u001a\u0004\by\u0010\rR\u001c\u0010z\u001a\u0004\u0018\u00010\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b{\u0010\u0003\u001a\u0004\b|\u0010\u0012¨\u0006\u0093\u0001"}, d2 = {"Lcom/mapbox/maps/extension/style/precipitations/generated/Snow;", "Lcom/mapbox/maps/extension/style/precipitations/generated/SnowDslReceiver;", "Lcom/mapbox/maps/extension/style/StyleContract$StyleSnowExtension;", "()V", "centerThinning", "", "getCenterThinning$annotations", "getCenterThinning", "()Ljava/lang/Double;", "centerThinningAsExpression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getCenterThinningAsExpression$annotations", "getCenterThinningAsExpression", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "centerThinningTransition", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "getCenterThinningTransition$annotations", "getCenterThinningTransition", "()Lcom/mapbox/maps/extension/style/types/StyleTransition;", "color", "", "getColor$annotations", "getColor", "()Ljava/lang/String;", "colorAsColorInt", "", "getColorAsColorInt$annotations", "getColorAsColorInt", "()Ljava/lang/Integer;", "colorAsExpression", "getColorAsExpression$annotations", "getColorAsExpression", "colorTransition", "getColorTransition$annotations", "getColorTransition", "colorUseTheme", "getColorUseTheme$annotations", "getColorUseTheme", "colorUseThemeAsExpression", "getColorUseThemeAsExpression$annotations", "getColorUseThemeAsExpression", "delegate", "Lcom/mapbox/maps/MapboxStyleManager;", "getDelegate$extension_style_release", "()Lcom/mapbox/maps/MapboxStyleManager;", "setDelegate$extension_style_release", "(Lcom/mapbox/maps/MapboxStyleManager;)V", "density", "getDensity$annotations", "getDensity", "densityAsExpression", "getDensityAsExpression$annotations", "getDensityAsExpression", "densityTransition", "getDensityTransition$annotations", "getDensityTransition", "direction", "", "getDirection$annotations", "getDirection", "()Ljava/util/List;", "directionAsExpression", "getDirectionAsExpression$annotations", "getDirectionAsExpression", "directionTransition", "getDirectionTransition$annotations", "getDirectionTransition", "flakeSize", "getFlakeSize$annotations", "getFlakeSize", "flakeSizeAsExpression", "getFlakeSizeAsExpression$annotations", "getFlakeSizeAsExpression", "flakeSizeTransition", "getFlakeSizeTransition$annotations", "getFlakeSizeTransition", "intensity", "getIntensity$annotations", "getIntensity", "intensityAsExpression", "getIntensityAsExpression$annotations", "getIntensityAsExpression", "intensityTransition", "getIntensityTransition$annotations", "getIntensityTransition", ViewProps.OPACITY, "getOpacity$annotations", "getOpacity", "opacityAsExpression", "getOpacityAsExpression$annotations", "getOpacityAsExpression", "opacityTransition", "getOpacityTransition$annotations", "getOpacityTransition", LightUtils.LIGHT_PROPERTIES, "Ljava/util/HashMap;", "Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;", "Lkotlin/collections/HashMap;", "vignette", "getVignette$annotations", "getVignette", "vignetteAsExpression", "getVignetteAsExpression$annotations", "getVignetteAsExpression", "vignetteColor", "getVignetteColor$annotations", "getVignetteColor", "vignetteColorAsColorInt", "getVignetteColorAsColorInt$annotations", "getVignetteColorAsColorInt", "vignetteColorAsExpression", "getVignetteColorAsExpression$annotations", "getVignetteColorAsExpression", "vignetteColorTransition", "getVignetteColorTransition$annotations", "getVignetteColorTransition", "vignetteColorUseTheme", "getVignetteColorUseTheme$annotations", "getVignetteColorUseTheme", "vignetteColorUseThemeAsExpression", "getVignetteColorUseThemeAsExpression$annotations", "getVignetteColorUseThemeAsExpression", "vignetteTransition", "getVignetteTransition$annotations", "getVignetteTransition", "bindTo", "", "options", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "Lkotlin/ExtensionFunctionType;", "getPropertyValue", ExifInterface.GPS_DIRECTION_TRUE, "propertyName", "(Ljava/lang/String;)Ljava/lang/Object;", "getPropertyValueWithType", "clazz", "Ljava/lang/Class;", "(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;", "getTransitionProperty", "transitionName", "setProperty", "property", "updateProperty", "propertyValue", "Companion", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class Snow implements SnowDslReceiver, StyleContract.StyleSnowExtension {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    private static final String TAG = "Mbgl-Snow";
    private MapboxStyleManager delegate;
    private final HashMap<String, PropertyValue<?>> properties = new HashMap<>();

    public static void getCenterThinning$annotations() {
    }

    public static void getCenterThinningAsExpression$annotations() {
    }

    public static void getCenterThinningTransition$annotations() {
    }

    public static void getColor$annotations() {
    }

    public static void getColorAsColorInt$annotations() {
    }

    public static void getColorAsExpression$annotations() {
    }

    public static void getColorTransition$annotations() {
    }

    public static void getColorUseTheme$annotations() {
    }

    public static void getColorUseThemeAsExpression$annotations() {
    }

    public static void getDensity$annotations() {
    }

    public static void getDensityAsExpression$annotations() {
    }

    public static void getDensityTransition$annotations() {
    }

    public static void getDirection$annotations() {
    }

    public static void getDirectionAsExpression$annotations() {
    }

    public static void getDirectionTransition$annotations() {
    }

    public static void getFlakeSize$annotations() {
    }

    public static void getFlakeSizeAsExpression$annotations() {
    }

    public static void getFlakeSizeTransition$annotations() {
    }

    public static void getIntensity$annotations() {
    }

    public static void getIntensityAsExpression$annotations() {
    }

    public static void getIntensityTransition$annotations() {
    }

    public static void getOpacity$annotations() {
    }

    public static void getOpacityAsExpression$annotations() {
    }

    public static void getOpacityTransition$annotations() {
    }

    public static void getVignette$annotations() {
    }

    public static void getVignetteAsExpression$annotations() {
    }

    public static void getVignetteColor$annotations() {
    }

    public static void getVignetteColorAsColorInt$annotations() {
    }

    public static void getVignetteColorAsExpression$annotations() {
    }

    public static void getVignetteColorTransition$annotations() {
    }

    public static void getVignetteColorUseTheme$annotations() {
    }

    public static void getVignetteColorUseThemeAsExpression$annotations() {
    }

    public static void getVignetteTransition$annotations() {
    }

    public final MapboxStyleManager getDelegate() {
        return this.delegate;
    }

    public final void setDelegate$extension_style_release(MapboxStyleManager mapboxStyleManager) {
        this.delegate = mapboxStyleManager;
    }

    public final Double getCenterThinning() {
        return (Double) getPropertyValueWithType("center-thinning", Double.class);
    }

    @Override
    public Snow centerThinning(double centerThinning) {
        setProperty(new PropertyValue<>("center-thinning", Double.valueOf(centerThinning)));
        return this;
    }

    public final StyleTransition getCenterThinningTransition() {
        return getTransitionProperty("center-thinning-transition");
    }

    @Override
    public Snow centerThinningTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty(new PropertyValue<>("center-thinning-transition", options));
        return this;
    }

    @Override
    public Snow centerThinningTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        centerThinningTransition(builder.build());
        return this;
    }

    public final Expression getCenterThinningAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("center-thinning", Expression.class);
        if (expression != null) {
            return expression;
        }
        Double centerThinning = getCenterThinning();
        if (centerThinning == null) {
            return null;
        }
        return Expression.INSTANCE.literal(centerThinning.doubleValue());
    }

    @Override
    public Snow centerThinning(Expression centerThinning) {
        Intrinsics.checkNotNullParameter(centerThinning, "centerThinning");
        setProperty(new PropertyValue<>("center-thinning", centerThinning));
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
    public Snow color(int color) {
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
    public Snow color(String color) {
        Intrinsics.checkNotNullParameter(color, "color");
        setProperty(new PropertyValue<>("color", color));
        return this;
    }

    public final StyleTransition getColorTransition() {
        return getTransitionProperty("color-transition");
    }

    @Override
    public Snow colorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty(new PropertyValue<>("color-transition", options));
        return this;
    }

    @Override
    public Snow colorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        colorTransition(builder.build());
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
    public Snow color(Expression color) {
        Intrinsics.checkNotNullParameter(color, "color");
        setProperty(new PropertyValue<>("color", color));
        return this;
    }

    public final Double getDensity() {
        return (Double) getPropertyValueWithType("density", Double.class);
    }

    @Override
    public Snow density(double density) {
        setProperty(new PropertyValue<>("density", Double.valueOf(density)));
        return this;
    }

    public final StyleTransition getDensityTransition() {
        return getTransitionProperty("density-transition");
    }

    @Override
    public Snow densityTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty(new PropertyValue<>("density-transition", options));
        return this;
    }

    @Override
    public Snow densityTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        densityTransition(builder.build());
        return this;
    }

    public final Expression getDensityAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("density", Expression.class);
        if (expression != null) {
            return expression;
        }
        Double density = getDensity();
        if (density == null) {
            return null;
        }
        return Expression.INSTANCE.literal(density.doubleValue());
    }

    @Override
    public Snow density(Expression density) {
        Intrinsics.checkNotNullParameter(density, "density");
        setProperty(new PropertyValue<>("density", density));
        return this;
    }

    public final List<Double> getDirection() {
        return (List) getPropertyValueWithType("direction", List.class);
    }

    @Override
    public Snow direction(List<Double> direction) {
        Intrinsics.checkNotNullParameter(direction, "direction");
        setProperty(new PropertyValue<>("direction", direction));
        return this;
    }

    public final StyleTransition getDirectionTransition() {
        return getTransitionProperty("direction-transition");
    }

    @Override
    public Snow directionTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty(new PropertyValue<>("direction-transition", options));
        return this;
    }

    @Override
    public Snow directionTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        directionTransition(builder.build());
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
    public Snow direction(Expression direction) {
        Intrinsics.checkNotNullParameter(direction, "direction");
        setProperty(new PropertyValue<>("direction", direction));
        return this;
    }

    public final Double getFlakeSize() {
        return (Double) getPropertyValueWithType("flake-size", Double.class);
    }

    @Override
    public Snow flakeSize(double flakeSize) {
        setProperty(new PropertyValue<>("flake-size", Double.valueOf(flakeSize)));
        return this;
    }

    public final StyleTransition getFlakeSizeTransition() {
        return getTransitionProperty("flake-size-transition");
    }

    @Override
    public Snow flakeSizeTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty(new PropertyValue<>("flake-size-transition", options));
        return this;
    }

    @Override
    public Snow flakeSizeTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        flakeSizeTransition(builder.build());
        return this;
    }

    public final Expression getFlakeSizeAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("flake-size", Expression.class);
        if (expression != null) {
            return expression;
        }
        Double flakeSize = getFlakeSize();
        if (flakeSize == null) {
            return null;
        }
        return Expression.INSTANCE.literal(flakeSize.doubleValue());
    }

    @Override
    public Snow flakeSize(Expression flakeSize) {
        Intrinsics.checkNotNullParameter(flakeSize, "flakeSize");
        setProperty(new PropertyValue<>("flake-size", flakeSize));
        return this;
    }

    public final Double getIntensity() {
        return (Double) getPropertyValueWithType("intensity", Double.class);
    }

    @Override
    public Snow intensity(double intensity) {
        setProperty(new PropertyValue<>("intensity", Double.valueOf(intensity)));
        return this;
    }

    public final StyleTransition getIntensityTransition() {
        return getTransitionProperty("intensity-transition");
    }

    @Override
    public Snow intensityTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty(new PropertyValue<>("intensity-transition", options));
        return this;
    }

    @Override
    public Snow intensityTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        intensityTransition(builder.build());
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
    public Snow intensity(Expression intensity) {
        Intrinsics.checkNotNullParameter(intensity, "intensity");
        setProperty(new PropertyValue<>("intensity", intensity));
        return this;
    }

    public final Double getOpacity() {
        return (Double) getPropertyValueWithType(ViewProps.OPACITY, Double.class);
    }

    @Override
    public Snow opacity(double opacity) {
        setProperty(new PropertyValue<>(ViewProps.OPACITY, Double.valueOf(opacity)));
        return this;
    }

    public final StyleTransition getOpacityTransition() {
        return getTransitionProperty("opacity-transition");
    }

    @Override
    public Snow opacityTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty(new PropertyValue<>("opacity-transition", options));
        return this;
    }

    @Override
    public Snow opacityTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        opacityTransition(builder.build());
        return this;
    }

    public final Expression getOpacityAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType(ViewProps.OPACITY, Expression.class);
        if (expression != null) {
            return expression;
        }
        Double opacity = getOpacity();
        if (opacity == null) {
            return null;
        }
        return Expression.INSTANCE.literal(opacity.doubleValue());
    }

    @Override
    public Snow opacity(Expression opacity) {
        Intrinsics.checkNotNullParameter(opacity, "opacity");
        setProperty(new PropertyValue<>(ViewProps.OPACITY, opacity));
        return this;
    }

    public final Double getVignette() {
        return (Double) getPropertyValueWithType("vignette", Double.class);
    }

    @Override
    public Snow vignette(double vignette) {
        setProperty(new PropertyValue<>("vignette", Double.valueOf(vignette)));
        return this;
    }

    public final StyleTransition getVignetteTransition() {
        return getTransitionProperty("vignette-transition");
    }

    @Override
    public Snow vignetteTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty(new PropertyValue<>("vignette-transition", options));
        return this;
    }

    @Override
    public Snow vignetteTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        vignetteTransition(builder.build());
        return this;
    }

    public final Expression getVignetteAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("vignette", Expression.class);
        if (expression != null) {
            return expression;
        }
        Double vignette = getVignette();
        if (vignette == null) {
            return null;
        }
        return Expression.INSTANCE.literal(vignette.doubleValue());
    }

    @Override
    public Snow vignette(Expression vignette) {
        Intrinsics.checkNotNullParameter(vignette, "vignette");
        setProperty(new PropertyValue<>("vignette", vignette));
        return this;
    }

    public final Integer getVignetteColorAsColorInt() {
        Expression vignetteColorAsExpression = getVignetteColorAsExpression();
        if (vignetteColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorInt(vignetteColorAsExpression);
        }
        return null;
    }

    @Override
    public Snow vignetteColor(int vignetteColor) {
        setProperty(new PropertyValue<>("vignette-color", ColorUtils.INSTANCE.colorIntToRgbaExpression(vignetteColor)));
        return this;
    }

    public final String getVignetteColor() {
        Expression vignetteColorAsExpression = getVignetteColorAsExpression();
        if (vignetteColorAsExpression != null) {
            return ColorUtils.INSTANCE.rgbaExpressionToColorString(vignetteColorAsExpression);
        }
        return null;
    }

    @Override
    public Snow vignetteColor(String vignetteColor) {
        Intrinsics.checkNotNullParameter(vignetteColor, "vignetteColor");
        setProperty(new PropertyValue<>("vignette-color", vignetteColor));
        return this;
    }

    public final StyleTransition getVignetteColorTransition() {
        return getTransitionProperty("vignette-color-transition");
    }

    @Override
    public Snow vignetteColorTransition(StyleTransition options) {
        Intrinsics.checkNotNullParameter(options, "options");
        setProperty(new PropertyValue<>("vignette-color-transition", options));
        return this;
    }

    @Override
    public Snow vignetteColorTransition(Function1<? super StyleTransition.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StyleTransition.Builder builder = new StyleTransition.Builder();
        block.invoke(builder);
        vignetteColorTransition(builder.build());
        return this;
    }

    public final Expression getVignetteColorAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("vignette-color", Expression.class);
        if (expression != null) {
            return expression;
        }
        return null;
    }

    @Override
    public Snow vignetteColor(Expression vignetteColor) {
        Intrinsics.checkNotNullParameter(vignetteColor, "vignetteColor");
        setProperty(new PropertyValue<>("vignette-color", vignetteColor));
        return this;
    }

    public final String getColorUseTheme() {
        return (String) getPropertyValueWithType("color-use-theme", String.class);
    }

    @Override
    public Snow colorUseTheme(String colorUseTheme) {
        Intrinsics.checkNotNullParameter(colorUseTheme, "colorUseTheme");
        setProperty(new PropertyValue<>("color-use-theme", colorUseTheme));
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
    public Snow colorUseTheme(Expression colorUseTheme) {
        Intrinsics.checkNotNullParameter(colorUseTheme, "colorUseTheme");
        setProperty(new PropertyValue<>("color-use-theme", colorUseTheme));
        return this;
    }

    public final String getVignetteColorUseTheme() {
        return (String) getPropertyValueWithType("vignette-color-use-theme", String.class);
    }

    @Override
    public Snow vignetteColorUseTheme(String vignetteColorUseTheme) {
        Intrinsics.checkNotNullParameter(vignetteColorUseTheme, "vignetteColorUseTheme");
        setProperty(new PropertyValue<>("vignette-color-use-theme", vignetteColorUseTheme));
        return this;
    }

    public final Expression getVignetteColorUseThemeAsExpression() {
        Expression expression = (Expression) getPropertyValueWithType("vignette-color-use-theme", Expression.class);
        if (expression != null) {
            return expression;
        }
        String vignetteColorUseTheme = getVignetteColorUseTheme();
        if (vignetteColorUseTheme != null) {
            return Expression.INSTANCE.literal(vignetteColorUseTheme);
        }
        return null;
    }

    @Override
    public Snow vignetteColorUseTheme(Expression vignetteColorUseTheme) {
        Intrinsics.checkNotNullParameter(vignetteColorUseTheme, "vignetteColorUseTheme");
        setProperty(new PropertyValue<>("vignette-color-use-theme", vignetteColorUseTheme));
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
        String error = delegate.setStyleSnow(new Value((HashMap<String, Value>) map)).getError();
        if (error != null) {
            throw new MapboxStyleException("Set snow failed: " + error);
        }
    }

    private final void setProperty(PropertyValue<?> property) {
        this.properties.put(property.getPropertyName(), property);
        updateProperty(property);
    }

    private final void updateProperty(PropertyValue<?> propertyValue) {
        String error;
        MapboxStyleManager mapboxStyleManager = this.delegate;
        Expected<String, None> styleSnowProperty = mapboxStyleManager != null ? mapboxStyleManager.setStyleSnowProperty(propertyValue.getPropertyName(), propertyValue.getValue()) : null;
        if (styleSnowProperty != null && (error = styleSnowProperty.getError()) != null) {
            throw new MapboxStyleException("Set snow property failed: " + error);
        }
    }

    private final <T> T getPropertyValue(String propertyName) {
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) getPropertyValueWithType(propertyName, Object.class);
    }

    private final <T> T getPropertyValueWithType(String propertyName, Class<T> clazz) {
        MapboxStyleManager mapboxStyleManager = this.delegate;
        if (mapboxStyleManager != null) {
            try {
                return (T) TypeUtilsKt.unwrap(mapboxStyleManager.getStyleSnowProperty(propertyName), clazz);
            } catch (RuntimeException e) {
                Log.e(TAG, "Get snow property failed: " + e.getMessage());
                Log.e(TAG, mapboxStyleManager.getStyleSnowProperty(propertyName).toString());
                return null;
            }
        }
        throw new MapboxStyleException("Get property " + propertyName + " failed: snow is not added to style yet.");
    }

    private final StyleTransition getTransitionProperty(String transitionName) {
        MapboxStyleManager mapboxStyleManager = this.delegate;
        if (mapboxStyleManager != null) {
            try {
                Object contents = mapboxStyleManager.getStyleSnowProperty(transitionName).getValue().getContents();
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
                Log.e(TAG, "Get snow property failed: " + e.getMessage());
                Log.e(TAG, mapboxStyleManager.getStyleSnowProperty(transitionName).toString());
                return null;
            }
        }
        throw new MapboxStyleException("Get property " + transitionName + " failed: snow is not added to style yet.");
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/mapbox/maps/extension/style/precipitations/generated/Snow$Companion;", "", "()V", "TAG", "", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
