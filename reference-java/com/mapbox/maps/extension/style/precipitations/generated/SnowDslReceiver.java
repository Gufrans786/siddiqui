package com.mapbox.maps.extension.style.precipitations.generated;

import com.facebook.react.uimanager.ViewProps;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.types.SnowDsl;
import com.mapbox.maps.extension.style.types.StyleTransition;
import com.mapbox.maps.plugin.locationcomponent.model.AnimatableModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;

@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\r\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0004H'J\u0012\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0002\u001a\u00020\u0005H'J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u0010\u0006\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0004H'J\u0012\u0010\u000e\u001a\u00020\u00032\b\b\u0001\u0010\u000e\u001a\u00020\u000fH'J\u0012\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u0010H'J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u0010\u0011\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0004H'J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0010H'J\u0012\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u0004H'J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0005H'J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u0010\u0014\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0004H'J\u0018\u0010\u0015\u001a\u00020\u00032\u000e\b\u0002\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00050\u0016H'J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u0010\u0017\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0004H'J\u0012\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0018\u001a\u00020\u0005H'J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u0010\u0019\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0004H'J\u0012\u0010\u001a\u001a\u00020\u00032\b\b\u0002\u0010\u001a\u001a\u00020\u0005H'J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u0010\u001b\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u0004H'J\u0012\u0010\u001c\u001a\u00020\u00032\b\b\u0002\u0010\u001c\u001a\u00020\u0005H'J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u0010\u001d\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'J\u0012\u0010\u001e\u001a\u00020\u00032\b\b\u0002\u0010\u001e\u001a\u00020\u0004H'J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0005H'J\u0010\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u0004H'J\u0012\u0010\u001f\u001a\u00020\u00032\b\b\u0001\u0010\u001f\u001a\u00020\u000fH'J\u0012\u0010\u001f\u001a\u00020\u00032\b\b\u0002\u0010\u001f\u001a\u00020\u0010H'J\u0010\u0010 \u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u0010 \u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'J\u0010\u0010!\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u0004H'J\u0010\u0010!\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u0010H'J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u0010\"\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'¨\u0006#"}, d2 = {"Lcom/mapbox/maps/extension/style/precipitations/generated/SnowDslReceiver;", "", "centerThinning", "Lcom/mapbox/maps/extension/style/precipitations/generated/Snow;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "", "centerThinningTransition", "options", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "color", "", "", "colorTransition", "colorUseTheme", "density", "densityTransition", "direction", "", "directionTransition", "flakeSize", "flakeSizeTransition", "intensity", "intensityTransition", ViewProps.OPACITY, "opacityTransition", "vignette", "vignetteColor", "vignetteColorTransition", "vignetteColorUseTheme", "vignetteTransition", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@SnowDsl
public interface SnowDslReceiver {
    Snow centerThinning(double centerThinning);

    Snow centerThinning(Expression centerThinning);

    Snow centerThinningTransition(StyleTransition options);

    Snow centerThinningTransition(Function1<? super StyleTransition.Builder, Unit> block);

    Snow color(int color);

    Snow color(Expression color);

    Snow color(String color);

    Snow colorTransition(StyleTransition options);

    Snow colorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    Snow colorUseTheme(Expression colorUseTheme);

    Snow colorUseTheme(String colorUseTheme);

    Snow density(double density);

    Snow density(Expression density);

    Snow densityTransition(StyleTransition options);

    Snow densityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    Snow direction(Expression direction);

    Snow direction(List<Double> direction);

    Snow directionTransition(StyleTransition options);

    Snow directionTransition(Function1<? super StyleTransition.Builder, Unit> block);

    Snow flakeSize(double flakeSize);

    Snow flakeSize(Expression flakeSize);

    Snow flakeSizeTransition(StyleTransition options);

    Snow flakeSizeTransition(Function1<? super StyleTransition.Builder, Unit> block);

    Snow intensity(double intensity);

    Snow intensity(Expression intensity);

    Snow intensityTransition(StyleTransition options);

    Snow intensityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    Snow opacity(double opacity);

    Snow opacity(Expression opacity);

    Snow opacityTransition(StyleTransition options);

    Snow opacityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    Snow vignette(double vignette);

    Snow vignette(Expression vignette);

    Snow vignetteColor(int vignetteColor);

    Snow vignetteColor(Expression vignetteColor);

    Snow vignetteColor(String vignetteColor);

    Snow vignetteColorTransition(StyleTransition options);

    Snow vignetteColorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    Snow vignetteColorUseTheme(Expression vignetteColorUseTheme);

    Snow vignetteColorUseTheme(String vignetteColorUseTheme);

    Snow vignetteTransition(StyleTransition options);

    Snow vignetteTransition(Function1<? super StyleTransition.Builder, Unit> block);

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class DefaultImpls {
        public static Snow centerThinning$default(SnowDslReceiver snowDslReceiver, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: centerThinning");
            }
            if ((i & 1) != 0) {
                d = 0.4d;
            }
            return snowDslReceiver.centerThinning(d);
        }

        public static Snow color$default(SnowDslReceiver snowDslReceiver, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: color");
            }
            if ((i & 1) != 0) {
                str = AnimatableModel.DEFAULT_COLOR;
            }
            return snowDslReceiver.color(str);
        }

        public static Snow density$default(SnowDslReceiver snowDslReceiver, Expression expression, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: density");
            }
            if ((i & 1) != 0) {
                expression = Expression.INSTANCE.fromRaw("[\"interpolate\",[\"linear\"],[\"zoom\"],11,0,13,0.85]");
            }
            return snowDslReceiver.density(expression);
        }

        public static Snow direction$default(SnowDslReceiver snowDslReceiver, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: direction");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(0.0d), Double.valueOf(50.0d)});
            }
            return snowDslReceiver.direction((List<Double>) list);
        }

        public static Snow flakeSize$default(SnowDslReceiver snowDslReceiver, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: flakeSize");
            }
            if ((i & 1) != 0) {
                d = 0.71d;
            }
            return snowDslReceiver.flakeSize(d);
        }

        public static Snow intensity$default(SnowDslReceiver snowDslReceiver, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: intensity");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return snowDslReceiver.intensity(d);
        }

        public static Snow opacity$default(SnowDslReceiver snowDslReceiver, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: opacity");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return snowDslReceiver.opacity(d);
        }

        public static Snow vignette$default(SnowDslReceiver snowDslReceiver, Expression expression, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: vignette");
            }
            if ((i & 1) != 0) {
                expression = Expression.INSTANCE.fromRaw("[\"interpolate\",[\"linear\"],[\"zoom\"],11,0,13,0.3]");
            }
            return snowDslReceiver.vignette(expression);
        }

        public static Snow vignetteColor$default(SnowDslReceiver snowDslReceiver, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: vignetteColor");
            }
            if ((i & 1) != 0) {
                str = AnimatableModel.DEFAULT_COLOR;
            }
            return snowDslReceiver.vignetteColor(str);
        }
    }
}
