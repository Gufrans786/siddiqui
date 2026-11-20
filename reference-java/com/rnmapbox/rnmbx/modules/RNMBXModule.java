package com.rnmapbox.rnmbx.modules;

import android.os.Handler;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.common.MapBuilder;
import com.facebook.react.module.annotations.ReactModule;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.None;
import com.mapbox.maps.AsyncOperationResultCallback;
import com.mapbox.maps.MapInitOptions;
import com.mapbox.maps.MapView;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.Style;
import com.mapbox.maps.extension.style.layers.properties.generated.LineJoin;
import com.mapbox.maps.plugin.attribution.AttributionUtils;
import com.rnmapbox.rnmbx.components.styles.sources.RNMBXSource;
import com.rnmapbox.rnmbx.events.constants.EventTypes;
import com.rnmapbox.rnmbx.utils.Logger;
import com.rnmapbox.rnmbx.v11compat.mapboxmap.MapboxMapKt;
import com.rnmapbox.rnmbx.v11compat.resourceoption.ResourceOptionKt;
import com.transistorsoft.locationmanager.config.TSAuthorization;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.PatternSyntaxException;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

@ReactModule(name = "RNMBXModule")
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\b\u001a\u00020\tH\u0016J\u0016\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bH\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\u001a\u0010\u0014\u001a\u00020\u000e2\b\u0010\u0015\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\u0012\u0010\u0016\u001a\u00020\u000e2\b\u0010\u0017\u001a\u0004\u0018\u00010\tH\u0007J\u0018\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\tH\u0007J$\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\t2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0007J\u0010\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\tH\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/rnmapbox/rnmbx/modules/RNMBXModule;", "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;", "mReactContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "mUiThreadHandler", "Landroid/os/Handler;", "getName", "", "getConstants", "", "", "setTelemetryEnabled", "", "telemetryEnabled", "", "clearData", BaseJavaModule.METHOD_TYPE_PROMISE, "Lcom/facebook/react/bridge/Promise;", "setAccessToken", TSAuthorization.FIELD_ACCESS_TOKEN, "setWellKnownTileServer", "tileServer", "addCustomHeader", "headerName", "headerValue", "addCustomHeaderWithOptions", "options", "Lcom/facebook/react/bridge/ReadableMap;", "removeCustomHeader", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXModule extends ReactContextBaseJavaModule {

    public static final Companion INSTANCE = new Companion(null);
    public static final String LOG_TAG = "RNMBXModule";
    public static final String REACT_CLASS = "RNMBXModule";
    private static final boolean customHeaderInterceptorAdded = false;
    private final ReactApplicationContext mReactContext;
    private final Handler mUiThreadHandler;

    @JvmStatic
    public static final String getAccessToken(ReactApplicationContext reactApplicationContext) {
        return INSTANCE.getAccessToken(reactApplicationContext);
    }

    public RNMBXModule(ReactApplicationContext mReactContext) {
        super(mReactContext);
        Intrinsics.checkNotNullParameter(mReactContext, "mReactContext");
        this.mReactContext = mReactContext;
    }

    @Override
    public String getName() {
        return "RNMBXModule";
    }

    @Override
    public Map<String, Object> getConstants() {
        HashMap map = new HashMap();
        map.put("Street", Style.MAPBOX_STREETS);
        map.put("Dark", Style.DARK);
        map.put("Light", Style.LIGHT);
        map.put("Outdoors", Style.OUTDOORS);
        map.put("Satellite", Style.SATELLITE);
        map.put("SatelliteStreet", Style.SATELLITE_STREETS);
        map.put("TrafficDay", Style.TRAFFIC_DAY);
        map.put("TrafficNight", Style.TRAFFIC_NIGHT);
        HashMap map2 = new HashMap();
        map2.put("Mapbox", "mapbox");
        HashMap map3 = new HashMap();
        map3.put("Library", "mapbox");
        HashMap map4 = new HashMap();
        map4.put("MapClick", EventTypes.MAP_CLICK);
        map4.put("MapLongClick", EventTypes.MAP_LONG_CLICK);
        map4.put("RegionWillChange", EventTypes.REGION_WILL_CHANGE);
        map4.put("RegionIsChanging", EventTypes.REGION_IS_CHANGING);
        map4.put("CameraChanged", EventTypes.CAMERA_CHANGED);
        map4.put("RegionDidChange", EventTypes.REGION_DID_CHANGE);
        map4.put("MapIdle", EventTypes.MAP_IDLE);
        map4.put("UserLocationUpdated", EventTypes.USER_LOCATION_UPDATED);
        map4.put("WillStartLoadingMap", EventTypes.WILL_START_LOADING_MAP);
        map4.put("DidFinishLoadingMap", EventTypes.DID_FINISH_LOADING_MAP);
        map4.put("DidFailLoadingMap", EventTypes.DID_FAIL_LOADING_MAP);
        map4.put("WillStartRenderingFrame", EventTypes.WILL_START_RENDERING_FRAME);
        map4.put("DidFinishRenderingFrame", EventTypes.DID_FINISH_RENDERING_FRAME);
        map4.put("DidFinishRenderingFrameFully", EventTypes.DID_FINISH_RENDERING_FRAME_FULLY);
        map4.put("WillStartRenderingMap", EventTypes.WILL_START_RENDERING_MAP);
        map4.put("DidFinishRenderingMap", EventTypes.DID_FINISH_RENDERING_MAP);
        map4.put("DidFinishRenderingMapFully", EventTypes.DID_FINISH_RENDERING_MAP_FULLY);
        map4.put("DidFinishLoadingStyle", EventTypes.DID_FINISH_LOADING_STYLE);
        map4.put("MapLoadingError", EventTypes.MAP_LOADING_ERROR);
        HashMap map5 = new HashMap();
        map5.put("DefaultSourceID", RNMBXSource.DEFAULT_ID);
        HashMap map6 = new HashMap();
        map6.put("Bevel", LineJoin.BEVEL.getValue());
        map6.put("Round", LineJoin.ROUND.getValue());
        map6.put("Miter", LineJoin.MITER.getValue());
        HashMap map7 = new HashMap();
        map7.put("Flight", 1);
        map7.put("Ease", 2);
        map7.put("Linear", 3);
        map7.put("Move", 4);
        map7.put("None", 5);
        HashMap map8 = new HashMap();
        map8.put("Inactive", TileRegionPackState.INACTIVE.getRawValue());
        map8.put("Active", TileRegionPackState.ACTIVE.getRawValue());
        map8.put("Complete", TileRegionPackState.COMPLETE.getRawValue());
        map8.put("Unknown", TileRegionPackState.UNKNOWN.getRawValue());
        HashMap map9 = new HashMap();
        map9.put("Error", RNMBXOfflineModule.OFFLINE_ERROR);
        map9.put("Progress", RNMBXOfflineModule.OFFLINE_PROGRESS);
        HashMap map10 = new HashMap();
        map10.put("Update", RNMBXLocationModule.LOCATION_UPDATE);
        return MapBuilder.builder().put("MapboxV10", true).put("StyleURL", map).put("EventTypes", map4).put("StyleSource", map5).put("CameraModes", map7).put("LineJoin", map6).put("OfflinePackDownloadState", map8).put("OfflineCallbackName", map9).put("LocationCallbackName", map10).put("TileServers", map2).put("Implementation", map3).build();
    }

    @ReactMethod
    public final void setTelemetryEnabled(final boolean telemetryEnabled) {
        this.mReactContext.runOnUiQueueThread(new Runnable() {
            @Override
            public final void run() {
                RNMBXModule.setTelemetryEnabled$lambda$0(this.f$0, telemetryEnabled);
            }
        });
    }

    public static final void setTelemetryEnabled$lambda$0(RNMBXModule rNMBXModule, boolean z) {
        AttributionUtils.getAttribution(new MapView(rNMBXModule.mReactContext, (MapInitOptions) null, 2, (DefaultConstructorMarker) null)).getMapAttributionDelegate().telemetry().setUserTelemetryRequestState(z);
    }

    @ReactMethod
    public final void clearData(final Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        this.mReactContext.runOnUiQueueThread(new Runnable() {
            @Override
            public final void run() {
                RNMBXModule.clearData$lambda$2(this.f$0, promise);
            }
        });
    }

    public static final void clearData$lambda$2(RNMBXModule rNMBXModule, final Promise promise) {
        MapboxMapKt.clearData(MapboxMap.INSTANCE, rNMBXModule.mReactContext, new AsyncOperationResultCallback() {
            @Override
            public final void run(Expected expected) {
                RNMBXModule.clearData$lambda$2$lambda$1(promise, expected);
            }
        });
    }

    public static final void clearData$lambda$2$lambda$1(Promise promise, Expected it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (it.isValue()) {
            if (Intrinsics.areEqual(it.getValue(), None.getInstance())) {
                promise.resolve(null);
                return;
            } else {
                promise.resolve(it.getValue());
                return;
            }
        }
        promise.reject("error", "RNMBXModule.clearError " + it.getError());
    }

    @ReactMethod
    public final void setAccessToken(final String accessToken, final Promise promise) {
        Intrinsics.checkNotNullParameter(promise, "promise");
        this.mReactContext.runOnUiQueueThread(new Runnable() {
            @Override
            public final void run() {
                RNMBXModule.setAccessToken$lambda$3(this.f$0, accessToken, promise);
            }
        });
    }

    public static final void setAccessToken$lambda$3(RNMBXModule rNMBXModule, String str, Promise promise) {
        ResourceOptionKt.setMapboxAccessToken(rNMBXModule.getReactApplicationContext(), str);
        promise.resolve(str);
    }

    @ReactMethod
    public final void setWellKnownTileServer(String tileServer) {
        Logger.INSTANCE.e("RNMBXModule", "setWellKnownTileServer is deprecated and will be removed");
    }

    @ReactMethod
    public final void addCustomHeader(String headerName, String headerValue) {
        Intrinsics.checkNotNullParameter(headerName, "headerName");
        Intrinsics.checkNotNullParameter(headerValue, "headerValue");
        addCustomHeaderWithOptions$default(this, headerName, headerValue, null, 4, null);
    }

    public static void addCustomHeaderWithOptions$default(RNMBXModule rNMBXModule, String str, String str2, ReadableMap readableMap, int i, Object obj) {
        if ((i & 4) != 0) {
            readableMap = Arguments.createMap();
        }
        rNMBXModule.addCustomHeaderWithOptions(str, str2, readableMap);
    }

    @ReactMethod
    public final void addCustomHeaderWithOptions(String headerName, String headerValue, ReadableMap options) {
        Regex regex;
        Intrinsics.checkNotNullParameter(headerName, "headerName");
        Intrinsics.checkNotNullParameter(headerValue, "headerValue");
        if (options != null) {
            try {
                String string = options.getString("urlRegexp");
                if (string != null) {
                    regex = new Regex(string);
                } else {
                    regex = null;
                }
            } catch (PatternSyntaxException e) {
                Logger logger = Logger.INSTANCE;
                String localizedMessage = e.getLocalizedMessage();
                if (localizedMessage == null) {
                    localizedMessage = "Error converting " + (options != null ? options.getString("urlRegexp") : null) + " to regex";
                }
                logger.e(CustomHttpHeaders.LOG_TAG, localizedMessage);
                return;
            }
        } else {
            regex = null;
        }
        CustomHttpHeaders.INSTANCE.addCustomHeader(headerName, headerValue, new CustomHttpHeadersOptions(regex));
    }

    @ReactMethod
    public final void removeCustomHeader(String headerName) {
        Intrinsics.checkNotNullParameter(headerName, "headerName");
        CustomHttpHeaders.INSTANCE.removeCustomHeader(headerName);
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\t\u001a\u00020\u00052\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082D¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/rnmapbox/rnmbx/modules/RNMBXModule$Companion;", "", "<init>", "()V", "REACT_CLASS", "", "LOG_TAG", "customHeaderInterceptorAdded", "", "getAccessToken", "reactContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final String getAccessToken(ReactApplicationContext reactContext) {
            return ResourceOptionKt.getMapboxAccessToken(reactContext);
        }
    }
}
