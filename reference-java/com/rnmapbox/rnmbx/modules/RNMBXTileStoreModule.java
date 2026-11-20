package com.rnmapbox.rnmbx.modules;

import ch.qos.logback.core.joran.action.Action;
import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.module.annotations.ReactModule;
import com.mapbox.common.TileDataDomain;
import com.mapbox.common.TileStore;
import com.nimbusds.jose.HeaderParameterNames;
import com.rnmapbox.rnmbx.utils.extensions.DynamicKt;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@ReactModule(name = "RNMBXTileStoreModule")
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u001a\u0010\u0006\u001a\u00020\n2\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\fH\u0007J0\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\fH\u0007J\b\u0010\u0014\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/rnmapbox/rnmbx/modules/RNMBXTileStoreModule;", "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;", "mReactContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "shared", "Lcom/mapbox/common/TileStore;", "path", "", "", BaseJavaModule.METHOD_TYPE_PROMISE, "Lcom/facebook/react/bridge/Promise;", "setOption", HeaderParameterNames.AUTHENTICATION_TAG, "", Action.KEY_ATTRIBUTE, "domain", "value", "Lcom/facebook/react/bridge/ReadableMap;", "getName", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXTileStoreModule extends ReactContextBaseJavaModule {
    public static final String REACT_CLASS = "RNMBXTileStoreModule";
    private final ReactApplicationContext mReactContext;

    public static final Companion INSTANCE = new Companion(null);
    private static Map<Integer, TileStore> tileStores = new LinkedHashMap();
    private static Map<String, Integer> tileStorePathTags = new LinkedHashMap();
    private static int lastTag = "RNMBXTileStoreModule".hashCode() % 1096;

    public RNMBXTileStoreModule(ReactApplicationContext mReactContext) {
        super(mReactContext);
        Intrinsics.checkNotNullParameter(mReactContext, "mReactContext");
        this.mReactContext = mReactContext;
    }

    public final TileStore shared(String path) {
        if (path != null) {
            TileStore tileStoreCreate = TileStore.create(path);
            Intrinsics.checkNotNull(tileStoreCreate);
            return tileStoreCreate;
        }
        TileStore tileStoreCreate2 = TileStore.create();
        Intrinsics.checkNotNull(tileStoreCreate2);
        return tileStoreCreate2;
    }

    @ReactMethod
    public final void shared(String path, Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        Integer num = tileStorePathTags.get(path);
        if (num != null) {
            promise.resolve(num);
            return;
        }
        TileStore tileStoreShared = shared(path);
        int i = lastTag + 1;
        lastTag = i;
        tileStores.put(Integer.valueOf(i), tileStoreShared);
        tileStorePathTags.put(path, Integer.valueOf(i));
        promise.resolve(Integer.valueOf(i));
    }

    @ReactMethod
    public final void setOption(double tag, String key, String domain, ReadableMap value, Promise promise) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(domain, "domain");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(promise, "promise");
        TileStore tileStore = tileStores.get(Integer.valueOf((int) tag));
        if (tileStore == null) {
            promise.reject("RNMBXTileStoreModule", "No tile store found for tag");
            return;
        }
        String upperCase = domain.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        tileStore.setOption(key, TileDataDomain.valueOf(upperCase), DynamicKt.toValue(value.getDynamic("value")));
        promise.resolve(null);
    }

    @Override
    public String getName() {
        return "RNMBXTileStoreModule";
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R*\u0010\u0006\u001a\u0012\u0012\b\u0012\u00060\bj\u0002`\t\u0012\u0004\u0012\u00020\n0\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR,\u0010\u000f\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\b\u0012\u00060\bj\u0002`\t0\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/rnmapbox/rnmbx/modules/RNMBXTileStoreModule$Companion;", "", "<init>", "()V", "REACT_CLASS", "", "tileStores", "", "", "Lcom/rnmapbox/rnmbx/modules/Tag;", "Lcom/mapbox/common/TileStore;", "getTileStores", "()Ljava/util/Map;", "setTileStores", "(Ljava/util/Map;)V", "tileStorePathTags", "getTileStorePathTags", "setTileStorePathTags", "lastTag", "getLastTag", "()I", "setLastTag", "(I)V", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Map<Integer, TileStore> getTileStores() {
            return RNMBXTileStoreModule.tileStores;
        }

        public final void setTileStores(Map<Integer, TileStore> map) {
            Intrinsics.checkNotNullParameter(map, "<set-?>");
            RNMBXTileStoreModule.tileStores = map;
        }

        public final Map<String, Integer> getTileStorePathTags() {
            return RNMBXTileStoreModule.tileStorePathTags;
        }

        public final void setTileStorePathTags(Map<String, Integer> map) {
            Intrinsics.checkNotNullParameter(map, "<set-?>");
            RNMBXTileStoreModule.tileStorePathTags = map;
        }

        public final int getLastTag() {
            return RNMBXTileStoreModule.lastTag;
        }

        public final void setLastTag(int i) {
            RNMBXTileStoreModule.lastTag = i;
        }
    }
}
