package com.mapbox.maps.extension.style.layers.generated;

import com.facebook.react.uimanager.ViewProps;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.properties.generated.FillElevationReference;
import com.mapbox.maps.extension.style.layers.properties.generated.FillTranslateAnchor;
import com.mapbox.maps.extension.style.layers.properties.generated.Visibility;
import com.mapbox.maps.extension.style.types.LayersDsl;
import com.mapbox.maps.extension.style.types.StyleTransition;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;

@LayersDsl
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\n\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0004H&J\u0012\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0002\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0004H'J\u0012\u0010\u0006\u001a\u00020\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u0007H'J\u0012\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\bH'J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH'J!\u0010\t\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H'J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0004H'J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\bH'J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0004H&J\u0012\u0010\u0012\u001a\u00020\u00032\b\b\u0001\u0010\u0012\u001a\u00020\u0007H&J\u0012\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\bH&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J!\u0010\u0013\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H&J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0004H'J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\bH'J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0004H'J\u0012\u0010\u0015\u001a\u00020\u00032\b\b\u0002\u0010\u0015\u001a\u00020\u0005H'J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0004H'J\u0012\u0010\u0016\u001a\u00020\u00032\b\b\u0002\u0010\u0016\u001a\u00020\u0017H'J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0004H&J\u0012\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0018\u001a\u00020\u0019H&J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J!\u0010\u001a\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H&J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0004H&J\u0012\u0010\u001b\u001a\u00020\u00032\b\b\u0002\u0010\u001b\u001a\u00020\u0019H&J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J!\u0010\u001c\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H&J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u0004H&J\u0012\u0010\u001d\u001a\u00020\u00032\b\b\u0001\u0010\u001d\u001a\u00020\u0007H&J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\bH&J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J!\u0010\u001e\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H&J\u0010\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u0004H'J\u0010\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\bH'J\u0010\u0010 \u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u0004H&J\u0010\u0010 \u001a\u00020\u00032\u0006\u0010 \u001a\u00020\bH&J\u0010\u0010!\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u0004H&J\u0012\u0010!\u001a\u00020\u00032\b\b\u0002\u0010!\u001a\u00020\u0019H&J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u0004H&J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u0019H&J\u0010\u0010#\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u0004H&J\u0018\u0010#\u001a\u00020\u00032\u000e\b\u0002\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00190$H&J\u0010\u0010%\u001a\u00020\u00032\u0006\u0010%\u001a\u00020\u0004H&J\u0012\u0010%\u001a\u00020\u00032\b\b\u0002\u0010%\u001a\u00020&H&J\u0010\u0010'\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J!\u0010'\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H&J\u0010\u0010(\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\u0004H'J\u0012\u0010(\u001a\u00020\u00032\b\b\u0001\u0010(\u001a\u00020\u0007H'J\u0012\u0010(\u001a\u00020\u00032\b\b\u0002\u0010(\u001a\u00020\bH'J\u0010\u0010)\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH'J!\u0010)\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H'J\u0010\u0010*\u001a\u00020\u00032\u0006\u0010*\u001a\u00020\u0004H'J\u0010\u0010*\u001a\u00020\u00032\u0006\u0010*\u001a\u00020\bH'J\u0010\u0010+\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u0004H'J\u0012\u0010+\u001a\u00020\u00032\b\b\u0002\u0010+\u001a\u00020\u0019H'J\u0010\u0010,\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH'J!\u0010,\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H'J\u0010\u0010-\u001a\u00020\u00032\u0006\u0010-\u001a\u00020\u0004H&J\u0010\u0010.\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u0019H&J\u0010\u0010/\u001a\u00020\u00032\u0006\u0010/\u001a\u00020\u0019H&J\u0010\u00100\u001a\u00020\u00032\u0006\u00100\u001a\u00020\bH&J\u0010\u00101\u001a\u00020\u00032\u0006\u00101\u001a\u00020\bH&J\u0010\u00102\u001a\u00020\u00032\u0006\u00102\u001a\u00020\u0004H&J\u0010\u00102\u001a\u00020\u00032\u0006\u00102\u001a\u000203H&¨\u00064"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/FillLayerDsl;", "", "fillAntialias", "Lcom/mapbox/maps/extension/style/layers/generated/FillLayer;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "", "fillBridgeGuardRailColor", "", "", "fillBridgeGuardRailColorTransition", "options", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "fillBridgeGuardRailColorUseTheme", "fillColor", "fillColorTransition", "fillColorUseTheme", "fillConstructBridgeGuardRail", "fillElevationReference", "Lcom/mapbox/maps/extension/style/layers/properties/generated/FillElevationReference;", "fillEmissiveStrength", "", "fillEmissiveStrengthTransition", "fillOpacity", "fillOpacityTransition", "fillOutlineColor", "fillOutlineColorTransition", "fillOutlineColorUseTheme", "fillPattern", "fillPatternCrossFade", "fillSortKey", "fillTranslate", "", "fillTranslateAnchor", "Lcom/mapbox/maps/extension/style/layers/properties/generated/FillTranslateAnchor;", "fillTranslateTransition", "fillTunnelStructureColor", "fillTunnelStructureColorTransition", "fillTunnelStructureColorUseTheme", "fillZOffset", "fillZOffsetTransition", ViewProps.FILTER, "maxZoom", "minZoom", "slot", "sourceLayer", "visibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface FillLayerDsl {
    FillLayer fillAntialias(Expression fillAntialias);

    FillLayer fillAntialias(boolean fillAntialias);

    FillLayer fillBridgeGuardRailColor(int fillBridgeGuardRailColor);

    FillLayer fillBridgeGuardRailColor(Expression fillBridgeGuardRailColor);

    FillLayer fillBridgeGuardRailColor(String fillBridgeGuardRailColor);

    FillLayer fillBridgeGuardRailColorTransition(StyleTransition options);

    FillLayer fillBridgeGuardRailColorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    FillLayer fillBridgeGuardRailColorUseTheme(Expression fillBridgeGuardRailColorUseTheme);

    FillLayer fillBridgeGuardRailColorUseTheme(String fillBridgeGuardRailColorUseTheme);

    FillLayer fillColor(int fillColor);

    FillLayer fillColor(Expression fillColor);

    FillLayer fillColor(String fillColor);

    FillLayer fillColorTransition(StyleTransition options);

    FillLayer fillColorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    FillLayer fillColorUseTheme(Expression fillColorUseTheme);

    FillLayer fillColorUseTheme(String fillColorUseTheme);

    FillLayer fillConstructBridgeGuardRail(Expression fillConstructBridgeGuardRail);

    FillLayer fillConstructBridgeGuardRail(boolean fillConstructBridgeGuardRail);

    FillLayer fillElevationReference(Expression fillElevationReference);

    FillLayer fillElevationReference(FillElevationReference fillElevationReference);

    FillLayer fillEmissiveStrength(double fillEmissiveStrength);

    FillLayer fillEmissiveStrength(Expression fillEmissiveStrength);

    FillLayer fillEmissiveStrengthTransition(StyleTransition options);

    FillLayer fillEmissiveStrengthTransition(Function1<? super StyleTransition.Builder, Unit> block);

    FillLayer fillOpacity(double fillOpacity);

    FillLayer fillOpacity(Expression fillOpacity);

    FillLayer fillOpacityTransition(StyleTransition options);

    FillLayer fillOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    FillLayer fillOutlineColor(int fillOutlineColor);

    FillLayer fillOutlineColor(Expression fillOutlineColor);

    FillLayer fillOutlineColor(String fillOutlineColor);

    FillLayer fillOutlineColorTransition(StyleTransition options);

    FillLayer fillOutlineColorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    FillLayer fillOutlineColorUseTheme(Expression fillOutlineColorUseTheme);

    FillLayer fillOutlineColorUseTheme(String fillOutlineColorUseTheme);

    FillLayer fillPattern(Expression fillPattern);

    FillLayer fillPattern(String fillPattern);

    FillLayer fillPatternCrossFade(double fillPatternCrossFade);

    FillLayer fillPatternCrossFade(Expression fillPatternCrossFade);

    FillLayer fillSortKey(double fillSortKey);

    FillLayer fillSortKey(Expression fillSortKey);

    FillLayer fillTranslate(Expression fillTranslate);

    FillLayer fillTranslate(List<Double> fillTranslate);

    FillLayer fillTranslateAnchor(Expression fillTranslateAnchor);

    FillLayer fillTranslateAnchor(FillTranslateAnchor fillTranslateAnchor);

    FillLayer fillTranslateTransition(StyleTransition options);

    FillLayer fillTranslateTransition(Function1<? super StyleTransition.Builder, Unit> block);

    FillLayer fillTunnelStructureColor(int fillTunnelStructureColor);

    FillLayer fillTunnelStructureColor(Expression fillTunnelStructureColor);

    FillLayer fillTunnelStructureColor(String fillTunnelStructureColor);

    FillLayer fillTunnelStructureColorTransition(StyleTransition options);

    FillLayer fillTunnelStructureColorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    FillLayer fillTunnelStructureColorUseTheme(Expression fillTunnelStructureColorUseTheme);

    FillLayer fillTunnelStructureColorUseTheme(String fillTunnelStructureColorUseTheme);

    FillLayer fillZOffset(double fillZOffset);

    FillLayer fillZOffset(Expression fillZOffset);

    FillLayer fillZOffsetTransition(StyleTransition options);

    FillLayer fillZOffsetTransition(Function1<? super StyleTransition.Builder, Unit> block);

    FillLayer filter(Expression filter);

    FillLayer maxZoom(double maxZoom);

    FillLayer minZoom(double minZoom);

    FillLayer slot(String slot);

    FillLayer sourceLayer(String sourceLayer);

    FillLayer visibility(Expression visibility);

    FillLayer visibility(Visibility visibility);

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class DefaultImpls {
        public static FillLayer fillConstructBridgeGuardRail$default(FillLayerDsl fillLayerDsl, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillConstructBridgeGuardRail");
            }
            if ((i & 1) != 0) {
                z = true;
            }
            return fillLayerDsl.fillConstructBridgeGuardRail(z);
        }

        public static FillLayer fillElevationReference$default(FillLayerDsl fillLayerDsl, FillElevationReference fillElevationReference, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillElevationReference");
            }
            if ((i & 1) != 0) {
                fillElevationReference = FillElevationReference.NONE;
            }
            return fillLayerDsl.fillElevationReference(fillElevationReference);
        }

        public static FillLayer fillAntialias$default(FillLayerDsl fillLayerDsl, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillAntialias");
            }
            if ((i & 1) != 0) {
                z = true;
            }
            return fillLayerDsl.fillAntialias(z);
        }

        public static FillLayer fillBridgeGuardRailColor$default(FillLayerDsl fillLayerDsl, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillBridgeGuardRailColor");
            }
            if ((i & 1) != 0) {
                str = "rgba(241, 236, 225, 255)";
            }
            return fillLayerDsl.fillBridgeGuardRailColor(str);
        }

        public static FillLayer fillColor$default(FillLayerDsl fillLayerDsl, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillColor");
            }
            if ((i & 1) != 0) {
                str = "#000000";
            }
            return fillLayerDsl.fillColor(str);
        }

        public static FillLayer fillEmissiveStrength$default(FillLayerDsl fillLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillEmissiveStrength");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return fillLayerDsl.fillEmissiveStrength(d);
        }

        public static FillLayer fillOpacity$default(FillLayerDsl fillLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillOpacity");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return fillLayerDsl.fillOpacity(d);
        }

        public static FillLayer fillPatternCrossFade$default(FillLayerDsl fillLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillPatternCrossFade");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return fillLayerDsl.fillPatternCrossFade(d);
        }

        public static FillLayer fillTranslate$default(FillLayerDsl fillLayerDsl, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillTranslate");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(0.0d), Double.valueOf(0.0d)});
            }
            return fillLayerDsl.fillTranslate((List<Double>) list);
        }

        public static FillLayer fillTranslateAnchor$default(FillLayerDsl fillLayerDsl, FillTranslateAnchor fillTranslateAnchor, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillTranslateAnchor");
            }
            if ((i & 1) != 0) {
                fillTranslateAnchor = FillTranslateAnchor.MAP;
            }
            return fillLayerDsl.fillTranslateAnchor(fillTranslateAnchor);
        }

        public static FillLayer fillTunnelStructureColor$default(FillLayerDsl fillLayerDsl, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillTunnelStructureColor");
            }
            if ((i & 1) != 0) {
                str = "rgba(241, 236, 225, 255)";
            }
            return fillLayerDsl.fillTunnelStructureColor(str);
        }

        public static FillLayer fillZOffset$default(FillLayerDsl fillLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillZOffset");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return fillLayerDsl.fillZOffset(d);
        }
    }
}
