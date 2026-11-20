package com.mapbox.maps.plugin.delegates;

import com.mapbox.common.Cancelable;
import com.mapbox.maps.CameraChangedCallback;
import com.mapbox.maps.CameraChangedCoalescedCallback;
import com.mapbox.maps.GenericEventCallback;
import com.mapbox.maps.MapIdleCallback;
import com.mapbox.maps.MapLoadedCallback;
import com.mapbox.maps.MapLoadingErrorCallback;
import com.mapbox.maps.RenderFrameFinishedCallback;
import com.mapbox.maps.RenderFrameStartedCallback;
import com.mapbox.maps.ResourceRequestCallback;
import com.mapbox.maps.SourceAddedCallback;
import com.mapbox.maps.SourceDataLoadedCallback;
import com.mapbox.maps.SourceRemovedCallback;
import com.mapbox.maps.StyleDataLoadedCallback;
import com.mapbox.maps.StyleImageMissingCallback;
import com.mapbox.maps.StyleImageRemoveUnusedCallback;
import com.mapbox.maps.StyleLoadedCallback;
import com.mapbox.maps.plugin.delegates.listeners.OnCameraChangeListener;
import com.mapbox.maps.plugin.delegates.listeners.OnMapIdleListener;
import com.mapbox.maps.plugin.delegates.listeners.OnMapLoadErrorListener;
import com.mapbox.maps.plugin.delegates.listeners.OnMapLoadedListener;
import com.mapbox.maps.plugin.delegates.listeners.OnRenderFrameFinishedListener;
import com.mapbox.maps.plugin.delegates.listeners.OnRenderFrameStartedListener;
import com.mapbox.maps.plugin.delegates.listeners.OnSourceAddedListener;
import com.mapbox.maps.plugin.delegates.listeners.OnSourceDataLoadedListener;
import com.mapbox.maps.plugin.delegates.listeners.OnSourceRemovedListener;
import com.mapbox.maps.plugin.delegates.listeners.OnStyleDataLoadedListener;
import com.mapbox.maps.plugin.delegates.listeners.OnStyleImageMissingListener;
import com.mapbox.maps.plugin.delegates.listeners.OnStyleImageUnusedListener;
import com.mapbox.maps.plugin.delegates.listeners.OnStyleLoadedListener;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;

