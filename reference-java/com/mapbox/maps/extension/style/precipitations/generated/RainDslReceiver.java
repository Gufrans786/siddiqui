package com.mapbox.maps.extension.style.precipitations.generated;

import com.facebook.react.uimanager.ViewProps;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.types.RainDsl;
import com.mapbox.maps.extension.style.types.StyleTransition;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;

@RainDsl
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u000f\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0004H'J\u0012\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0002\u001a\u00020\u0005H'J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u0010\u0006\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'J\u0012\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u0004H'J\u0012\u0010\u000e\u001a\u00020\u00032\b\b\u0001\u0010\u000e\u001a\u00020\u000fH'J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0010H'J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u0010\u0011\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0004H'J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0010H'J\u0012\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u0004H'J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0005H'J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u0010\u0014\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0004H'J\u0018\u0010\u0015\u001a\u00020\u00032\u000e\b\u0002\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00050\u0016H'J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u0010\u0017\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0004H'J\u0012\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0018\u001a\u00020\u0005H'J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u0010\u0019\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0004H'J\u0018\u0010\u001a\u001a\u00020\u00032\u000e\b\u0002\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00050\u0016H'J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u0010\u001b\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u0004H'J\u0012\u0010\u001c\u001a\u00020\u00032\b\b\u0002\u0010\u001c\u001a\u00020\u0005H'J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u0010\u001d\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'J\u0012\u0010\u001e\u001a\u00020\u00032\b\b\u0002\u0010\u001e\u001a\u00020\u0004H'J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0005H'J\u0010\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u0010\u001f\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'J\u0012\u0010 \u001a\u00020\u00032\b\b\u0002\u0010 \u001a\u00020\u0004H'J\u0010\u0010 \u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u0005H'J\u0012\u0010!\u001a\u00020\u00032\b\b\u0002\u0010!\u001a\u00020\u0004H'J\u0012\u0010!\u001a\u00020\u00032\b\b\u0001\u0010!\u001a\u00020\u000fH'J\u0010\u0010!\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u0010H'J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u0010\"\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'J\u0010\u0010#\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u0004H'J\u0010\u0010#\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u0010H'J\u0010\u0010$\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u0010$\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'¨\u0006%"}, d2 = {"Lcom/mapbox/maps/extension/style/precipitations/generated/RainDslReceiver;", "", "centerThinning", "Lcom/mapbox/maps/extension/style/precipitations/generated/Rain;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "", "centerThinningTransition", "options", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "color", "", "", "colorTransition", "colorUseTheme", "density", "densityTransition", "direction", "", "directionTransition", "distortionStrength", "distortionStrengthTransition", "dropletSize", "dropletSizeTransition", "intensity", "intensityTransition", ViewProps.OPACITY, "opacityTransition", "vignette", "vignetteColor", "vignetteColorTransition", "vignetteColorUseTheme", "vignetteTransition", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface RainDslReceiver {
    Rain centerThinning(double centerThinning);

    Rain centerThinning(Expression centerThinning);

    Rain centerThinningTransition(StyleTransition options);

    Rain centerThinningTransition(Function1<? super StyleTransition.Builder, Unit> block);

    Rain color(int color);

    Rain color(Expression color);

    Rain color(String color);

    Rain colorTransition(StyleTransition options);

    Rain colorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    Rain colorUseTheme(Expression colorUseTheme);

    Rain colorUseTheme(String colorUseTheme);

    Rain density(double density);

    Rain density(Expression density);

    Rain densityTransition(StyleTransition options);

    Rain densityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    Rain direction(Expression direction);

    Rain direction(List<Double> direction);

    Rain directionTransition(StyleTransition options);

    Rain directionTransition(Function1<? super StyleTransition.Builder, Unit> block);

    Rain distortionStrength(double distortionStrength);

    Rain distortionStrength(Expression distortionStrength);

    Rain distortionStrengthTransition(StyleTransition options);

    Rain distortionStrengthTransition(Function1<? super StyleTransition.Builder, Unit> block);

    Rain dropletSize(Expression dropletSize);

    Rain dropletSize(List<Double> dropletSize);

    Rain dropletSizeTransition(StyleTransition options);

    Rain dropletSizeTransition(Function1<? super StyleTransition.Builder, Unit> block);

    Rain intensity(double intensity);

    Rain intensity(Expression intensity);

    Rain intensityTransition(StyleTransition options);

    Rain intensityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    Rain opacity(double opacity);

    Rain opacity(Expression opacity);

    Rain opacityTransition(StyleTransition options);

    Rain opacityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    Rain vignette(double vignette);

    Rain vignette(Expression vignette);

    Rain vignetteColor(int vignetteColor);

    Rain vignetteColor(Expression vignetteColor);

    Rain vignetteColor(String vignetteColor);

    Rain vignetteColorTransition(StyleTransition options);

    Rain vignetteColorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    Rain vignetteColorUseTheme(Expression vignetteColorUseTheme);

    Rain vignetteColorUseTheme(String vignetteColorUseTheme);

    Rain vignetteTransition(StyleTransition options);

    Rain vignetteTransition(Function1<? super StyleTransition.Builder, Unit> block);

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class DefaultImpls {
        public static Rain centerThinning$default(RainDslReceiver rainDslReceiver, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: centerThinning");
            }
            if ((i & 1) != 0) {
                d = 0.57d;
            }
            return rainDslReceiver.centerThinning(d);
        }

        public static Rain color$default(RainDslReceiver rainDslReceiver, Expression expression, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: color");
            }
            if ((i & 1) != 0) {
                expression = Expression.INSTANCE.fromRaw("[\"interpolate\",[\"linear\"],[\"measure-light\",\"brightness\"],0,\"#03113d\",0.3,\"#a8adbc\"]");
            }
            return rainDslReceiver.color(expression);
        }

        public static Rain density$default(RainDslReceiver rainDslReceiver, Expression expression, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: density");
            }
            if ((i & 1) != 0) {
                expression = Expression.INSTANCE.fromRaw("[\"interpolate\",[\"linear\"],[\"zoom\"],11,0,13,0.5]");
            }
            return rainDslReceiver.density(expression);
        }

        public static Rain direction$default(RainDslReceiver rainDslReceiver, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: direction");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(0.0d), Double.valueOf(80.0d)});
            }
            return rainDslReceiver.direction((List<Double>) list);
        }

        public static Rain distortionStrength$default(RainDslReceiver rainDslReceiver, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: distortionStrength");
            }
            if ((i & 1) != 0) {
                d = 0.7d;
            }
            return rainDslReceiver.distortionStrength(d);
        }

        public static Rain dropletSize$default(RainDslReceiver rainDslReceiver, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: dropletSize");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(2.6d), Double.valueOf(18.2d)});
            }
            return rainDslReceiver.dropletSize((List<Double>) list);
        }

        public static Rain intensity$default(RainDslReceiver rainDslReceiver, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: intensity");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return rainDslReceiver.intensity(d);
        }

        public static Rain opacity$default(RainDslReceiver rainDslReceiver, Expression expression, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: opacity");
            }
            if ((i & 1) != 0) {
                expression = Expression.INSTANCE.fromRaw("[\"interpolate\",[\"linear\"],[\"measure-light\",\"brightness\"],0,0.88,1,0.7]");
            }
            return rainDslReceiver.opacity(expression);
        }

        public static Rain vignette$default(RainDslReceiver rainDslReceiver, Expression expression, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: vignette");
            }
            if ((i & 1) != 0) {
                expression = Expression.INSTANCE.fromRaw("[\"interpolate\",[\"linear\"],[\"zoom\"],11,0,13,1]");
            }
            return rainDslReceiver.vignette(expression);
        }

        public static Rain vignetteColor$default(RainDslReceiver rainDslReceiver, Expression expression, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: vignetteColor");
            }
            if ((i & 1) != 0) {
                expression = Expression.INSTANCE.fromRaw("[\"interpolate\",[\"linear\"],[\"measure-light\",\"brightness\"],0,\"#001736\",0.3,\"#464646\"]");
            }
            return rainDslReceiver.vignetteColor(expression);
        }
    }
}
