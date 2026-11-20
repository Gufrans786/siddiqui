package com.mapbox.maps.extension.style.layers.generated;

import com.facebook.react.uimanager.ViewProps;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.properties.generated.FillExtrusionBaseAlignment;
import com.mapbox.maps.extension.style.layers.properties.generated.FillExtrusionHeightAlignment;
import com.mapbox.maps.extension.style.layers.properties.generated.FillExtrusionTranslateAnchor;
import com.mapbox.maps.extension.style.layers.properties.generated.Visibility;
import com.mapbox.maps.extension.style.types.LayersDsl;
import com.mapbox.maps.extension.style.types.StyleTransition;
import com.mapbox.maps.plugin.locationcomponent.model.AnimatableModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;

@LayersDsl
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0004H'J\u0012\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0002\u001a\u00020\u0005H'J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u0010\u0006\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0004H'J\u0012\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u0005H'J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u0010\u000f\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0004H&J\u0012\u0010\u0010\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u0005H&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J!\u0010\u0011\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH&J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0004H&J\u0012\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u0005H&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J!\u0010\u0013\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH&J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0004H'J\u0012\u0010\u0014\u001a\u00020\u00032\b\b\u0002\u0010\u0014\u001a\u00020\u0005H'J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u0010\u0015\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0004H&J\u0012\u0010\u0016\u001a\u00020\u00032\b\b\u0002\u0010\u0016\u001a\u00020\u0005H&J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0004H'J\u0012\u0010\u0017\u001a\u00020\u00032\b\b\u0002\u0010\u0017\u001a\u00020\u0018H'J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J!\u0010\u0019\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH&J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0004H&J\u0012\u0010\u001a\u001a\u00020\u00032\b\b\u0001\u0010\u001a\u001a\u00020\u001bH&J\u0012\u0010\u001a\u001a\u00020\u00032\b\b\u0002\u0010\u001a\u001a\u00020\u001cH&J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J!\u0010\u001d\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH&J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0004H'J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u001cH'J\u0010\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u0004H&J\u0012\u0010\u001f\u001a\u00020\u00032\b\b\u0002\u0010\u001f\u001a\u00020\u0005H&J\u0010\u0010 \u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u0004H'J\u0012\u0010 \u001a\u00020\u00032\b\b\u0002\u0010 \u001a\u00020\u0005H'J\u0010\u0010!\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u0004H&J\u0012\u0010!\u001a\u00020\u00032\b\b\u0002\u0010!\u001a\u00020\u0005H&J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J!\u0010\"\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH&J\u0010\u0010#\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u0004H'J\u0012\u0010#\u001a\u00020\u00032\b\b\u0001\u0010#\u001a\u00020\u001bH'J\u0012\u0010#\u001a\u00020\u00032\b\b\u0002\u0010#\u001a\u00020\u001cH'J\u0010\u0010$\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u0010$\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'J\u0010\u0010%\u001a\u00020\u00032\u0006\u0010%\u001a\u00020\u0004H'J\u0010\u0010%\u001a\u00020\u00032\u0006\u0010%\u001a\u00020\u001cH'J\u0010\u0010&\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u0004H'J\u0012\u0010&\u001a\u00020\u00032\b\b\u0002\u0010&\u001a\u00020\u0005H'J\u0010\u0010'\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u0010'\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'J\u0010\u0010(\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\u0004H'J\u0012\u0010(\u001a\u00020\u00032\b\b\u0002\u0010(\u001a\u00020\u0005H'J\u0010\u0010)\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u0010)\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'J\u0010\u0010*\u001a\u00020\u00032\u0006\u0010*\u001a\u00020\u0004H'J\u0012\u0010*\u001a\u00020\u00032\b\b\u0002\u0010*\u001a\u00020\u0005H'J\u0010\u0010+\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u0010+\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'J\u0010\u0010,\u001a\u00020\u00032\u0006\u0010,\u001a\u00020\u0004H'J\u0012\u0010,\u001a\u00020\u00032\b\b\u0002\u0010,\u001a\u00020\u0005H'J\u0010\u0010-\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u0010-\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'J\u0010\u0010.\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u0004H&J\u0012\u0010.\u001a\u00020\u00032\b\b\u0002\u0010.\u001a\u00020\u0005H&J\u0010\u0010/\u001a\u00020\u00032\u0006\u0010/\u001a\u00020\u0004H'J\u0012\u0010/\u001a\u00020\u00032\b\b\u0002\u0010/\u001a\u000200H'J\u0010\u00101\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J!\u00101\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH&J\u0010\u00102\u001a\u00020\u00032\u0006\u00102\u001a\u00020\u0004H'J\u0012\u00102\u001a\u00020\u00032\b\b\u0002\u00102\u001a\u00020\u0005H'J\u0010\u00103\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u00103\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'J\u0010\u00104\u001a\u00020\u00032\u0006\u00104\u001a\u00020\u0004H&J\u0012\u00104\u001a\u00020\u00032\b\b\u0002\u00104\u001a\u00020\u0005H&J\u0010\u00105\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J!\u00105\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH&J\u0010\u00106\u001a\u00020\u00032\u0006\u00106\u001a\u00020\u0004H&J\u0010\u00106\u001a\u00020\u00032\u0006\u00106\u001a\u00020\u001cH&J\u0010\u00107\u001a\u00020\u00032\u0006\u00107\u001a\u00020\u0004H&J\u0012\u00107\u001a\u00020\u00032\b\b\u0002\u00107\u001a\u00020\u0005H&J\u0010\u00108\u001a\u00020\u00032\u0006\u00108\u001a\u00020\u0004H'J\u0012\u00108\u001a\u00020\u00032\b\b\u0002\u00108\u001a\u000209H'J\u0010\u0010:\u001a\u00020\u00032\u0006\u0010:\u001a\u00020\u0004H&J\u0018\u0010:\u001a\u00020\u00032\u000e\b\u0002\u0010:\u001a\b\u0012\u0004\u0012\u00020\u00050;H&J\u0010\u0010<\u001a\u00020\u00032\u0006\u0010<\u001a\u00020\u0004H&J\u0012\u0010<\u001a\u00020\u00032\b\b\u0002\u0010<\u001a\u00020=H&J\u0010\u0010>\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J!\u0010>\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH&J\u0010\u0010?\u001a\u00020\u00032\u0006\u0010?\u001a\u00020\u0004H&J\u0012\u0010?\u001a\u00020\u00032\b\b\u0002\u0010?\u001a\u000209H&J\u0010\u0010@\u001a\u00020\u00032\u0006\u0010@\u001a\u00020\u0004H'J\u0012\u0010@\u001a\u00020\u00032\b\b\u0002\u0010@\u001a\u00020\u0005H'J\u0010\u0010A\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J!\u0010A\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH'J\u0010\u0010B\u001a\u00020\u00032\u0006\u0010B\u001a\u00020\u0004H&J\u0010\u0010C\u001a\u00020\u00032\u0006\u0010C\u001a\u00020\u0005H&J\u0010\u0010D\u001a\u00020\u00032\u0006\u0010D\u001a\u00020\u0005H&J\u0010\u0010E\u001a\u00020\u00032\u0006\u0010E\u001a\u00020\u001cH&J\u0010\u0010F\u001a\u00020\u00032\u0006\u0010F\u001a\u00020\u001cH&J\u0010\u0010G\u001a\u00020\u00032\u0006\u0010G\u001a\u00020\u0004H&J\u0010\u0010G\u001a\u00020\u00032\u0006\u0010G\u001a\u00020HH&¨\u0006I"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/FillExtrusionLayerDsl;", "", "fillExtrusionAmbientOcclusionGroundAttenuation", "Lcom/mapbox/maps/extension/style/layers/generated/FillExtrusionLayer;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "", "fillExtrusionAmbientOcclusionGroundAttenuationTransition", "options", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "fillExtrusionAmbientOcclusionGroundRadius", "fillExtrusionAmbientOcclusionGroundRadiusTransition", "fillExtrusionAmbientOcclusionIntensity", "fillExtrusionAmbientOcclusionIntensityTransition", "fillExtrusionAmbientOcclusionRadius", "fillExtrusionAmbientOcclusionRadiusTransition", "fillExtrusionAmbientOcclusionWallRadius", "fillExtrusionAmbientOcclusionWallRadiusTransition", "fillExtrusionBase", "fillExtrusionBaseAlignment", "Lcom/mapbox/maps/extension/style/layers/properties/generated/FillExtrusionBaseAlignment;", "fillExtrusionBaseTransition", "fillExtrusionColor", "", "", "fillExtrusionColorTransition", "fillExtrusionColorUseTheme", "fillExtrusionCutoffFadeRange", "fillExtrusionEdgeRadius", "fillExtrusionEmissiveStrength", "fillExtrusionEmissiveStrengthTransition", "fillExtrusionFloodLightColor", "fillExtrusionFloodLightColorTransition", "fillExtrusionFloodLightColorUseTheme", "fillExtrusionFloodLightGroundAttenuation", "fillExtrusionFloodLightGroundAttenuationTransition", "fillExtrusionFloodLightGroundRadius", "fillExtrusionFloodLightGroundRadiusTransition", "fillExtrusionFloodLightIntensity", "fillExtrusionFloodLightIntensityTransition", "fillExtrusionFloodLightWallRadius", "fillExtrusionFloodLightWallRadiusTransition", "fillExtrusionHeight", "fillExtrusionHeightAlignment", "Lcom/mapbox/maps/extension/style/layers/properties/generated/FillExtrusionHeightAlignment;", "fillExtrusionHeightTransition", "fillExtrusionLineWidth", "fillExtrusionLineWidthTransition", "fillExtrusionOpacity", "fillExtrusionOpacityTransition", "fillExtrusionPattern", "fillExtrusionPatternCrossFade", "fillExtrusionRoundedRoof", "", "fillExtrusionTranslate", "", "fillExtrusionTranslateAnchor", "Lcom/mapbox/maps/extension/style/layers/properties/generated/FillExtrusionTranslateAnchor;", "fillExtrusionTranslateTransition", "fillExtrusionVerticalGradient", "fillExtrusionVerticalScale", "fillExtrusionVerticalScaleTransition", ViewProps.FILTER, "maxZoom", "minZoom", "slot", "sourceLayer", "visibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface FillExtrusionLayerDsl {
    FillExtrusionLayer fillExtrusionAmbientOcclusionGroundAttenuation(double fillExtrusionAmbientOcclusionGroundAttenuation);

    FillExtrusionLayer fillExtrusionAmbientOcclusionGroundAttenuation(Expression fillExtrusionAmbientOcclusionGroundAttenuation);

    FillExtrusionLayer fillExtrusionAmbientOcclusionGroundAttenuationTransition(StyleTransition options);

    FillExtrusionLayer fillExtrusionAmbientOcclusionGroundAttenuationTransition(Function1<? super StyleTransition.Builder, Unit> block);

    FillExtrusionLayer fillExtrusionAmbientOcclusionGroundRadius(double fillExtrusionAmbientOcclusionGroundRadius);

    FillExtrusionLayer fillExtrusionAmbientOcclusionGroundRadius(Expression fillExtrusionAmbientOcclusionGroundRadius);

    FillExtrusionLayer fillExtrusionAmbientOcclusionGroundRadiusTransition(StyleTransition options);

    FillExtrusionLayer fillExtrusionAmbientOcclusionGroundRadiusTransition(Function1<? super StyleTransition.Builder, Unit> block);

    FillExtrusionLayer fillExtrusionAmbientOcclusionIntensity(double fillExtrusionAmbientOcclusionIntensity);

    FillExtrusionLayer fillExtrusionAmbientOcclusionIntensity(Expression fillExtrusionAmbientOcclusionIntensity);

    FillExtrusionLayer fillExtrusionAmbientOcclusionIntensityTransition(StyleTransition options);

    FillExtrusionLayer fillExtrusionAmbientOcclusionIntensityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    FillExtrusionLayer fillExtrusionAmbientOcclusionRadius(double fillExtrusionAmbientOcclusionRadius);

    FillExtrusionLayer fillExtrusionAmbientOcclusionRadius(Expression fillExtrusionAmbientOcclusionRadius);

    FillExtrusionLayer fillExtrusionAmbientOcclusionRadiusTransition(StyleTransition options);

    FillExtrusionLayer fillExtrusionAmbientOcclusionRadiusTransition(Function1<? super StyleTransition.Builder, Unit> block);

    FillExtrusionLayer fillExtrusionAmbientOcclusionWallRadius(double fillExtrusionAmbientOcclusionWallRadius);

    FillExtrusionLayer fillExtrusionAmbientOcclusionWallRadius(Expression fillExtrusionAmbientOcclusionWallRadius);

    FillExtrusionLayer fillExtrusionAmbientOcclusionWallRadiusTransition(StyleTransition options);

    FillExtrusionLayer fillExtrusionAmbientOcclusionWallRadiusTransition(Function1<? super StyleTransition.Builder, Unit> block);

    FillExtrusionLayer fillExtrusionBase(double fillExtrusionBase);

    FillExtrusionLayer fillExtrusionBase(Expression fillExtrusionBase);

    FillExtrusionLayer fillExtrusionBaseAlignment(Expression fillExtrusionBaseAlignment);

    FillExtrusionLayer fillExtrusionBaseAlignment(FillExtrusionBaseAlignment fillExtrusionBaseAlignment);

    FillExtrusionLayer fillExtrusionBaseTransition(StyleTransition options);

    FillExtrusionLayer fillExtrusionBaseTransition(Function1<? super StyleTransition.Builder, Unit> block);

    FillExtrusionLayer fillExtrusionColor(int fillExtrusionColor);

    FillExtrusionLayer fillExtrusionColor(Expression fillExtrusionColor);

    FillExtrusionLayer fillExtrusionColor(String fillExtrusionColor);

    FillExtrusionLayer fillExtrusionColorTransition(StyleTransition options);

    FillExtrusionLayer fillExtrusionColorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    FillExtrusionLayer fillExtrusionColorUseTheme(Expression fillExtrusionColorUseTheme);

    FillExtrusionLayer fillExtrusionColorUseTheme(String fillExtrusionColorUseTheme);

    FillExtrusionLayer fillExtrusionCutoffFadeRange(double fillExtrusionCutoffFadeRange);

    FillExtrusionLayer fillExtrusionCutoffFadeRange(Expression fillExtrusionCutoffFadeRange);

    FillExtrusionLayer fillExtrusionEdgeRadius(double fillExtrusionEdgeRadius);

    FillExtrusionLayer fillExtrusionEdgeRadius(Expression fillExtrusionEdgeRadius);

    FillExtrusionLayer fillExtrusionEmissiveStrength(double fillExtrusionEmissiveStrength);

    FillExtrusionLayer fillExtrusionEmissiveStrength(Expression fillExtrusionEmissiveStrength);

    FillExtrusionLayer fillExtrusionEmissiveStrengthTransition(StyleTransition options);

    FillExtrusionLayer fillExtrusionEmissiveStrengthTransition(Function1<? super StyleTransition.Builder, Unit> block);

    FillExtrusionLayer fillExtrusionFloodLightColor(int fillExtrusionFloodLightColor);

    FillExtrusionLayer fillExtrusionFloodLightColor(Expression fillExtrusionFloodLightColor);

    FillExtrusionLayer fillExtrusionFloodLightColor(String fillExtrusionFloodLightColor);

    FillExtrusionLayer fillExtrusionFloodLightColorTransition(StyleTransition options);

    FillExtrusionLayer fillExtrusionFloodLightColorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    FillExtrusionLayer fillExtrusionFloodLightColorUseTheme(Expression fillExtrusionFloodLightColorUseTheme);

    FillExtrusionLayer fillExtrusionFloodLightColorUseTheme(String fillExtrusionFloodLightColorUseTheme);

    FillExtrusionLayer fillExtrusionFloodLightGroundAttenuation(double fillExtrusionFloodLightGroundAttenuation);

    FillExtrusionLayer fillExtrusionFloodLightGroundAttenuation(Expression fillExtrusionFloodLightGroundAttenuation);

    FillExtrusionLayer fillExtrusionFloodLightGroundAttenuationTransition(StyleTransition options);

    FillExtrusionLayer fillExtrusionFloodLightGroundAttenuationTransition(Function1<? super StyleTransition.Builder, Unit> block);

    FillExtrusionLayer fillExtrusionFloodLightGroundRadius(double fillExtrusionFloodLightGroundRadius);

    FillExtrusionLayer fillExtrusionFloodLightGroundRadius(Expression fillExtrusionFloodLightGroundRadius);

    FillExtrusionLayer fillExtrusionFloodLightGroundRadiusTransition(StyleTransition options);

    FillExtrusionLayer fillExtrusionFloodLightGroundRadiusTransition(Function1<? super StyleTransition.Builder, Unit> block);

    FillExtrusionLayer fillExtrusionFloodLightIntensity(double fillExtrusionFloodLightIntensity);

    FillExtrusionLayer fillExtrusionFloodLightIntensity(Expression fillExtrusionFloodLightIntensity);

    FillExtrusionLayer fillExtrusionFloodLightIntensityTransition(StyleTransition options);

    FillExtrusionLayer fillExtrusionFloodLightIntensityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    FillExtrusionLayer fillExtrusionFloodLightWallRadius(double fillExtrusionFloodLightWallRadius);

    FillExtrusionLayer fillExtrusionFloodLightWallRadius(Expression fillExtrusionFloodLightWallRadius);

    FillExtrusionLayer fillExtrusionFloodLightWallRadiusTransition(StyleTransition options);

    FillExtrusionLayer fillExtrusionFloodLightWallRadiusTransition(Function1<? super StyleTransition.Builder, Unit> block);

    FillExtrusionLayer fillExtrusionHeight(double fillExtrusionHeight);

    FillExtrusionLayer fillExtrusionHeight(Expression fillExtrusionHeight);

    FillExtrusionLayer fillExtrusionHeightAlignment(Expression fillExtrusionHeightAlignment);

    FillExtrusionLayer fillExtrusionHeightAlignment(FillExtrusionHeightAlignment fillExtrusionHeightAlignment);

    FillExtrusionLayer fillExtrusionHeightTransition(StyleTransition options);

    FillExtrusionLayer fillExtrusionHeightTransition(Function1<? super StyleTransition.Builder, Unit> block);

    FillExtrusionLayer fillExtrusionLineWidth(double fillExtrusionLineWidth);

    FillExtrusionLayer fillExtrusionLineWidth(Expression fillExtrusionLineWidth);

    FillExtrusionLayer fillExtrusionLineWidthTransition(StyleTransition options);

    FillExtrusionLayer fillExtrusionLineWidthTransition(Function1<? super StyleTransition.Builder, Unit> block);

    FillExtrusionLayer fillExtrusionOpacity(double fillExtrusionOpacity);

    FillExtrusionLayer fillExtrusionOpacity(Expression fillExtrusionOpacity);

    FillExtrusionLayer fillExtrusionOpacityTransition(StyleTransition options);

    FillExtrusionLayer fillExtrusionOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    FillExtrusionLayer fillExtrusionPattern(Expression fillExtrusionPattern);

    FillExtrusionLayer fillExtrusionPattern(String fillExtrusionPattern);

    FillExtrusionLayer fillExtrusionPatternCrossFade(double fillExtrusionPatternCrossFade);

    FillExtrusionLayer fillExtrusionPatternCrossFade(Expression fillExtrusionPatternCrossFade);

    FillExtrusionLayer fillExtrusionRoundedRoof(Expression fillExtrusionRoundedRoof);

    FillExtrusionLayer fillExtrusionRoundedRoof(boolean fillExtrusionRoundedRoof);

    FillExtrusionLayer fillExtrusionTranslate(Expression fillExtrusionTranslate);

    FillExtrusionLayer fillExtrusionTranslate(List<Double> fillExtrusionTranslate);

    FillExtrusionLayer fillExtrusionTranslateAnchor(Expression fillExtrusionTranslateAnchor);

    FillExtrusionLayer fillExtrusionTranslateAnchor(FillExtrusionTranslateAnchor fillExtrusionTranslateAnchor);

    FillExtrusionLayer fillExtrusionTranslateTransition(StyleTransition options);

    FillExtrusionLayer fillExtrusionTranslateTransition(Function1<? super StyleTransition.Builder, Unit> block);

    FillExtrusionLayer fillExtrusionVerticalGradient(Expression fillExtrusionVerticalGradient);

    FillExtrusionLayer fillExtrusionVerticalGradient(boolean fillExtrusionVerticalGradient);

    FillExtrusionLayer fillExtrusionVerticalScale(double fillExtrusionVerticalScale);

    FillExtrusionLayer fillExtrusionVerticalScale(Expression fillExtrusionVerticalScale);

    FillExtrusionLayer fillExtrusionVerticalScaleTransition(StyleTransition options);

    FillExtrusionLayer fillExtrusionVerticalScaleTransition(Function1<? super StyleTransition.Builder, Unit> block);

    FillExtrusionLayer filter(Expression filter);

    FillExtrusionLayer maxZoom(double maxZoom);

    FillExtrusionLayer minZoom(double minZoom);

    FillExtrusionLayer slot(String slot);

    FillExtrusionLayer sourceLayer(String sourceLayer);

    FillExtrusionLayer visibility(Expression visibility);

    FillExtrusionLayer visibility(Visibility visibility);

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class DefaultImpls {
        public static FillExtrusionLayer fillExtrusionEdgeRadius$default(FillExtrusionLayerDsl fillExtrusionLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillExtrusionEdgeRadius");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return fillExtrusionLayerDsl.fillExtrusionEdgeRadius(d);
        }

        public static FillExtrusionLayer fillExtrusionAmbientOcclusionGroundAttenuation$default(FillExtrusionLayerDsl fillExtrusionLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillExtrusionAmbientOcclusionGroundAttenuation");
            }
            if ((i & 1) != 0) {
                d = 0.69d;
            }
            return fillExtrusionLayerDsl.fillExtrusionAmbientOcclusionGroundAttenuation(d);
        }

        public static FillExtrusionLayer fillExtrusionAmbientOcclusionGroundRadius$default(FillExtrusionLayerDsl fillExtrusionLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillExtrusionAmbientOcclusionGroundRadius");
            }
            if ((i & 1) != 0) {
                d = 3.0d;
            }
            return fillExtrusionLayerDsl.fillExtrusionAmbientOcclusionGroundRadius(d);
        }

        public static FillExtrusionLayer fillExtrusionAmbientOcclusionIntensity$default(FillExtrusionLayerDsl fillExtrusionLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillExtrusionAmbientOcclusionIntensity");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return fillExtrusionLayerDsl.fillExtrusionAmbientOcclusionIntensity(d);
        }

        public static FillExtrusionLayer fillExtrusionAmbientOcclusionRadius$default(FillExtrusionLayerDsl fillExtrusionLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillExtrusionAmbientOcclusionRadius");
            }
            if ((i & 1) != 0) {
                d = 3.0d;
            }
            return fillExtrusionLayerDsl.fillExtrusionAmbientOcclusionRadius(d);
        }

        public static FillExtrusionLayer fillExtrusionAmbientOcclusionWallRadius$default(FillExtrusionLayerDsl fillExtrusionLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillExtrusionAmbientOcclusionWallRadius");
            }
            if ((i & 1) != 0) {
                d = 3.0d;
            }
            return fillExtrusionLayerDsl.fillExtrusionAmbientOcclusionWallRadius(d);
        }

        public static FillExtrusionLayer fillExtrusionBase$default(FillExtrusionLayerDsl fillExtrusionLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillExtrusionBase");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return fillExtrusionLayerDsl.fillExtrusionBase(d);
        }

        public static FillExtrusionLayer fillExtrusionBaseAlignment$default(FillExtrusionLayerDsl fillExtrusionLayerDsl, FillExtrusionBaseAlignment fillExtrusionBaseAlignment, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillExtrusionBaseAlignment");
            }
            if ((i & 1) != 0) {
                fillExtrusionBaseAlignment = FillExtrusionBaseAlignment.TERRAIN;
            }
            return fillExtrusionLayerDsl.fillExtrusionBaseAlignment(fillExtrusionBaseAlignment);
        }

        public static FillExtrusionLayer fillExtrusionColor$default(FillExtrusionLayerDsl fillExtrusionLayerDsl, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillExtrusionColor");
            }
            if ((i & 1) != 0) {
                str = "#000000";
            }
            return fillExtrusionLayerDsl.fillExtrusionColor(str);
        }

        public static FillExtrusionLayer fillExtrusionCutoffFadeRange$default(FillExtrusionLayerDsl fillExtrusionLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillExtrusionCutoffFadeRange");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return fillExtrusionLayerDsl.fillExtrusionCutoffFadeRange(d);
        }

        public static FillExtrusionLayer fillExtrusionEmissiveStrength$default(FillExtrusionLayerDsl fillExtrusionLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillExtrusionEmissiveStrength");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return fillExtrusionLayerDsl.fillExtrusionEmissiveStrength(d);
        }

        public static FillExtrusionLayer fillExtrusionFloodLightColor$default(FillExtrusionLayerDsl fillExtrusionLayerDsl, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillExtrusionFloodLightColor");
            }
            if ((i & 1) != 0) {
                str = AnimatableModel.DEFAULT_COLOR;
            }
            return fillExtrusionLayerDsl.fillExtrusionFloodLightColor(str);
        }

        public static FillExtrusionLayer fillExtrusionFloodLightGroundAttenuation$default(FillExtrusionLayerDsl fillExtrusionLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillExtrusionFloodLightGroundAttenuation");
            }
            if ((i & 1) != 0) {
                d = 0.69d;
            }
            return fillExtrusionLayerDsl.fillExtrusionFloodLightGroundAttenuation(d);
        }

        public static FillExtrusionLayer fillExtrusionFloodLightGroundRadius$default(FillExtrusionLayerDsl fillExtrusionLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillExtrusionFloodLightGroundRadius");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return fillExtrusionLayerDsl.fillExtrusionFloodLightGroundRadius(d);
        }

        public static FillExtrusionLayer fillExtrusionFloodLightIntensity$default(FillExtrusionLayerDsl fillExtrusionLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillExtrusionFloodLightIntensity");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return fillExtrusionLayerDsl.fillExtrusionFloodLightIntensity(d);
        }

        public static FillExtrusionLayer fillExtrusionFloodLightWallRadius$default(FillExtrusionLayerDsl fillExtrusionLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillExtrusionFloodLightWallRadius");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return fillExtrusionLayerDsl.fillExtrusionFloodLightWallRadius(d);
        }

        public static FillExtrusionLayer fillExtrusionHeight$default(FillExtrusionLayerDsl fillExtrusionLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillExtrusionHeight");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return fillExtrusionLayerDsl.fillExtrusionHeight(d);
        }

        public static FillExtrusionLayer fillExtrusionHeightAlignment$default(FillExtrusionLayerDsl fillExtrusionLayerDsl, FillExtrusionHeightAlignment fillExtrusionHeightAlignment, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillExtrusionHeightAlignment");
            }
            if ((i & 1) != 0) {
                fillExtrusionHeightAlignment = FillExtrusionHeightAlignment.FLAT;
            }
            return fillExtrusionLayerDsl.fillExtrusionHeightAlignment(fillExtrusionHeightAlignment);
        }

        public static FillExtrusionLayer fillExtrusionLineWidth$default(FillExtrusionLayerDsl fillExtrusionLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillExtrusionLineWidth");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return fillExtrusionLayerDsl.fillExtrusionLineWidth(d);
        }

        public static FillExtrusionLayer fillExtrusionOpacity$default(FillExtrusionLayerDsl fillExtrusionLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillExtrusionOpacity");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return fillExtrusionLayerDsl.fillExtrusionOpacity(d);
        }

        public static FillExtrusionLayer fillExtrusionPatternCrossFade$default(FillExtrusionLayerDsl fillExtrusionLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillExtrusionPatternCrossFade");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return fillExtrusionLayerDsl.fillExtrusionPatternCrossFade(d);
        }

        public static FillExtrusionLayer fillExtrusionRoundedRoof$default(FillExtrusionLayerDsl fillExtrusionLayerDsl, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillExtrusionRoundedRoof");
            }
            if ((i & 1) != 0) {
                z = true;
            }
            return fillExtrusionLayerDsl.fillExtrusionRoundedRoof(z);
        }

        public static FillExtrusionLayer fillExtrusionTranslate$default(FillExtrusionLayerDsl fillExtrusionLayerDsl, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillExtrusionTranslate");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(0.0d), Double.valueOf(0.0d)});
            }
            return fillExtrusionLayerDsl.fillExtrusionTranslate((List<Double>) list);
        }

        public static FillExtrusionLayer fillExtrusionTranslateAnchor$default(FillExtrusionLayerDsl fillExtrusionLayerDsl, FillExtrusionTranslateAnchor fillExtrusionTranslateAnchor, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillExtrusionTranslateAnchor");
            }
            if ((i & 1) != 0) {
                fillExtrusionTranslateAnchor = FillExtrusionTranslateAnchor.MAP;
            }
            return fillExtrusionLayerDsl.fillExtrusionTranslateAnchor(fillExtrusionTranslateAnchor);
        }

        public static FillExtrusionLayer fillExtrusionVerticalGradient$default(FillExtrusionLayerDsl fillExtrusionLayerDsl, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillExtrusionVerticalGradient");
            }
            if ((i & 1) != 0) {
                z = true;
            }
            return fillExtrusionLayerDsl.fillExtrusionVerticalGradient(z);
        }

        public static FillExtrusionLayer fillExtrusionVerticalScale$default(FillExtrusionLayerDsl fillExtrusionLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillExtrusionVerticalScale");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return fillExtrusionLayerDsl.fillExtrusionVerticalScale(d);
        }
    }
}
