package com.mapbox.maps.extension.style.light.generated;

import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.layers.properties.generated.Anchor;
import com.mapbox.maps.extension.style.light.LightPosition;
import com.mapbox.maps.extension.style.types.LightDsl;
import com.mapbox.maps.extension.style.types.StyleTransition;
import com.mapbox.maps.plugin.locationcomponent.model.AnimatableModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

@LightDsl
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0004H&J\u0012\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0002\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0004H&J\u0012\u0010\u0006\u001a\u00020\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u0007H&J\u0012\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\bH&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J!\u0010\t\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0004H'J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\bH'J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0004H&J\u0012\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u0013H&J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J!\u0010\u0014\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H&J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0004H&J\u0012\u0010\u0015\u001a\u00020\u00032\b\b\u0002\u0010\u0015\u001a\u00020\u0016H&J \u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0013H&J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J!\u0010\u001a\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H&¨\u0006\u001b"}, d2 = {"Lcom/mapbox/maps/extension/style/light/generated/FlatLightDslReceiver;", "", "anchor", "Lcom/mapbox/maps/extension/style/light/generated/FlatLight;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "Lcom/mapbox/maps/extension/style/layers/properties/generated/Anchor;", "color", "", "", "colorTransition", "options", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "colorUseTheme", "intensity", "", "intensityTransition", "position", "Lcom/mapbox/maps/extension/style/light/LightPosition;", "radialCoordinate", "azimuthalAngle", "polarAngle", "positionTransition", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface FlatLightDslReceiver {
    FlatLight anchor(Expression anchor);

    FlatLight anchor(Anchor anchor);

    FlatLight color(int color);

    FlatLight color(Expression color);

    FlatLight color(String color);

    FlatLight colorTransition(StyleTransition options);

    FlatLight colorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    FlatLight colorUseTheme(Expression colorUseTheme);

    FlatLight colorUseTheme(String colorUseTheme);

    FlatLight intensity(double intensity);

    FlatLight intensity(Expression intensity);

    FlatLight intensityTransition(StyleTransition options);

    FlatLight intensityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    FlatLight position(double radialCoordinate, double azimuthalAngle, double polarAngle);

    FlatLight position(Expression position);

    FlatLight position(LightPosition position);

    FlatLight positionTransition(StyleTransition options);

    FlatLight positionTransition(Function1<? super StyleTransition.Builder, Unit> block);

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class DefaultImpls {
        public static FlatLight anchor$default(FlatLightDslReceiver flatLightDslReceiver, Anchor anchor, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: anchor");
            }
            if ((i & 1) != 0) {
                anchor = Anchor.VIEWPORT;
            }
            return flatLightDslReceiver.anchor(anchor);
        }

        public static FlatLight color$default(FlatLightDslReceiver flatLightDslReceiver, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: color");
            }
            if ((i & 1) != 0) {
                str = AnimatableModel.DEFAULT_COLOR;
            }
            return flatLightDslReceiver.color(str);
        }

        public static FlatLight intensity$default(FlatLightDslReceiver flatLightDslReceiver, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: intensity");
            }
            if ((i & 1) != 0) {
                d = 0.5d;
            }
            return flatLightDslReceiver.intensity(d);
        }

        public static FlatLight position$default(FlatLightDslReceiver flatLightDslReceiver, LightPosition lightPosition, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: position");
            }
            if ((i & 1) != 0) {
                lightPosition = new LightPosition(1.15d, 210.0d, 30.0d);
            }
            return flatLightDslReceiver.position(lightPosition);
        }
    }
}
