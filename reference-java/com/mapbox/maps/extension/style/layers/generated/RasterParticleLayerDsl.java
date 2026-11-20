package com.mapbox.maps.extension.style.layers.generated;

import com.facebook.react.uimanager.ViewProps;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.properties.generated.Visibility;
import com.mapbox.maps.extension.style.types.LayersDsl;
import com.mapbox.maps.extension.style.types.StyleTransition;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

@LayersDsl
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0004H&J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0004H'J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH'J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0004H'J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0004H'J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\tH'J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0004H'J\u0012\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\rH'J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0004H'J\u0012\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u0006H'J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011H'J!\u0010\u000f\u001a\u00020\u00032\u0017\u0010\u0012\u001a\u0013\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013¢\u0006\u0002\b\u0016H'J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0004H'J\u0012\u0010\u0017\u001a\u00020\u00032\b\b\u0002\u0010\u0017\u001a\u00020\u0006H'J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0004H'J\u0012\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0018\u001a\u00020\u0006H'J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0004H'J\u0012\u0010\u0019\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\u0006H'J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011H'J!\u0010\u001a\u001a\u00020\u00032\u0017\u0010\u0012\u001a\u0013\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013¢\u0006\u0002\b\u0016H'J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\tH&J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\tH&J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u0004H&J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u001eH&¨\u0006\u001f"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/RasterParticleLayerDsl;", "", ViewProps.FILTER, "Lcom/mapbox/maps/extension/style/layers/generated/RasterParticleLayer;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "maxZoom", "", "minZoom", "rasterParticleArrayBand", "", "rasterParticleColor", "rasterParticleColorUseTheme", "rasterParticleCount", "", "rasterParticleFadeOpacityFactor", "rasterParticleFadeOpacityFactorTransition", "options", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "rasterParticleMaxSpeed", "rasterParticleResetRateFactor", "rasterParticleSpeedFactor", "rasterParticleSpeedFactorTransition", "slot", "sourceLayer", "visibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface RasterParticleLayerDsl {
    RasterParticleLayer filter(Expression filter);

    RasterParticleLayer maxZoom(double maxZoom);

    RasterParticleLayer minZoom(double minZoom);

    RasterParticleLayer rasterParticleArrayBand(Expression rasterParticleArrayBand);

    RasterParticleLayer rasterParticleArrayBand(String rasterParticleArrayBand);

    RasterParticleLayer rasterParticleColor(Expression rasterParticleColor);

    RasterParticleLayer rasterParticleColorUseTheme(Expression rasterParticleColorUseTheme);

    RasterParticleLayer rasterParticleColorUseTheme(String rasterParticleColorUseTheme);

    RasterParticleLayer rasterParticleCount(long rasterParticleCount);

    RasterParticleLayer rasterParticleCount(Expression rasterParticleCount);

    RasterParticleLayer rasterParticleFadeOpacityFactor(double rasterParticleFadeOpacityFactor);

    RasterParticleLayer rasterParticleFadeOpacityFactor(Expression rasterParticleFadeOpacityFactor);

    RasterParticleLayer rasterParticleFadeOpacityFactorTransition(StyleTransition options);

    RasterParticleLayer rasterParticleFadeOpacityFactorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    RasterParticleLayer rasterParticleMaxSpeed(double rasterParticleMaxSpeed);

    RasterParticleLayer rasterParticleMaxSpeed(Expression rasterParticleMaxSpeed);

    RasterParticleLayer rasterParticleResetRateFactor(double rasterParticleResetRateFactor);

    RasterParticleLayer rasterParticleResetRateFactor(Expression rasterParticleResetRateFactor);

    RasterParticleLayer rasterParticleSpeedFactor(double rasterParticleSpeedFactor);

    RasterParticleLayer rasterParticleSpeedFactor(Expression rasterParticleSpeedFactor);

    RasterParticleLayer rasterParticleSpeedFactorTransition(StyleTransition options);

    RasterParticleLayer rasterParticleSpeedFactorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    RasterParticleLayer slot(String slot);

    RasterParticleLayer sourceLayer(String sourceLayer);

    RasterParticleLayer visibility(Expression visibility);

    RasterParticleLayer visibility(Visibility visibility);

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class DefaultImpls {
        public static RasterParticleLayer rasterParticleCount$default(RasterParticleLayerDsl rasterParticleLayerDsl, long j, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: rasterParticleCount");
            }
            if ((i & 1) != 0) {
                j = 512;
            }
            return rasterParticleLayerDsl.rasterParticleCount(j);
        }

        public static RasterParticleLayer rasterParticleFadeOpacityFactor$default(RasterParticleLayerDsl rasterParticleLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: rasterParticleFadeOpacityFactor");
            }
            if ((i & 1) != 0) {
                d = 0.98d;
            }
            return rasterParticleLayerDsl.rasterParticleFadeOpacityFactor(d);
        }

        public static RasterParticleLayer rasterParticleMaxSpeed$default(RasterParticleLayerDsl rasterParticleLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: rasterParticleMaxSpeed");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return rasterParticleLayerDsl.rasterParticleMaxSpeed(d);
        }

        public static RasterParticleLayer rasterParticleResetRateFactor$default(RasterParticleLayerDsl rasterParticleLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: rasterParticleResetRateFactor");
            }
            if ((i & 1) != 0) {
                d = 0.8d;
            }
            return rasterParticleLayerDsl.rasterParticleResetRateFactor(d);
        }

        public static RasterParticleLayer rasterParticleSpeedFactor$default(RasterParticleLayerDsl rasterParticleLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: rasterParticleSpeedFactor");
            }
            if ((i & 1) != 0) {
                d = 0.2d;
            }
            return rasterParticleLayerDsl.rasterParticleSpeedFactor(d);
        }
    }
}
