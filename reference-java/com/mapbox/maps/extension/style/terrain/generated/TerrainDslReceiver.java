package com.mapbox.maps.extension.style.terrain.generated;

import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.types.StyleTransition;
import com.mapbox.maps.extension.style.types.TerrainDsl;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

@TerrainDsl
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0004H&J\u0012\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0002\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J!\u0010\u0006\u001a\u00020\u00032\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH&¨\u0006\u000e"}, d2 = {"Lcom/mapbox/maps/extension/style/terrain/generated/TerrainDslReceiver;", "", "exaggeration", "Lcom/mapbox/maps/extension/style/terrain/generated/Terrain;", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "", "exaggerationTransition", "options", "Lcom/mapbox/maps/extension/style/types/StyleTransition;", "block", "Lkotlin/Function1;", "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;", "", "Lkotlin/ExtensionFunctionType;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface TerrainDslReceiver {
    Terrain exaggeration(double exaggeration);

    Terrain exaggeration(Expression exaggeration);

    Terrain exaggerationTransition(StyleTransition options);

    Terrain exaggerationTransition(Function1<? super StyleTransition.Builder, Unit> block);

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class DefaultImpls {
        public static Terrain exaggeration$default(TerrainDslReceiver terrainDslReceiver, double d, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: exaggeration");
            }
            if ((i & 1) != 0) {
                d = 1.0d;
            }
            return terrainDslReceiver.exaggeration(d);
        }
    }
}
