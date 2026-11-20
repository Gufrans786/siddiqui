package com.mapbox.maps.extension.style.sources;

import androidx.exifinterface.media.ExifInterface;
import com.caverock.androidsvg.SVGParser;
import com.mapbox.bindgen.Value;
import com.mapbox.maps.CustomGeometrySourceOptions;
import com.mapbox.maps.CustomRasterSourceOptions;
import com.mapbox.maps.MapboxLogger;
import com.mapbox.maps.MapboxStyleException;
import com.mapbox.maps.MapboxStyleManager;
import com.mapbox.maps.TileCacheBudget;
import com.mapbox.maps.TileCacheBudgetInMegabytes;
import com.mapbox.maps.TileCacheBudgetInTiles;
import com.mapbox.maps.extension.style.StyleContract;
import com.mapbox.maps.extension.style.sources.generated.GeoJsonSource;
import com.mapbox.maps.extension.style.sources.generated.ImageSource;
import com.mapbox.maps.extension.style.sources.generated.RasterArraySource;
import com.mapbox.maps.extension.style.sources.generated.RasterDemSource;
import com.mapbox.maps.extension.style.sources.generated.RasterSource;
import com.mapbox.maps.extension.style.sources.generated.VectorSource;
import com.mapbox.maps.extension.style.utils.TypeUtilsKt;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\b\u001a(\u0010\t\u001a\u0004\u0018\u0001H\n\"\n\b\u0000\u0010\n\u0018\u0001*\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\bH\u0086\b¢\u0006\u0002\u0010\u000b\u001a\f\u0010\f\u001a\u00020\r*\u00020\u000eH\u0000\u001a\f\u0010\u000f\u001a\u00020\u000e*\u00020\rH\u0000¨\u0006\u0010"}, d2 = {"addSource", "", "Lcom/mapbox/maps/MapboxStyleManager;", "source", "Lcom/mapbox/maps/extension/style/StyleContract$StyleSourceExtension;", "getSource", "Lcom/mapbox/maps/extension/style/sources/Source;", "sourceId", "", "getSourceAs", ExifInterface.GPS_DIRECTION_TRUE, "(Lcom/mapbox/maps/MapboxStyleManager;Ljava/lang/String;)Lcom/mapbox/maps/extension/style/sources/Source;", "toValue", "Lcom/mapbox/bindgen/Value;", "Lcom/mapbox/maps/TileCacheBudget;", "unwrapToTileCacheBudget", "extension-style_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class SourceUtils {

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TileCacheBudget.Type.values().length];
            try {
                iArr[TileCacheBudget.Type.TILE_CACHE_BUDGET_IN_MEGABYTES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TileCacheBudget.Type.TILE_CACHE_BUDGET_IN_TILES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final Source getSource(MapboxStyleManager mapboxStyleManager, String sourceId) {
        Object objUnwrap;
        RasterArraySource rasterArraySource;
        CustomGeometrySource customGeometrySource;
        Intrinsics.checkNotNullParameter(mapboxStyleManager, "<this>");
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        try {
            objUnwrap = TypeUtilsKt.unwrap(mapboxStyleManager.getStyleSourceProperty(sourceId, SVGParser.XML_STYLESHEET_ATTR_TYPE), String.class);
        } catch (RuntimeException unused) {
            objUnwrap = null;
        }
        String str = (String) objUnwrap;
        if (str == null) {
            return null;
        }
        switch (str) {
            case "raster-array":
                RasterArraySource rasterArraySourceBuild = new RasterArraySource.Builder(sourceId).build();
                rasterArraySourceBuild.setDelegate$extension_style_release(mapboxStyleManager);
                rasterArraySource = rasterArraySourceBuild;
                return rasterArraySource;
            case "custom-geometry":
                CustomGeometrySourceOptions customGeometrySourceOptionsBuild = new CustomGeometrySourceOptions.Builder().build();
                Intrinsics.checkNotNullExpressionValue(customGeometrySourceOptionsBuild, "Builder().build()");
                CustomGeometrySource customGeometrySource2 = new CustomGeometrySource(sourceId, customGeometrySourceOptionsBuild);
                customGeometrySource2.setDelegate$extension_style_release(mapboxStyleManager);
                customGeometrySource = customGeometrySource2;
                return customGeometrySource;
            case "raster":
                RasterSource rasterSourceBuild = new RasterSource.Builder(sourceId).build();
                rasterSourceBuild.setDelegate$extension_style_release(mapboxStyleManager);
                rasterArraySource = rasterSourceBuild;
                return rasterArraySource;
            case "vector":
                VectorSource vectorSourceBuild = new VectorSource.Builder(sourceId).build();
                vectorSourceBuild.setDelegate$extension_style_release(mapboxStyleManager);
                rasterArraySource = vectorSourceBuild;
                return rasterArraySource;
            case "custom-raster":
                CustomRasterSourceOptions customRasterSourceOptionsBuild = new CustomRasterSourceOptions.Builder().build();
                Intrinsics.checkNotNullExpressionValue(customRasterSourceOptionsBuild, "Builder().build()");
                CustomRasterSource customRasterSource = new CustomRasterSource(sourceId, customRasterSourceOptionsBuild);
                customRasterSource.setDelegate$extension_style_release(mapboxStyleManager);
                customGeometrySource = customRasterSource;
                return customGeometrySource;
            case "geojson":
                GeoJsonSource geoJsonSourceBuild = new GeoJsonSource.Builder(sourceId).build();
                geoJsonSourceBuild.setDelegate$extension_style_release(mapboxStyleManager);
                rasterArraySource = geoJsonSourceBuild;
                return rasterArraySource;
            case "image":
                ImageSource imageSourceBuild = new ImageSource.Builder(sourceId).build();
                imageSourceBuild.setDelegate$extension_style_release(mapboxStyleManager);
                rasterArraySource = imageSourceBuild;
                return rasterArraySource;
            case "raster-dem":
                RasterDemSource rasterDemSourceBuild = new RasterDemSource.Builder(sourceId).build();
                rasterDemSourceBuild.setDelegate$extension_style_release(mapboxStyleManager);
                rasterArraySource = rasterDemSourceBuild;
                return rasterArraySource;
            default:
                if (str.equals("raster-array")) {
                    RasterArraySource rasterArraySourceBuild2 = new RasterArraySource.Builder(sourceId).build();
                    rasterArraySourceBuild2.setDelegate$extension_style_release(mapboxStyleManager);
                    rasterArraySource = rasterArraySourceBuild2;
                    return rasterArraySource;
                }
                MapboxLogger.logE("StyleSourcePlugin", "Source type: " + str + " unknown.");
                return null;
        }
    }

    public static final <T extends Source> T getSourceAs(MapboxStyleManager mapboxStyleManager, String sourceId) {
        Intrinsics.checkNotNullParameter(mapboxStyleManager, "<this>");
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        T t = (T) getSource(mapboxStyleManager, sourceId);
        Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
        if (t instanceof Source) {
            return t;
        }
        MapboxLogger.logW("StyleSourcePlugin", "Given sourceId = " + sourceId + " is not requested type in getSourceAs.");
        return null;
    }

    public static final void addSource(MapboxStyleManager mapboxStyleManager, StyleContract.StyleSourceExtension source) {
        Intrinsics.checkNotNullParameter(mapboxStyleManager, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        source.bindTo(mapboxStyleManager);
    }

    public static final Value toValue(TileCacheBudget tileCacheBudget) {
        Intrinsics.checkNotNullParameter(tileCacheBudget, "<this>");
        HashMap map = new HashMap();
        TileCacheBudget.Type typeInfo = tileCacheBudget.getTypeInfo();
        int i = typeInfo == null ? -1 : WhenMappings.$EnumSwitchMapping$0[typeInfo.ordinal()];
        if (i == 1) {
            map.put("megabytes", new Value(tileCacheBudget.getTileCacheBudgetInMegabytes().getSize()));
        } else if (i == 2) {
            map.put("tiles", new Value(tileCacheBudget.getTileCacheBudgetInTiles().getSize()));
        } else {
            throw new MapboxStyleException("Failed to parse TileCacheBudget: " + tileCacheBudget);
        }
        return new Value((HashMap<String, Value>) map);
    }

    public static final TileCacheBudget unwrapToTileCacheBudget(Value value) {
        Intrinsics.checkNotNullParameter(value, "<this>");
        Object contents = value.getContents();
        HashMap map = contents instanceof HashMap ? (HashMap) contents : null;
        if (map != null) {
            if (map.size() != 1) {
                throw new MapboxStyleException("Map memory budget setting must contain 'tiles' or 'megabytes' property, but was " + value);
            }
            Set setEntrySet = map.entrySet();
            Intrinsics.checkNotNullExpressionValue(setEntrySet, "it.entries");
            Object objFirst = CollectionsKt.first(setEntrySet);
            Intrinsics.checkNotNullExpressionValue(objFirst, "it.entries.first()");
            Map.Entry entry = (Map.Entry) objFirst;
            if (Intrinsics.areEqual(entry.getKey(), "tiles")) {
                Object contents2 = ((Value) entry.getValue()).getContents();
                Intrinsics.checkNotNull(contents2, "null cannot be cast to non-null type kotlin.Long");
                return new TileCacheBudget(new TileCacheBudgetInTiles(((Long) contents2).longValue()));
            }
            if (Intrinsics.areEqual(entry.getKey(), "megabytes")) {
                Object contents3 = ((Value) entry.getValue()).getContents();
                Intrinsics.checkNotNull(contents3, "null cannot be cast to non-null type kotlin.Long");
                return new TileCacheBudget(new TileCacheBudgetInMegabytes(((Long) contents3).longValue()));
            }
        }
        throw new MapboxStyleException("Can not parse " + value + " to TileCacheBudget.");
    }
}
