package com.rnmapbox.rnmbx.modules;

import android.os.Build;
import android.util.Log;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.UiThreadUtil;
import com.facebook.react.bridge.WritableArray;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.module.annotations.ReactModule;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mapbox.bindgen.Expected;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.geojson.Geometry;
import com.mapbox.geojson.Point;
import com.mapbox.maps.AsyncOperationResultCallback;
import com.mapbox.maps.CoordinateBounds;
import com.mapbox.maps.GlyphsRasterizationMode;
import com.mapbox.maps.OfflineRegion;
import com.mapbox.maps.OfflineRegionCallback;
import com.mapbox.maps.OfflineRegionCreateCallback;
import com.mapbox.maps.OfflineRegionDownloadState;
import com.mapbox.maps.OfflineRegionManager;
import com.mapbox.maps.OfflineRegionStatus;
import com.mapbox.maps.OfflineRegionStatusCallback;
import com.mapbox.maps.OfflineRegionTilePyramidDefinition;
import com.rnmapbox.rnmbx.utils.ConvertUtils;
import com.rnmapbox.rnmbx.utils.WriteableMapArrayOfKt;
import com.rnmapbox.rnmbx.utils.extensions.FeatureCollectionKt;
import com.rnmapbox.rnmbx.v11compat.offlinemanager.OfflineManagerKt;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;
import kotlin.text.Charsets;
import org.json.JSONException;
import org.json.JSONObject;

