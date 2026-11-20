package com.mapbox.maps.extension.style.layers.generated;

import com.facebook.react.uimanager.ViewProps;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.properties.generated.CircleElevationReference;
import com.mapbox.maps.extension.style.layers.properties.generated.CirclePitchAlignment;
import com.mapbox.maps.extension.style.layers.properties.generated.CirclePitchScale;
import com.mapbox.maps.extension.style.layers.properties.generated.CircleTranslateAnchor;
import com.mapbox.maps.extension.style.layers.properties.generated.Visibility;
import com.mapbox.maps.extension.style.types.LayersDsl;
import com.mapbox.maps.extension.style.types.StyleTransition;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;

@LayersDsl
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0004H&J\u0012\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0002\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J!\u0010\u0006\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH&J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0004H&J\u0012\u0010\u000e\u001a\u00020\u00032\b\b\u0001\u0010\u000e\u001a\u00020\u000fH&J\u0012\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u0010H&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J!\u0010\u0011\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH&J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0004H'J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0010H'J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0004H'J\u0012\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u0014H'J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0004H&J\u0012\u0010\u0015\u001a\u00020\u00032\b\b\u0002\u0010\u0015\u001a\u00020\u0005H&J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J!\u0010\u0016\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH&J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0004H&J\u0012\u0010\u0017\u001a\u00020\u00032\b\b\u0002\u0010\u0017\u001a\u00020\u0005H&J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J!\u0010\u0018\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH&J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0004H&J\u0012\u0010\u0019\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\u001aH&J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0004H&J\u0012\u0010\u001b\u001a\u00020\u00032\b\b\u0002\u0010\u001b\u001a\u00020\u001cH&J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u0004H&J\u0012\u0010\u001d\u001a\u00020\u00032\b\b\u0002\u0010\u001d\u001a\u00020\u0005H&J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J!\u0010\u001e\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH&J\u0010\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u0004H&J\u0010\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u0005H&J\u0010\u0010 \u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u0004H&J\u0012\u0010 \u001a\u00020\u00032\b\b\u0001\u0010 \u001a\u00020\u000fH&J\u0012\u0010 \u001a\u00020\u00032\b\b\u0002\u0010 \u001a\u00020\u0010H&J\u0010\u0010!\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J!\u0010!\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH&J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u0004H'J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u0010H'J\u0010\u0010#\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u0004H&J\u0012\u0010#\u001a\u00020\u00032\b\b\u0002\u0010#\u001a\u00020\u0005H&J\u0010\u0010$\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J!\u0010$\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH&J\u0010\u0010%\u001a\u00020\u00032\u0006\u0010%\u001a\u00020\u0004H&J\u0012\u0010%\u001a\u00020\u00032\b\b\u0002\u0010%\u001a\u00020\u0005H&J\u0010\u0010&\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J!\u0010&\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH&J\u0010\u0010'\u001a\u00020\u00032\u0006\u0010'\u001a\u00020\u0004H&J\u0018\u0010'\u001a\u00020\u00032\u000e\b\u0002\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00050(H&J\u0010\u0010)\u001a\u00020\u00032\u0006\u0010)\u001a\u00020\u0004H&J\u0012\u0010)\u001a\u00020\u00032\b\b\u0002\u0010)\u001a\u00020*H&J\u0010\u0010+\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J!\u0010+\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH&J\u0010\u0010,\u001a\u00020\u00032\u0006\u0010,\u001a\u00020\u0004H&J\u0010\u0010-\u001a\u00020\u00032\u0006\u0010-\u001a\u00020\u0005H&J\u0010\u0010.\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u0005H&J\u0010\u0010/\u001a\u00020\u00032\u0006\u0010/\u001a\u00020\u0010H&J\u0010\u00100\u001a\u00020\u00032\u0006\u00100\u001a\u00020\u0010H&J\u0010\u00101\u001a\u00020\u00032\u0006\u00101\u001a\u00020\u0004H&J\u0010\u00101\u001a\u00020\u00032\u0006\u00101\u001a\u000202H&¨\u00063"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/CircleLayerDsl;", "", "circleBlur", "Lcom/mapbox/maps/extension/style/layers/generated/CircleLayer;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "", "circleBlurTransition", "options", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "circleColor", "", "", "circleColorTransition", "circleColorUseTheme", "circleElevationReference", "Lcom/mapbox/maps/extension/style/layers/properties/generated/CircleElevationReference;", "circleEmissiveStrength", "circleEmissiveStrengthTransition", "circleOpacity", "circleOpacityTransition", "circlePitchAlignment", "Lcom/mapbox/maps/extension/style/layers/properties/generated/CirclePitchAlignment;", "circlePitchScale", "Lcom/mapbox/maps/extension/style/layers/properties/generated/CirclePitchScale;", "circleRadius", "circleRadiusTransition", "circleSortKey", "circleStrokeColor", "circleStrokeColorTransition", "circleStrokeColorUseTheme", "circleStrokeOpacity", "circleStrokeOpacityTransition", "circleStrokeWidth", "circleStrokeWidthTransition", "circleTranslate", "", "circleTranslateAnchor", "Lcom/mapbox/maps/extension/style/layers/properties/generated/CircleTranslateAnchor;", "circleTranslateTransition", ViewProps.FILTER, "maxZoom", "minZoom", "slot", "sourceLayer", "visibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface CircleLayerDsl {
    CircleLayer circleBlur(double circleBlur);

    CircleLayer circleBlur(Expression circleBlur);

    CircleLayer circleBlurTransition(StyleTransition options);

    CircleLayer circleBlurTransition(Function1<? super StyleTransition.Builder, Unit> block);

    CircleLayer circleColor(int circleColor);

    CircleLayer circleColor(Expression circleColor);

    CircleLayer circleColor(String circleColor);

    CircleLayer circleColorTransition(StyleTransition options);

    CircleLayer circleColorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    CircleLayer circleColorUseTheme(Expression circleColorUseTheme);

    CircleLayer circleColorUseTheme(String circleColorUseTheme);

    CircleLayer circleElevationReference(Expression circleElevationReference);

    CircleLayer circleElevationReference(CircleElevationReference circleElevationReference);

    CircleLayer circleEmissiveStrength(double circleEmissiveStrength);

    CircleLayer circleEmissiveStrength(Expression circleEmissiveStrength);

    CircleLayer circleEmissiveStrengthTransition(StyleTransition options);

    CircleLayer circleEmissiveStrengthTransition(Function1<? super StyleTransition.Builder, Unit> block);

    CircleLayer circleOpacity(double circleOpacity);

    CircleLayer circleOpacity(Expression circleOpacity);

    CircleLayer circleOpacityTransition(StyleTransition options);

    CircleLayer circleOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    CircleLayer circlePitchAlignment(Expression circlePitchAlignment);

    CircleLayer circlePitchAlignment(CirclePitchAlignment circlePitchAlignment);

    CircleLayer circlePitchScale(Expression circlePitchScale);

    CircleLayer circlePitchScale(CirclePitchScale circlePitchScale);

    CircleLayer circleRadius(double circleRadius);

    CircleLayer circleRadius(Expression circleRadius);

    CircleLayer circleRadiusTransition(StyleTransition options);

    CircleLayer circleRadiusTransition(Function1<? super StyleTransition.Builder, Unit> block);

    CircleLayer circleSortKey(double circleSortKey);

    CircleLayer circleSortKey(Expression circleSortKey);

    CircleLayer circleStrokeColor(int circleStrokeColor);

    CircleLayer circleStrokeColor(Expression circleStrokeColor);

    CircleLayer circleStrokeColor(String circleStrokeColor);

    CircleLayer circleStrokeColorTransition(StyleTransition options);

    CircleLayer circleStrokeColorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    CircleLayer circleStrokeColorUseTheme(Expression circleStrokeColorUseTheme);

    CircleLayer circleStrokeColorUseTheme(String circleStrokeColorUseTheme);

    CircleLayer circleStrokeOpacity(double circleStrokeOpacity);

    CircleLayer circleStrokeOpacity(Expression circleStrokeOpacity);

    CircleLayer circleStrokeOpacityTransition(StyleTransition options);

    CircleLayer circleStrokeOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    CircleLayer circleStrokeWidth(double circleStrokeWidth);

    CircleLayer circleStrokeWidth(Expression circleStrokeWidth);

    CircleLayer circleStrokeWidthTransition(StyleTransition options);

    CircleLayer circleStrokeWidthTransition(Function1<? super StyleTransition.Builder, Unit> block);

    CircleLayer circleTranslate(Expression circleTranslate);

    CircleLayer circleTranslate(List<Double> circleTranslate);

    CircleLayer circleTranslateAnchor(Expression circleTranslateAnchor);

    CircleLayer circleTranslateAnchor(CircleTranslateAnchor circleTranslateAnchor);

    CircleLayer circleTranslateTransition(StyleTransition options);

    CircleLayer circleTranslateTransition(Function1<? super StyleTransition.Builder, Unit> block);

    CircleLayer filter(Expression filter);

    CircleLayer maxZoom(double maxZoom);

    CircleLayer minZoom(double minZoom);

    CircleLayer slot(String slot);

    CircleLayer sourceLayer(String sourceLayer);

    CircleLayer visibility(Expression visibility);

    CircleLayer visibility(Visibility visibility);

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class DefaultImpls {
        public static CircleLayer circleElevationReference$default(CircleLayerDsl circleLayerDsl, CircleElevationReference circleElevationReference, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: circleElevationReference");
            }
            if ((i & 1) != 0) {
                circleElevationReference = CircleElevationReference.NONE;
            }
            return circleLayerDsl.circleElevationReference(circleElevationReference);
        }

        public static CircleLayer circleBlur$default(CircleLayerDsl circleLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: circleBlur");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return circleLayerDsl.circleBlur(d);
        }

        public static CircleLayer circleColor$default(CircleLayerDsl circleLayerDsl, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: circleColor");
            }
            if ((i & 1) != 0) {
                str = "#000000";
            }
            return circleLayerDsl.circleColor(str);
        }

        public static CircleLayer circleEmissiveStrength$default(CircleLayerDsl circleLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: circleEmissiveStrength");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return circleLayerDsl.circleEmissiveStrength(d);
        }

        public static CircleLayer circleOpacity$default(CircleLayerDsl circleLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: circleOpacity");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return circleLayerDsl.circleOpacity(d);
        }

        public static CircleLayer circlePitchAlignment$default(CircleLayerDsl circleLayerDsl, CirclePitchAlignment circlePitchAlignment, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: circlePitchAlignment");
            }
            if ((i & 1) != 0) {
                circlePitchAlignment = CirclePitchAlignment.VIEWPORT;
            }
            return circleLayerDsl.circlePitchAlignment(circlePitchAlignment);
        }

        public static CircleLayer circlePitchScale$default(CircleLayerDsl circleLayerDsl, CirclePitchScale circlePitchScale, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: circlePitchScale");
            }
            if ((i & 1) != 0) {
                circlePitchScale = CirclePitchScale.MAP;
            }
            return circleLayerDsl.circlePitchScale(circlePitchScale);
        }

        public static CircleLayer circleRadius$default(CircleLayerDsl circleLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: circleRadius");
            }
            if ((i & 1) != 0) {
                d = 5.0d;
            }
            return circleLayerDsl.circleRadius(d);
        }

        public static CircleLayer circleStrokeColor$default(CircleLayerDsl circleLayerDsl, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: circleStrokeColor");
            }
            if ((i & 1) != 0) {
                str = "#000000";
            }
            return circleLayerDsl.circleStrokeColor(str);
        }

        public static CircleLayer circleStrokeOpacity$default(CircleLayerDsl circleLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: circleStrokeOpacity");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return circleLayerDsl.circleStrokeOpacity(d);
        }

        public static CircleLayer circleStrokeWidth$default(CircleLayerDsl circleLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: circleStrokeWidth");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return circleLayerDsl.circleStrokeWidth(d);
        }

        public static CircleLayer circleTranslate$default(CircleLayerDsl circleLayerDsl, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: circleTranslate");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(0.0d), Double.valueOf(0.0d)});
            }
            return circleLayerDsl.circleTranslate((List<Double>) list);
        }

        public static CircleLayer circleTranslateAnchor$default(CircleLayerDsl circleLayerDsl, CircleTranslateAnchor circleTranslateAnchor, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: circleTranslateAnchor");
            }
            if ((i & 1) != 0) {
                circleTranslateAnchor = CircleTranslateAnchor.MAP;
            }
            return circleLayerDsl.circleTranslateAnchor(circleTranslateAnchor);
        }
    }
}
