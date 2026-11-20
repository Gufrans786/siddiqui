package com.mapbox.maps.extension.style.sources;

import android.util.Log;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.None;
import com.mapbox.bindgen.Value;
import com.mapbox.geojson.Feature;
import com.mapbox.maps.CanonicalTileID;
import com.mapbox.maps.CoordinateBounds;
import com.mapbox.maps.CustomGeometrySourceOptions;
import com.mapbox.maps.MapboxStyleException;
import com.mapbox.maps.MapboxStyleManager;
import com.mapbox.maps.StylePropertyValue;
import com.mapbox.maps.StylePropertyValueKind;
import com.mapbox.maps.TileCacheBudget;
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
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001c\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0012\u001a\u00020\u0013H\u0014J\r\u0010\u0014\u001a\u00020\u0003H\u0010¢\u0006\u0002\b\u0015J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u0010\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001cH\u0007J\u000e\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J\u000e\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001cJ\u000e\u0010\u001f\u001a\u00020\u00172\u0006\u0010 \u001a\u00020\bJ\u000e\u0010!\u001a\u00020\u00172\u0006\u0010 \u001a\u00020\fJ\u001c\u0010\"\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001c2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020%0$R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006&"}, d2 = {"Lcom/mapbox/maps/extension/style/sources/CustomGeometrySource;", "Lcom/mapbox/maps/extension/style/sources/Source;", "id", "", "options", "Lcom/mapbox/maps/CustomGeometrySourceOptions;", "(Ljava/lang/String;Lcom/mapbox/maps/CustomGeometrySourceOptions;)V", "maxOverscaleFactorForParentTiles", "", "getMaxOverscaleFactorForParentTiles", "()Ljava/lang/Long;", "tileCacheBudget", "Lcom/mapbox/maps/TileCacheBudget;", "getTileCacheBudget", "()Lcom/mapbox/maps/TileCacheBudget;", "addSource", "Lcom/mapbox/bindgen/Expected;", "Lcom/mapbox/bindgen/None;", "style", "Lcom/mapbox/maps/MapboxStyleManager;", "getType", "getType$extension_style_release", "invalidRegion", "", "coordinateBounds", "Lcom/mapbox/maps/CoordinateBounds;", "invalidTile", "tileID", "Lcom/mapbox/maps/CanonicalTileID;", "invalidateRegion", "invalidateTile", "setMaxOverscaleFactorForParentTiles", "value", "setTileCacheBudget", "setTileData", "featureCollection", "", "Lcom/mapbox/geojson/Feature;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class CustomGeometrySource extends Source {
    private final CustomGeometrySourceOptions options;

    public CustomGeometrySource(String id, CustomGeometrySourceOptions options) {
        super(id);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(options, "options");
        this.options = options;
    }

    @Override
    public String getType$extension_style_release() {
        return "custom-geometry";
    }

    @Override
    protected Expected<String, None> addSource(MapboxStyleManager style) {
        Intrinsics.checkNotNullParameter(style, "style");
        return style.addStyleCustomGeometrySource(getSourceId(), this.options);
    }

    public final void setTileData(CanonicalTileID tileID, List<Feature> featureCollection) {
        Intrinsics.checkNotNullParameter(tileID, "tileID");
        Intrinsics.checkNotNullParameter(featureCollection, "featureCollection");
        MapboxStyleManager delegate$extension_style_release = getDelegate();
        ExpectedUtilsKt.check(delegate$extension_style_release != null ? delegate$extension_style_release.setStyleCustomGeometrySourceTileData(getSourceId(), tileID, featureCollection) : null);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated because of confusing naming.", replaceWith = @ReplaceWith(expression = "invalidateRegion(coordinateBounds)", imports = {}))
    public final void invalidRegion(CoordinateBounds coordinateBounds) {
        Intrinsics.checkNotNullParameter(coordinateBounds, "coordinateBounds");
        invalidateRegion(coordinateBounds);
    }

    public final void invalidateRegion(CoordinateBounds coordinateBounds) {
        Intrinsics.checkNotNullParameter(coordinateBounds, "coordinateBounds");
        MapboxStyleManager delegate$extension_style_release = getDelegate();
        ExpectedUtilsKt.check(delegate$extension_style_release != null ? delegate$extension_style_release.invalidateStyleCustomGeometrySourceRegion(getSourceId(), coordinateBounds) : null);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated because of confusing naming.", replaceWith = @ReplaceWith(expression = "invalidateTile(tileID)", imports = {}))
    public final void invalidTile(CanonicalTileID tileID) {
        Intrinsics.checkNotNullParameter(tileID, "tileID");
        invalidateTile(tileID);
    }

    public final void invalidateTile(CanonicalTileID tileID) {
        Intrinsics.checkNotNullParameter(tileID, "tileID");
        MapboxStyleManager delegate$extension_style_release = getDelegate();
        ExpectedUtilsKt.check(delegate$extension_style_release != null ? delegate$extension_style_release.invalidateStyleCustomGeometrySourceTile(getSourceId(), tileID) : null);
    }

    public final void setTileCacheBudget(TileCacheBudget value) {
        Intrinsics.checkNotNullParameter(value, "value");
        setVolatileProperty$extension_style_release(new PropertyValue<>("tile-cache-budget", TypeUtils.INSTANCE.wrapToValue(value)));
    }

    public final TileCacheBudget getTileCacheBudget() {
        Object objUnwrap;
        Object objUnwrapToTileCacheBudget;
        CustomGeometrySource customGeometrySource = this;
        MapboxStyleManager delegate = customGeometrySource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get tile-cache-budget: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(customGeometrySource.getSourceId(), "tile-cache-budget");
            if (Intrinsics.areEqual("tile-cache-budget", "rasterLayers") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
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
                objUnwrapToTileCacheBudget = (TileCacheBudget) arrayList;
            } else if (Intrinsics.areEqual("tile-cache-budget", "tile-cache-budget") && styleSourceProperty.getKind() == StylePropertyValueKind.CONSTANT) {
                Value value = styleSourceProperty.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "stylePropertyValue.value");
                objUnwrapToTileCacheBudget = SourceUtils.unwrapToTileCacheBudget(value);
            } else {
                objUnwrap = TypeUtilsKt.unwrap(styleSourceProperty, TileCacheBudget.class);
                objUnwrapToTileCacheBudget = objUnwrap;
            }
        } catch (RuntimeException e) {
            Log.e("Mbgl-Source", "Get source property tile-cache-budget failed: " + e.getMessage());
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(customGeometrySource.getSourceId(), "tile-cache-budget").getValue().toJson());
            objUnwrap = null;
        }
        return (TileCacheBudget) objUnwrapToTileCacheBudget;
    }

    public final void setMaxOverscaleFactorForParentTiles(long value) {
        setVolatileProperty$extension_style_release(new PropertyValue<>("max-overscale-factor-for-parent-tiles", TypeUtils.INSTANCE.wrapToValue(Long.valueOf(value))));
    }

    public final Long getMaxOverscaleFactorForParentTiles() {
        Object objUnwrap;
        Object obj;
        CustomGeometrySource customGeometrySource = this;
        MapboxStyleManager delegate = customGeometrySource.getDelegate();
        if (delegate == null) {
            throw new MapboxStyleException("Couldn't get max-overscale-factor-for-parent-tiles: source is not added to style yet.");
        }
        try {
            StylePropertyValue styleSourceProperty = delegate.getStyleSourceProperty(customGeometrySource.getSourceId(), "max-overscale-factor-for-parent-tiles");
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
            Log.e("Mbgl-Source", "Value returned: " + delegate.getStyleSourceProperty(customGeometrySource.getSourceId(), "max-overscale-factor-for-parent-tiles").getValue().toJson());
            objUnwrap = null;
        }
        return (Long) obj;
    }
}
