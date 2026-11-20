package com.mapbox.maps.extension.style.layers.generated;

import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.properties.generated.HillshadeIlluminationAnchor;
import com.mapbox.maps.extension.style.layers.properties.generated.Visibility;
import com.mapbox.maps.extension.style.types.LayersDsl;
import com.mapbox.maps.extension.style.types.StyleTransition;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

@LayersDsl
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0004H&J\u0012\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0002\u001a\u00020\u0005H&J\u0012\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0002\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u0010\u0007\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0004H'J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0006H'J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0004H&J\u0012\u0010\u0010\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u0011H&J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u0010\u0012\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0004H&J\u0012\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u0011H&J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u0010\u0014\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0004H&J\u0012\u0010\u0015\u001a\u00020\u00032\b\b\u0001\u0010\u0015\u001a\u00020\u0005H&J\u0012\u0010\u0015\u001a\u00020\u00032\b\b\u0002\u0010\u0015\u001a\u00020\u0006H&J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u0010\u0016\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0004H'J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0006H'J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0004H&J\u0012\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0018\u001a\u00020\u0019H&J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0004H&J\u0012\u0010\u001a\u001a\u00020\u00032\b\b\u0002\u0010\u001a\u001a\u00020\u0011H&J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0004H&J\u0012\u0010\u001b\u001a\u00020\u00032\b\b\u0001\u0010\u001b\u001a\u00020\u0005H&J\u0012\u0010\u001b\u001a\u00020\u00032\b\b\u0002\u0010\u001b\u001a\u00020\u0006H&J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u0010\u001c\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u0004H'J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u0006H'J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0011H&J\u0010\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u0011H&J\u0010\u0010 \u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u0006H&J\u0010\u0010!\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u0006H&J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u0004H&J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020#H&¨\u0006$"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/HillshadeLayerDsl;", "", "hillshadeAccentColor", "Lcom/mapbox/maps/extension/style/layers/generated/HillshadeLayer;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "", "", "hillshadeAccentColorTransition", "options", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "hillshadeAccentColorUseTheme", "hillshadeEmissiveStrength", "", "hillshadeEmissiveStrengthTransition", "hillshadeExaggeration", "hillshadeExaggerationTransition", "hillshadeHighlightColor", "hillshadeHighlightColorTransition", "hillshadeHighlightColorUseTheme", "hillshadeIlluminationAnchor", "Lcom/mapbox/maps/extension/style/layers/properties/generated/HillshadeIlluminationAnchor;", "hillshadeIlluminationDirection", "hillshadeShadowColor", "hillshadeShadowColorTransition", "hillshadeShadowColorUseTheme", "maxZoom", "minZoom", "slot", "sourceLayer", "visibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface HillshadeLayerDsl {
    HillshadeLayer hillshadeAccentColor(int hillshadeAccentColor);

    HillshadeLayer hillshadeAccentColor(Expression hillshadeAccentColor);

    HillshadeLayer hillshadeAccentColor(String hillshadeAccentColor);

    HillshadeLayer hillshadeAccentColorTransition(StyleTransition options);

    HillshadeLayer hillshadeAccentColorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    HillshadeLayer hillshadeAccentColorUseTheme(Expression hillshadeAccentColorUseTheme);

    HillshadeLayer hillshadeAccentColorUseTheme(String hillshadeAccentColorUseTheme);

    HillshadeLayer hillshadeEmissiveStrength(double hillshadeEmissiveStrength);

    HillshadeLayer hillshadeEmissiveStrength(Expression hillshadeEmissiveStrength);

    HillshadeLayer hillshadeEmissiveStrengthTransition(StyleTransition options);

    HillshadeLayer hillshadeEmissiveStrengthTransition(Function1<? super StyleTransition.Builder, Unit> block);

    HillshadeLayer hillshadeExaggeration(double hillshadeExaggeration);

    HillshadeLayer hillshadeExaggeration(Expression hillshadeExaggeration);

    HillshadeLayer hillshadeExaggerationTransition(StyleTransition options);

    HillshadeLayer hillshadeExaggerationTransition(Function1<? super StyleTransition.Builder, Unit> block);

    HillshadeLayer hillshadeHighlightColor(int hillshadeHighlightColor);

    HillshadeLayer hillshadeHighlightColor(Expression hillshadeHighlightColor);

    HillshadeLayer hillshadeHighlightColor(String hillshadeHighlightColor);

    HillshadeLayer hillshadeHighlightColorTransition(StyleTransition options);

    HillshadeLayer hillshadeHighlightColorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    HillshadeLayer hillshadeHighlightColorUseTheme(Expression hillshadeHighlightColorUseTheme);

    HillshadeLayer hillshadeHighlightColorUseTheme(String hillshadeHighlightColorUseTheme);

    HillshadeLayer hillshadeIlluminationAnchor(Expression hillshadeIlluminationAnchor);

    HillshadeLayer hillshadeIlluminationAnchor(HillshadeIlluminationAnchor hillshadeIlluminationAnchor);

    HillshadeLayer hillshadeIlluminationDirection(double hillshadeIlluminationDirection);

    HillshadeLayer hillshadeIlluminationDirection(Expression hillshadeIlluminationDirection);

    HillshadeLayer hillshadeShadowColor(int hillshadeShadowColor);

    HillshadeLayer hillshadeShadowColor(Expression hillshadeShadowColor);

    HillshadeLayer hillshadeShadowColor(String hillshadeShadowColor);

    HillshadeLayer hillshadeShadowColorTransition(StyleTransition options);

    HillshadeLayer hillshadeShadowColorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    HillshadeLayer hillshadeShadowColorUseTheme(Expression hillshadeShadowColorUseTheme);

    HillshadeLayer hillshadeShadowColorUseTheme(String hillshadeShadowColorUseTheme);

    HillshadeLayer maxZoom(double maxZoom);

    HillshadeLayer minZoom(double minZoom);

    HillshadeLayer slot(String slot);

    HillshadeLayer sourceLayer(String sourceLayer);

    HillshadeLayer visibility(Expression visibility);

    HillshadeLayer visibility(Visibility visibility);

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class DefaultImpls {
        public static HillshadeLayer hillshadeAccentColor$default(HillshadeLayerDsl hillshadeLayerDsl, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: hillshadeAccentColor");
            }
            if ((i & 1) != 0) {
                str = "#000000";
            }
            return hillshadeLayerDsl.hillshadeAccentColor(str);
        }

        public static HillshadeLayer hillshadeEmissiveStrength$default(HillshadeLayerDsl hillshadeLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: hillshadeEmissiveStrength");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return hillshadeLayerDsl.hillshadeEmissiveStrength(d);
        }

        public static HillshadeLayer hillshadeExaggeration$default(HillshadeLayerDsl hillshadeLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: hillshadeExaggeration");
            }
            if ((i & 1) != 0) {
                d = 0.5d;
            }
            return hillshadeLayerDsl.hillshadeExaggeration(d);
        }

        public static HillshadeLayer hillshadeHighlightColor$default(HillshadeLayerDsl hillshadeLayerDsl, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: hillshadeHighlightColor");
            }
            if ((i & 1) != 0) {
                str = "#FFFFFF";
            }
            return hillshadeLayerDsl.hillshadeHighlightColor(str);
        }

        public static HillshadeLayer hillshadeIlluminationAnchor$default(HillshadeLayerDsl hillshadeLayerDsl, HillshadeIlluminationAnchor hillshadeIlluminationAnchor, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: hillshadeIlluminationAnchor");
            }
            if ((i & 1) != 0) {
                hillshadeIlluminationAnchor = HillshadeIlluminationAnchor.VIEWPORT;
            }
            return hillshadeLayerDsl.hillshadeIlluminationAnchor(hillshadeIlluminationAnchor);
        }

        public static HillshadeLayer hillshadeIlluminationDirection$default(HillshadeLayerDsl hillshadeLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: hillshadeIlluminationDirection");
            }
            if ((i & 1) != 0) {
                d = 335.0d;
            }
            return hillshadeLayerDsl.hillshadeIlluminationDirection(d);
        }

        public static HillshadeLayer hillshadeShadowColor$default(HillshadeLayerDsl hillshadeLayerDsl, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: hillshadeShadowColor");
            }
            if ((i & 1) != 0) {
                str = "#000000";
            }
            return hillshadeLayerDsl.hillshadeShadowColor(str);
        }
    }
}
