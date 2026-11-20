package com.mapbox.maps.extension.style.light.generated;

import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.types.LightDsl;
import com.mapbox.maps.extension.style.types.StyleTransition;
import com.mapbox.maps.plugin.locationcomponent.model.AnimatableModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

@LightDsl
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0004H&J\u0012\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0002\u001a\u00020\u0005H&J\u0012\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0002\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u0010\u0007\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0004H'J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0006H'J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0004H&J\u0012\u0010\u0010\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u0011H&J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J!\u0010\u0012\u001a\u00020\u00032\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b¢\u0006\u0002\b\u000eH&¨\u0006\u0013"}, d2 = {"Lcom/mapbox/maps/extension/style/light/generated/AmbientLightDslReceiver;", "", "color", "Lcom/mapbox/maps/extension/style/light/generated/AmbientLight;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "", "", "colorTransition", "options", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "colorUseTheme", "intensity", "", "intensityTransition", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface AmbientLightDslReceiver {
    AmbientLight color(int color);

    AmbientLight color(Expression color);

    AmbientLight color(String color);

    AmbientLight colorTransition(StyleTransition options);

    AmbientLight colorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    AmbientLight colorUseTheme(Expression colorUseTheme);

    AmbientLight colorUseTheme(String colorUseTheme);

    AmbientLight intensity(double intensity);

    AmbientLight intensity(Expression intensity);

    AmbientLight intensityTransition(StyleTransition options);

    AmbientLight intensityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class DefaultImpls {
        public static AmbientLight color$default(AmbientLightDslReceiver ambientLightDslReceiver, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: color");
            }
            if ((i & 1) != 0) {
                str = AnimatableModel.DEFAULT_COLOR;
            }
            return ambientLightDslReceiver.color(str);
        }

        public static AmbientLight intensity$default(AmbientLightDslReceiver ambientLightDslReceiver, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: intensity");
            }
            if ((i & 1) != 0) {
                d = 0.5d;
            }
            return ambientLightDslReceiver.intensity(d);
        }
    }
}
