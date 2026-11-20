package com.mapbox.maps.plugin.delegates;

import com.mapbox.maps.MapboxStyleManager;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u001c\u0010,\u001a\u00020-2\u0012\u0010.\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020-0/H&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0012\u0010\u000e\u001a\u00020\u000fX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u00138&X§\u0004¢\u0006\f\u0012\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0012\u0010\u0018\u001a\u00020\u0019X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u0012\u0010\u001c\u001a\u00020\u001dX¦\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR\u0012\u0010 \u001a\u00020!X¦\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#R\u0012\u0010$\u001a\u00020%X¦\u0004¢\u0006\u0006\u001a\u0004\b&\u0010'R\u0012\u0010(\u001a\u00020)X¦\u0004¢\u0006\u0006\u001a\u0004\b*\u0010+¨\u00060"}, d2 = {"Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;", "", "mapAttributionDelegate", "Lcom/mapbox/maps/plugin/delegates/MapAttributionDelegate;", "getMapAttributionDelegate", "()Lcom/mapbox/maps/plugin/delegates/MapAttributionDelegate;", "mapCameraManagerDelegate", "Lcom/mapbox/maps/plugin/delegates/MapCameraManagerDelegate;", "getMapCameraManagerDelegate", "()Lcom/mapbox/maps/plugin/delegates/MapCameraManagerDelegate;", "mapFeatureQueryDelegate", "Lcom/mapbox/maps/plugin/delegates/MapFeatureQueryDelegate;", "getMapFeatureQueryDelegate", "()Lcom/mapbox/maps/plugin/delegates/MapFeatureQueryDelegate;", "mapFeatureStateDelegate", "Lcom/mapbox/maps/plugin/delegates/MapFeatureStateDelegate;", "getMapFeatureStateDelegate", "()Lcom/mapbox/maps/plugin/delegates/MapFeatureStateDelegate;", "mapInteractionDelegate", "Lcom/mapbox/maps/plugin/delegates/MapInteractionDelegate;", "getMapInteractionDelegate$annotations", "()V", "getMapInteractionDelegate", "()Lcom/mapbox/maps/plugin/delegates/MapInteractionDelegate;", "mapListenerDelegate", "Lcom/mapbox/maps/plugin/delegates/MapListenerDelegate;", "getMapListenerDelegate", "()Lcom/mapbox/maps/plugin/delegates/MapListenerDelegate;", "mapPluginProviderDelegate", "Lcom/mapbox/maps/plugin/delegates/MapPluginProviderDelegate;", "getMapPluginProviderDelegate", "()Lcom/mapbox/maps/plugin/delegates/MapPluginProviderDelegate;", "mapProjectionDelegate", "Lcom/mapbox/maps/plugin/delegates/MapProjectionDelegate;", "getMapProjectionDelegate", "()Lcom/mapbox/maps/plugin/delegates/MapProjectionDelegate;", "mapStyleManagerDelegate", "Lcom/mapbox/maps/MapboxStyleManager;", "getMapStyleManagerDelegate", "()Lcom/mapbox/maps/MapboxStyleManager;", "mapTransformDelegate", "Lcom/mapbox/maps/plugin/delegates/MapTransformDelegate;", "getMapTransformDelegate", "()Lcom/mapbox/maps/plugin/delegates/MapTransformDelegate;", "getStyle", "", "callback", "Lkotlin/Function1;", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface MapDelegateProvider {

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class DefaultImpls {
        public static void getMapInteractionDelegate$annotations() {
        }
    }

    MapAttributionDelegate getMapAttributionDelegate();

    MapCameraManagerDelegate getMapCameraManagerDelegate();

    MapFeatureQueryDelegate getMapFeatureQueryDelegate();

    MapFeatureStateDelegate getMapFeatureStateDelegate();

    MapInteractionDelegate getMapInteractionDelegate();

    MapListenerDelegate getMapListenerDelegate();

    MapPluginProviderDelegate getMapPluginProviderDelegate();

    MapProjectionDelegate getMapProjectionDelegate();

    MapboxStyleManager getMapStyleManagerDelegate();

    MapTransformDelegate getMapTransformDelegate();

    void getStyle(Function1<? super MapboxStyleManager, Unit> callback);
}
