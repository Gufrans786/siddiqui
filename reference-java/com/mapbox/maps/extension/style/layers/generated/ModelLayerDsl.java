package com.mapbox.maps.extension.style.layers.generated;

import com.facebook.react.uimanager.ViewProps;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.properties.generated.ModelElevationReference;
import com.mapbox.maps.extension.style.layers.properties.generated.ModelScaleMode;
import com.mapbox.maps.extension.style.layers.properties.generated.ModelType;
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
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0004H&J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0004H'J\u0012\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u0006H'J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH'J!\u0010\t\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H'J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0004H'J\u0012\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u0012H'J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0004H'J\u0012\u0010\u0013\u001a\u00020\u00032\b\b\u0001\u0010\u0013\u001a\u00020\u0014H'J\u0012\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u0015H'J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0004H'J\u0012\u0010\u0016\u001a\u00020\u00032\b\b\u0002\u0010\u0016\u001a\u00020\u0006H'J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH'J!\u0010\u0017\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H'J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH'J!\u0010\u0018\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H'J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0004H'J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0015H'J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0004H'J\u0012\u0010\u001a\u001a\u00020\u00032\b\b\u0002\u0010\u001a\u001a\u00020\u0006H'J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0004H'J\u0012\u0010\u001b\u001a\u00020\u00032\b\b\u0002\u0010\u001b\u001a\u00020\u001cH'J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u0004H'J\u0012\u0010\u001d\u001a\u00020\u00032\b\b\u0002\u0010\u001d\u001a\u00020\u0006H'J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH'J!\u0010\u001e\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H'J\u0010\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u0004H'J\u0018\u0010\u001f\u001a\u00020\u00032\u000e\b\u0002\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00060 H'J\u0010\u0010!\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH'J!\u0010!\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H'J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u0004H'J\u0012\u0010\"\u001a\u00020\u00032\b\b\u0002\u0010\"\u001a\u00020\u0015H'J\u0010\u0010#\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u0004H'J\u0012\u0010#\u001a\u00020\u00032\b\b\u0002\u0010#\u001a\u00020\u0006H'J\u0010\u0010$\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH'J!\u0010$\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H'J\u0010\u0010%\u001a\u00020\u00032\u0006\u0010%\u001a\u00020\u0004H'J\u0012\u0010%\u001a\u00020\u00032\b\b\u0002\u0010%\u001a\u00020\u0012H'J\u0010\u0010&\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u0004H'J\u0018\u0010&\u001a\u00020\u00032\u000e\b\u0002\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00060 H'J\u0010\u0010'\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH'J!\u0010'\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H'J\u0010\u0010(\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\u0004H'J\u0012\u0010(\u001a\u00020\u00032\b\b\u0002\u0010(\u001a\u00020\u0006H'J\u0010\u0010)\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH'J!\u0010)\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H'J\u0010\u0010*\u001a\u00020\u00032\u0006\u0010*\u001a\u00020\u0004H'J\u0018\u0010*\u001a\u00020\u00032\u000e\b\u0002\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00060 H'J\u0010\u0010+\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u0004H'J\u0012\u0010+\u001a\u00020\u00032\b\b\u0002\u0010+\u001a\u00020,H'J\u0010\u0010-\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH'J!\u0010-\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H'J\u0010\u0010.\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u0004H'J\u0018\u0010.\u001a\u00020\u00032\u000e\b\u0002\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00060 H'J\u0010\u0010/\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH'J!\u0010/\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H'J\u0010\u00100\u001a\u00020\u00032\u0006\u00100\u001a\u00020\u0004H'J\u0012\u00100\u001a\u00020\u00032\b\b\u0002\u00100\u001a\u000201H'J\u0010\u00102\u001a\u00020\u00032\u0006\u00102\u001a\u00020\u0015H&J\u0010\u00103\u001a\u00020\u00032\u0006\u00103\u001a\u00020\u0015H&J\u0010\u00104\u001a\u00020\u00032\u0006\u00104\u001a\u00020\u0004H&J\u0010\u00104\u001a\u00020\u00032\u0006\u00104\u001a\u000205H&¨\u00066"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/ModelLayerDsl;", "", ViewProps.FILTER, "Lcom/mapbox/maps/extension/style/layers/generated/ModelLayer;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "maxZoom", "", "minZoom", "modelAmbientOcclusionIntensity", "modelAmbientOcclusionIntensityTransition", "options", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "modelCastShadows", "", "modelColor", "", "", "modelColorMixIntensity", "modelColorMixIntensityTransition", "modelColorTransition", "modelColorUseTheme", "modelCutoffFadeRange", "modelElevationReference", "Lcom/mapbox/maps/extension/style/layers/properties/generated/ModelElevationReference;", "modelEmissiveStrength", "modelEmissiveStrengthTransition", "modelHeightBasedEmissiveStrengthMultiplier", "", "modelHeightBasedEmissiveStrengthMultiplierTransition", "modelId", "modelOpacity", "modelOpacityTransition", "modelReceiveShadows", "modelRotation", "modelRotationTransition", "modelRoughness", "modelRoughnessTransition", "modelScale", "modelScaleMode", "Lcom/mapbox/maps/extension/style/layers/properties/generated/ModelScaleMode;", "modelScaleTransition", "modelTranslation", "modelTranslationTransition", "modelType", "Lcom/mapbox/maps/extension/style/layers/properties/generated/ModelType;", "slot", "sourceLayer", "visibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface ModelLayerDsl {
    ModelLayer filter(Expression filter);

    ModelLayer maxZoom(double maxZoom);

    ModelLayer minZoom(double minZoom);

    ModelLayer modelAmbientOcclusionIntensity(double modelAmbientOcclusionIntensity);

    ModelLayer modelAmbientOcclusionIntensity(Expression modelAmbientOcclusionIntensity);

    ModelLayer modelAmbientOcclusionIntensityTransition(StyleTransition options);

    ModelLayer modelAmbientOcclusionIntensityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    ModelLayer modelCastShadows(Expression modelCastShadows);

    ModelLayer modelCastShadows(boolean modelCastShadows);

    ModelLayer modelColor(int modelColor);

    ModelLayer modelColor(Expression modelColor);

    ModelLayer modelColor(String modelColor);

    ModelLayer modelColorMixIntensity(double modelColorMixIntensity);

    ModelLayer modelColorMixIntensity(Expression modelColorMixIntensity);

    ModelLayer modelColorMixIntensityTransition(StyleTransition options);

    ModelLayer modelColorMixIntensityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    ModelLayer modelColorTransition(StyleTransition options);

    ModelLayer modelColorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    ModelLayer modelColorUseTheme(Expression modelColorUseTheme);

    ModelLayer modelColorUseTheme(String modelColorUseTheme);

    ModelLayer modelCutoffFadeRange(double modelCutoffFadeRange);

    ModelLayer modelCutoffFadeRange(Expression modelCutoffFadeRange);

    ModelLayer modelElevationReference(Expression modelElevationReference);

    ModelLayer modelElevationReference(ModelElevationReference modelElevationReference);

    ModelLayer modelEmissiveStrength(double modelEmissiveStrength);

    ModelLayer modelEmissiveStrength(Expression modelEmissiveStrength);

    ModelLayer modelEmissiveStrengthTransition(StyleTransition options);

    ModelLayer modelEmissiveStrengthTransition(Function1<? super StyleTransition.Builder, Unit> block);

    ModelLayer modelHeightBasedEmissiveStrengthMultiplier(Expression modelHeightBasedEmissiveStrengthMultiplier);

    ModelLayer modelHeightBasedEmissiveStrengthMultiplier(List<Double> modelHeightBasedEmissiveStrengthMultiplier);

    ModelLayer modelHeightBasedEmissiveStrengthMultiplierTransition(StyleTransition options);

    ModelLayer modelHeightBasedEmissiveStrengthMultiplierTransition(Function1<? super StyleTransition.Builder, Unit> block);

    ModelLayer modelId(Expression modelId);

    ModelLayer modelId(String modelId);

    ModelLayer modelOpacity(double modelOpacity);

    ModelLayer modelOpacity(Expression modelOpacity);

    ModelLayer modelOpacityTransition(StyleTransition options);

    ModelLayer modelOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    ModelLayer modelReceiveShadows(Expression modelReceiveShadows);

    ModelLayer modelReceiveShadows(boolean modelReceiveShadows);

    ModelLayer modelRotation(Expression modelRotation);

    ModelLayer modelRotation(List<Double> modelRotation);

    ModelLayer modelRotationTransition(StyleTransition options);

    ModelLayer modelRotationTransition(Function1<? super StyleTransition.Builder, Unit> block);

    ModelLayer modelRoughness(double modelRoughness);

    ModelLayer modelRoughness(Expression modelRoughness);

    ModelLayer modelRoughnessTransition(StyleTransition options);

    ModelLayer modelRoughnessTransition(Function1<? super StyleTransition.Builder, Unit> block);

    ModelLayer modelScale(Expression modelScale);

    ModelLayer modelScale(List<Double> modelScale);

    ModelLayer modelScaleMode(Expression modelScaleMode);

    ModelLayer modelScaleMode(ModelScaleMode modelScaleMode);

    ModelLayer modelScaleTransition(StyleTransition options);

    ModelLayer modelScaleTransition(Function1<? super StyleTransition.Builder, Unit> block);

    ModelLayer modelTranslation(Expression modelTranslation);

    ModelLayer modelTranslation(List<Double> modelTranslation);

    ModelLayer modelTranslationTransition(StyleTransition options);

    ModelLayer modelTranslationTransition(Function1<? super StyleTransition.Builder, Unit> block);

    ModelLayer modelType(Expression modelType);

    ModelLayer modelType(ModelType modelType);

    ModelLayer slot(String slot);

    ModelLayer sourceLayer(String sourceLayer);

    ModelLayer visibility(Expression visibility);

    ModelLayer visibility(Visibility visibility);

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class DefaultImpls {
        public static ModelLayer modelId$default(ModelLayerDsl modelLayerDsl, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: modelId");
            }
            if ((i & 1) != 0) {
                str = "";
            }
            return modelLayerDsl.modelId(str);
        }

        public static ModelLayer modelAmbientOcclusionIntensity$default(ModelLayerDsl modelLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: modelAmbientOcclusionIntensity");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return modelLayerDsl.modelAmbientOcclusionIntensity(d);
        }

        public static ModelLayer modelCastShadows$default(ModelLayerDsl modelLayerDsl, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: modelCastShadows");
            }
            if ((i & 1) != 0) {
                z = true;
            }
            return modelLayerDsl.modelCastShadows(z);
        }

        public static ModelLayer modelColor$default(ModelLayerDsl modelLayerDsl, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: modelColor");
            }
            if ((i & 1) != 0) {
                str = AnimatableModel.DEFAULT_COLOR;
            }
            return modelLayerDsl.modelColor(str);
        }

        public static ModelLayer modelColorMixIntensity$default(ModelLayerDsl modelLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: modelColorMixIntensity");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return modelLayerDsl.modelColorMixIntensity(d);
        }

        public static ModelLayer modelCutoffFadeRange$default(ModelLayerDsl modelLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: modelCutoffFadeRange");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return modelLayerDsl.modelCutoffFadeRange(d);
        }

        public static ModelLayer modelElevationReference$default(ModelLayerDsl modelLayerDsl, ModelElevationReference modelElevationReference, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: modelElevationReference");
            }
            if ((i & 1) != 0) {
                modelElevationReference = ModelElevationReference.GROUND;
            }
            return modelLayerDsl.modelElevationReference(modelElevationReference);
        }

        public static ModelLayer modelEmissiveStrength$default(ModelLayerDsl modelLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: modelEmissiveStrength");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return modelLayerDsl.modelEmissiveStrength(d);
        }

        public static ModelLayer modelHeightBasedEmissiveStrengthMultiplier$default(ModelLayerDsl modelLayerDsl, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: modelHeightBasedEmissiveStrengthMultiplier");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(1.0d), Double.valueOf(1.0d), Double.valueOf(1.0d), Double.valueOf(1.0d), Double.valueOf(0.0d)});
            }
            return modelLayerDsl.modelHeightBasedEmissiveStrengthMultiplier((List<Double>) list);
        }

        public static ModelLayer modelOpacity$default(ModelLayerDsl modelLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: modelOpacity");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return modelLayerDsl.modelOpacity(d);
        }

        public static ModelLayer modelReceiveShadows$default(ModelLayerDsl modelLayerDsl, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: modelReceiveShadows");
            }
            if ((i & 1) != 0) {
                z = true;
            }
            return modelLayerDsl.modelReceiveShadows(z);
        }

        public static ModelLayer modelRotation$default(ModelLayerDsl modelLayerDsl, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: modelRotation");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(0.0d), Double.valueOf(0.0d), Double.valueOf(0.0d)});
            }
            return modelLayerDsl.modelRotation((List<Double>) list);
        }

        public static ModelLayer modelRoughness$default(ModelLayerDsl modelLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: modelRoughness");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return modelLayerDsl.modelRoughness(d);
        }

        public static ModelLayer modelScale$default(ModelLayerDsl modelLayerDsl, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: modelScale");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(1.0d), Double.valueOf(1.0d), Double.valueOf(1.0d)});
            }
            return modelLayerDsl.modelScale((List<Double>) list);
        }

        public static ModelLayer modelScaleMode$default(ModelLayerDsl modelLayerDsl, ModelScaleMode modelScaleMode, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: modelScaleMode");
            }
            if ((i & 1) != 0) {
                modelScaleMode = ModelScaleMode.MAP;
            }
            return modelLayerDsl.modelScaleMode(modelScaleMode);
        }

        public static ModelLayer modelTranslation$default(ModelLayerDsl modelLayerDsl, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: modelTranslation");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(0.0d), Double.valueOf(0.0d), Double.valueOf(0.0d)});
            }
            return modelLayerDsl.modelTranslation((List<Double>) list);
        }

        public static ModelLayer modelType$default(ModelLayerDsl modelLayerDsl, ModelType modelType, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: modelType");
            }
            if ((i & 1) != 0) {
                modelType = ModelType.COMMON_3D;
            }
            return modelLayerDsl.modelType(modelType);
        }
    }
}
