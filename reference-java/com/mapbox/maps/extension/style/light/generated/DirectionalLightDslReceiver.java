package com.mapbox.maps.extension.style.light.generated;

import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.types.LightDsl;
import com.mapbox.maps.extension.style.types.StyleTransition;
import com.mapbox.maps.plugin.locationcomponent.model.AnimatableModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;

@LightDsl
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u0006\n\u0002\b\u0006\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0004H&J\u0012\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0002\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0004H&J\u0012\u0010\u0006\u001a\u00020\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u0007H&J\u0012\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\bH&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J!\u0010\t\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0004H'J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\bH'J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0004H&J\u0018\u0010\u0012\u001a\u00020\u00032\u000e\b\u0002\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H&J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J!\u0010\u0015\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H&J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0004H&J\u0012\u0010\u0016\u001a\u00020\u00032\b\b\u0002\u0010\u0016\u001a\u00020\u0014H&J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J!\u0010\u0017\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H&J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0004H&J\u0012\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0018\u001a\u00020\u0014H&J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J!\u0010\u0019\u001a\u00020\u00032\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H&¨\u0006\u001a"}, d2 = {"Lcom/mapbox/maps/extension/style/light/generated/DirectionalLightDslReceiver;", "", "castShadows", "Lcom/mapbox/maps/extension/style/light/generated/DirectionalLight;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "", "color", "", "", "colorTransition", "options", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "colorUseTheme", "direction", "", "", "directionTransition", "intensity", "intensityTransition", "shadowIntensity", "shadowIntensityTransition", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface DirectionalLightDslReceiver {
    DirectionalLight castShadows(Expression castShadows);

    DirectionalLight castShadows(boolean castShadows);

    DirectionalLight color(int color);

    DirectionalLight color(Expression color);

    DirectionalLight color(String color);

    DirectionalLight colorTransition(StyleTransition options);

    DirectionalLight colorTransition(Function1<? super StyleTransition.Builder, Unit> block);

    DirectionalLight colorUseTheme(Expression colorUseTheme);

    DirectionalLight colorUseTheme(String colorUseTheme);

    DirectionalLight direction(Expression direction);

    DirectionalLight direction(List<Double> direction);

    DirectionalLight directionTransition(StyleTransition options);

    DirectionalLight directionTransition(Function1<? super StyleTransition.Builder, Unit> block);

    DirectionalLight intensity(double intensity);

    DirectionalLight intensity(Expression intensity);

    DirectionalLight intensityTransition(StyleTransition options);

    DirectionalLight intensityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    DirectionalLight shadowIntensity(double shadowIntensity);

    DirectionalLight shadowIntensity(Expression shadowIntensity);

    DirectionalLight shadowIntensityTransition(StyleTransition options);

    DirectionalLight shadowIntensityTransition(Function1<? super StyleTransition.Builder, Unit> block);

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class DefaultImpls {
        public static DirectionalLight castShadows$default(DirectionalLightDslReceiver directionalLightDslReceiver, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: castShadows");
            }
            if ((i & 1) != 0) {
                z = false;
            }
            return directionalLightDslReceiver.castShadows(z);
        }

        public static DirectionalLight color$default(DirectionalLightDslReceiver directionalLightDslReceiver, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: color");
            }
            if ((i & 1) != 0) {
                str = AnimatableModel.DEFAULT_COLOR;
            }
            return directionalLightDslReceiver.color(str);
        }

        public static DirectionalLight direction$default(DirectionalLightDslReceiver directionalLightDslReceiver, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: direction");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(210.0d), Double.valueOf(30.0d)});
            }
            return directionalLightDslReceiver.direction((List<Double>) list);
        }

        public static DirectionalLight intensity$default(DirectionalLightDslReceiver directionalLightDslReceiver, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: intensity");
            }
            if ((i & 1) != 0) {
                d = 0.5d;
            }
            return directionalLightDslReceiver.intensity(d);
        }

        public static DirectionalLight shadowIntensity$default(DirectionalLightDslReceiver directionalLightDslReceiver, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: shadowIntensity");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return directionalLightDslReceiver.shadowIntensity(d);
        }
    }
}