@Metadata(d1 = {"\u0000\u0082\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH'J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH'J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011H'J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0014H'J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0017H'J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001aH'J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u001dH'J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020 H'J\u0010\u0010!\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020#H'J\u0010\u0010$\u001a\u00020\u00032\u0006\u0010%\u001a\u00020&H'J\u0010\u0010'\u001a\u00020\u00032\u0006\u0010(\u001a\u00020)H'J\u0010\u0010*\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0010\u0010+\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH'J\u0010\u0010,\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH'J\u0010\u0010-\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH'J\u0010\u0010.\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011H'J\u0010\u0010/\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0014H'J\u0010\u00100\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0017H'J\u0010\u00101\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001aH'J\u0010\u00102\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u001dH'J\u0010\u00103\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020 H'J\u0010\u00104\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020#H'J\u0010\u00105\u001a\u00020\u00032\u0006\u0010%\u001a\u00020&H'J\u0010\u00106\u001a\u00020\u00032\u0006\u0010(\u001a\u00020)H'J\u0010\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:H&J\u0010\u0010;\u001a\u0002082\u0006\u0010<\u001a\u00020=H'J\u0018\u0010>\u001a\u0002082\u0006\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020BH'J\u0010\u0010C\u001a\u0002082\u0006\u0010D\u001a\u00020EH&J\u0010\u0010F\u001a\u0002082\u0006\u0010G\u001a\u00020HH&J\u0010\u0010I\u001a\u0002082\u0006\u0010J\u001a\u00020KH&J\u0010\u0010L\u001a\u0002082\u0006\u0010M\u001a\u00020NH&J\u0010\u0010O\u001a\u0002082\u0006\u0010P\u001a\u00020QH&J\u0010\u0010R\u001a\u0002082\u0006\u0010S\u001a\u00020TH&J\u0010\u0010U\u001a\u0002082\u0006\u0010V\u001a\u00020WH&J\u0010\u0010X\u001a\u0002082\u0006\u0010Y\u001a\u00020ZH&J\u0010\u0010[\u001a\u0002082\u0006\u0010\\\u001a\u00020]H&J\u0010\u0010^\u001a\u0002082\u0006\u0010_\u001a\u00020`H&J\u0010\u0010a\u001a\u0002082\u0006\u0010b\u001a\u00020cH&J\u0010\u0010d\u001a\u0002082\u0006\u0010e\u001a\u00020fH&J\u0010\u0010g\u001a\u0002082\u0006\u0010h\u001a\u00020iH&¨\u0006j"}, d2 = {"Lcom/mapbox/maps/plugin/delegates/MapListenerDelegate;", "", "addOnCameraChangeListener", "", "onCameraChangeListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnCameraChangeListener;", "addOnMapIdleListener", "onMapIdleListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnMapIdleListener;", "addOnMapLoadErrorListener", "onMapLoadErrorListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnMapLoadErrorListener;", "addOnMapLoadedListener", "onMapLoadedListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnMapLoadedListener;", "addOnRenderFrameFinishedListener", "onRenderFrameFinishedListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnRenderFrameFinishedListener;", "addOnRenderFrameStartedListener", "onRenderFrameStartedListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnRenderFrameStartedListener;", "addOnSourceAddedListener", "onSourceAddedListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnSourceAddedListener;", "addOnSourceDataLoadedListener", "onSourceDataLoadedListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnSourceDataLoadedListener;", "addOnSourceRemovedListener", "onSourceRemovedListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnSourceRemovedListener;", "addOnStyleDataLoadedListener", "onStyleDataLoadedListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnStyleDataLoadedListener;", "addOnStyleImageMissingListener", "onStyleImageMissingListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnStyleImageMissingListener;", "addOnStyleImageUnusedListener", "onStyleImageUnusedListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnStyleImageUnusedListener;", "addOnStyleLoadedListener", "onStyleLoadedListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnStyleLoadedListener;", "removeOnCameraChangeListener", "removeOnMapIdleListener", "removeOnMapLoadErrorListener", "removeOnMapLoadedListener", "removeOnRenderFrameFinishedListener", "removeOnRenderFrameStartedListener", "removeOnSourceAddedListener", "removeOnSourceDataLoadedListener", "removeOnSourceRemovedListener", "removeOnStyleDataLoadedListener", "removeOnStyleImageMissingListener", "removeOnStyleImageUnusedListener", "removeOnStyleLoadedListener", "subscribeCameraChanged", "Lcom/mapbox/common/Cancelable;", "cameraChangedCallback", "Lcom/mapbox/maps/CameraChangedCallback;", "subscribeCameraChangedCoalesced", "cameraChangedCoalescedCallback", "Lcom/mapbox/maps/CameraChangedCoalescedCallback;", "subscribeGenericEvent", "eventName", "", "genericEventCallback", "Lcom/mapbox/maps/GenericEventCallback;", "subscribeMapIdle", "mapIdleCallback", "Lcom/mapbox/maps/MapIdleCallback;", "subscribeMapLoaded", "mapLoadedCallback", "Lcom/mapbox/maps/MapLoadedCallback;", "subscribeMapLoadingError", "mapLoadingErrorCallback", "Lcom/mapbox/maps/MapLoadingErrorCallback;", "subscribeRenderFrameFinished", "renderFrameFinishedCallback", "Lcom/mapbox/maps/RenderFrameFinishedCallback;", "subscribeRenderFrameStarted", "renderFrameStartedCallback", "Lcom/mapbox/maps/RenderFrameStartedCallback;", "subscribeResourceRequest", "resourceRequestCallback", "Lcom/mapbox/maps/ResourceRequestCallback;", "subscribeSourceAdded", "sourceAddedCallback", "Lcom/mapbox/maps/SourceAddedCallback;", "subscribeSourceDataLoaded", "sourceDataLoadedCallback", "Lcom/mapbox/maps/SourceDataLoadedCallback;", "subscribeSourceRemoved", "sourceRemovedCallback", "Lcom/mapbox/maps/SourceRemovedCallback;", "subscribeStyleDataLoaded", "styleDataLoadedCallback", "Lcom/mapbox/maps/StyleDataLoadedCallback;", "subscribeStyleImageMissing", "styleImageMissingCallback", "Lcom/mapbox/maps/StyleImageMissingCallback;", "subscribeStyleImageRemoveUnused", "styleImageRemoveUnusedCallback", "Lcom/mapbox/maps/StyleImageRemoveUnusedCallback;", "subscribeStyleLoaded", "styleLoadedCallback", "Lcom/mapbox/maps/StyleLoadedCallback;", "sdk-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface MapListenerDelegate {
    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use [subscribeCameraChange] instead.", replaceWith = @ReplaceWith(expression = "subscribeCameraChanged(cameraChangedCallback)", imports = {}))
    void addOnCameraChangeListener(OnCameraChangeListener onCameraChangeListener);

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use [subscribeMapIdle] instead.", replaceWith = @ReplaceWith(expression = "subscribeMapIdle(mapIdleCallback)", imports = {}))
    void addOnMapIdleListener(OnMapIdleListener onMapIdleListener);

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use [subscribeMapLoadingError] instead.", replaceWith = @ReplaceWith(expression = "subscribeMapLoadingError(mapLoadingErrorCallback)", imports = {}))
    void addOnMapLoadErrorListener(OnMapLoadErrorListener onMapLoadErrorListener);

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use [subscribeMapLoaded] instead.", replaceWith = @ReplaceWith(expression = "subscribeMapLoaded(mapLoadedCallback)", imports = {}))
    void addOnMapLoadedListener(OnMapLoadedListener onMapLoadedListener);

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use [subscribeRenderFrameFinished] instead.", replaceWith = @ReplaceWith(expression = "subscribeRenderFrameFinished(renderFrameFinishedCallback)", imports = {}))
    void addOnRenderFrameFinishedListener(OnRenderFrameFinishedListener onRenderFrameFinishedListener);

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use [subscribeRenderFrameStarted] instead.", replaceWith = @ReplaceWith(expression = "subscribeRenderFrameStarted(renderFrameStartedCallback)", imports = {}))
    void addOnRenderFrameStartedListener(OnRenderFrameStartedListener onRenderFrameStartedListener);

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use [subscribeSourceAdded] instead.", replaceWith = @ReplaceWith(expression = "subscribeSourceAdded(sourceAddedCallback)", imports = {}))
    void addOnSourceAddedListener(OnSourceAddedListener onSourceAddedListener);

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use [subscribeSourceDataLoaded] instead.", replaceWith = @ReplaceWith(expression = "subscribeSourceDataLoaded(sourceDataLoadedCallback)", imports = {}))
    void addOnSourceDataLoadedListener(OnSourceDataLoadedListener onSourceDataLoadedListener);

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use [subscribeSourceRemoved] instead.", replaceWith = @ReplaceWith(expression = "subscribeSourceRemoved(sourceRemovedCallback)", imports = {}))
    void addOnSourceRemovedListener(OnSourceRemovedListener onSourceRemovedListener);

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use [subscribeStyleLoaded] instead.", replaceWith = @ReplaceWith(expression = "subscribeStyleLoaded(styleDataLoadedCallback)", imports = {}))
    void addOnStyleDataLoadedListener(OnStyleDataLoadedListener onStyleDataLoadedListener);

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use [subscribeStyleImageMissing] instead.", replaceWith = @ReplaceWith(expression = "subscribeStyleImageMissing(styleImageMissingCallback)", imports = {}))
    void addOnStyleImageMissingListener(OnStyleImageMissingListener onStyleImageMissingListener);

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use [subscribeStyleImageRemoveUnused] instead.", replaceWith = @ReplaceWith(expression = "subscribeStyleImageRemoveUnused(styleImageRemoveUnusedCallback)", imports = {}))
    void addOnStyleImageUnusedListener(OnStyleImageUnusedListener onStyleImageUnusedListener);

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use [subscribeStyleDataLoaded] instead.", replaceWith = @ReplaceWith(expression = "subscribeStyleDataLoaded(styleLoadedCallback)", imports = {}))
    void addOnStyleLoadedListener(OnStyleLoadedListener onStyleLoadedListener);

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use cancelable returned from [subscribeCameraChange] to remove the listener.")
    void removeOnCameraChangeListener(OnCameraChangeListener onCameraChangeListener);

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use cancelable returned from [subscribeMapIdle] to remove the listener.")
    void removeOnMapIdleListener(OnMapIdleListener onMapIdleListener);

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use cancelable returned from [subscribeMapLoadingError] to remove the listener.")
    void removeOnMapLoadErrorListener(OnMapLoadErrorListener onMapLoadErrorListener);

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use cancelable returned from [subscribeMapLoaded] to remove the listener.")
    void removeOnMapLoadedListener(OnMapLoadedListener onMapLoadedListener);

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use cancelable returned from [subscribeRenderFrameFinished] to remove the listener.")
    void removeOnRenderFrameFinishedListener(OnRenderFrameFinishedListener onRenderFrameFinishedListener);

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use cancelable returned from [subscribeRenderFrameStarted] to remove the listener.")
    void removeOnRenderFrameStartedListener(OnRenderFrameStartedListener onRenderFrameStartedListener);

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use cancelable returned from [subscribeSourceAdded] to remove the listener.")
    void removeOnSourceAddedListener(OnSourceAddedListener onSourceAddedListener);

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use cancelable returned from [subscribeSourceDataLoaded] to remove the listener.")
    void removeOnSourceDataLoadedListener(OnSourceDataLoadedListener onSourceDataLoadedListener);

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use cancelable returned from [subscribeSourceRemoved] to remove the listener.")
    void removeOnSourceRemovedListener(OnSourceRemovedListener onSourceRemovedListener);

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use cancelable returned from [subscribeStyleLoaded] to remove the listener.")
    void removeOnStyleDataLoadedListener(OnStyleDataLoadedListener onStyleDataLoadedListener);

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use cancelable returned from [subscribeStyleImageMissing] to remove the listener.")
    void removeOnStyleImageMissingListener(OnStyleImageMissingListener onStyleImageMissingListener);

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use cancelable returned from [subscribeStyleImageRemoveUnused] to remove the listener.")
    void removeOnStyleImageUnusedListener(OnStyleImageUnusedListener onStyleImageUnusedListener);

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release. use cancelable returned from [subscribeStyleDataLoaded] to remove the listener.")
    void removeOnStyleLoadedListener(OnStyleLoadedListener onStyleLoadedListener);

    Cancelable subscribeCameraChanged(CameraChangedCallback cameraChangedCallback);

    Cancelable subscribeCameraChangedCoalesced(CameraChangedCoalescedCallback cameraChangedCoalescedCallback);

    Cancelable subscribeGenericEvent(String eventName, GenericEventCallback genericEventCallback);

    Cancelable subscribeMapIdle(MapIdleCallback mapIdleCallback);

    Cancelable subscribeMapLoaded(MapLoadedCallback mapLoadedCallback);

    Cancelable subscribeMapLoadingError(MapLoadingErrorCallback mapLoadingErrorCallback);

    Cancelable subscribeRenderFrameFinished(RenderFrameFinishedCallback renderFrameFinishedCallback);

    Cancelable subscribeRenderFrameStarted(RenderFrameStartedCallback renderFrameStartedCallback);

    Cancelable subscribeResourceRequest(ResourceRequestCallback resourceRequestCallback);

    Cancelable subscribeSourceAdded(SourceAddedCallback sourceAddedCallback);

    Cancelable subscribeSourceDataLoaded(SourceDataLoadedCallback sourceDataLoadedCallback);

    Cancelable subscribeSourceRemoved(SourceRemovedCallback sourceRemovedCallback);

    Cancelable subscribeStyleDataLoaded(StyleDataLoadedCallback styleDataLoadedCallback);

    Cancelable subscribeStyleImageMissing(StyleImageMissingCallback styleImageMissingCallback);

    Cancelable subscribeStyleImageRemoveUnused(StyleImageRemoveUnusedCallback styleImageRemoveUnusedCallback);

    Cancelable subscribeStyleLoaded(StyleLoadedCallback styleLoadedCallback);
}
