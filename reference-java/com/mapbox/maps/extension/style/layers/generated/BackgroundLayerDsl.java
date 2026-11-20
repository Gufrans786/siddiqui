package com.mapbox.maps.extension.style.layers.generated;

import com.facebook.react.uimanager.ViewProps;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.properties.generated.BackgroundPitchAlignment;
import com.mapbox.maps.extension.style.layers.properties.generated.Visibility;
import com.mapbox.maps.extension.style.types.LayersDsl;
import com.mapbox.maps.extension.style.types.StyleTransition;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

@LayersDsl
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0004H&J\u0012\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0002\u001a\u00020\u0005H&J\u0012\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0002\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u0010\u0007\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0004H'J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0006H'J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0004H&J\u0012\u0010\u0010\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u0011H&J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u0010\u0012\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0004H&J\u0012\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u0011H&J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u0010\u0014\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0004H&J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0006H&J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0004H'J\u0012\u0010\u0016\u001a\u00020\u00032\b\b\u0002\u0010\u0016\u001a\u00020\u0017H'J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0011H&J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0011H&J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0006H&J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0004H&J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u001cH&¨\u0006\u001d"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/generated/BackgroundLayerDsl;", "", ViewProps.BACKGROUND_COLOR, "Lcom/mapbox/maps/extension/style/layers/generated/BackgroundLayer;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "", "", "backgroundColorTransition", "options", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "backgroundColorUseTheme", "backgroundEmissiveStrength", "", "backgroundEmissiveStrengthTransition", "backgroundOpacity", "backgroundOpacityTransition", "backgroundPattern", "backgroundPitchAlignment", "Lcom/mapbox/maps/extension/style/layers/properties/generated/BackgroundPitchAlignment;", "maxZoom", "minZoom", "slot", "visibility", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface BackgroundLayerDsl {
    BackgroundLayer backgroundColor(int backgroundColor);

    BackgroundLayer backgroundColor(Expression backgroundColor);

    BackgroundLayer backgroundColor(String backgroundColor);

    BackgroundLayer backgroundColorTransition(StyleTransition options);

    BackgroundLayer backgroundColorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    BackgroundLayer backgroundColorUseTheme(Expression backgroundColorUseTheme);

    BackgroundLayer backgroundColorUseTheme(String backgroundColorUseTheme);

    BackgroundLayer backgroundEmissiveStrength(double backgroundEmissiveStrength);

    BackgroundLayer backgroundEmissiveStrength(Expression backgroundEmissiveStrength);

    BackgroundLayer backgroundEmissiveStrengthTransition(StyleTransition options);

    BackgroundLayer backgroundEmissiveStrengthTransition(Function1<? super StyleTransition.Builder, Unit> block);

    BackgroundLayer backgroundOpacity(double backgroundOpacity);

    BackgroundLayer backgroundOpacity(Expression backgroundOpacity);

    BackgroundLayer backgroundOpacityTransition(StyleTransition options);

    BackgroundLayer backgroundOpacityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    BackgroundLayer backgroundPattern(Expression backgroundPattern);

    BackgroundLayer backgroundPattern(String backgroundPattern);

    BackgroundLayer backgroundPitchAlignment(Expression backgroundPitchAlignment);

    BackgroundLayer backgroundPitchAlignment(BackgroundPitchAlignment backgroundPitchAlignment);

    BackgroundLayer maxZoom(double maxZoom);

    BackgroundLayer minZoom(double minZoom);

    BackgroundLayer slot(String slot);

    BackgroundLayer visibility(Expression visibility);

    BackgroundLayer visibility(Visibility visibility);

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class DefaultImpls {
        public static BackgroundLayer backgroundColor$default(BackgroundLayerDsl backgroundLayerDsl, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: backgroundColor");
            }
            if ((i & 1) != 0) {
                str = "#000000";
            }
            return backgroundLayerDsl.backgroundColor(str);
        }

        public static BackgroundLayer backgroundEmissiveStrength$default(BackgroundLayerDsl backgroundLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: backgroundEmissiveStrength");
            }
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return backgroundLayerDsl.backgroundEmissiveStrength(d);
        }

        public static BackgroundLayer backgroundOpacity$default(BackgroundLayerDsl backgroundLayerDsl, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: backgroundOpacity");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return backgroundLayerDsl.backgroundOpacity(d);
        }

        public static BackgroundLayer backgroundPitchAlignment$default(BackgroundLayerDsl backgroundLayerDsl, BackgroundPitchAlignment backgroundPitchAlignment, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: backgroundPitchAlignment");
            }
            if ((i & 1) != 0) {
                backgroundPitchAlignment = BackgroundPitchAlignment.MAP;
            }
            return backgroundLayerDsl.backgroundPitchAlignment(backgroundPitchAlignment);
        }
    }
}