@ReactModule(name = RNMBXOfflineModuleLegacy.REACT_CLASS)
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0004\b\u0007\u0018\u0000 72\u00020\u0001:\u00017B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0014\u0010!\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0007H\u0002J\"\u0010\"\u001a\u0004\u0018\u00010 2\b\u0010#\u001a\u0004\u0018\u00010\u00072\f\u0010$\u001a\b\u0012\u0004\u0012\u00020 0%H\u0002J\u001a\u0010&\u001a\u0004\u0018\u00010\u001e2\u0006\u0010'\u001a\u00020\u00072\u0006\u0010(\u001a\u00020)H\u0002J\u0018\u0010*\u001a\u00020+2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001aH\u0007J\u0010\u0010,\u001a\u00020+2\u0006\u0010\u0019\u001a\u00020\u001aH\u0007J\u001a\u0010-\u001a\u00020+2\b\u0010#\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0019\u001a\u00020\u001aH\u0007J\u001a\u0010.\u001a\u00020+2\b\u0010#\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0019\u001a\u00020\u001aH\u0007J\u001a\u0010/\u001a\u00020+2\b\u0010#\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0019\u001a\u00020\u001aH\u0007J\u001a\u00100\u001a\u00020+2\b\u0010#\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0019\u001a\u00020\u001aH\u0007J\u001a\u00101\u001a\u00020+2\b\u0010#\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0019\u001a\u00020\u001aH\u0007J\u0010\u00102\u001a\u00020+2\u0006\u00103\u001a\u000204H\u0007J\u0010\u00105\u001a\u00020+2\u0006\u0010\u0019\u001a\u00020\u001aH\u0007J\u0010\u00106\u001a\u00020+2\u0006\u0010\u0019\u001a\u00020\u001aH\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\b\u001a\u00020\t8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000b¨\u00068"}, d2 = {"Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModuleLegacy;", "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;", "mReactContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "getName", "", "offlineRegionManager", "Lcom/mapbox/maps/OfflineRegionManager;", "getOfflineRegionManager", "()Lcom/mapbox/maps/OfflineRegionManager;", "offlineRegionManager$delegate", "Lkotlin/Lazy;", "makeDefinition", "Lcom/mapbox/maps/OfflineRegionTilePyramidDefinition;", "bounds", "Lcom/mapbox/maps/CoordinateBounds;", "options", "Lcom/facebook/react/bridge/ReadableMap;", "convertPointPairToBounds", "boundsFC", "Lcom/mapbox/geojson/FeatureCollection;", "createPackCallback", "Lcom/mapbox/maps/OfflineRegionCreateCallback;", BaseJavaModule.METHOD_TYPE_PROMISE, "Lcom/facebook/react/bridge/Promise;", "metadata", "", "fromOfflineRegion", "Lcom/facebook/react/bridge/WritableMap;", "region", "Lcom/mapbox/maps/OfflineRegion;", "getMetadataBytes", "getRegionByName", "name", "offlineRegions", "", "makeRegionStatus", "regionName", "status", "Lcom/mapbox/maps/OfflineRegionStatus;", "createPack", "", "getPacks", "deletePack", "invalidatePack", "getPackStatus", "pausePackDownload", "resumePackDownload", "setTileCountLimit", "tileCountLimit", "", "resetDatabase", "migrateOfflineCache", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXOfflineModuleLegacy extends ReactContextBaseJavaModule {
    public static final int COMPLETE_REGION_DOWNLOAD_STATE = 2;
    public static final double DEFAULT_MAX_ZOOM_LEVEL = 20.0d;
    public static final double DEFAULT_MIN_ZOOM_LEVEL = 10.0d;
    public static final String DEFAULT_STYLE_URL = "mapbox://styles/mapbox/streets-v11";
    public static final String LOG_TAG = "OfflineModuleLegacy";
    public static final String REACT_CLASS = "RNMBXOfflineModuleLegacy";
    private final ReactApplicationContext mReactContext;

    private final Lazy offlineRegionManager;

    public RNMBXOfflineModuleLegacy(ReactApplicationContext mReactContext) {
        super(mReactContext);
        Intrinsics.checkNotNullParameter(mReactContext, "mReactContext");
        this.mReactContext = mReactContext;
        this.offlineRegionManager = LazyKt.lazy(new Function0() {
            @Override
            public final Object invoke() {
                return RNMBXOfflineModuleLegacy.offlineRegionManager_delegate$lambda$1(this.f$0);
            }
        });
    }

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    public final OfflineRegionManager getOfflineRegionManager() {
        return (OfflineRegionManager) this.offlineRegionManager.getValue();
    }

    public static final OfflineRegionManager offlineRegionManager_delegate$lambda$1(final RNMBXOfflineModuleLegacy rNMBXOfflineModuleLegacy) {
        return OfflineManagerKt.getOfflineRegionManager(new Function0() {
            @Override
            public final Object invoke() {
                return RNMBXOfflineModuleLegacy.offlineRegionManager_delegate$lambda$1$lambda$0(this.f$0);
            }
        });
    }

    public static final String offlineRegionManager_delegate$lambda$1$lambda$0(RNMBXOfflineModuleLegacy rNMBXOfflineModuleLegacy) {
        return RNMBXModule.INSTANCE.getAccessToken(rNMBXOfflineModuleLegacy.mReactContext);
    }

    private final OfflineRegionTilePyramidDefinition makeDefinition(CoordinateBounds bounds, ReadableMap options) {
        OfflineRegionTilePyramidDefinition offlineRegionTilePyramidDefinitionBuild = new OfflineRegionTilePyramidDefinition.Builder().styleURL(ConvertUtils.INSTANCE.getString("styleURL", options, DEFAULT_STYLE_URL)).bounds(bounds).minZoom(ConvertUtils.INSTANCE.getDouble("minZoom", options, 10.0d)).maxZoom(ConvertUtils.INSTANCE.getDouble("maxZoom", options, 20.0d)).pixelRatio(this.mReactContext.getResources().getDisplayMetrics().density).glyphsRasterizationMode(GlyphsRasterizationMode.IDEOGRAPHS_RASTERIZED_LOCALLY).build();
        Intrinsics.checkNotNullExpressionValue(offlineRegionTilePyramidDefinitionBuild, "build(...)");
        return offlineRegionTilePyramidDefinitionBuild;
    }

    private final CoordinateBounds convertPointPairToBounds(FeatureCollection boundsFC) {
        List<Geometry> listGeometries = FeatureCollectionKt.toGeometryCollection(boundsFC).geometries();
        Intrinsics.checkNotNullExpressionValue(listGeometries, "geometries(...)");
        if (listGeometries.size() != 2) {
            return null;
        }
        Point point = (Point) listGeometries.get(0);
        Point point2 = (Point) listGeometries.get(1);
        if (point == null || point2 == null) {
            return null;
        }
        return new CoordinateBounds(point, point2);
    }

    private final OfflineRegionCreateCallback createPackCallback(final Promise promise, final byte[] metadata) {
        return new OfflineRegionCreateCallback() {
            @Override
            public final void run(Expected expected) {
                RNMBXOfflineModuleLegacy.createPackCallback$lambda$4(promise, metadata, this, expected);
            }
        };
    }

    public static final void createPackCallback$lambda$4(final Promise promise, byte[] bArr, final RNMBXOfflineModuleLegacy rNMBXOfflineModuleLegacy, Expected expected) {
        Intrinsics.checkNotNullParameter(expected, "expected");
        if (expected.isValue()) {
            final OfflineRegion offlineRegion = (OfflineRegion) expected.getValue();
            if (offlineRegion != null) {
                offlineRegion.setOfflineRegionDownloadState(OfflineRegionDownloadState.ACTIVE);
                offlineRegion.setMetadata(bArr, new AsyncOperationResultCallback() {
                    @Override
                    public final void run(Expected expected2) {
                        RNMBXOfflineModuleLegacy.createPackCallback$lambda$4$lambda$3$lambda$2(promise, rNMBXOfflineModuleLegacy, offlineRegion, expected2);
                    }
                });
                return;
            }
            return;
        }
        Log.d(LOG_TAG, "createPack error:");
        promise.reject("createPack error:", "Failed to create OfflineRegion");
    }

    public static final void createPackCallback$lambda$4$lambda$3$lambda$2(Promise promise, RNMBXOfflineModuleLegacy rNMBXOfflineModuleLegacy, OfflineRegion offlineRegion, Expected expectedMetadata) {
        Intrinsics.checkNotNullParameter(expectedMetadata, "expectedMetadata");
        if (expectedMetadata.isError()) {
            promise.reject("createPack error:", "Failed to setMetadata");
        } else {
            Log.d(LOG_TAG, "createPack done:");
            promise.resolve(rNMBXOfflineModuleLegacy.fromOfflineRegion(offlineRegion));
        }
    }

    public final WritableMap fromOfflineRegion(OfflineRegion region) {
        OfflineRegionTilePyramidDefinition tilePyramidDefinition = region.getTilePyramidDefinition();
        CoordinateBounds bounds = tilePyramidDefinition != null ? tilePyramidDefinition.getBounds() : null;
        WritableMap writableMapCreateMap = Arguments.createMap();
        Intrinsics.checkNotNullExpressionValue(writableMapCreateMap, "createMap(...)");
        if (bounds == null) {
            return writableMapCreateMap;
        }
        writableMapCreateMap.putArray("bounds", WriteableMapArrayOfKt.writableArrayOf(WriteableMapArrayOfKt.writableArrayOf(Double.valueOf(bounds.east()), Double.valueOf(bounds.north())), WriteableMapArrayOfKt.writableArrayOf(Double.valueOf(bounds.west()), Double.valueOf(bounds.south()))));
        byte[] metadata = region.getMetadata();
        Intrinsics.checkNotNullExpressionValue(metadata, "getMetadata(...)");
        writableMapCreateMap.putString("metadata", new String(metadata, Charsets.UTF_8));
        return writableMapCreateMap;
    }

    private final byte[] getMetadataBytes(String metadata) {
        if (metadata == null || metadata.length() == 0) {
            return null;
        }
        try {
            Charset charsetForName = Charset.forName("utf-8");
            Intrinsics.checkNotNullExpressionValue(charsetForName, "forName(...)");
            byte[] bytes = metadata.getBytes(charsetForName);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            return bytes;
        } catch (UnsupportedEncodingException e) {
            Log.w(LOG_TAG, e.getLocalizedMessage());
            return null;
        }
    }

    private final OfflineRegion getRegionByName(String name, List<OfflineRegion> offlineRegions) {
        String str = name;
        if (str != null && str.length() != 0) {
            for (OfflineRegion offlineRegion : offlineRegions) {
                try {
                    byte[] metadata = offlineRegion.getMetadata();
                    Intrinsics.checkNotNullExpressionValue(metadata, "getMetadata(...)");
                    if (Intrinsics.areEqual(name, new JSONObject(new String(metadata, Charsets.UTF_8)).getString("name"))) {
                        return offlineRegion;
                    }
                } catch (JSONException e) {
                    Log.w(LOG_TAG, e.getLocalizedMessage());
                }
            }
        }
        return null;
    }

    private final WritableMap makeRegionStatus(String regionName, OfflineRegionStatus status) {
        WritableMap writableMapCreateMap = Arguments.createMap();
        Intrinsics.checkNotNullExpressionValue(writableMapCreateMap, "createMap(...)");
        double dCoerceAtMost = RangesKt.coerceAtMost(Math.ceil((status.getRequiredResourceCount() > 0 ? status.getCompletedResourceCount() / status.getRequiredResourceCount() : 0.0d) * 100.0d), 100.0d);
        int iOrdinal = dCoerceAtMost == 100.0d ? 2 : status.getDownloadState().ordinal();
        writableMapCreateMap.putString("name", regionName);
        writableMapCreateMap.putInt(RemoteConfigConstants.ResponseFieldKey.STATE, iOrdinal);
        writableMapCreateMap.putDouble("percentage", dCoerceAtMost);
        writableMapCreateMap.putInt("completedResourceCount", (int) status.getCompletedResourceCount());
        writableMapCreateMap.putInt("completedResourceSize", (int) status.getCompletedResourceSize());
        writableMapCreateMap.putInt("completedTileSize", (int) status.getCompletedTileSize());
        writableMapCreateMap.putInt("completedTileCount", (int) status.getCompletedTileCount());
        writableMapCreateMap.putInt("requiredResourceCount", (int) status.getRequiredResourceCount());
        return writableMapCreateMap;
    }

    @ReactMethod
    public final void createPack(ReadableMap options, final Promise promise) throws JSONException {
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(promise, "promise");
        try {
            final byte[] metadataBytes = getMetadataBytes(ConvertUtils.INSTANCE.getString("metadata", options, ""));
            String string = options.getString("bounds");
            Intrinsics.checkNotNull(string);
            FeatureCollection featureCollectionFromJson = FeatureCollection.fromJson(string);
            Intrinsics.checkNotNull(featureCollectionFromJson);
            CoordinateBounds coordinateBoundsConvertPointPairToBounds = convertPointPairToBounds(featureCollectionFromJson);
            if (metadataBytes != null && coordinateBoundsConvertPointPairToBounds != null) {
                final OfflineRegionTilePyramidDefinition offlineRegionTilePyramidDefinitionMakeDefinition = makeDefinition(coordinateBoundsConvertPointPairToBounds, options);
                UiThreadUtil.runOnUiThread(new Runnable() {
                    @Override
                    public final void run() {
                        RNMBXOfflineModuleLegacy.createPack$lambda$5(this.f$0, offlineRegionTilePyramidDefinitionMakeDefinition, promise, metadataBytes);
                    }
                });
                return;
            }
            promise.reject("createPack error:", "No metadata or bounds set");
        } catch (Throwable th) {
            promise.reject("createPack error:", th);
        }
    }

    public static final void createPack$lambda$5(RNMBXOfflineModuleLegacy rNMBXOfflineModuleLegacy, OfflineRegionTilePyramidDefinition offlineRegionTilePyramidDefinition, Promise promise, byte[] bArr) {
        rNMBXOfflineModuleLegacy.getOfflineRegionManager().createOfflineRegion(offlineRegionTilePyramidDefinition, rNMBXOfflineModuleLegacy.createPackCallback(promise, bArr));
    }

    @ReactMethod
    public final void getPacks(final Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        UiThreadUtil.runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                RNMBXOfflineModuleLegacy.getPacks$lambda$6(this.f$0, promise);
            }
        });
    }

    public static final void getPacks$lambda$6(final RNMBXOfflineModuleLegacy rNMBXOfflineModuleLegacy, final Promise promise) {
        rNMBXOfflineModuleLegacy.getOfflineRegionManager().getOfflineRegions(new OfflineRegionCallback() {
            @Override
            public void run(Expected<String, List<OfflineRegion>> expected) {
                Intrinsics.checkNotNullParameter(expected, "expected");
                if (expected.isValue()) {
                    List<OfflineRegion> value = expected.getValue();
                    if (value != null) {
                        RNMBXOfflineModuleLegacy rNMBXOfflineModuleLegacy2 = rNMBXOfflineModuleLegacy;
                        Promise promise2 = promise;
                        WritableArray writableArrayCreateArray = Arguments.createArray();
                        Intrinsics.checkNotNullExpressionValue(writableArrayCreateArray, "createArray(...)");
                        for (OfflineRegion offlineRegion : value) {
                            Intrinsics.checkNotNull(offlineRegion);
                            writableArrayCreateArray.pushMap(rNMBXOfflineModuleLegacy2.fromOfflineRegion(offlineRegion));
                        }
                        Log.d(RNMBXOfflineModuleLegacy.LOG_TAG, "getPacks done:" + value.size());
                        promise2.resolve(writableArrayCreateArray);
                        return;
                    }
                    return;
                }
                promise.reject("getPacks error:", expected.getError());
                Log.d(RNMBXOfflineModuleLegacy.LOG_TAG, "getPacks error:" + ((Object) expected.getError()));
            }
        });
    }

    @ReactMethod
    public final void deletePack(final String name, final Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        UiThreadUtil.runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                RNMBXOfflineModuleLegacy.deletePack$lambda$10(this.f$0, promise, name);
            }
        });
    }

    public static final void deletePack$lambda$10(final RNMBXOfflineModuleLegacy rNMBXOfflineModuleLegacy, final Promise promise, final String str) {
        rNMBXOfflineModuleLegacy.getOfflineRegionManager().getOfflineRegions(new OfflineRegionCallback() {
            @Override
            public final void run(Expected expected) {
                RNMBXOfflineModuleLegacy.deletePack$lambda$10$lambda$9(promise, rNMBXOfflineModuleLegacy, str, expected);
            }
        });
    }

    public static final void deletePack$lambda$10$lambda$9(final Promise promise, RNMBXOfflineModuleLegacy rNMBXOfflineModuleLegacy, String str, Expected regionsExpected) {
        Intrinsics.checkNotNullParameter(regionsExpected, "regionsExpected");
        if (regionsExpected.isValue()) {
            List<OfflineRegion> list = (List) regionsExpected.getValue();
            if (list != null) {
                OfflineRegion regionByName = rNMBXOfflineModuleLegacy.getRegionByName(str, list);
                if (regionByName == null) {
                    promise.resolve(null);
                    Log.w(LOG_TAG, "deleteRegion - Unknown offline region");
                    return;
                } else {
                    regionByName.setOfflineRegionDownloadState(OfflineRegionDownloadState.INACTIVE);
                    regionByName.purge(new AsyncOperationResultCallback() {
                        @Override
                        public final void run(Expected expected) {
                            RNMBXOfflineModuleLegacy.deletePack$lambda$10$lambda$9$lambda$8$lambda$7(promise, expected);
                        }
                    });
                    return;
                }
            }
            return;
        }
        promise.reject("deleteRegion error:", (String) regionsExpected.getError());
    }

    public static final void deletePack$lambda$10$lambda$9$lambda$8$lambda$7(Promise promise, Expected purgeExpected) {
        Intrinsics.checkNotNullParameter(purgeExpected, "purgeExpected");
        if (purgeExpected.isError()) {
            promise.reject("deleteRegion error:", (String) purgeExpected.getError());
        } else {
            promise.resolve(null);
        }
    }

    @ReactMethod
    public final void invalidatePack(final String name, final Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        UiThreadUtil.runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                RNMBXOfflineModuleLegacy.invalidatePack$lambda$14(this.f$0, promise, name);
            }
        });
    }

    public static final void invalidatePack$lambda$14(final RNMBXOfflineModuleLegacy rNMBXOfflineModuleLegacy, final Promise promise, final String str) {
        rNMBXOfflineModuleLegacy.getOfflineRegionManager().getOfflineRegions(new OfflineRegionCallback() {
            @Override
            public final void run(Expected expected) {
                RNMBXOfflineModuleLegacy.invalidatePack$lambda$14$lambda$13(promise, rNMBXOfflineModuleLegacy, str, expected);
            }
        });
    }

    public static final void invalidatePack$lambda$14$lambda$13(final Promise promise, RNMBXOfflineModuleLegacy rNMBXOfflineModuleLegacy, String str, Expected expected) {
        Intrinsics.checkNotNullParameter(expected, "expected");
        if (expected.isValue()) {
            List<OfflineRegion> list = (List) expected.getValue();
            if (list != null) {
                OfflineRegion regionByName = rNMBXOfflineModuleLegacy.getRegionByName(str, list);
                if (regionByName == null) {
                    promise.resolve(null);
                    Log.w(LOG_TAG, "invalidateRegion - Unknown offline region");
                    return;
                } else {
                    regionByName.invalidate(new AsyncOperationResultCallback() {
                        @Override
                        public final void run(Expected expected2) {
                            RNMBXOfflineModuleLegacy.invalidatePack$lambda$14$lambda$13$lambda$12$lambda$11(promise, expected2);
                        }
                    });
                    return;
                }
            }
            return;
        }
        promise.reject("invalidateRegion error:", (String) expected.getError());
    }

    public static final void invalidatePack$lambda$14$lambda$13$lambda$12$lambda$11(Promise promise, Expected expected) {
        Intrinsics.checkNotNullParameter(expected, "expected");
        if (expected.isError()) {
            promise.reject("invalidateRegion error:", (String) expected.getError());
        } else {
            promise.resolve(null);
        }
    }

    @ReactMethod
    public final void getPackStatus(final String name, final Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        UiThreadUtil.runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                RNMBXOfflineModuleLegacy.getPackStatus$lambda$19(this.f$0, promise, name);
            }
        });
    }

    public static final void getPackStatus$lambda$19(final RNMBXOfflineModuleLegacy rNMBXOfflineModuleLegacy, final Promise promise, final String str) {
        rNMBXOfflineModuleLegacy.getOfflineRegionManager().getOfflineRegions(new OfflineRegionCallback() {
            @Override
            public final void run(Expected expected) {
                RNMBXOfflineModuleLegacy.getPackStatus$lambda$19$lambda$18(promise, rNMBXOfflineModuleLegacy, str, expected);
            }
        });
    }

    public static final void getPackStatus$lambda$19$lambda$18(final Promise promise, final RNMBXOfflineModuleLegacy rNMBXOfflineModuleLegacy, final String str, final Expected expected) {
        Intrinsics.checkNotNullParameter(expected, "expected");
        if (expected.isValue()) {
            List<OfflineRegion> list = (List) expected.getValue();
            if (list != null) {
                OfflineRegion regionByName = rNMBXOfflineModuleLegacy.getRegionByName(str, list);
                if (regionByName == null) {
                    promise.resolve(null);
                    Log.w(LOG_TAG, "getPackStatus - Unknown offline region");
                    return;
                } else {
                    regionByName.getStatus(new OfflineRegionStatusCallback() {
                        @Override
                        public final void run(Expected expected2) {
                            RNMBXOfflineModuleLegacy.getPackStatus$lambda$19$lambda$18$lambda$17$lambda$16(promise, expected, rNMBXOfflineModuleLegacy, str, expected2);
                        }
                    });
                    return;
                }
            }
            return;
        }
        promise.reject("getPackStatus error:", (String) expected.getError());
    }

    public static final void getPackStatus$lambda$19$lambda$18$lambda$17$lambda$16(Promise promise, Expected expected, RNMBXOfflineModuleLegacy rNMBXOfflineModuleLegacy, String str, Expected it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (it.isValue()) {
            OfflineRegionStatus offlineRegionStatus = (OfflineRegionStatus) it.getValue();
            if (offlineRegionStatus != null) {
                Intrinsics.checkNotNull(str);
                promise.resolve(rNMBXOfflineModuleLegacy.makeRegionStatus(str, offlineRegionStatus));
                return;
            }
            return;
        }
        promise.reject("getPackStatus error:", (String) expected.getError());
    }

    @ReactMethod
    public final void pausePackDownload(final String name, final Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        UiThreadUtil.runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                RNMBXOfflineModuleLegacy.pausePackDownload$lambda$22(this.f$0, promise, name);
            }
        });
    }

    public static final void pausePackDownload$lambda$22(final RNMBXOfflineModuleLegacy rNMBXOfflineModuleLegacy, final Promise promise, final String str) {
        rNMBXOfflineModuleLegacy.getOfflineRegionManager().getOfflineRegions(new OfflineRegionCallback() {
            @Override
            public final void run(Expected expected) {
                RNMBXOfflineModuleLegacy.pausePackDownload$lambda$22$lambda$21(promise, rNMBXOfflineModuleLegacy, str, expected);
            }
        });
    }

    public static final void pausePackDownload$lambda$22$lambda$21(Promise promise, RNMBXOfflineModuleLegacy rNMBXOfflineModuleLegacy, String str, Expected expected) {
        Intrinsics.checkNotNullParameter(expected, "expected");
        if (expected.isValue()) {
            List<OfflineRegion> list = (List) expected.getValue();
            if (list != null) {
                OfflineRegion regionByName = rNMBXOfflineModuleLegacy.getRegionByName(str, list);
                if (regionByName == null) {
                    promise.resolve(null);
                    Log.w(LOG_TAG, "pausePackDownload - Unknown offline region");
                    return;
                } else {
                    regionByName.setOfflineRegionDownloadState(OfflineRegionDownloadState.INACTIVE);
                    promise.resolve(null);
                    return;
                }
            }
            return;
        }
        promise.reject("pausePackDownload error:", (String) expected.getError());
    }

    @ReactMethod
    public final void resumePackDownload(final String name, final Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        UiThreadUtil.runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                RNMBXOfflineModuleLegacy.resumePackDownload$lambda$25(this.f$0, promise, name);
            }
        });
    }

    public static final void resumePackDownload$lambda$25(final RNMBXOfflineModuleLegacy rNMBXOfflineModuleLegacy, final Promise promise, final String str) {
        rNMBXOfflineModuleLegacy.getOfflineRegionManager().getOfflineRegions(new OfflineRegionCallback() {
            @Override
            public final void run(Expected expected) {
                RNMBXOfflineModuleLegacy.resumePackDownload$lambda$25$lambda$24(promise, rNMBXOfflineModuleLegacy, str, expected);
            }
        });
    }

    public static final void resumePackDownload$lambda$25$lambda$24(Promise promise, RNMBXOfflineModuleLegacy rNMBXOfflineModuleLegacy, String str, Expected expected) {
        Intrinsics.checkNotNullParameter(expected, "expected");
        if (expected.isValue()) {
            List<OfflineRegion> list = (List) expected.getValue();
            if (list != null) {
                OfflineRegion regionByName = rNMBXOfflineModuleLegacy.getRegionByName(str, list);
                if (regionByName == null) {
                    promise.resolve(null);
                    Log.w(LOG_TAG, "resumeRegionDownload - Unknown offline region");
                    return;
                } else {
                    regionByName.setOfflineRegionDownloadState(OfflineRegionDownloadState.ACTIVE);
                    promise.resolve(null);
                    return;
                }
            }
            return;
        }
        promise.reject("resumeRegionDownload error:", (String) expected.getError());
    }

    @ReactMethod
    public final void setTileCountLimit(final int tileCountLimit) {
        UiThreadUtil.runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                RNMBXOfflineModuleLegacy.setTileCountLimit$lambda$27(tileCountLimit, this);
            }
        });
    }

    public static final void setTileCountLimit$lambda$27(int i, final RNMBXOfflineModuleLegacy rNMBXOfflineModuleLegacy) {
        OfflineManagerKt.getOfflineRegionManager(new Function0() {
            @Override
            public final Object invoke() {
                return RNMBXOfflineModuleLegacy.setTileCountLimit$lambda$27$lambda$26(this.f$0);
            }
        }).setOfflineMapboxTileCountLimit(i);
    }

    public static final String setTileCountLimit$lambda$27$lambda$26(RNMBXOfflineModuleLegacy rNMBXOfflineModuleLegacy) {
        return RNMBXModule.INSTANCE.getAccessToken(rNMBXOfflineModuleLegacy.mReactContext);
    }

    @ReactMethod
    public final void resetDatabase(final Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        UiThreadUtil.runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                RNMBXOfflineModuleLegacy.resetDatabase$lambda$31(this.f$0, promise);
            }
        });
    }

    public static final void resetDatabase$lambda$31(RNMBXOfflineModuleLegacy rNMBXOfflineModuleLegacy, final Promise promise) {
        final Ref.IntRef intRef = new Ref.IntRef();
        rNMBXOfflineModuleLegacy.getOfflineRegionManager().getOfflineRegions(new OfflineRegionCallback() {
            @Override
            public final void run(Expected expected) {
                RNMBXOfflineModuleLegacy.resetDatabase$lambda$31$lambda$30(promise, intRef, expected);
            }
        });
    }

    public static final void resetDatabase$lambda$31$lambda$30(final Promise promise, final Ref.IntRef intRef, Expected expected) {
        Intrinsics.checkNotNullParameter(expected, "expected");
        if (expected.isValue()) {
            final List<OfflineRegion> list = (List) expected.getValue();
            if (list != null) {
                if (list.size() == 0) {
                    promise.resolve(null);
                }
                for (OfflineRegion offlineRegion : list) {
                    offlineRegion.setOfflineRegionDownloadState(OfflineRegionDownloadState.INACTIVE);
                    offlineRegion.purge(new AsyncOperationResultCallback() {
                        @Override
                        public final void run(Expected expected2) {
                            RNMBXOfflineModuleLegacy.resetDatabase$lambda$31$lambda$30$lambda$29$lambda$28(promise, intRef, list, expected2);
                        }
                    });
                }
                return;
            }
            return;
        }
        promise.reject("resetDatabase error:", (String) expected.getError());
    }

    public static final void resetDatabase$lambda$31$lambda$30$lambda$29$lambda$28(Promise promise, Ref.IntRef intRef, List list, Expected expected) {
        Intrinsics.checkNotNullParameter(expected, "expected");
        if (expected.isError()) {
            promise.reject("resetDatabase error:", (String) expected.getError());
            return;
        }
        intRef.element++;
        if (intRef.element == list.size()) {
            Log.d(LOG_TAG, "resetDatabase done: " + list.size() + " packs were purged");
            promise.resolve(null);
        }
    }

    @ReactMethod
    public final void migrateOfflineCache(Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        if (Build.VERSION.SDK_INT >= 26) {
            String str = this.mReactContext.getFilesDir().getAbsolutePath() + "/.mapbox/map_data";
            Path path = Paths.get(this.mReactContext.getFilesDir().getAbsolutePath() + "/mbgl-offline.db", new String[0]);
            Path path2 = Paths.get(str + "/map_data.db", new String[0]);
            try {
                if (!new File(path.toString()).exists()) {
                    Log.d(LOG_TAG, "Nothing to migrate");
                    promise.resolve(false);
                    return;
                } else {
                    new File(str).mkdirs();
                    Files.move(path, path2, StandardCopyOption.REPLACE_EXISTING);
                    Log.d(LOG_TAG, "v10 cache directory created successfully");
                    promise.resolve(true);
                    return;
                }
            } catch (Exception e) {
                String str2 = e + "... file move unsuccessful";
                Log.d(LOG_TAG, str2);
                promise.reject(str2);
                return;
            }
        }
        Log.w(LOG_TAG, "migrateOfflineCache only supported on api level 26 or later");
        promise.reject("\"migrateOfflineCache only supported on api level 26 or later\"");
    }
}
