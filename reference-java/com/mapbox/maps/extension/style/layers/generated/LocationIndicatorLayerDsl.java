package com.mapbox.maps.extension.style.layers.generated;

import com.mapbox.maps.extension.style.expressions.generated.Expression;
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
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010 \n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0004H&J\u0012\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0002\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0004H&J\u0012\u0010\u0006\u001a\u00020\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u0007H&J\u0012\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\bH&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J!\u0010\t\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0004H'J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\bH'J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0004H&J\u0012\u0010\u0012\u001a\u00020\u00032\b\b\u0001\u0010\u0012\u001a\u00020\u0007H&J\u0012\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\bH&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J!\u0010\u0013\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H&J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0004H'J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\bH'J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J!\u0010\u0015\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H&J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0004H&J\u0012\u0010\u0016\u001a\u00020\u00032\b\b\u0002\u0010\u0016\u001a\u00020\u0005H&J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0004H&J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\bH&J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0004H&J\u0012\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0018\u001a\u00020\u0005H&J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J!\u0010\u0019\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H&J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J!\u0010\u001a\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H&J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0004H&J\u0012\u0010\u001b\u001a\u00020\u00032\b\b\u0001\u0010\u001b\u001a\u00020\u0007H&J\u0012\u0010\u001b\u001a\u00020\u00032\b\b\u0002\u0010\u001b\u001a\u00020\bH&J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J!\u0010\u001c\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H&J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u0004H'J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\bH'J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0004H&J\u0018\u0010\u001e\u001a\u00020\u00032\u000e\b\u0002\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00050\u001fH&J\u0010\u0010 \u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J!\u0010 \u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H&J\u0010\u0010!\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u0004H&J\u0012\u0010!\u001a\u00020\u00032\b\b\u0002\u0010!\u001a\u00020\u0005H&J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J!\u0010\"\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H&J\u0010\u0010#\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u0004H&J\u0012\u0010#\u001a\u00020\u00032\b\b\u0002\u0010#\u001a\u00020\u0005H&J\u0010\u0010$\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\u0004H&J\u0018\u0010$\u001a\u00020\u00032\u000e\b\u0002\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00050\u001fH&J\u0010\u0010%\u001a\u00020\u00032\u0006\u0010%\u001a\u00020\u0004H&J\u0012\u0010%\u001a\u00020\u00032\b\b\u0002\u0010%\u001a\u00020\u0005H&J\u0010\u0010&\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J!\u0010&\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H&J\u0010\u0010'\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J!\u0010'\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H&J\u0010\u0010(\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\u0005H&J\u0010\u0010)\u001a\u00020\u00032\u0006\u0010)\u001a\u00020\u0005H&J\u0010\u0010*\u001a\u00020\u00032\u0006\u0010*\u001a\u00020\u0004H&J\u0012\u0010*\u001a\u00020\u00032\b\b\u0002\u0010*\u001a\u00020\u0005H&J\u0010\u0010+\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u0004H&J\u0010\u0010+\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\bH&J\u0010\u0010,\u001a\u00020\u00032\u0006\u0010,\u001a\u00020\u0004H&J\u0012\u0010,\u001a\u00020\u00032\b\b\u0002\u0010,\u001a\u00020\u0005H&J\u0010\u0010-\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J!\u0010-\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H&J\u0010\u0010.\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\bH&J\u0010\u0010/\u001a\u00020\u00032\u0006\u0010/\u001a\u00020\u0004H&J\u0010\u0010/\u001a\u00020\u00032\u0006\u0010/\u001a\u00020\bH&J\u0010\u00100\u001a\u00020\u00032\u0006\u00100\u001a\u00020\u0004H&J\u0012\u00100\u001a\u00020\u00032\b\b\u0002\u00100\u001a\u00020\u0005H&J\u0010\u00101\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J!\u00101\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H&J\u0010\u00102\u001a\u00020\u00032\u0006\u00102\u001a\u00020\u0004H&J\u0010\u00102\u001a\u00020\u00032\u0006\u00102\u001a\u000203H&¨\u00064"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/LocationIndicatorLayerDsl;", "", "accuracyRadius", "Lcom/mapbox/maps/extension/style/layers/generated/LocationIndicatorLayer;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "", "accuracyRadiusBorderColor", "", "", "accuracyRadiusBorderColorTransition", "options", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "accuracyRadiusBorderColorUseTheme", "accuracyRadiusColor", "accuracyRadiusColorTransition", "accuracyRadiusColorUseTheme", "accuracyRadiusTransition", "bearing", "bearingImage", "bearingImageSize", "bearingImageSizeTransition", "bearingTransition", "emphasisCircleColor", "emphasisCircleColorTransition", "emphasisCircleColorUseTheme", "emphasisCircleGlowRange", "", "emphasisCircleGlowRangeTransition", "emphasisCircleRadius", "emphasisCircleRadiusTransition", "imagePitchDisplacement", "location", "locationIndicatorOpacity", "locationIndicatorOpacityTransition", "locationTransition", "maxZoom", "minZoom", "perspectiveCompensation", "shadowImage", "shadowImageSize", "shadowImageSizeTransition", "slot", "topImage", "topImageSize", "topImageSizeTransition", "visibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface LocationIndicatorLayerDsl {
    LocationIndicatorLayer accuracyRadius(double accuracyRadius);

    LocationIndicatorLayer accuracyRadius(Expression accuracyRadius);

    LocationIndicatorLayer accuracyRadiusBorderColor(int accuracyRadiusBorderColor);

    LocationIndicatorLayer accuracyRadiusBorderColor(Expression accuracyRadiusBorderColor);

    LocationIndicatorLayer accuracyRadiusBorderColor(String accuracyRadiusBorderColor);

    LocationIndicatorLayer accuracyRadiusBorderColorTransition(StyleTransition options);

    LocationIndicatorLayer accuracyRadiusBorderColorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    LocationIndicatorLayer accuracyRadiusBorderColorUseTheme(Expression accuracyRadiusBorderColorUseTheme);

    LocationIndicatorLayer accuracyRadiusBorderColorUseTheme(String accuracyRadiusBorderColorUseTheme);

    LocationIndicatorLayer accuracyRadiusColor(int accuracyRadiusColor);

    LocationIndicatorLayer accuracyRadiusColor(Expression accuracyRadiusColor);

    LocationIndicatorLayer accuracyRadiusColor(String accuracyRadiusColor);

    LocationIndicatorLayer accuracyRadiusColorTransition(StyleTransition options);

    LocationIndicatorLayer accuracyRadiusColorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    LocationIndicatorLayer accuracyRadiusColorUseTheme(Expression accuracyRadiusColorUseTheme);

    LocationIndicatorLayer accuracyRadiusColorUseTheme(String accuracyRadiusColorUseTheme);

    LocationIndicatorLayer accuracyRadiusTransition(StyleTransition options);

    LocationIndicatorLayer accuracyRadiusTransition(Function1<? super StyleTransition.Builder, Unit> block);

    LocationIndicatorLayer bearing(double bearing);

    LocationIndicatorLayer bearing(Expression bearing);

    LocationIndicatorLayer bearingImage(Expression bearingImage);

    LocationIndicatorLayer bearingImage(String bearingImage);

    LocationIndicatorLayer bearingImageSize(double bearingImageSize);

    LocationIndicatorLayer bearingImageSize(Expression bearingImageSize);

    LocationIndicatorLayer bearingImageSizeTransition(StyleTransition options);

    LocationIndicatorLayer bearingImageSizeTransition(Function1<? super StyleTransition.Builder, Unit> block);

    LocationIndicatorLayer bearingTransition(StyleTransition options);

    LocationIndicatorLayer bearingTransition(Function1<? super StyleTransition.Builder, Unit> block);

    LocationIndicatorLayer emphasisCircleColor(int emphasisCircleColor);

    LocationIndicatorLayer emphasisCircleColor(Expression emphasisCircleColor);

    LocationIndicatorLayer emphasisCircleColor(String emphasisCircleColor);

    LocationIndicatorLayer emphasisCircleColorTransition(StyleTransition options);

    LocationIndicatorLayer emphasisCircleColorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    LocationIndicatorLayer emphasisCircleColorUseTheme(Expression emphasisCircleColorUseTheme);

    LocationIndicatorLayer emphasisCircleColorUseTheme(String emphasisCircleColorUseTheme);

    LocationIndicatorLayer emphasisCircleGlowRange(Expression emphasisCircleGlowRange);

    LocationIndicatorLayer emphasisCircleGlowRange(List<Double> emphasisCircleGlowRange);

    LocationIndicatorLayer emphasisCircleGlowRangeTransition(StyleTransition options);

    LocationIndicatorLayer emphasisCircleGlowRangeTransition(Function1<? super StyleTransition.Builder, Unit> block);

    LocationIndicatorLayer emphasisCircleRadius(double emphasisCircleRadius);

    LocationIndicatorLayer emphasisCircleRadius(Expression emphasisCircleRadius);

    LocationIndicatorLayer emphasisCircleRadiusTransition(StyleTransition options);

    LocationIndicatorLayer emphasisCircleRadiusTransition(Function1<? super StyleTransition.Builder, Unit> block);

    LocationIndicatorLayer imagePitchDisplacement(double imagePitchDisplacement);

    LocationIndicatorLayer imagePitchDisplacement(Expression imagePitchDisplacement);

    LocationIndicatorLayer location(Expression location);

    LocationIndicatorLayer location(List<Double> location);

    LocationIndicatorLayer locationIndicatorOpacity(double locationIndicatorOpacity);

    LocationIndicatorLayer locationIndicatorOpacity(Expression locationIndicatorOpacity);

    LocationIndicatorLayer locationIndicatorOpacityTransition(StyleTransition options);

    LocationIndicatorLayer locationIndicatorOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    LocationIndicatorLayer locationTransition(StyleTransition options);

    LocationIndicatorLayer locationTransition(Function1<? super StyleTransition.Builder, Unit> block);

    LocationIndicatorLayer maxZoom(double maxZoom);

    LocationIndicatorLayer minZoom(double minZoom);

    LocationIndicatorLayer perspectiveCompensation(double perspectiveCompensation);

    LocationIndicatorLayer perspectiveCompensation(Expression perspectiveCompensation);

    LocationIndicatorLayer shadowImage(Expression shadowImage);

    LocationIndicatorLayer shadowImage(String shadowImage);

    LocationIndicatorLayer shadowImageSize(double shadowImageSize);

    LocationIndicatorLayer shadowImageSize(Expression shadowImageSize);

    LocationIndicatorLayer shadowImageSizeTransition(StyleTransition options);

    LocationIndicatorLayer shadowImageSizeTransition(Function1<? super StyleTransition.Builder, Unit> block);

    LocationIndicatorLayer slot(String slot);

    LocationIndicatorLayer topImage(Expression topImage);

    LocationIndicatorLayer topImage(String topImage);

    LocationIndicatorLayer topImageSize(double topImageSize);

    LocationIndicatorLayer topImageSize(Expression topImageSize);

    LocationIndicatorLayer topImageSizeTransition(StyleTransition options);

    LocationIndicatorLayer topImageSizeTransition(Function1<? super StyleTransition.Builder, Unit> block);

    LocationIndicatorLayer visibility(Expression visibility);

    LocationIndicatorLayer visibility(Visibility visibility);

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class DefaultImpls {
        public static LocationIndicatorLayer accuracyRadius$default(LocationIndicatorLayerDsl locationIndicatorLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: accuracyRadius");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return locationIndicatorLayerDsl.accuracyRadius(d);
        }

        public static LocationIndicatorLayer accuracyRadiusBorderColor$default(LocationIndicatorLayerDsl locationIndicatorLayerDsl, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: accuracyRadiusBorderColor");
            }
            if ((i & 1) != 0) {
                str = AnimatableModel.DEFAULT_COLOR;
            }
            return locationIndicatorLayerDsl.accuracyRadiusBorderColor(str);
        }

        public static LocationIndicatorLayer accuracyRadiusColor$default(LocationIndicatorLayerDsl locationIndicatorLayerDsl, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: accuracyRadiusColor");
            }
            if ((i & 1) != 0) {
                str = AnimatableModel.DEFAULT_COLOR;
            }
            return locationIndicatorLayerDsl.accuracyRadiusColor(str);
        }

        public static LocationIndicatorLayer bearing$default(LocationIndicatorLayerDsl locationIndicatorLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: bearing");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return locationIndicatorLayerDsl.bearing(d);
        }

        public static LocationIndicatorLayer bearingImageSize$default(LocationIndicatorLayerDsl locationIndicatorLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: bearingImageSize");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return locationIndicatorLayerDsl.bearingImageSize(d);
        }

        public static LocationIndicatorLayer emphasisCircleColor$default(LocationIndicatorLayerDsl locationIndicatorLayerDsl, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: emphasisCircleColor");
            }
            if ((i & 1) != 0) {
                str = AnimatableModel.DEFAULT_COLOR;
            }
            return locationIndicatorLayerDsl.emphasisCircleColor(str);
        }

        public static LocationIndicatorLayer emphasisCircleGlowRange$default(LocationIndicatorLayerDsl locationIndicatorLayerDsl, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: emphasisCircleGlowRange");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(0.0d), Double.valueOf(0.0d)});
            }
            return locationIndicatorLayerDsl.emphasisCircleGlowRange((List<Double>) list);
        }

        public static LocationIndicatorLayer emphasisCircleRadius$default(LocationIndicatorLayerDsl locationIndicatorLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: emphasisCircleRadius");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return locationIndicatorLayerDsl.emphasisCircleRadius(d);
        }

        public static LocationIndicatorLayer imagePitchDisplacement$default(LocationIndicatorLayerDsl locationIndicatorLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: imagePitchDisplacement");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return locationIndicatorLayerDsl.imagePitchDisplacement(d);
        }

        public static LocationIndicatorLayer location$default(LocationIndicatorLayerDsl locationIndicatorLayerDsl, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: location");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(0.0d), Double.valueOf(0.0d), Double.valueOf(0.0d)});
            }
            return locationIndicatorLayerDsl.location((List<Double>) list);
        }

        public static LocationIndicatorLayer locationIndicatorOpacity$default(LocationIndicatorLayerDsl locationIndicatorLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: locationIndicatorOpacity");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return locationIndicatorLayerDsl.locationIndicatorOpacity(d);
        }

        public static LocationIndicatorLayer perspectiveCompensation$default(LocationIndicatorLayerDsl locationIndicatorLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: perspectiveCompensation");
            }
            if ((i & 1) != 0) {
                d = 0.85d;
            }
            return locationIndicatorLayerDsl.perspectiveCompensation(d);
        }

        public static LocationIndicatorLayer shadowImageSize$default(LocationIndicatorLayerDsl locationIndicatorLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: shadowImageSize");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return locationIndicatorLayerDsl.shadowImageSize(d);
        }

        public static LocationIndicatorLayer topImageSize$default(LocationIndicatorLayerDsl locationIndicatorLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: topImageSize");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return locationIndicatorLayerDsl.topImageSize(d);
        }
    }
}
