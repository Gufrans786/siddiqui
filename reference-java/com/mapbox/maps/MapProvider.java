package com.mapbox.maps;

import android.content.Context;
import ch.qos.logback.core.CoreConstants;
import com.caverock.androidsvg.SVGParser;
import com.mapbox.annotation.module.MapboxModuleType;
import com.mapbox.bindgen.Expected;
import com.mapbox.common.EventsServerOptions;
import com.mapbox.common.EventsService;
import com.mapbox.common.FlushOperationResultCallback;
import com.mapbox.common.SdkInformation;
import com.mapbox.common.TelemetryService;
import com.mapbox.common.module.provider.MapboxModuleProvider;
import com.mapbox.common.module.provider.ModuleProviderArgument;
import com.mapbox.maps.geofencing.MapGeofencingConsent;
import com.mapbox.maps.module.MapTelemetry;
import com.mapbox.maps.plugin.MapDelegateProviderImpl;
import com.mapbox.maps.plugin.MapPluginRegistry;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;

@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\nJ&\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\nJ\u000e\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0015J\u001e\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cJ\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 J\u0016\u0010!\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%J#\u0010&\u001a\b\u0012\u0004\u0012\u00020(0'2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010)\u001a\u00020*H\u0002¢\u0006\u0002\u0010+J\f\u0010,\u001a\u00020\u0010*\u00020 H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"Lcom/mapbox/maps/MapProvider;", "", "()V", "mainScope", "Lkotlinx/coroutines/CoroutineScope;", "mapTelemetry", "Lcom/mapbox/maps/module/MapTelemetry;", "flushPendingEvents", "", "getMapGeofencingConsent", "Lcom/mapbox/maps/geofencing/MapGeofencingConsent;", "getMapPluginRegistry", "Lcom/mapbox/maps/plugin/MapPluginRegistry;", "mapboxMap", "Lcom/mapbox/maps/MapboxMap;", "mapController", "Lcom/mapbox/maps/MapController;", "telemetry", "mapGeofencingConsent", "getMapTelemetryInstance", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "getMapboxMap", "nativeMap", "Lcom/mapbox/maps/NativeMapImpl;", "nativeObserver", "Lcom/mapbox/maps/NativeObserver;", "pixelRatio", "", "getNativeMapCore", "Lcom/mapbox/maps/Map;", "mapView", "Lcom/mapbox/maps/MapView;", "getNativeMapWrapper", "mapInitOptions", "Lcom/mapbox/maps/MapInitOptions;", "mapClient", "Lcom/mapbox/maps/MapClient;", "paramsProvider", "", "Lcom/mapbox/common/module/provider/ModuleProviderArgument;", SVGParser.XML_STYLESHEET_ATTR_TYPE, "Lcom/mapbox/annotation/module/MapboxModuleType;", "(Landroid/content/Context;Lcom/mapbox/annotation/module/MapboxModuleType;)[Lcom/mapbox/common/module/provider/ModuleProviderArgument;", "getController", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MapProvider {
    public static final MapProvider INSTANCE = new MapProvider();
    private static final CoroutineScope mainScope = CoroutineScopeKt.CoroutineScope(new CoroutineName(MapController.TAG).plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null)).plus(Dispatchers.getMain()));
    private static MapTelemetry mapTelemetry;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[MapboxModuleType.values().length];
            try {
                iArr[MapboxModuleType.MapTelemetry.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private MapProvider() {
    }

    public final NativeMapImpl getNativeMapWrapper(MapInitOptions mapInitOptions, MapClient mapClient) {
        Intrinsics.checkNotNullParameter(mapInitOptions, "mapInitOptions");
        Intrinsics.checkNotNullParameter(mapClient, "mapClient");
        return new NativeMapImpl(new Map(mapClient, mapInitOptions.getMapOptions()));
    }

    public final Map getNativeMapCore(MapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        return getController(mapView).getNativeMap().getMap();
    }

    public final MapboxMap getMapboxMap(NativeMapImpl nativeMap, NativeObserver nativeObserver, float pixelRatio) {
        Intrinsics.checkNotNullParameter(nativeMap, "nativeMap");
        Intrinsics.checkNotNullParameter(nativeObserver, "nativeObserver");
        return MapboxMap.INSTANCE.invoke$maps_sdk_release(nativeMap, nativeObserver, pixelRatio);
    }

    public final MapPluginRegistry getMapPluginRegistry(MapboxMap mapboxMap, MapController mapController, MapTelemetry telemetry, MapGeofencingConsent mapGeofencingConsent) {
        Intrinsics.checkNotNullParameter(mapboxMap, "mapboxMap");
        Intrinsics.checkNotNullParameter(mapController, "mapController");
        Intrinsics.checkNotNullParameter(telemetry, "telemetry");
        Intrinsics.checkNotNullParameter(mapGeofencingConsent, "mapGeofencingConsent");
        return new MapPluginRegistry(new MapDelegateProviderImpl(mapboxMap, mapController, telemetry, mapGeofencingConsent));
    }

    public final MapTelemetry getMapTelemetryInstance(final Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (mapTelemetry == null) {
            mapTelemetry = (MapTelemetry) MapboxModuleProvider.INSTANCE.createModule(MapboxModuleType.MapTelemetry, new Function1<MapboxModuleType, ModuleProviderArgument[]>() {
                {
                    super(1);
                }

                @Override
                public final ModuleProviderArgument[] invoke(MapboxModuleType it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return MapProvider.INSTANCE.paramsProvider(context, MapboxModuleType.MapTelemetry);
                }
            });
        }
        BuildersKt__Builders_commonKt.launch$default(mainScope, null, null, new AnonymousClass3(null), 3, null);
        MapTelemetry mapTelemetry2 = mapTelemetry;
        if (mapTelemetry2 != null) {
            return mapTelemetry2;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mapTelemetry");
        return null;
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.mapbox.maps.MapProvider$getMapTelemetryInstance$3", f = "MapProvider.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass3(continuation);
        }

        @Override
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                MapTelemetry mapTelemetry = MapProvider.mapTelemetry;
                if (mapTelemetry == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mapTelemetry");
                    mapTelemetry = null;
                }
                mapTelemetry.onAppUserTurnstileEvent();
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final MapGeofencingConsent getMapGeofencingConsent() {
        return new MapGeofencingConsentImpl();
    }

    public final void flushPendingEvents() {
        EventsService.getOrCreate(new EventsServerOptions(new SdkInformation(com.mapbox.maps.base.BuildConfig.MAPBOX_SDK_IDENTIFIER, com.mapbox.maps.base.BuildConfig.MAPBOX_SDK_VERSION, null), null)).flush(new FlushOperationResultCallback() {
            @Override
            public final void run(Expected expected) {
                MapProvider.flushPendingEvents$lambda$1(expected);
            }
        });
        TelemetryService.getOrCreate().flush(new FlushOperationResultCallback() {
            @Override
            public final void run(Expected expected) {
                MapProvider.flushPendingEvents$lambda$3(expected);
            }
        });
    }

    public static final void flushPendingEvents$lambda$1(Expected expected) {
        Intrinsics.checkNotNullParameter(expected, "expected");
        String str = (String) expected.getError();
        if (str != null) {
            MapboxLogger.logE(MapController.TAG, "EventsService flush error: " + str);
        }
    }

    public static final void flushPendingEvents$lambda$3(Expected expected) {
        Intrinsics.checkNotNullParameter(expected, "expected");
        String str = (String) expected.getError();
        if (str != null) {
            MapboxLogger.logE(MapController.TAG, "TelemetryService flush error: " + str);
        }
    }

    public final ModuleProviderArgument[] paramsProvider(Context context, MapboxModuleType type) {
        if (WhenMappings.$EnumSwitchMapping$0[type.ordinal()] == 1) {
            return new ModuleProviderArgument[]{new ModuleProviderArgument(Context.class, context.getApplicationContext())};
        }
        throw new IllegalArgumentException(type.name() + " module is not supported by the Maps SDK");
    }

    private final MapController getController(MapView mapView) {
        return mapView.getMapController$maps_sdk_release();
    }
}
