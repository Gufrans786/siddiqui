package com.mapbox.maps.extension.style.sources;

import android.util.Log;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.None;
import com.mapbox.bindgen.Value;
import com.mapbox.maps.CustomRasterSourceOptions;
import com.mapbox.maps.CustomRasterSourceTileData;
import com.mapbox.maps.MapboxStyleException;
import com.mapbox.maps.MapboxStyleManager;
import com.mapbox.maps.StylePropertyValue;
import com.mapbox.maps.StylePropertyValueKind;
import com.mapbox.maps.extension.style.layers.properties.PropertyValue;
import com.mapbox.maps.extension.style.sources.generated.RasterArraySource;
import com.mapbox.maps.extension.style.utils.ExpectedUtilsKt;
import com.mapbox.maps.extension.style.utils.TypeUtils;
import com.mapbox.maps.extension.style.utils.TypeUtilsKt;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001c\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0014J\r\u0010\u0010\u001a\u00020\u0003H\u0010¢\u0006\u0002\b\u0011J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\bJ\u0014\u0010\u0015\u001a\u00020\u00132\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/mapbox/maps/extension/style/sources/CustomRasterSource;", "Lcom/mapbox/maps/extension/style/sources/Source;", "id", "", "options", "Lcom/mapbox/maps/CustomRasterSourceOptions;", "(Ljava/lang/String;Lcom/mapbox/maps/CustomRasterSourceOptions;)V", "maxOverscaleFactorForParentTiles", "", "getMaxOverscaleFactorForParentTiles", "()Ljava/lang/Long;", "addSource", "Lcom/mapbox/bindgen/Expected;", "Lcom/mapbox/bindgen/None;", "style", "Lcom/mapbox/maps/MapboxStyleManager;", "getType", "getType$extension_style_release", "setMaxOverscaleFactorForParentTiles", "", "value", "setTileData", "tileData", "", "Lcom/mapbox/maps/CustomRasterSourceTileData;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class CustomRasterSource extends Source {
    private final CustomRasterSourceOptions options;

    public CustomRasterSource(String id, CustomRasterSourceOptions options) {
        super(id);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(options, "options");
        this.options = options;
    }

    @Override
    public String getType$extension_style_release() {
        return "custom-raster";
    }

    @Override
    protected Expected<String, None> addSource(MapboxStyleManager style) {
        Intrinsics.checkNotNullParameter(style, "style");
        return style.addStyleCustomRasterSource(getSourceId(), this.options);
    }

    public final void setTileData(List<CustomRasterSourceTileData> tileData) {
        Intrinsics.checkNotNullParameter(tileData, "tileData");
        MapboxStyleManager delegate$extension_style_release = getDelegate();
        ExpectedUtilsKt.check(delegate$extension_style_release != null ? delegate$extension_style_release.setStyleCustomRasterSourceTileData(getSourceId(), tileData) : null);
    }

    public final void setMaxOverscaleFactorForParentTiles(long value) {
        setVolatileProperty$extension_style_release(new PropertyValue<>("max-overscale-factor-for-parent-tiles", TypeUtils.INSTANCE.wrapToValue(Long.valueOf(value))));
    }

    public final Long getMaxOverscaleFactorForParentTiles() {
        Object objUnwrap;
        Object obj;
        CustomRasterSource customRasterSource = this;
        MapboxStyleManager delegate = customRasterSource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get max-overscale-factor-for-parent-tiles: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(customRasterSource.getSourceId(), "max-overscale-factor-for-parent-tiles");
            if (Intrinsics.areEqual("max-overscale-factor-for-parent-tiles", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Object contents = styleSourceProperty.getValue().getContents();
                Intrinsics.checkNotNull(contents, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, com.mapbox.bindgen.Value>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, com.mapbox.bindgen.Value> }");
                Set setEntrySet = ((HashMap) contents).entrySet();
                Intrinsics.checkNotNullExpressionValue(setEntrySet, "stylePropertyValue.value…p<String, Value>).entries");
                Set<Map.Entry> set = setEntrySet;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
                for (Map.Entry entry : set) {
                    Object key = entry.getKey();
                    Intrinsics.checkNotNullExpressionValue(key, "entry.key");
                    String str = (String) key;
                    Object contents2 = ((Value) entry.getValue()).getContents();
                    Intrinsics.checkNotNull(contents2, "null cannot be cast to non-null type kotlin.collections.List<com.mapbox.bindgen.Value>");
                    List list = (List) contents2;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        Object contents3 = ((Value) it.next()).getContents();
                        Intrinsics.checkNotNull(contents3, "null cannot be cast to non-null type kotlin.String");
                        arrayList2.add((String) contents3);
                    }
                    arrayList.add(new RasterArraySource.RasterDataLayer(str, arrayList2));
                }
                obj = (Long) arrayList;
            } else if (Intrinsics.areEqual("max-overscale-factor-for-parent-tiles", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                obj = (Long) SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, Long.class);
                obj = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property max-overscale-factor-for-parent-tiles failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(customRasterSource.getSourceId(), "max-overscale-factor-for-parent-tiles").getValue().toJson());
            objUnwrap = null;
        }
        return (Long) obj;
    }
}
