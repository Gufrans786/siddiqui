package com.rnmapbox.rnmbx.modules;

import android.os.Build;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.bridge.JavaScriptModule;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.UiThreadUtil;
import com.facebook.react.bridge.WritableArray;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.bridge.WritableNativeMap;
import com.facebook.react.module.annotations.ReactModule;
import com.facebook.react.modules.core.RCTNativeAppEventEmitter;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.Value;
import com.mapbox.common.Cancelable;
import com.mapbox.common.NetworkRestriction;
import com.mapbox.common.TileRegion;
import com.mapbox.common.TileRegionCallback;
import com.mapbox.common.TileRegionError;
import com.mapbox.common.TileRegionErrorType;
import com.mapbox.common.TileRegionGeometryCallback;
import com.mapbox.common.TileRegionLoadOptions;
import com.mapbox.common.TileRegionLoadProgress;
import com.mapbox.common.TileRegionLoadProgressCallback;
import com.mapbox.common.TileRegionMetadataCallback;
import com.mapbox.common.TileRegionsCallback;
import com.mapbox.common.TileStore;
import com.mapbox.geojson.BoundingBox;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.geojson.Geometry;
import com.mapbox.geojson.GeometryCollection;
import com.mapbox.geojson.Point;
import com.mapbox.geojson.Polygon;
import com.mapbox.maps.GlyphsRasterizationMode;
import com.mapbox.maps.OfflineManager;
import com.mapbox.maps.StylePack;
import com.mapbox.maps.StylePackError;
import com.mapbox.maps.StylePackLoadOptions;
import com.mapbox.maps.StylePacksCallback;
import com.microsoft.codepush.react.CodePushConstants;
import com.rnmapbox.rnmbx.events.IEvent;
import com.rnmapbox.rnmbx.events.OfflineEvent;
import com.rnmapbox.rnmbx.events.constants.EventTypes;
import com.rnmapbox.rnmbx.utils.Logger;
import com.rnmapbox.rnmbx.utils.WriteableMapArrayOfKt;
import com.rnmapbox.rnmbx.utils.extensions.FeatureCollectionKt;
import com.rnmapbox.rnmbx.utils.extensions.GeometryKt;
import com.rnmapbox.rnmbx.utils.extensions.JSONObjectKt;
import com.rnmapbox.rnmbx.utils.extensions.ValueKt;
import com.rnmapbox.rnmbx.v11compat.offlinemanager.OfflineManagerKt;
import com.transistorsoft.locationmanager.config.TSAuthorization;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Triple;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.json.JSONException;
import org.json.JSONObject;

