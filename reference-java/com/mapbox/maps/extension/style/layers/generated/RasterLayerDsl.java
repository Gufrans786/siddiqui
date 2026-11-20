package com.mapbox.maps.extension.style.layers.generated;

import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.properties.generated.RasterResampling;
import com.mapbox.maps.extension.style.layers.properties.generated.Visibility;
import com.mapbox.maps.extension.style.types.LayersDsl;
import com.mapbox.maps.extension.style.types.StyleTransition;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;

@LayersDsl
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0004H&J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0004H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H'J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\bH'J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0007H&J\u0012\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u0004H&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH&J!\u0010\n\u001a\u00020\u00032\u0017\u0010\r\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e¢\u0006\u0002\b\u0011H&J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0007H&J\u0012\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u0004H&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH&J!\u0010\u0013\u001a\u00020\u00032\u0017\u0010\r\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e¢\u0006\u0002\b\u0011H&J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0007H&J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0007H&J\u0018\u0010\u0015\u001a\u00020\u00032\u000e\b\u0002\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00040\u0016H&J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH&J!\u0010\u0017\u001a\u00020\u00032\u0017\u0010\r\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e¢\u0006\u0002\b\u0011H&J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0007H&J\u0016\u0010\u0018\u001a\u00020\u00032\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00040\u0016H&J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH&J!\u0010\u0019\u001a\u00020\u00032\u0017\u0010\r\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e¢\u0006\u0002\b\u0011H&J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0007H'J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\bH'J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0007H&J\u0012\u0010\u001b\u001a\u00020\u00032\b\b\u0002\u0010\u001b\u001a\u00020\u0004H&J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH&J!\u0010\u001c\u001a\u00020\u00032\u0017\u0010\r\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e¢\u0006\u0002\b\u0011H&J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u0007H'J\u0012\u0010\u001d\u001a\u00020\u00032\b\b\u0002\u0010\u001d\u001a\u00020\u0004H'J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH'J!\u0010\u001e\u001a\u00020\u00032\u0017\u0010\r\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e¢\u0006\u0002\b\u0011H'J\u0010\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u0007H&J\u0012\u0010\u001f\u001a\u00020\u00032\b\b\u0002\u0010\u001f\u001a\u00020\u0004H&J\u0010\u0010 \u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH&J!\u0010 \u001a\u00020\u00032\u0017\u0010\r\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e¢\u0006\u0002\b\u0011H&J\u0010\u0010!\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u0007H&J\u0012\u0010!\u001a\u00020\u00032\b\b\u0002\u0010!\u001a\u00020\u0004H&J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u0007H&J\u0012\u0010\"\u001a\u00020\u00032\b\b\u0002\u0010\"\u001a\u00020\u0004H&J\u0010\u0010#\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH&J!\u0010#\u001a\u00020\u00032\u0017\u0010\r\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e¢\u0006\u0002\b\u0011H&J\u0010\u0010$\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\u0007H&J\u0012\u0010$\u001a\u00020\u00032\b\b\u0002\u0010$\u001a\u00020\u0004H&J\u0010\u0010%\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH&J!\u0010%\u001a\u00020\u00032\u0017\u0010\r\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e¢\u0006\u0002\b\u0011H&J\u0010\u0010&\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u0007H&J\u0012\u0010&\u001a\u00020\u00032\b\b\u0002\u0010&\u001a\u00020'H&J\u0010\u0010(\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\u0007H&J\u0012\u0010(\u001a\u00020\u00032\b\b\u0002\u0010(\u001a\u00020\u0004H&J\u0010\u0010)\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH&J!\u0010)\u001a\u00020\u00032\u0017\u0010\r\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e¢\u0006\u0002\b\u0011H&J\u0010\u0010*\u001a\u00020\u00032\u0006\u0010*\u001a\u00020\bH&J\u0010\u0010+\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\bH&J\u0010\u0010,\u001a\u00020\u00032\u0006\u0010,\u001a\u00020\u0007H&J\u0010\u0010,\u001a\u00020\u00032\u0006\u0010,\u001a\u00020-H&¨\u0006."}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/RasterLayerDsl;", "", "maxZoom", "Lcom/mapbox/maps/extension/style/layers/generated/RasterLayer;", "", "minZoom", "rasterArrayBand", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "", "rasterBrightnessMax", "rasterBrightnessMaxTransition", "options", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "rasterBrightnessMin", "rasterBrightnessMinTransition", "rasterColor", "rasterColorMix", "", "rasterColorMixTransition", "rasterColorRange", "rasterColorRangeTransition", "rasterColorUseTheme", "rasterContrast", "rasterContrastTransition", "rasterElevation", "rasterElevationTransition", "rasterEmissiveStrength", "rasterEmissiveStrengthTransition", "rasterFadeDuration", "rasterHueRotate", "rasterHueRotateTransition", "rasterOpacity", "rasterOpacityTransition", "rasterResampling", "Lcom/mapbox/maps/extension/style/layers/properties/generated/RasterResampling;", "rasterSaturation", "rasterSaturationTransition", "slot", "sourceLayer", "visibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface RasterLayerDsl {
    RasterLayer maxZoom(double maxZoom);

    RasterLayer minZoom(double minZoom);

    RasterLayer rasterArrayBand(Expression rasterArrayBand);

    RasterLayer rasterArrayBand(String rasterArrayBand);

    RasterLayer rasterBrightnessMax(double rasterBrightnessMax);

    RasterLayer rasterBrightnessMax(Expression rasterBrightnessMax);

    RasterLayer rasterBrightnessMaxTransition(StyleTransition options);

    RasterLayer rasterBrightnessMaxTransition(Function1<? super StyleTransition.Builder, Unit> block);

    RasterLayer rasterBrightnessMin(double rasterBrightnessMin);

    RasterLayer rasterBrightnessMin(Expression rasterBrightnessMin);

    RasterLayer rasterBrightnessMinTransition(StyleTransition options);

    RasterLayer rasterBrightnessMinTransition(Function1<? super StyleTransition.Builder, Unit> block);

    RasterLayer rasterColor(Expression rasterColor);

    RasterLayer rasterColorMix(Expression rasterColorMix);

    RasterLayer rasterColorMix(List<Double> rasterColorMix);

    RasterLayer rasterColorMixTransition(StyleTransition options);

    RasterLayer rasterColorMixTransition(Function1<? super StyleTransition.Builder, Unit> block);

    RasterLayer rasterColorRange(Expression rasterColorRange);

    RasterLayer rasterColorRange(List<Double> rasterColorRange);

    RasterLayer rasterColorRangeTransition(StyleTransition options);

    RasterLayer rasterColorRangeTransition(Function1<? super StyleTransition.Builder, Unit> block);

    RasterLayer rasterColorUseTheme(Expression rasterColorUseTheme);

    RasterLayer rasterColorUseTheme(String rasterColorUseTheme);

    RasterLayer rasterContrast(double rasterContrast);

    RasterLayer rasterContrast(Expression rasterContrast);

    RasterLayer rasterContrastTransition(StyleTransition options);

    RasterLayer rasterContrastTransition(Function1<? super StyleTransition.Builder, Unit> block);

    RasterLayer rasterElevation(double rasterElevation);

    RasterLayer rasterElevation(Expression rasterElevation);

    RasterLayer rasterElevationTransition(StyleTransition options);

    RasterLayer rasterElevationTransition(Function1<? super StyleTransition.Builder, Unit> block);

    RasterLayer rasterEmissiveStrength(double rasterEmissiveStrength);

    RasterLayer rasterEmissiveStrength(Expression rasterEmissiveStrength);

    RasterLayer rasterEmissiveStrengthTransition(StyleTransition options);

    RasterLayer rasterEmissiveStrengthTransition(Function1<? super StyleTransition.Builder, Unit> block);

    RasterLayer rasterFadeDuration(double rasterFadeDuration);

    RasterLayer rasterFadeDuration(Expression rasterFadeDuration);

    RasterLayer rasterHueRotate(double rasterHueRotate);

    RasterLayer rasterHueRotate(Expression rasterHueRotate);

    RasterLayer rasterHueRotateTransition(StyleTransition options);

    RasterLayer rasterHueRotateTransition(Function1<? super StyleTransition.Builder, Unit> block);

    RasterLayer rasterOpacity(double rasterOpacity);

    RasterLayer rasterOpacity(Expression rasterOpacity);

    RasterLayer rasterOpacityTransition(StyleTransition options);

    RasterLayer rasterOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    RasterLayer rasterResampling(Expression rasterResampling);

    RasterLayer rasterResampling(RasterResampling rasterResampling);

    RasterLayer rasterSaturation(double rasterSaturation);

    RasterLayer rasterSaturation(Expression rasterSaturation);

    RasterLayer rasterSaturationTransition(StyleTransition options);

    RasterLayer rasterSaturationTransition(Function1<? super StyleTransition.Builder, Unit> block);

    RasterLayer slot(String slot);

    RasterLayer sourceLayer(String sourceLayer);

    RasterLayer visibility(Expression visibility);

    RasterLayer visibility(Visibility visibility);

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class DefaultImpls {
        public static RasterLayer rasterBrightnessMax$default(RasterLayerDsl rasterLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: rasterBrightnessMax");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return rasterLayerDsl.rasterBrightnessMax(d);
        }

        public static RasterLayer rasterBrightnessMin$default(RasterLayerDsl rasterLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: rasterBrightnessMin");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return rasterLayerDsl.rasterBrightnessMin(d);
        }

        public static RasterLayer rasterColorMix$default(RasterLayerDsl rasterLayerDsl, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: rasterColorMix");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(0.2126d), Double.valueOf(0.7152d), Double.valueOf(0.0722d), Double.valueOf(0.0d)});
            }
            return rasterLayerDsl.rasterColorMix((List<Double>) list);
        }

        public static RasterLayer rasterContrast$default(RasterLayerDsl rasterLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: rasterContrast");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return rasterLayerDsl.rasterContrast(d);
        }

        public static RasterLayer rasterElevation$default(RasterLayerDsl rasterLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: rasterElevation");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return rasterLayerDsl.rasterElevation(d);
        }

        public static RasterLayer rasterEmissiveStrength$default(RasterLayerDsl rasterLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: rasterEmissiveStrength");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return rasterLayerDsl.rasterEmissiveStrength(d);
        }

        public static RasterLayer rasterFadeDuration$default(RasterLayerDsl rasterLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: rasterFadeDuration");
            }
            if ((i & 1) != 0) {
                d = 300.0d;
            }
            return rasterLayerDsl.rasterFadeDuration(d);
        }

        public static RasterLayer rasterHueRotate$default(RasterLayerDsl rasterLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: rasterHueRotate");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return rasterLayerDsl.rasterHueRotate(d);
        }

        public static RasterLayer rasterOpacity$default(RasterLayerDsl rasterLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: rasterOpacity");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return rasterLayerDsl.rasterOpacity(d);
        }

        public static RasterLayer rasterResampling$default(RasterLayerDsl rasterLayerDsl, RasterResampling rasterResampling, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: rasterResampling");
            }
            if ((i & 1) != 0) {
                rasterResampling = RasterResampling.LINEAR;
            }
            return rasterLayerDsl.rasterResampling(rasterResampling);
        }

        public static RasterLayer rasterSaturation$default(RasterLayerDsl rasterLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: rasterSaturation");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return rasterLayerDsl.rasterSaturation(d);
        }
    }
}
