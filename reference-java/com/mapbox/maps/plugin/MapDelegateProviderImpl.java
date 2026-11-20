package com.mapbox.maps.plugin;

import com.mapbox.maps.MapController;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.MapboxStyleManager;
import com.mapbox.maps.Style;
import com.mapbox.maps.geofencing.MapGeofencingConsent;
import com.mapbox.maps.module.MapTelemetry;
import com.mapbox.maps.plugin.delegates.MapAttributionDelegate;
import com.mapbox.maps.plugin.delegates.MapCameraManagerDelegate;
import com.mapbox.maps.plugin.delegates.MapDelegateProvider;
import com.mapbox.maps.plugin.delegates.MapFeatureQueryDelegate;
import com.mapbox.maps.plugin.delegates.MapFeatureStateDelegate;
import com.mapbox.maps.plugin.delegates.MapInteractionDelegate;
import com.mapbox.maps.plugin.delegates.MapListenerDelegate;
import com.mapbox.maps.plugin.delegates.MapPluginProviderDelegate;
import com.mapbox.maps.plugin.delegates.MapProjectionDelegate;
import com.mapbox.maps.plugin.delegates.MapTransformDelegate;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u001c\u00107\u001a\u0002082\u0012\u00109\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u0002080:H\u0016R\u001b\u0010\u000b\u001a\u00020\f8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\u0012X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u0016X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u001aX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\u00020\u001eX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0014\u0010!\u001a\u00020\"X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0014\u0010%\u001a\u00020&X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0014\u0010)\u001a\u00020*X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u0014\u0010-\u001a\u00020.X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b/\u00100R\u0014\u00101\u001a\u000202X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b3\u00104R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b5\u00106¨\u0006;"}, d2 = {"Lcom/mapbox/maps/plugin/MapDelegateProviderImpl;", "Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;", "mapboxMap", "Lcom/mapbox/maps/MapboxMap;", "mapController", "Lcom/mapbox/maps/MapController;", "telemetry", "Lcom/mapbox/maps/module/MapTelemetry;", "mapGeofencingConsent", "Lcom/mapbox/maps/geofencing/MapGeofencingConsent;", "(Lcom/mapbox/maps/MapboxMap;Lcom/mapbox/maps/MapController;Lcom/mapbox/maps/module/MapTelemetry;Lcom/mapbox/maps/geofencing/MapGeofencingConsent;)V", "mapAttributionDelegate", "Lcom/mapbox/maps/plugin/delegates/MapAttributionDelegate;", "getMapAttributionDelegate", "()Lcom/mapbox/maps/plugin/delegates/MapAttributionDelegate;", "mapAttributionDelegate$delegate", "Lkotlin/Lazy;", "mapCameraManagerDelegate", "Lcom/mapbox/maps/plugin/delegates/MapCameraManagerDelegate;", "getMapCameraManagerDelegate", "()Lcom/mapbox/maps/plugin/delegates/MapCameraManagerDelegate;", "mapFeatureQueryDelegate", "Lcom/mapbox/maps/plugin/delegates/MapFeatureQueryDelegate;", "getMapFeatureQueryDelegate", "()Lcom/mapbox/maps/plugin/delegates/MapFeatureQueryDelegate;", "mapFeatureStateDelegate", "Lcom/mapbox/maps/plugin/delegates/MapFeatureStateDelegate;", "getMapFeatureStateDelegate", "()Lcom/mapbox/maps/plugin/delegates/MapFeatureStateDelegate;", "mapInteractionDelegate", "Lcom/mapbox/maps/plugin/delegates/MapInteractionDelegate;", "getMapInteractionDelegate", "()Lcom/mapbox/maps/plugin/delegates/MapInteractionDelegate;", "mapListenerDelegate", "Lcom/mapbox/maps/plugin/delegates/MapListenerDelegate;", "getMapListenerDelegate", "()Lcom/mapbox/maps/plugin/delegates/MapListenerDelegate;", "mapPluginProviderDelegate", "Lcom/mapbox/maps/plugin/delegates/MapPluginProviderDelegate;", "getMapPluginProviderDelegate", "()Lcom/mapbox/maps/plugin/delegates/MapPluginProviderDelegate;", "mapProjectionDelegate", "Lcom/mapbox/maps/plugin/delegates/MapProjectionDelegate;", "getMapProjectionDelegate", "()Lcom/mapbox/maps/plugin/delegates/MapProjectionDelegate;", "mapStyleManagerDelegate", "Lcom/mapbox/maps/MapboxStyleManager;", "getMapStyleManagerDelegate", "()Lcom/mapbox/maps/MapboxStyleManager;", "mapTransformDelegate", "Lcom/mapbox/maps/plugin/delegates/MapTransformDelegate;", "getMapTransformDelegate", "()Lcom/mapbox/maps/plugin/delegates/MapTransformDelegate;", "getMapboxMap", "()Lcom/mapbox/maps/MapboxMap;", "getStyle", "", "callback", "Lkotlin/Function1;", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MapDelegateProviderImpl implements MapDelegateProvider {

    private final Lazy mapAttributionDelegate;
    private final MapCameraManagerDelegate mapCameraManagerDelegate;
    private final MapFeatureQueryDelegate mapFeatureQueryDelegate;
    private final MapFeatureStateDelegate mapFeatureStateDelegate;
    private final MapInteractionDelegate mapInteractionDelegate;
    private final MapListenerDelegate mapListenerDelegate;
    private final MapPluginProviderDelegate mapPluginProviderDelegate;
    private final MapProjectionDelegate mapProjectionDelegate;
    private final MapboxStyleManager mapStyleManagerDelegate;
    private final MapTransformDelegate mapTransformDelegate;
    private final MapboxMap mapboxMap;

    public MapDelegateProviderImpl(MapboxMap mapboxMap, MapController mapController, final MapTelemetry telemetry, final MapGeofencingConsent mapGeofencingConsent) {
        Intrinsics.checkNotNullParameter(mapboxMap, "mapboxMap");
        Intrinsics.checkNotNullParameter(mapController, "mapController");
        Intrinsics.checkNotNullParameter(telemetry, "telemetry");
        Intrinsics.checkNotNullParameter(mapGeofencingConsent, "mapGeofencingConsent");
        this.mapboxMap = mapboxMap;
        this.mapCameraManagerDelegate = mapboxMap;
        this.mapProjectionDelegate = mapboxMap;
        this.mapTransformDelegate = mapboxMap;
        this.mapAttributionDelegate = LazyKt.lazy(new Function0<MapAttributionDelegateImpl>() {
            {
                super(0);
            }

            @Override
            public final MapAttributionDelegateImpl invoke() {
                return new MapAttributionDelegateImpl(this.this$0.getMapboxMap(), telemetry, mapGeofencingConsent);
            }
        });
        this.mapFeatureQueryDelegate = mapboxMap;
        this.mapPluginProviderDelegate = mapController;
        this.mapListenerDelegate = mapboxMap;
        this.mapFeatureStateDelegate = mapboxMap;
        this.mapStyleManagerDelegate = mapboxMap;
        this.mapInteractionDelegate = mapboxMap;
    }

    public final MapboxMap getMapboxMap() {
        return this.mapboxMap;
    }

    @Override
    public MapCameraManagerDelegate getMapCameraManagerDelegate() {
        return this.mapCameraManagerDelegate;
    }

    @Override
    public MapProjectionDelegate getMapProjectionDelegate() {
        return this.mapProjectionDelegate;
    }

    @Override
    public MapTransformDelegate getMapTransformDelegate() {
        return this.mapTransformDelegate;
    }

    @Override
    public MapAttributionDelegate getMapAttributionDelegate() {
        return (MapAttributionDelegate) this.mapAttributionDelegate.getValue();
    }

    @Override
    public MapFeatureQueryDelegate getMapFeatureQueryDelegate() {
        return this.mapFeatureQueryDelegate;
    }

    @Override
    public MapPluginProviderDelegate getMapPluginProviderDelegate() {
        return this.mapPluginProviderDelegate;
    }

    @Override
    public MapListenerDelegate getMapListenerDelegate() {
        return this.mapListenerDelegate;
    }

    @Override
    public MapFeatureStateDelegate getMapFeatureStateDelegate() {
        return this.mapFeatureStateDelegate;
    }

    public static final void getStyle$lambda$0(Function1 callback, Style style) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(style, "style");
        callback.invoke(style);
    }

    @Override
    public void getStyle(final Function1<? super MapboxStyleManager, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.mapboxMap.getStyle(new Style.OnStyleLoaded() {
            @Override
            public final void onStyleLoaded(Style style) {
                MapDelegateProviderImpl.getStyle$lambda$0(callback, style);
            }
        });
    }

    @Override
    public MapboxStyleManager getMapStyleManagerDelegate() {
        return this.mapStyleManagerDelegate;
    }

    @Override
    public MapInteractionDelegate getMapInteractionDelegate() {
        return this.mapInteractionDelegate;
    }
}