@ReactModule(name = "RNMBXOfflineModule")
@Metadata(d1 = {"\u0000Æ\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 d2\u00020\u0001:\u0001dB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u001c\u001a\u00020\bH\u0016J\u0012\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\bH\u0007J\u0017\u0010 \u001a\u00020\u001e2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0007¢\u0006\u0002\u0010#J\u0018\u0010$\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(H\u0007J\u0018\u0010)\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020\b2\u0006\u0010'\u001a\u00020(H\u0007J\u0018\u0010+\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020\b2\u0006\u0010'\u001a\u00020(H\u0007J\u0018\u0010,\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020\b2\u0006\u0010'\u001a\u00020(H\u0007J\u0010\u0010-\u001a\u00020\u001e2\u0006\u0010.\u001a\u00020\"H\u0007J\u0018\u0010/\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020\b2\u0006\u0010'\u001a\u00020(H\u0007J\u0010\u00100\u001a\u00020\u001e2\u0006\u0010'\u001a\u00020(H\u0007J\u001b\u00101\u001a\b\u0012\u0004\u0012\u00020\u001e022\u0006\u00103\u001a\u00020\t¢\u0006\u0004\b4\u00105J\u001e\u00106\u001a\u00020\u001e2\f\u00107\u001a\b\u0012\u0004\u0012\u000209082\u0006\u0010'\u001a\u00020(H\u0002J\"\u0010:\u001a\u00020&2\u0006\u0010;\u001a\u0002092\u0006\u0010<\u001a\u00020=2\b\u0010>\u001a\u0004\u0018\u00010?H\u0002J\u0010\u0010@\u001a\u00020A2\u0006\u0010;\u001a\u000209H\u0002J\u0010\u0010B\u001a\u00020C2\u0006\u00103\u001a\u00020\tH\u0002J,\u0010B\u001a\u00020C2\u0006\u0010*\u001a\u00020\b2\b\u0010D\u001a\u0004\u0018\u00010A2\u0006\u0010E\u001a\u00020F2\b\u0010>\u001a\u0004\u0018\u00010?H\u0002J \u0010G\u001a\u00020\u001e2\u0006\u0010D\u001a\u00020A2\u0006\u0010>\u001a\u00020?2\u0006\u0010E\u001a\u00020FH\u0002J\u0018\u0010H\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020\b2\u0006\u0010I\u001a\u00020JH\u0002J\u0010\u0010K\u001a\u00020=2\u0006\u0010L\u001a\u00020MH\u0002J\u0010\u0010N\u001a\u00020\u001e2\u0006\u0010'\u001a\u00020(H\u0007J\b\u0010O\u001a\u00020\u001eH\u0007J\u0010\u0010P\u001a\u00020\u001e2\u0006\u0010Q\u001a\u00020\u0010H\u0007J\u0014\u0010R\u001a\u0004\u0018\u00010S2\b\u0010>\u001a\u0004\u0018\u00010\bH\u0002J\u0010\u0010T\u001a\u00020\u001e2\u0006\u0010U\u001a\u00020VH\u0002J \u0010[\u001a\u00020\\2\u0006\u0010]\u001a\u00020\b2\u0006\u0010^\u001a\u00020\b2\u0006\u0010_\u001a\u00020\bH\u0002J \u0010`\u001a\u00020\\2\u0006\u0010*\u001a\u00020\b2\u0006\u0010D\u001a\u00020A2\u0006\u0010E\u001a\u00020FH\u0002J\u0012\u0010a\u001a\u0004\u0018\u00010?2\u0006\u0010b\u001a\u00020cH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R6\u0010\u0006\u001a\u001e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007j\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t`\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u0011\u001a\u00020\u00128FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0013\u0010\u0014R\u001b\u0010\u0017\u001a\u00020\u00188FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u0016\u001a\u0004\b\u0019\u0010\u001aR\u0014\u0010W\u001a\u00020X8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bY\u0010Z¨\u0006e"}, d2 = {"Lcom/rnmapbox/rnmbx/modules/RNMBXOfflineModule;", "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;", "mReactContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "tileRegionPacks", "Ljava/util/HashMap;", "", "Lcom/rnmapbox/rnmbx/modules/TileRegionPack;", "Lkotlin/collections/HashMap;", "getTileRegionPacks", "()Ljava/util/HashMap;", "setTileRegionPacks", "(Ljava/util/HashMap;)V", "mProgressEventThrottle", "", "tileStore", "Lcom/mapbox/common/TileStore;", "getTileStore", "()Lcom/mapbox/common/TileStore;", "tileStore$delegate", "Lkotlin/Lazy;", "offlineManager", "Lcom/mapbox/maps/OfflineManager;", "getOfflineManager", "()Lcom/mapbox/maps/OfflineManager;", "offlineManager$delegate", "getName", "addListener", "", "eventName", "removeListeners", CodePushConstants.LATEST_ROLLBACK_COUNT_KEY, "", "(Ljava/lang/Integer;)V", "createPack", "options", "Lcom/facebook/react/bridge/ReadableMap;", BaseJavaModule.METHOD_TYPE_PROMISE, "Lcom/facebook/react/bridge/Promise;", "getPackStatus", "name", "resumePackDownload", "pausePackDownload", "setTileCountLimit", "tileCountLimit", "deletePack", "getPacks", "startLoading", "Lkotlin/Result;", "pack", "startLoading-IoAF18A", "(Lcom/rnmapbox/rnmbx/modules/TileRegionPack;)Ljava/lang/Object;", "convertRegionsToJSON", "tileRegions", "", "Lcom/mapbox/common/TileRegion;", "convertRegionToJSON", "region", "geometry", "Lcom/mapbox/geojson/Geometry;", "metadata", "Lorg/json/JSONObject;", "toProgress", "Lcom/mapbox/common/TileRegionLoadProgress;", "_makeRegionStatusPayload", "Lcom/facebook/react/bridge/WritableMap;", "progress", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/rnmapbox/rnmbx/modules/TileRegionPackState;", "offlinePackProgressDidChange", "offlinePackDidReceiveError", "error", "Lcom/mapbox/common/TileRegionError;", "convertPointPairToBounds", "boundsFC", "Lcom/mapbox/geojson/FeatureCollection;", "resetDatabase", "migrateOfflineCache", "setProgressEventThrottle", "eventThrottle", "getMetadataBytes", "", "sendEvent", NotificationCompat.CATEGORY_EVENT, "Lcom/rnmapbox/rnmbx/events/IEvent;", "eventEmitter", "Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;", "getEventEmitter", "()Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;", "makeErrorEvent", "Lcom/rnmapbox/rnmbx/events/OfflineEvent;", "regionName", "errorType", "message", "makeProgressEvent", "toJSONObjectSupportingLegacyMetadata", "value", "Lcom/mapbox/bindgen/Value;", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXOfflineModule extends ReactContextBaseJavaModule {
    public static final String LOG_TAG = "RNMBXOfflineModule";
    public static final String OFFLINE_ERROR = "MapboxOfflineRegionError";
    public static final String OFFLINE_PROGRESS = "MapboxOfflineRegionProgress";
    public static final String REACT_CLASS = "RNMBXOfflineModule";
    private double mProgressEventThrottle;
    private final ReactApplicationContext mReactContext;

    private final Lazy offlineManager;
    private HashMap<String, TileRegionPack> tileRegionPacks;

    private final Lazy tileStore;

    @ReactMethod
    public final void addListener(String eventName) {
    }

    @ReactMethod
    public final void removeListeners(Integer count) {
    }

    public RNMBXOfflineModule(ReactApplicationContext mReactContext) {
        super(mReactContext);
        Intrinsics.checkNotNullParameter(mReactContext, "mReactContext");
        this.mReactContext = mReactContext;
        this.tileRegionPacks = new HashMap<>();
        this.mProgressEventThrottle = 300.0d;
        this.tileStore = LazyKt.lazy(new Function0() {
            @Override
            public final Object invoke() {
                return RNMBXOfflineModule.tileStore_delegate$lambda$0(this.f$0);
            }
        });
        this.offlineManager = LazyKt.lazy(new Function0() {
            @Override
            public final Object invoke() {
                return RNMBXOfflineModule.offlineManager_delegate$lambda$2(this.f$0);
            }
        });
    }

    public final HashMap<String, TileRegionPack> getTileRegionPacks() {
        return this.tileRegionPacks;
    }

    public final void setTileRegionPacks(HashMap<String, TileRegionPack> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.tileRegionPacks = map;
    }

    public final TileStore getTileStore() {
        return (TileStore) this.tileStore.getValue();
    }

    public static final TileStore tileStore_delegate$lambda$0(RNMBXOfflineModule rNMBXOfflineModule) {
        TileStore tileStoreCreate = TileStore.create();
        Intrinsics.checkNotNullExpressionValue(tileStoreCreate, "create(...)");
        OfflineManagerKt.setAccessToken(tileStoreCreate, RNMBXModule.INSTANCE.getAccessToken(rNMBXOfflineModule.mReactContext));
        return tileStoreCreate;
    }

    public final OfflineManager getOfflineManager() {
        return (OfflineManager) this.offlineManager.getValue();
    }

    public static final OfflineManager offlineManager_delegate$lambda$2(final RNMBXOfflineModule rNMBXOfflineModule) {
        return OfflineManagerKt.getOfflineManager(rNMBXOfflineModule.getTileStore(), new Function0() {
            @Override
            public final Object invoke() {
                return RNMBXOfflineModule.offlineManager_delegate$lambda$2$lambda$1(this.f$0);
            }
        });
    }

    public static final String offlineManager_delegate$lambda$2$lambda$1(RNMBXOfflineModule rNMBXOfflineModule) {
        return RNMBXModule.INSTANCE.getAccessToken(rNMBXOfflineModule.mReactContext);
    }

    @Override
    public String getName() {
        return "RNMBXOfflineModule";
    }

    @ReactMethod
    public final void createPack(ReadableMap options, Promise promise) throws JSONException {
        ArrayList arrayListEmptyList;
        Object objM1463constructorimpl;
        ArrayList<Object> arrayList;
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(promise, "promise");
        try {
            String string = options.getString("metadata");
            Intrinsics.checkNotNull(string);
            JSONObject jSONObject = new JSONObject(string);
            Intrinsics.checkNotNullExpressionValue(Value.valueOf(string), "valueOf(...)");
            String string2 = jSONObject.getString("name");
            Intrinsics.checkNotNull(string2);
            String string3 = options.getString("bounds");
            Intrinsics.checkNotNull(string3);
            FeatureCollection featureCollectionFromJson = FeatureCollection.fromJson(string3);
            Intrinsics.checkNotNull(featureCollectionFromJson);
            Geometry geometryConvertPointPairToBounds = convertPointPairToBounds(featureCollectionFromJson);
            ReadableArray array = options.getArray("tilesets");
            if (array == null || (arrayList = array.toArrayList()) == null) {
                arrayListEmptyList = CollectionsKt.emptyList();
            } else {
                ArrayList<Object> arrayList2 = arrayList;
                ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
                for (Object obj : arrayList2) {
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                    arrayList3.add((String) obj);
                }
                arrayListEmptyList = arrayList3;
            }
            List list = arrayListEmptyList;
            String string4 = options.getString("styleURL");
            Intrinsics.checkNotNull(string4);
            TileRegionPack tileRegionPack = new TileRegionPack(string2, null, string4, list, geometryConvertPointPairToBounds, new ZoomRange((byte) options.getInt("minZoom"), (byte) options.getInt("maxZoom")), jSONObject, 2, null);
            this.tileRegionPacks.put(string2, tileRegionPack);
            Object objM1335startLoadingIoAF18A = m1335startLoadingIoAF18A(tileRegionPack);
            if (Result.m1470isSuccessimpl(objM1335startLoadingIoAF18A)) {
                Result.Companion companion = Result.INSTANCE;
                objM1463constructorimpl = Result.m1463constructorimpl(WriteableMapArrayOfKt.writableMapOf(TuplesKt.to("bounds", string3), TuplesKt.to("metadata", string)));
            } else {
                objM1463constructorimpl = Result.m1463constructorimpl(objM1335startLoadingIoAF18A);
            }
            RNMBXOfflineModuleKt.toPromise(objM1463constructorimpl, promise, "createPack");
        } catch (Throwable th) {
            promise.reject("createPack", th);
        }
    }

    @ReactMethod
    public final void getPackStatus(final String name, final Promise promise) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(promise, "promise");
        if (this.tileRegionPacks.get(name) == null) {
            promise.reject(new Error("Pack: " + name + " not found"));
        } else {
            getTileStore().getTileRegion(name, new TileRegionCallback() {
                @Override
                public final void run(Expected expected) {
                    RNMBXOfflineModule.getPackStatus$lambda$10(this.f$0, name, promise, expected);
                }
            });
        }
    }

    public static final void getPackStatus$lambda$10(final RNMBXOfflineModule rNMBXOfflineModule, final String str, final Promise promise, Expected expected) {
        Intrinsics.checkNotNullParameter(expected, "expected");
        final TileRegion tileRegion = (TileRegion) expected.getValue();
        if (tileRegion != null) {
            rNMBXOfflineModule.getTileStore().getTileRegionMetadata(str, new TileRegionMetadataCallback() {
                @Override
                public final void run(Expected expected2) throws JSONException {
                    RNMBXOfflineModule.getPackStatus$lambda$10$lambda$8$lambda$7(this.f$0, str, tileRegion, promise, expected2);
                }
            });
            return;
        }
        Object error = expected.getError();
        Intrinsics.checkNotNull(error);
        promise.reject("RNMBXOfflineModule", ((TileRegionError) error).getMessage());
    }

    public static final void getPackStatus$lambda$10$lambda$8$lambda$7(RNMBXOfflineModule rNMBXOfflineModule, String str, TileRegion tileRegion, Promise promise, Expected expected) throws JSONException {
        Intrinsics.checkNotNullParameter(expected, "expected");
        Value value = (Value) expected.getValue();
        if (value != null) {
            TileRegionLoadProgress progress = rNMBXOfflineModule.toProgress(tileRegion);
            JSONObject jSONObjectSupportingLegacyMetadata = rNMBXOfflineModule.toJSONObjectSupportingLegacyMetadata(value);
            if (jSONObjectSupportingLegacyMetadata == null) {
                jSONObjectSupportingLegacyMetadata = new JSONObject();
            }
            TileRegionPack tileRegionPack = new TileRegionPack(str, null, progress, jSONObjectSupportingLegacyMetadata, 2, null);
            rNMBXOfflineModule.tileRegionPacks.put(str, tileRegionPack);
            promise.resolve(rNMBXOfflineModule._makeRegionStatusPayload(tileRegionPack));
            return;
        }
        Object error = expected.getError();
        Intrinsics.checkNotNull(error);
        promise.reject("RNMBXOfflineModule", ((TileRegionError) error).getMessage());
    }

    @ReactMethod
    public final void resumePackDownload(String name, Promise promise) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(promise, "promise");
        TileRegionPack tileRegionPack = this.tileRegionPacks.get(name);
        if (tileRegionPack == null) {
            promise.reject("resumePackDownload", "Unknown offline pack: " + name);
            return;
        }
        Object objM1335startLoadingIoAF18A = m1335startLoadingIoAF18A(tileRegionPack);
        if (Result.m1470isSuccessimpl(objM1335startLoadingIoAF18A)) {
            Result.Companion companion = Result.INSTANCE;
            objM1335startLoadingIoAF18A = null;
        }
        RNMBXOfflineModuleKt.toPromise(Result.m1463constructorimpl(objM1335startLoadingIoAF18A), promise, "resumePackDownload");
    }

    @ReactMethod
    public final void pausePackDownload(String name, Promise promise) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(promise, "promise");
        TileRegionPack tileRegionPack = this.tileRegionPacks.get(name);
        if (tileRegionPack == null) {
            promise.reject("resumeRegionDownload", "Unknown offline region");
            return;
        }
        if (tileRegionPack.getCancelable() == null) {
            promise.reject("resumeRegionDownload", "Offline pack: " + name + " already cancelled");
            return;
        }
        Cancelable cancelable = tileRegionPack.getCancelable();
        if (cancelable != null) {
            cancelable.cancel();
        }
        tileRegionPack.setCancelable(null);
        promise.resolve(null);
    }

    @ReactMethod
    public final void setTileCountLimit(int tileCountLimit) {
        OfflineManagerKt.getOfflineRegionManager(new Function0() {
            @Override
            public final Object invoke() {
                return RNMBXOfflineModule.setTileCountLimit$lambda$12(this.f$0);
            }
        }).setOfflineMapboxTileCountLimit(tileCountLimit);
    }

    public static final String setTileCountLimit$lambda$12(RNMBXOfflineModule rNMBXOfflineModule) {
        return RNMBXModule.INSTANCE.getAccessToken(rNMBXOfflineModule.mReactContext);
    }

    @ReactMethod
    public final void deletePack(final String name, final Promise promise) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(promise, "promise");
        TileRegionPack tileRegionPack = this.tileRegionPacks.get(name);
        if (tileRegionPack == null) {
            promise.resolve(null);
        } else if (tileRegionPack.getState() == TileRegionPackState.INVALID) {
            promise.reject("deletePack", "Pack: " + name + " has already been deleted");
        } else {
            getTileStore().removeTileRegion(name, new TileRegionCallback() {
                @Override
                public void run(Expected<TileRegionError, TileRegion> expected) {
                    String message;
                    Intrinsics.checkNotNullParameter(expected, "expected");
                    TileRegion value = expected.getValue();
                    RNMBXOfflineModule rNMBXOfflineModule = RNMBXOfflineModule.this;
                    String str = name;
                    Promise promise2 = promise;
                    TileRegion tileRegion = value;
                    TileRegionPack tileRegionPack2 = rNMBXOfflineModule.getTileRegionPacks().get(str);
                    Intrinsics.checkNotNull(tileRegionPack2);
                    tileRegionPack2.setState(TileRegionPackState.INVALID);
                    promise2.resolve(null);
                    if (tileRegion == null) {
                        Promise promise3 = promise;
                        TileRegionError error = expected.getError();
                        if (error == null || (message = error.getMessage()) == null) {
                            message = "n/a";
                        }
                        promise3.reject("deletePack", message);
                        Unit unit = Unit.INSTANCE;
                    }
                }
            });
        }
    }

    @ReactMethod
    public final void getPacks(final Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        getTileStore().getAllTileRegions(new TileRegionsCallback() {
            @Override
            public void run(final Expected<TileRegionError, List<TileRegion>> expected) {
                Intrinsics.checkNotNullParameter(expected, "expected");
                final RNMBXOfflineModule rNMBXOfflineModule = RNMBXOfflineModule.this;
                final Promise promise2 = promise;
                UiThreadUtil.runOnUiThread(new Runnable() {
                    @Override
                    public void run() throws JSONException {
                        List<TileRegion> value = expected.getValue();
                        if (value != null) {
                            rNMBXOfflineModule.convertRegionsToJSON(value, promise2);
                            return;
                        }
                        Promise promise3 = promise2;
                        TileRegionError error = expected.getError();
                        Intrinsics.checkNotNull(error);
                        promise3.reject("getPacks", error.getMessage());
                    }
                });
            }
        });
    }

    public final Object m1335startLoadingIoAF18A(TileRegionPack pack) {
        Intrinsics.checkNotNullParameter(pack, "pack");
        try {
            final String name = pack.getName();
            Geometry bounds = pack.getBounds();
            if (bounds == null) {
                Result.Companion companion = Result.INSTANCE;
                return Result.m1463constructorimpl(ResultKt.createFailure(new IllegalArgumentException("startLoading failed as there are no bounds in pack")));
            }
            ZoomRange zoomRange = pack.getZoomRange();
            if (zoomRange == null) {
                Result.Companion companion2 = Result.INSTANCE;
                return Result.m1463constructorimpl(ResultKt.createFailure(new IllegalArgumentException("startLoading failed as there is no zoomRange in pack")));
            }
            String styleURI = pack.getStyleURI();
            if (styleURI == null) {
                Result.Companion companion3 = Result.INSTANCE;
                return Result.m1463constructorimpl(ResultKt.createFailure(new IllegalArgumentException("startLoading failed as there is no styleURI in pack")));
            }
            final JSONObject metadata = pack.getMetadata();
            if (metadata == null) {
                Result.Companion companion4 = Result.INSTANCE;
                return Result.m1463constructorimpl(ResultKt.createFailure(new IllegalArgumentException("startLoading failed as there is no metadata in pack")));
            }
            StylePackLoadOptions stylePackLoadOptionsBuild = new StylePackLoadOptions.Builder().glyphsRasterizationMode(GlyphsRasterizationMode.IDEOGRAPHS_RASTERIZED_LOCALLY).metadata(JSONObjectKt.toMapboxValue(metadata)).build();
            OfflineManager offlineManager = getOfflineManager();
            byte minZoom = zoomRange.getMinZoom();
            byte maxZoom = zoomRange.getMaxZoom();
            Intrinsics.checkNotNull(stylePackLoadOptionsBuild);
            TileRegionLoadOptions tileRegionLoadOptionsBuild = new TileRegionLoadOptions.Builder().geometry(bounds).descriptors(OfflineManagerKt.getTilesetDescriptors(offlineManager, styleURI, minZoom, maxZoom, stylePackLoadOptionsBuild, pack.getTilesets())).metadata(JSONObjectKt.toMapboxValue(metadata)).acceptExpired(true).networkRestriction(NetworkRestriction.NONE).averageBytesPerSecond(null).build();
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            Cancelable cancelableLoadTileRegion = getTileStore().loadTileRegion(name, tileRegionLoadOptionsBuild, new TileRegionLoadProgressCallback() {
                @Override
                public final void run(TileRegionLoadProgress tileRegionLoadProgress) throws JSONException {
                    RNMBXOfflineModule.startLoading_IoAF18A$lambda$13(objectRef, this, name, metadata, tileRegionLoadProgress);
                }
            }, new TileRegionCallback() {
                @Override
                public final void run(Expected expected) throws JSONException {
                    RNMBXOfflineModule.startLoading_IoAF18A$lambda$16(this.f$0, objectRef, metadata, name, expected);
                }
            });
            Intrinsics.checkNotNullExpressionValue(cancelableLoadTileRegion, "loadTileRegion(...)");
            TileRegionPack tileRegionPack = this.tileRegionPacks.get(name);
            Intrinsics.checkNotNull(tileRegionPack);
            tileRegionPack.setCancelable(cancelableLoadTileRegion);
            Result.Companion companion5 = Result.INSTANCE;
            return Result.m1463constructorimpl(Unit.INSTANCE);
        } catch (Exception e) {
            Result.Companion companion6 = Result.INSTANCE;
            return Result.m1463constructorimpl(ResultKt.createFailure(e));
        }
    }

    public static final void startLoading_IoAF18A$lambda$13(Ref.ObjectRef objectRef, RNMBXOfflineModule rNMBXOfflineModule, String str, JSONObject jSONObject, TileRegionLoadProgress progress) throws JSONException {
        Intrinsics.checkNotNullParameter(progress, "progress");
        objectRef.element = progress;
        TileRegionPack tileRegionPack = rNMBXOfflineModule.tileRegionPacks.get(str);
        Intrinsics.checkNotNull(tileRegionPack);
        tileRegionPack.setProgress(progress);
        TileRegionPack tileRegionPack2 = rNMBXOfflineModule.tileRegionPacks.get(str);
        Intrinsics.checkNotNull(tileRegionPack2);
        tileRegionPack2.setState(TileRegionPackState.ACTIVE);
        rNMBXOfflineModule.offlinePackProgressDidChange(progress, jSONObject, TileRegionPackState.ACTIVE);
    }

    public static final void startLoading_IoAF18A$lambda$16(RNMBXOfflineModule rNMBXOfflineModule, Ref.ObjectRef objectRef, JSONObject jSONObject, String str, Expected expected) throws JSONException {
        Intrinsics.checkNotNullParameter(expected, "expected");
        if (((TileRegion) expected.getValue()) != null) {
            TileRegionLoadProgress tileRegionLoadProgress = (TileRegionLoadProgress) objectRef.element;
            if (tileRegionLoadProgress != null) {
                rNMBXOfflineModule.offlinePackProgressDidChange(tileRegionLoadProgress, jSONObject, TileRegionPackState.COMPLETE);
            } else {
                Logger.INSTANCE.w("RNMBXOfflineModule", "startLoading: tile region completed, but got no progress information");
            }
            TileRegionPack tileRegionPack = rNMBXOfflineModule.tileRegionPacks.get(str);
            Intrinsics.checkNotNull(tileRegionPack);
            tileRegionPack.setState(TileRegionPackState.COMPLETE);
            return;
        }
        TileRegionError tileRegionError = (TileRegionError) expected.getError();
        if (tileRegionError == null) {
            tileRegionError = new TileRegionError(TileRegionErrorType.OTHER, "RNMBXOfflineModule neither value nor error in expected");
        }
        TileRegionPack tileRegionPack2 = rNMBXOfflineModule.tileRegionPacks.get(str);
        Intrinsics.checkNotNull(tileRegionPack2);
        tileRegionPack2.setState(TileRegionPackState.INACTIVE);
        rNMBXOfflineModule.offlinePackDidReceiveError(str, tileRegionError);
    }

    public final void convertRegionsToJSON(List<? extends TileRegion> tileRegions, Promise promise) throws JSONException {
        TileRegionError tileRegionError;
        final CountDownLatch countDownLatch = new CountDownLatch(tileRegions.size() * 2);
        new LinkedHashMap();
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        final LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        new ArrayList();
        try {
            for (final TileRegion tileRegion : tileRegions) {
                getTileStore().getTileRegionGeometry(tileRegion.getId(), new TileRegionGeometryCallback() {
                    @Override
                    public final void run(Expected expected) {
                        RNMBXOfflineModule.convertRegionsToJSON$lambda$17(linkedHashMap, tileRegion, countDownLatch, expected);
                    }
                });
                getTileStore().getTileRegionMetadata(tileRegion.getId(), new TileRegionMetadataCallback() {
                    @Override
                    public final void run(Expected expected) {
                        RNMBXOfflineModule.convertRegionsToJSON$lambda$18(linkedHashMap2, tileRegion, countDownLatch, expected);
                    }
                });
            }
        } catch (Error unused) {
            Logger.INSTANCE.e("RNMBXOfflineModule", "convertRegionsToJSON. failed to iterate regions");
        }
        try {
            countDownLatch.await();
            Iterator it = linkedHashMap.entrySet().iterator();
            do {
                if (!it.hasNext()) {
                    tileRegionError = null;
                    break;
                } else {
                    Map.Entry entry = (Map.Entry) it.next();
                    tileRegionError = (TileRegionError) ((Expected) ((Pair) entry.getValue()).getFirst()).getError();
                }
            } while (tileRegionError == null);
            if (tileRegionError != null) {
                promise.reject("convertRegionsToJSON", tileRegionError.getMessage());
                return;
            }
            ArrayList arrayList = new ArrayList(linkedHashMap.size());
            for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                String str = (String) entry2.getKey();
                Pair pair = (Pair) entry2.getValue();
                Expected expected = (Expected) pair.component1();
                TileRegion tileRegion2 = (TileRegion) pair.component2();
                Object value = expected.getValue();
                Intrinsics.checkNotNull(value);
                Geometry geometry = (Geometry) value;
                Expected expected2 = (Expected) linkedHashMap2.get(str);
                arrayList.add(new Pair(str, new Triple(geometry, tileRegion2, expected2 != null ? (Value) expected2.getValue() : null)));
            }
            ArrayList<Pair> arrayList2 = arrayList;
            ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
            for (Pair pair2 : arrayList2) {
                Triple triple = (Triple) pair2.component2();
                Geometry geometry2 = (Geometry) triple.component1();
                TileRegion tileRegion3 = (TileRegion) triple.component2();
                Value value2 = (Value) triple.component3();
                JSONObject jSONObjectSupportingLegacyMetadata = value2 != null ? toJSONObjectSupportingLegacyMetadata(value2) : null;
                ReadableMap readableMapConvertRegionToJSON = convertRegionToJSON(tileRegion3, geometry2, jSONObjectSupportingLegacyMetadata);
                TileRegionPack tileRegionPack = this.tileRegionPacks.get(tileRegion3.getId());
                if (tileRegionPack == null) {
                    String id = tileRegion3.getId();
                    Intrinsics.checkNotNullExpressionValue(id, "getId(...)");
                    TileRegionPackState tileRegionPackState = TileRegionPackState.UNKNOWN;
                    TileRegionLoadProgress progress = toProgress(tileRegion3);
                    if (jSONObjectSupportingLegacyMetadata == null) {
                        jSONObjectSupportingLegacyMetadata = new JSONObject();
                    }
                    tileRegionPack = new TileRegionPack(id, tileRegionPackState, progress, jSONObjectSupportingLegacyMetadata);
                }
                if (RNMBXOfflineModuleKt.hasCompleted(tileRegion3)) {
                    tileRegionPack.setState(TileRegionPackState.COMPLETE);
                }
                this.tileRegionPacks.put(tileRegion3.getId(), tileRegionPack);
                arrayList3.add(readableMapConvertRegionToJSON);
            }
            ReadableMap[] readableMapArr = (ReadableMap[]) arrayList3.toArray(new ReadableMap[0]);
            promise.resolve(WriteableMapArrayOfKt.writableArrayOf(Arrays.copyOf(readableMapArr, readableMapArr.length)));
        } catch (InterruptedException e) {
            promise.reject(e);
        }
    }

    public static final void convertRegionsToJSON$lambda$17(Map map, TileRegion tileRegion, CountDownLatch countDownLatch, Expected result) {
        Intrinsics.checkNotNullParameter(result, "result");
        map.put(tileRegion.getId(), new Pair(result, tileRegion));
        countDownLatch.countDown();
    }

    public static final void convertRegionsToJSON$lambda$18(Map map, TileRegion tileRegion, CountDownLatch countDownLatch, Expected result) {
        Intrinsics.checkNotNullParameter(result, "result");
        map.put(tileRegion.getId(), result);
        countDownLatch.countDown();
    }

    private final ReadableMap convertRegionToJSON(TileRegion region, Geometry geometry, JSONObject metadata) throws JSONException {
        BoundingBox boundingBoxCalculateBoundingBox = GeometryKt.calculateBoundingBox(geometry);
        WritableArray writableArrayWritableArrayOf = WriteableMapArrayOfKt.writableArrayOf(Double.valueOf(boundingBoxCalculateBoundingBox.northeast().longitude()), Double.valueOf(boundingBoxCalculateBoundingBox.northeast().latitude()), Double.valueOf(boundingBoxCalculateBoundingBox.southwest().longitude()), Double.valueOf(boundingBoxCalculateBoundingBox.southwest().latitude()));
        boolean z = region.getCompletedResourceCount() == region.getRequiredResourceCount();
        if (metadata == null) {
            metadata = new JSONObject();
        }
        JSONObject jSONObjectPut = metadata.put("name", region.getId());
        Pair[] pairArr = new Pair[6];
        pairArr[0] = TuplesKt.to("requiredResourceCount", Long.valueOf(region.getRequiredResourceCount()));
        pairArr[1] = TuplesKt.to("completedResourceCount", Long.valueOf(region.getCompletedResourceCount()));
        pairArr[2] = TuplesKt.to("completedResourceSize", Long.valueOf(region.getCompletedResourceSize()));
        pairArr[3] = TuplesKt.to(RemoteConfigConstants.ResponseFieldKey.STATE, (z ? TileRegionPackState.COMPLETE : TileRegionPackState.UNKNOWN).getRawValue());
        pairArr[4] = TuplesKt.to("metadata", jSONObjectPut.toString());
        pairArr[5] = TuplesKt.to("bounds", writableArrayWritableArrayOf);
        WritableMap writableMapWritableMapOf = WriteableMapArrayOfKt.writableMapOf(pairArr);
        if (region.getRequiredResourceCount() > 0) {
            writableMapWritableMapOf.putDouble("percentage", RNMBXOfflineModuleKt.toPercentage(region));
        } else {
            writableMapWritableMapOf.putNull("percentage");
        }
        Date expires = region.getExpires();
        if (expires != null) {
            writableMapWritableMapOf.putString(TSAuthorization.FIELD_EXPIRES, expires.toString());
        }
        return writableMapWritableMapOf;
    }

    private final TileRegionLoadProgress toProgress(TileRegion region) {
        return new TileRegionLoadProgress(region.getCompletedResourceCount(), region.getCompletedResourceSize(), 0L, region.getRequiredResourceCount(), 0L, 0L);
    }

    private final WritableMap _makeRegionStatusPayload(TileRegionPack pack) {
        return _makeRegionStatusPayload(pack.getName(), pack.getProgress(), pack.getState(), pack.getMetadata());
    }

    private final WritableMap _makeRegionStatusPayload(String name, TileRegionLoadProgress progress, TileRegionPackState state, JSONObject metadata) {
        WritableMap writableMapWritableMapOf;
        Intrinsics.checkNotNullExpressionValue(Arguments.createMap(), "createMap(...)");
        if (progress != null) {
            Pair[] pairArr = new Pair[9];
            if (RNMBXOfflineModuleKt.hasCompleted(progress)) {
                state = TileRegionPackState.COMPLETE;
            }
            pairArr[0] = TuplesKt.to(RemoteConfigConstants.ResponseFieldKey.STATE, state.getRawValue());
            pairArr[1] = TuplesKt.to("name", name);
            pairArr[2] = TuplesKt.to("percentage", Double.valueOf(RNMBXOfflineModuleKt.toPercentage(progress)));
            pairArr[3] = TuplesKt.to("completedResourceCount", Long.valueOf(progress.getCompletedResourceCount()));
            pairArr[4] = TuplesKt.to("completedResourceSize", Long.valueOf(progress.getCompletedResourceSize()));
            pairArr[5] = TuplesKt.to("erroredResourceCount", Long.valueOf(progress.getErroredResourceCount()));
            pairArr[6] = TuplesKt.to("loadedResourceSize", Long.valueOf(progress.getLoadedResourceSize()));
            pairArr[7] = TuplesKt.to("loadedResourceCount", Long.valueOf(progress.getLoadedResourceCount()));
            pairArr[8] = TuplesKt.to("requiredResourceCount", Long.valueOf(progress.getRequiredResourceCount()));
            writableMapWritableMapOf = WriteableMapArrayOfKt.writableMapOf(pairArr);
        } else {
            writableMapWritableMapOf = WriteableMapArrayOfKt.writableMapOf(TuplesKt.to(RemoteConfigConstants.ResponseFieldKey.STATE, state.getRawValue()), TuplesKt.to("name", name), TuplesKt.to("percentage", null));
        }
        if (metadata != null) {
            writableMapWritableMapOf.putMap("metadata", JSONObjectKt.toReadableMap(metadata));
        }
        return writableMapWritableMapOf;
    }

    private final void offlinePackProgressDidChange(TileRegionLoadProgress progress, JSONObject metadata, TileRegionPackState state) throws JSONException {
        String string = metadata.getString("name");
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        sendEvent(makeProgressEvent(string, progress, state));
    }

    private final void offlinePackDidReceiveError(String name, TileRegionError error) {
        sendEvent(new OfflineEvent(OFFLINE_ERROR, EventTypes.OFFLINE_ERROR, WriteableMapArrayOfKt.writableMapOf(TuplesKt.to("name", name), TuplesKt.to("message", error.getMessage()))));
    }

    private final Geometry convertPointPairToBounds(FeatureCollection boundsFC) {
        GeometryCollection geometryCollection = FeatureCollectionKt.toGeometryCollection(boundsFC);
        List<Geometry> listGeometries = geometryCollection.geometries();
        Intrinsics.checkNotNullExpressionValue(listGeometries, "geometries(...)");
        if (listGeometries.size() != 2) {
            return geometryCollection;
        }
        Point point = (Point) listGeometries.get(0);
        Point point2 = (Point) listGeometries.get(1);
        if (point == null || point2 == null) {
            return geometryCollection;
        }
        Polygon polygonFromLngLats = Polygon.fromLngLats((List<List<Point>>) CollectionsKt.listOf(CollectionsKt.listOf((Object[]) new Point[]{point, Point.fromLngLat(point2.longitude(), point.latitude()), point2, Point.fromLngLat(point.longitude(), point2.latitude()), point})));
        Intrinsics.checkNotNullExpressionValue(polygonFromLngLats, "fromLngLats(...)");
        return polygonFromLngLats;
    }

    @ReactMethod
    public final void resetDatabase(final Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        getTileStore().getAllTileRegions(new TileRegionsCallback() {
            @Override
            public final void run(Expected expected) {
                RNMBXOfflineModule.resetDatabase$lambda$29(this.f$0, promise, expected);
            }
        });
    }

    public static final void resetDatabase$lambda$29(final RNMBXOfflineModule rNMBXOfflineModule, final Promise promise, Expected expected) {
        String message;
        Intrinsics.checkNotNullParameter(expected, "expected");
        List list = (List) expected.getValue();
        if (list == null) {
            Logger.INSTANCE.w("RNMBXOfflineModule", "resetDatabase: error: " + expected.getError());
            TileRegionError tileRegionError = (TileRegionError) expected.getError();
            if (tileRegionError == null || (message = tileRegionError.getMessage()) == null) {
                message = "n/a";
            }
            promise.reject(new Error(message));
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            rNMBXOfflineModule.getTileStore().removeTileRegion(((TileRegion) it.next()).getId());
        }
        rNMBXOfflineModule.getOfflineManager().getAllStylePacks(new StylePacksCallback() {
            @Override
            public final void run(Expected expected2) {
                RNMBXOfflineModule.resetDatabase$lambda$29$lambda$27$lambda$26(this.f$0, promise, expected2);
            }
        });
        promise.resolve(null);
    }

    public static final void resetDatabase$lambda$29$lambda$27$lambda$26(RNMBXOfflineModule rNMBXOfflineModule, Promise promise, Expected expected) {
        String message;
        Intrinsics.checkNotNullParameter(expected, "expected");
        List list = (List) expected.getValue();
        if (list == null) {
            Logger.INSTANCE.w("RNMBXOfflineModule", "resetDatabase: error: " + expected.getError());
            StylePackError stylePackError = (StylePackError) expected.getError();
            if (stylePackError == null || (message = stylePackError.getMessage()) == null) {
                message = "n/a";
            }
            promise.reject(new Error(message));
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            rNMBXOfflineModule.getOfflineManager().removeStylePack(((StylePack) it.next()).getStyleURI());
        }
        promise.resolve(null);
    }

    @ReactMethod
    public final void migrateOfflineCache() {
        if (Build.VERSION.SDK_INT >= 26) {
            String str = this.mReactContext.getFilesDir().getAbsolutePath() + "/.mapbox/map_data";
            Path path = Paths.get(this.mReactContext.getFilesDir().getAbsolutePath() + "/mbgl-offline.db", new String[0]);
            Path path2 = Paths.get(str + "/map_data.db", new String[0]);
            try {
                new File(str).mkdirs();
                Files.move(path, path2, StandardCopyOption.REPLACE_EXISTING);
                Log.d("RNMBXOfflineModule", "v10 cache directory created successfully");
                return;
            } catch (Exception e) {
                Log.d("RNMBXOfflineModule", e + "... file move unsuccessful");
                return;
            }
        }
        Logger.INSTANCE.w("RNMBXOfflineModule", "migrateOfflineCache only supported on api level 26 or later");
    }

    @ReactMethod
    public final void setProgressEventThrottle(double eventThrottle) {
        this.mProgressEventThrottle = eventThrottle;
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
            Log.w("RNMBXOfflineModule", e.getLocalizedMessage());
            return null;
        }
    }

    private final void sendEvent(IEvent event) {
        getEventEmitter().emit(event.getKey(), event.toJSON());
    }

    private final RCTNativeAppEventEmitter getEventEmitter() {
        JavaScriptModule jSModule = this.mReactContext.getJSModule(RCTNativeAppEventEmitter.class);
        Intrinsics.checkNotNullExpressionValue(jSModule, "getJSModule(...)");
        return (RCTNativeAppEventEmitter) jSModule;
    }

    private final OfflineEvent makeErrorEvent(String regionName, String errorType, String message) {
        WritableNativeMap writableNativeMap = new WritableNativeMap();
        writableNativeMap.putString("message", message);
        writableNativeMap.putString("name", regionName);
        return new OfflineEvent(OFFLINE_ERROR, errorType, writableNativeMap);
    }

    private final OfflineEvent makeProgressEvent(String name, TileRegionLoadProgress progress, TileRegionPackState state) {
        return new OfflineEvent(OFFLINE_PROGRESS, EventTypes.OFFLINE_STATUS, _makeRegionStatusPayload(name, progress, state, null));
    }

    private final JSONObject toJSONObjectSupportingLegacyMetadata(Value value) throws JSONException {
        try {
            return ValueKt.toJSONObject(value);
        } catch (JSONException e) {
            try {
                return new JSONObject(value.toString());
            } catch (JSONException unused) {
                throw e;
            }
        }
    }
}
