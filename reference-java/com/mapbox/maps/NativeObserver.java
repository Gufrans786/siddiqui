package com.mapbox.maps;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mapbox.common.Cancelable;
import com.mapbox.maps.extension.observable.EventsExtensionKt;
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
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

@Metadata(d1 = {"\u0000¶\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001:\u0004\u0092\u0001\u0093\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u0010\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001cH\u0007J\u0010\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001fH\u0007J\u0010\u0010 \u001a\u00020\u00172\u0006\u0010!\u001a\u00020\"H\u0007J\u0010\u0010#\u001a\u00020\u00172\u0006\u0010$\u001a\u00020%H\u0007J\u0010\u0010&\u001a\u00020\u00172\u0006\u0010'\u001a\u00020(H\u0007J\u0010\u0010)\u001a\u00020\u00172\u0006\u0010*\u001a\u00020+H\u0007J\u0010\u0010,\u001a\u00020\u00172\u0006\u0010-\u001a\u00020.H\u0007J\u0010\u0010/\u001a\u00020\u00172\u0006\u00100\u001a\u000201H\u0007J\u0010\u00102\u001a\u00020\u00172\u0006\u00103\u001a\u000204H\u0007J\u0010\u00105\u001a\u00020\u00172\u0006\u00106\u001a\u000207H\u0007J\u0010\u00108\u001a\u00020\u00172\u0006\u00109\u001a\u00020:H\u0007J\u0010\u0010;\u001a\u00020\u00172\u0006\u0010<\u001a\u00020=H\u0007J\u0006\u0010>\u001a\u00020\u0017J\u0010\u0010?\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u0010\u0010@\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001cH\u0007J\u0010\u0010A\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001fH\u0007J\u0010\u0010B\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\"H\u0007J\u0010\u0010C\u001a\u00020\u00172\u0006\u0010$\u001a\u00020%H\u0007J\u0010\u0010D\u001a\u00020\u00172\u0006\u0010'\u001a\u00020(H\u0007J\u0010\u0010E\u001a\u00020\u00172\u0006\u0010*\u001a\u00020+H\u0007J\u0010\u0010F\u001a\u00020\u00172\u0006\u0010-\u001a\u00020.H\u0007J\u0010\u0010G\u001a\u00020\u00172\u0006\u00100\u001a\u000201H\u0007J\u0010\u0010H\u001a\u00020\u00172\u0006\u00103\u001a\u000204H\u0007J\u0010\u0010I\u001a\u00020\u00172\u0006\u00106\u001a\u000207H\u0007J\u0010\u0010J\u001a\u00020\u00172\u0006\u00109\u001a\u00020:H\u0007J\u0010\u0010K\u001a\u00020\u00172\u0006\u0010<\u001a\u00020=H\u0007J\u0006\u0010L\u001a\u00020\u0017J\u000e\u0010M\u001a\u00020\u00172\u0006\u0010N\u001a\u00020OJ,\u0010P\u001a\u00020\u00072\u0006\u0010Q\u001a\u00020R2\u0010\b\u0002\u0010S\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010T2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\"\u0010U\u001a\u00020\u00072\u0006\u0010V\u001a\u00020W2\u0010\b\u0002\u0010S\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010TH\u0007J*\u0010X\u001a\u00020\u00072\u0006\u0010Y\u001a\u00020Z2\u0006\u0010[\u001a\u00020\\2\u0010\b\u0002\u0010S\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010TH\u0007J,\u0010]\u001a\u00020\u00072\u0006\u0010^\u001a\u00020_2\u0010\b\u0002\u0010S\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010T2\n\b\u0002\u0010`\u001a\u0004\u0018\u00010\u001cJ,\u0010a\u001a\u00020\u00072\u0006\u0010b\u001a\u00020c2\u0010\b\u0002\u0010S\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010T2\n\b\u0002\u0010d\u001a\u0004\u0018\u00010\"J,\u0010e\u001a\u00020\u00072\u0006\u0010f\u001a\u00020\u00132\u0010\b\u0002\u0010S\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010T2\n\b\u0002\u0010g\u001a\u0004\u0018\u00010\u001fJ,\u0010h\u001a\u00020\u00072\u0006\u0010i\u001a\u00020j2\u0010\b\u0002\u0010S\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010T2\n\b\u0002\u0010k\u001a\u0004\u0018\u00010%J,\u0010l\u001a\u00020\u00072\u0006\u0010m\u001a\u00020n2\u0010\b\u0002\u0010S\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010T2\n\b\u0002\u0010o\u001a\u0004\u0018\u00010(J \u0010p\u001a\u00020\u00072\u0006\u0010q\u001a\u00020r2\u0010\b\u0002\u0010S\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010TJ,\u0010s\u001a\u00020\u00072\u0006\u0010t\u001a\u00020u2\u0010\b\u0002\u0010S\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010T2\n\b\u0002\u0010v\u001a\u0004\u0018\u00010+J,\u0010w\u001a\u00020\u00072\u0006\u0010x\u001a\u00020y2\u0010\b\u0002\u0010S\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010T2\n\b\u0002\u0010z\u001a\u0004\u0018\u00010.J,\u0010{\u001a\u00020\u00072\u0006\u0010|\u001a\u00020}2\u0010\b\u0002\u0010S\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010T2\n\b\u0002\u0010~\u001a\u0004\u0018\u000101J/\u0010\u007f\u001a\u00020\u00072\b\u0010\u0080\u0001\u001a\u00030\u0081\u00012\u0010\b\u0002\u0010S\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010T2\u000b\b\u0002\u0010\u0082\u0001\u001a\u0004\u0018\u000104J0\u0010\u0083\u0001\u001a\u00020\u00072\b\u0010\u0084\u0001\u001a\u00030\u0085\u00012\u0010\b\u0002\u0010S\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010T2\u000b\b\u0002\u0010\u0086\u0001\u001a\u0004\u0018\u000107J0\u0010\u0087\u0001\u001a\u00020\u00072\b\u0010\u0088\u0001\u001a\u00030\u0089\u00012\u0010\b\u0002\u0010S\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010T2\u000b\b\u0002\u0010\u008a\u0001\u001a\u0004\u0018\u00010:J0\u0010\u008b\u0001\u001a\u00020\u00072\b\u0010\u008c\u0001\u001a\u00030\u008d\u00012\u0010\b\u0002\u0010S\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010T2\u000b\b\u0002\u0010\u008e\u0001\u001a\u0004\u0018\u00010=J%\u0010\u008f\u0001\u001a\u00020\u00172\u0007\u0010\u0090\u0001\u001a\u00020\u00012\u0011\u0010\u000f\u001a\r\u0012\b\u0012\u00060\u0011R\u00020\u00000\u0091\u0001H\u0002R$\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u00068\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR$\u0010\f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u00068\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\t\u001a\u0004\b\u000e\u0010\u000bR\u0018\u0010\u000f\u001a\f\u0012\b\u0012\u00060\u0011R\u00020\u00000\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0014\u001a\f\u0012\b\u0012\u00060\u0015R\u00020\u00000\u0010X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0094\u0001"}, d2 = {"Lcom/mapbox/maps/NativeObserver;", "", "observable", "Lcom/mapbox/maps/NativeMapImpl;", "(Lcom/mapbox/maps/NativeMapImpl;)V", "_cancelableSet", "", "Lcom/mapbox/common/Cancelable;", "get_cancelableSet$maps_sdk_release$annotations", "()V", "get_cancelableSet$maps_sdk_release", "()Ljava/util/Set;", "_resubscribableSet", "get_resubscribableSet$maps_sdk_release$annotations", "get_resubscribableSet$maps_sdk_release", "cancelableSet", "Ljava/util/concurrent/CopyOnWriteArraySet;", "Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;", "mapLoadingErrorCallbackSet", "Lcom/mapbox/maps/MapLoadingErrorCallback;", "resubscribableSet", "Lcom/mapbox/maps/NativeObserver$ResubscribeExtendedCancelable;", "addOnCameraChangeListener", "", "onCameraChangeListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnCameraChangeListener;", "addOnMapIdleListener", "onMapIdleListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnMapIdleListener;", "addOnMapLoadErrorListener", "onMapLoadErrorListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnMapLoadErrorListener;", "addOnMapLoadedListener", "onMapLoadedListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnMapLoadedListener;", "addOnRenderFrameFinishedListener", "onRenderFrameFinishedListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnRenderFrameFinishedListener;", "addOnRenderFrameStartedListener", "onRenderFrameStartedListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnRenderFrameStartedListener;", "addOnSourceAddedListener", "onSourceAddedListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnSourceAddedListener;", "addOnSourceDataLoadedListener", "onSourceDataLoadedListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnSourceDataLoadedListener;", "addOnSourceRemovedListener", "onSourceRemovedListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnSourceRemovedListener;", "addOnStyleDataLoadedListener", "onStyleDataLoadedListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnStyleDataLoadedListener;", "addOnStyleImageMissingListener", "onStyleImageMissingListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnStyleImageMissingListener;", "addOnStyleImageUnusedListener", "onStyleImageUnusedListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnStyleImageUnusedListener;", "addOnStyleLoadedListener", "onStyleLoadedListener", "Lcom/mapbox/maps/plugin/delegates/listeners/OnStyleLoadedListener;", "onDestroy", "removeOnCameraChangeListener", "removeOnMapIdleListener", "removeOnMapLoadErrorListener", "removeOnMapLoadedListener", "removeOnRenderFrameFinishedListener", "removeOnRenderFrameStartedListener", "removeOnSourceAddedListener", "removeOnSourceDataLoadedListener", "removeOnSourceRemovedListener", "removeOnStyleDataLoadedListener", "removeOnStyleImageMissingListener", "removeOnStyleImageUnusedListener", "removeOnStyleLoadedListener", "resubscribeStyleLoadListeners", "sendMapLoadingError", "error", "Lcom/mapbox/maps/MapLoadingError;", "subscribeCameraChanged", "cameraChangedCallback", "Lcom/mapbox/maps/CameraChangedCallback;", "onCancel", "Lkotlin/Function0;", "subscribeCameraChangedCoalesced", "cameraChangedCoalescedCallback", "Lcom/mapbox/maps/CameraChangedCoalescedCallback;", "subscribeGenericEvent", "eventName", "", "genericEventCallback", "Lcom/mapbox/maps/GenericEventCallback;", "subscribeMapIdle", "mapIdleCallback", "Lcom/mapbox/maps/MapIdleCallback;", "mapIdleListener", "subscribeMapLoaded", "mapLoadedCallback", "Lcom/mapbox/maps/MapLoadedCallback;", "mapLoadedListener", "subscribeMapLoadingError", "mapLoadingErrorCallback", "mapLoadingErrorListener", "subscribeRenderFrameFinished", "renderFrameFinishedCallback", "Lcom/mapbox/maps/RenderFrameFinishedCallback;", "renderFrameFinishedListener", "subscribeRenderFrameStarted", "renderFrameStartedCallback", "Lcom/mapbox/maps/RenderFrameStartedCallback;", "renderFrameStarted", "subscribeResourceRequest", "resourceRequestCallback", "Lcom/mapbox/maps/ResourceRequestCallback;", "subscribeSourceAdded", "sourceAddedCallback", "Lcom/mapbox/maps/SourceAddedCallback;", "sourceAddedListener", "subscribeSourceDataLoaded", "sourceDataLoadedCallback", "Lcom/mapbox/maps/SourceDataLoadedCallback;", "sourceDataLoadedListener", "subscribeSourceRemoved", "sourceRemovedCallback", "Lcom/mapbox/maps/SourceRemovedCallback;", "sourceRemovedListener", "subscribeStyleDataLoaded", "styleDataLoadedCallback", "Lcom/mapbox/maps/StyleDataLoadedCallback;", "styleDataLoadedListener", "subscribeStyleImageMissing", "styleImageMissingCallback", "Lcom/mapbox/maps/StyleImageMissingCallback;", "styleImageMissingListener", "subscribeStyleImageRemoveUnused", "styleImageRemoveUnusedCallback", "Lcom/mapbox/maps/StyleImageRemoveUnusedCallback;", "styleImageUnusedListener", "subscribeStyleLoaded", "styleLoadedCallback", "Lcom/mapbox/maps/StyleLoadedCallback;", "styleLoadedListener", "unsubscribeListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "ExtendedCancelable", "ResubscribeExtendedCancelable", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class NativeObserver {
    private final Set<? extends Cancelable> _cancelableSet;
    private final Set<? extends Cancelable> _resubscribableSet;
    private final CopyOnWriteArraySet<ExtendedCancelable> cancelableSet;
    private final CopyOnWriteArraySet<MapLoadingErrorCallback> mapLoadingErrorCallbackSet;
    private final NativeMapImpl observable;
    private final CopyOnWriteArraySet<ResubscribeExtendedCancelable> resubscribableSet;

    public static void get_cancelableSet$maps_sdk_release$annotations() {
    }

    public static void get_resubscribableSet$maps_sdk_release$annotations() {
    }

    public NativeObserver(NativeMapImpl observable) {
        Intrinsics.checkNotNullParameter(observable, "observable");
        this.observable = observable;
        this.mapLoadingErrorCallbackSet = new CopyOnWriteArraySet<>();
        CopyOnWriteArraySet<ExtendedCancelable> copyOnWriteArraySet = new CopyOnWriteArraySet<>();
        this.cancelableSet = copyOnWriteArraySet;
        this._cancelableSet = copyOnWriteArraySet;
        CopyOnWriteArraySet<ResubscribeExtendedCancelable> copyOnWriteArraySet2 = new CopyOnWriteArraySet<>();
        this.resubscribableSet = copyOnWriteArraySet2;
        this._resubscribableSet = copyOnWriteArraySet2;
    }

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0092\u0004\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0010\b\u0002\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0012\b\u0002\u0010\u0006\u001a\f\u0012\b\u0012\u00060\u0000R\u00020\b0\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bJ\b\u0010\u0012\u001a\u00020\u0005H\u0016J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\nH\u0096\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016R\u0018\u0010\u0006\u001a\f\u0012\b\u0012\u00060\u0000R\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0019\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0002\u001a\u00020\u0001X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0018"}, d2 = {"Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;", "Lcom/mapbox/common/Cancelable;", "originalCancelable", "onCancel", "Lkotlin/Function0;", "", "cancelableSet", "", "Lcom/mapbox/maps/NativeObserver;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "(Lcom/mapbox/maps/NativeObserver;Lcom/mapbox/common/Cancelable;Lkotlin/jvm/functions/Function0;Ljava/util/Set;Ljava/lang/Object;)V", "getListener", "()Ljava/lang/Object;", "getOnCancel", "()Lkotlin/jvm/functions/Function0;", "getOriginalCancelable", "()Lcom/mapbox/common/Cancelable;", "cancel", "equals", "", "other", "hashCode", "", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private class ExtendedCancelable implements Cancelable {
        private final Set<ExtendedCancelable> cancelableSet;
        private final Object listener;
        private final Function0<Unit> onCancel;
        private final Cancelable originalCancelable;
        final NativeObserver this$0;

        public ExtendedCancelable(NativeObserver nativeObserver, Cancelable originalCancelable, Function0<Unit> function0, Set<ExtendedCancelable> cancelableSet, Object obj) {
            Intrinsics.checkNotNullParameter(originalCancelable, "originalCancelable");
            Intrinsics.checkNotNullParameter(cancelableSet, "cancelableSet");
            this.this$0 = nativeObserver;
            this.originalCancelable = originalCancelable;
            this.onCancel = function0;
            this.cancelableSet = cancelableSet;
            this.listener = obj;
            cancelableSet.add(this);
        }

        public Cancelable getOriginalCancelable() {
            return this.originalCancelable;
        }

        public final Function0<Unit> getOnCancel() {
            return this.onCancel;
        }

        public ExtendedCancelable(NativeObserver nativeObserver, Cancelable cancelable, Function0 function0, CopyOnWriteArraySet copyOnWriteArraySet, Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(nativeObserver, cancelable, (i & 2) != 0 ? null : function0, (i & 4) != 0 ? nativeObserver.cancelableSet : copyOnWriteArraySet, (i & 8) != 0 ? null : obj);
        }

        public final Object getListener() {
            return this.listener;
        }

        @Override
        public void cancel() {
            this.cancelableSet.remove(this);
            getOriginalCancelable().cancel();
            Function0<Unit> function0 = this.onCancel;
            if (function0 != null) {
                function0.invoke();
            }
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!Intrinsics.areEqual(getClass(), other != null ? other.getClass() : null)) {
                return false;
            }
            Intrinsics.checkNotNull(other, "null cannot be cast to non-null type com.mapbox.maps.NativeObserver.ExtendedCancelable");
            ExtendedCancelable extendedCancelable = (ExtendedCancelable) other;
            return Intrinsics.areEqual(getOriginalCancelable(), extendedCancelable.getOriginalCancelable()) && Intrinsics.areEqual(this.cancelableSet, extendedCancelable.cancelableSet) && Intrinsics.areEqual(this.onCancel, extendedCancelable.onCancel) && Intrinsics.areEqual(this.listener, extendedCancelable.listener);
        }

        public int hashCode() {
            return Objects.hash(getOriginalCancelable(), this.cancelableSet, this.onCancel, this.listener);
        }
    }

    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002BK\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0010\u0010\u0007\u001a\f\u0012\b\u0012\u00060\u0000R\u00020\u00020\b\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\rJ\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\u0006\u0010\u0017\u001a\u00020\nR\u001a\u0010\u0006\u001a\u00020\u0005X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/mapbox/maps/NativeObserver$ResubscribeExtendedCancelable;", "Lcom/mapbox/maps/NativeObserver$ExtendedCancelable;", "Lcom/mapbox/maps/NativeObserver;", "resubscriber", "Lkotlin/Function0;", "Lcom/mapbox/common/Cancelable;", "originalCancelable", "cancelableSet", "", "onCancel", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "(Lcom/mapbox/maps/NativeObserver;Lkotlin/jvm/functions/Function0;Lcom/mapbox/common/Cancelable;Ljava/util/Set;Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)V", "getOriginalCancelable", "()Lcom/mapbox/common/Cancelable;", "setOriginalCancelable", "(Lcom/mapbox/common/Cancelable;)V", "equals", "", "other", "hashCode", "", "resubscribe", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private final class ResubscribeExtendedCancelable extends ExtendedCancelable {
        private Cancelable originalCancelable;
        private final Function0<Cancelable> resubscriber;
        final NativeObserver this$0;

        public ResubscribeExtendedCancelable(NativeObserver nativeObserver, Function0<? extends Cancelable> resubscriber, Cancelable originalCancelable, Set<ResubscribeExtendedCancelable> cancelableSet, Function0<Unit> function0, Object obj) {
            super(nativeObserver, originalCancelable, function0, TypeIntrinsics.asMutableSet(cancelableSet), obj);
            Intrinsics.checkNotNullParameter(resubscriber, "resubscriber");
            Intrinsics.checkNotNullParameter(originalCancelable, "originalCancelable");
            Intrinsics.checkNotNullParameter(cancelableSet, "cancelableSet");
            this.this$0 = nativeObserver;
            this.resubscriber = resubscriber;
            this.originalCancelable = originalCancelable;
        }

        public ResubscribeExtendedCancelable(NativeObserver nativeObserver, Function0 function0, Cancelable cancelable, Set set, Function0 function1, Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(nativeObserver, function0, cancelable, set, (i & 8) != 0 ? null : function1, (i & 16) != 0 ? null : obj);
        }

        @Override
        public Cancelable getOriginalCancelable() {
            return this.originalCancelable;
        }

        public void setOriginalCancelable(Cancelable cancelable) {
            Intrinsics.checkNotNullParameter(cancelable, "<set-?>");
            this.originalCancelable = cancelable;
        }

        public final void resubscribe() {
            getOriginalCancelable().cancel();
            setOriginalCancelable(this.resubscriber.invoke());
        }

        @Override
        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!Intrinsics.areEqual(getClass(), other != null ? other.getClass() : null) || !super.equals(other)) {
                return false;
            }
            Intrinsics.checkNotNull(other, "null cannot be cast to non-null type com.mapbox.maps.NativeObserver.ResubscribeExtendedCancelable");
            return Intrinsics.areEqual(this.resubscriber, ((ResubscribeExtendedCancelable) other).resubscriber);
        }

        @Override
        public int hashCode() {
            return Objects.hash(Integer.valueOf(super.hashCode()), this.resubscriber);
        }
    }

    public final Set<? extends Cancelable> get_cancelableSet$maps_sdk_release() {
        return this._cancelableSet;
    }

    public final Set<? extends Cancelable> get_resubscribableSet$maps_sdk_release() {
        return this._resubscribableSet;
    }

    private final void unsubscribeListener(Object listener, Set<? extends ExtendedCancelable> cancelableSet) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : cancelableSet) {
            if (Intrinsics.areEqual(((ExtendedCancelable) obj).getListener(), listener)) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((ExtendedCancelable) it.next()).cancel();
        }
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release.")
    public final void addOnCameraChangeListener(final OnCameraChangeListener onCameraChangeListener) {
        Intrinsics.checkNotNullParameter(onCameraChangeListener, "onCameraChangeListener");
        subscribeCameraChanged$default(this, new CameraChangedCallback() {
            @Override
            public final void run(CameraChanged cameraChanged) {
                NativeObserver.addOnCameraChangeListener$lambda$2(onCameraChangeListener, cameraChanged);
            }
        }, null, onCameraChangeListener, 2, null);
    }

    public static final void addOnCameraChangeListener$lambda$2(OnCameraChangeListener onCameraChangeListener, CameraChanged it) {
        Intrinsics.checkNotNullParameter(onCameraChangeListener, "$onCameraChangeListener");
        Intrinsics.checkNotNullParameter(it, "it");
        onCameraChangeListener.onCameraChanged(EventsExtensionKt.toCameraChangedEventData(it));
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release.")
    public final void removeOnCameraChangeListener(OnCameraChangeListener onCameraChangeListener) {
        Intrinsics.checkNotNullParameter(onCameraChangeListener, "onCameraChangeListener");
        unsubscribeListener(onCameraChangeListener, this.cancelableSet);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release.")
    public final void addOnMapLoadedListener(final OnMapLoadedListener onMapLoadedListener) {
        Intrinsics.checkNotNullParameter(onMapLoadedListener, "onMapLoadedListener");
        subscribeMapLoaded$default(this, new MapLoadedCallback() {
            @Override
            public final void run(MapLoaded mapLoaded) {
                NativeObserver.addOnMapLoadedListener$lambda$3(onMapLoadedListener, mapLoaded);
            }
        }, null, onMapLoadedListener, 2, null);
    }

    public static final void addOnMapLoadedListener$lambda$3(OnMapLoadedListener onMapLoadedListener, MapLoaded it) {
        Intrinsics.checkNotNullParameter(onMapLoadedListener, "$onMapLoadedListener");
        Intrinsics.checkNotNullParameter(it, "it");
        onMapLoadedListener.onMapLoaded(EventsExtensionKt.toMapLoadedEventData(it));
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release.")
    public final void removeOnMapLoadedListener(OnMapLoadedListener onMapLoadedListener) {
        Intrinsics.checkNotNullParameter(onMapLoadedListener, "onMapLoadedListener");
        unsubscribeListener(onMapLoadedListener, this.cancelableSet);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release.")
    public final void addOnMapIdleListener(final OnMapIdleListener onMapIdleListener) {
        Intrinsics.checkNotNullParameter(onMapIdleListener, "onMapIdleListener");
        subscribeMapIdle$default(this, new MapIdleCallback() {
            @Override
            public final void run(MapIdle mapIdle) {
                NativeObserver.addOnMapIdleListener$lambda$4(onMapIdleListener, mapIdle);
            }
        }, null, onMapIdleListener, 2, null);
    }

    public static final void addOnMapIdleListener$lambda$4(OnMapIdleListener onMapIdleListener, MapIdle it) {
        Intrinsics.checkNotNullParameter(onMapIdleListener, "$onMapIdleListener");
        Intrinsics.checkNotNullParameter(it, "it");
        onMapIdleListener.onMapIdle(EventsExtensionKt.toMapIdleEventData(it));
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release.")
    public final void removeOnMapIdleListener(OnMapIdleListener onMapIdleListener) {
        Intrinsics.checkNotNullParameter(onMapIdleListener, "onMapIdleListener");
        unsubscribeListener(onMapIdleListener, this.cancelableSet);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release.")
    public final void addOnMapLoadErrorListener(final OnMapLoadErrorListener onMapLoadErrorListener) {
        Intrinsics.checkNotNullParameter(onMapLoadErrorListener, "onMapLoadErrorListener");
        subscribeMapLoadingError$default(this, new MapLoadingErrorCallback() {
            @Override
            public final void run(MapLoadingError mapLoadingError) {
                NativeObserver.addOnMapLoadErrorListener$lambda$5(onMapLoadErrorListener, mapLoadingError);
            }
        }, null, onMapLoadErrorListener, 2, null);
    }

    public static final void addOnMapLoadErrorListener$lambda$5(OnMapLoadErrorListener onMapLoadErrorListener, MapLoadingError it) {
        Intrinsics.checkNotNullParameter(onMapLoadErrorListener, "$onMapLoadErrorListener");
        Intrinsics.checkNotNullParameter(it, "it");
        onMapLoadErrorListener.onMapLoadError(EventsExtensionKt.toMapLoadingErrorEventData(it));
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release.")
    public final void removeOnMapLoadErrorListener(OnMapLoadErrorListener onMapLoadErrorListener) {
        Intrinsics.checkNotNullParameter(onMapLoadErrorListener, "onMapLoadErrorListener");
        unsubscribeListener(onMapLoadErrorListener, this.cancelableSet);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release.")
    public final void addOnStyleLoadedListener(final OnStyleLoadedListener onStyleLoadedListener) {
        Intrinsics.checkNotNullParameter(onStyleLoadedListener, "onStyleLoadedListener");
        subscribeStyleLoaded$default(this, new StyleLoadedCallback() {
            @Override
            public final void run(StyleLoaded styleLoaded) {
                NativeObserver.addOnStyleLoadedListener$lambda$6(onStyleLoadedListener, styleLoaded);
            }
        }, null, onStyleLoadedListener, 2, null);
    }

    public static final void addOnStyleLoadedListener$lambda$6(OnStyleLoadedListener onStyleLoadedListener, StyleLoaded it) {
        Intrinsics.checkNotNullParameter(onStyleLoadedListener, "$onStyleLoadedListener");
        Intrinsics.checkNotNullParameter(it, "it");
        onStyleLoadedListener.onStyleLoaded(EventsExtensionKt.toStyleLoadedEventData(it));
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release.")
    public final void removeOnStyleLoadedListener(OnStyleLoadedListener onStyleLoadedListener) {
        Intrinsics.checkNotNullParameter(onStyleLoadedListener, "onStyleLoadedListener");
        unsubscribeListener(onStyleLoadedListener, this.resubscribableSet);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release.")
    public final void addOnStyleDataLoadedListener(final OnStyleDataLoadedListener onStyleDataLoadedListener) {
        Intrinsics.checkNotNullParameter(onStyleDataLoadedListener, "onStyleDataLoadedListener");
        subscribeStyleDataLoaded$default(this, new StyleDataLoadedCallback() {
            @Override
            public final void run(StyleDataLoaded styleDataLoaded) {
                NativeObserver.addOnStyleDataLoadedListener$lambda$7(onStyleDataLoadedListener, styleDataLoaded);
            }
        }, null, onStyleDataLoadedListener, 2, null);
    }

    public static final void addOnStyleDataLoadedListener$lambda$7(OnStyleDataLoadedListener onStyleDataLoadedListener, StyleDataLoaded it) {
        Intrinsics.checkNotNullParameter(onStyleDataLoadedListener, "$onStyleDataLoadedListener");
        Intrinsics.checkNotNullParameter(it, "it");
        onStyleDataLoadedListener.onStyleDataLoaded(EventsExtensionKt.toStyleDataLoadedEventData(it));
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release.")
    public final void removeOnStyleDataLoadedListener(OnStyleDataLoadedListener onStyleDataLoadedListener) {
        Intrinsics.checkNotNullParameter(onStyleDataLoadedListener, "onStyleDataLoadedListener");
        unsubscribeListener(onStyleDataLoadedListener, this.resubscribableSet);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release.")
    public final void addOnSourceDataLoadedListener(final OnSourceDataLoadedListener onSourceDataLoadedListener) {
        Intrinsics.checkNotNullParameter(onSourceDataLoadedListener, "onSourceDataLoadedListener");
        subscribeSourceDataLoaded$default(this, new SourceDataLoadedCallback() {
            @Override
            public final void run(SourceDataLoaded sourceDataLoaded) {
                NativeObserver.addOnSourceDataLoadedListener$lambda$8(onSourceDataLoadedListener, sourceDataLoaded);
            }
        }, null, onSourceDataLoadedListener, 2, null);
    }

    public static final void addOnSourceDataLoadedListener$lambda$8(OnSourceDataLoadedListener onSourceDataLoadedListener, SourceDataLoaded it) {
        Intrinsics.checkNotNullParameter(onSourceDataLoadedListener, "$onSourceDataLoadedListener");
        Intrinsics.checkNotNullParameter(it, "it");
        onSourceDataLoadedListener.onSourceDataLoaded(EventsExtensionKt.toSourceDataLoadedEventData(it));
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release.")
    public final void removeOnSourceDataLoadedListener(OnSourceDataLoadedListener onSourceDataLoadedListener) {
        Intrinsics.checkNotNullParameter(onSourceDataLoadedListener, "onSourceDataLoadedListener");
        unsubscribeListener(onSourceDataLoadedListener, this.cancelableSet);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release.")
    public final void addOnSourceAddedListener(final OnSourceAddedListener onSourceAddedListener) {
        Intrinsics.checkNotNullParameter(onSourceAddedListener, "onSourceAddedListener");
        subscribeSourceAdded$default(this, new SourceAddedCallback() {
            @Override
            public final void run(SourceAdded sourceAdded) {
                NativeObserver.addOnSourceAddedListener$lambda$9(onSourceAddedListener, sourceAdded);
            }
        }, null, onSourceAddedListener, 2, null);
    }

    public static final void addOnSourceAddedListener$lambda$9(OnSourceAddedListener onSourceAddedListener, SourceAdded it) {
        Intrinsics.checkNotNullParameter(onSourceAddedListener, "$onSourceAddedListener");
        Intrinsics.checkNotNullParameter(it, "it");
        onSourceAddedListener.onSourceAdded(EventsExtensionKt.toSourceAddedEventData(it));
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release.")
    public final void removeOnSourceAddedListener(OnSourceAddedListener onSourceAddedListener) {
        Intrinsics.checkNotNullParameter(onSourceAddedListener, "onSourceAddedListener");
        unsubscribeListener(onSourceAddedListener, this.cancelableSet);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release.")
    public final void addOnSourceRemovedListener(final OnSourceRemovedListener onSourceRemovedListener) {
        Intrinsics.checkNotNullParameter(onSourceRemovedListener, "onSourceRemovedListener");
        subscribeSourceRemoved$default(this, new SourceRemovedCallback() {
            @Override
            public final void run(SourceRemoved sourceRemoved) {
                NativeObserver.addOnSourceRemovedListener$lambda$10(onSourceRemovedListener, sourceRemoved);
            }
        }, null, onSourceRemovedListener, 2, null);
    }

    public static final void addOnSourceRemovedListener$lambda$10(OnSourceRemovedListener onSourceRemovedListener, SourceRemoved it) {
        Intrinsics.checkNotNullParameter(onSourceRemovedListener, "$onSourceRemovedListener");
        Intrinsics.checkNotNullParameter(it, "it");
        onSourceRemovedListener.onSourceRemoved(EventsExtensionKt.toSourceRemovedEventData(it));
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release.")
    public final void removeOnSourceRemovedListener(OnSourceRemovedListener onSourceRemovedListener) {
        Intrinsics.checkNotNullParameter(onSourceRemovedListener, "onSourceRemovedListener");
        unsubscribeListener(onSourceRemovedListener, this.cancelableSet);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release.")
    public final void addOnStyleImageMissingListener(final OnStyleImageMissingListener onStyleImageMissingListener) {
        Intrinsics.checkNotNullParameter(onStyleImageMissingListener, "onStyleImageMissingListener");
        subscribeStyleImageMissing$default(this, new StyleImageMissingCallback() {
            @Override
            public final void run(StyleImageMissing styleImageMissing) {
                NativeObserver.addOnStyleImageMissingListener$lambda$11(onStyleImageMissingListener, styleImageMissing);
            }
        }, null, onStyleImageMissingListener, 2, null);
    }

    public static final void addOnStyleImageMissingListener$lambda$11(OnStyleImageMissingListener onStyleImageMissingListener, StyleImageMissing it) {
        Intrinsics.checkNotNullParameter(onStyleImageMissingListener, "$onStyleImageMissingListener");
        Intrinsics.checkNotNullParameter(it, "it");
        onStyleImageMissingListener.onStyleImageMissing(EventsExtensionKt.toStyleImageMissingEventData(it));
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release.")
    public final void removeOnStyleImageMissingListener(OnStyleImageMissingListener onStyleImageMissingListener) {
        Intrinsics.checkNotNullParameter(onStyleImageMissingListener, "onStyleImageMissingListener");
        unsubscribeListener(onStyleImageMissingListener, this.cancelableSet);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release.")
    public final void addOnStyleImageUnusedListener(final OnStyleImageUnusedListener onStyleImageUnusedListener) {
        Intrinsics.checkNotNullParameter(onStyleImageUnusedListener, "onStyleImageUnusedListener");
        subscribeStyleImageRemoveUnused$default(this, new StyleImageRemoveUnusedCallback() {
            @Override
            public final void run(StyleImageRemoveUnused styleImageRemoveUnused) {
                NativeObserver.addOnStyleImageUnusedListener$lambda$12(onStyleImageUnusedListener, styleImageRemoveUnused);
            }
        }, null, onStyleImageUnusedListener, 2, null);
    }

    public static final void addOnStyleImageUnusedListener$lambda$12(OnStyleImageUnusedListener onStyleImageUnusedListener, StyleImageRemoveUnused it) {
        Intrinsics.checkNotNullParameter(onStyleImageUnusedListener, "$onStyleImageUnusedListener");
        Intrinsics.checkNotNullParameter(it, "it");
        onStyleImageUnusedListener.onStyleImageUnused(EventsExtensionKt.toStyleImageUnusedEventData(it));
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release.")
    public final void removeOnStyleImageUnusedListener(OnStyleImageUnusedListener onStyleImageUnusedListener) {
        Intrinsics.checkNotNullParameter(onStyleImageUnusedListener, "onStyleImageUnusedListener");
        unsubscribeListener(onStyleImageUnusedListener, this.cancelableSet);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release.")
    public final void addOnRenderFrameStartedListener(final OnRenderFrameStartedListener onRenderFrameStartedListener) {
        Intrinsics.checkNotNullParameter(onRenderFrameStartedListener, "onRenderFrameStartedListener");
        subscribeRenderFrameStarted$default(this, new RenderFrameStartedCallback() {
            @Override
            public final void run(RenderFrameStarted renderFrameStarted) {
                NativeObserver.addOnRenderFrameStartedListener$lambda$13(onRenderFrameStartedListener, renderFrameStarted);
            }
        }, null, onRenderFrameStartedListener, 2, null);
    }

    public static final void addOnRenderFrameStartedListener$lambda$13(OnRenderFrameStartedListener onRenderFrameStartedListener, RenderFrameStarted it) {
        Intrinsics.checkNotNullParameter(onRenderFrameStartedListener, "$onRenderFrameStartedListener");
        Intrinsics.checkNotNullParameter(it, "it");
        onRenderFrameStartedListener.onRenderFrameStarted(EventsExtensionKt.toRenderFrameStartedEventData(it));
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release.")
    public final void removeOnRenderFrameStartedListener(OnRenderFrameStartedListener onRenderFrameStartedListener) {
        Intrinsics.checkNotNullParameter(onRenderFrameStartedListener, "onRenderFrameStartedListener");
        unsubscribeListener(onRenderFrameStartedListener, this.cancelableSet);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release.")
    public final void addOnRenderFrameFinishedListener(final OnRenderFrameFinishedListener onRenderFrameFinishedListener) {
        Intrinsics.checkNotNullParameter(onRenderFrameFinishedListener, "onRenderFrameFinishedListener");
        subscribeRenderFrameFinished$default(this, new RenderFrameFinishedCallback() {
            @Override
            public final void run(RenderFrameFinished renderFrameFinished) {
                NativeObserver.addOnRenderFrameFinishedListener$lambda$14(onRenderFrameFinishedListener, renderFrameFinished);
            }
        }, null, onRenderFrameFinishedListener, 2, null);
    }

    public static final void addOnRenderFrameFinishedListener$lambda$14(OnRenderFrameFinishedListener onRenderFrameFinishedListener, RenderFrameFinished it) {
        Intrinsics.checkNotNullParameter(onRenderFrameFinishedListener, "$onRenderFrameFinishedListener");
        Intrinsics.checkNotNullParameter(it, "it");
        onRenderFrameFinishedListener.onRenderFrameFinished(EventsExtensionKt.toRenderFrameFinishedEventData(it));
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This method is deprecated, and will be removed in next major release.")
    public final void removeOnRenderFrameFinishedListener(OnRenderFrameFinishedListener onRenderFrameFinishedListener) {
        Intrinsics.checkNotNullParameter(onRenderFrameFinishedListener, "onRenderFrameFinishedListener");
        unsubscribeListener(onRenderFrameFinishedListener, this.cancelableSet);
    }

    public static Cancelable subscribeCameraChanged$default(NativeObserver nativeObserver, CameraChangedCallback cameraChangedCallback, Function0 function0, OnCameraChangeListener onCameraChangeListener, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = null;
        }
        if ((i & 4) != 0) {
            onCameraChangeListener = null;
        }
        return nativeObserver.subscribeCameraChanged(cameraChangedCallback, function0, onCameraChangeListener);
    }

    public final Cancelable subscribeCameraChanged(CameraChangedCallback cameraChangedCallback, Function0<Unit> onCancel, OnCameraChangeListener onCameraChangeListener) {
        Intrinsics.checkNotNullParameter(cameraChangedCallback, "cameraChangedCallback");
        return new ExtendedCancelable(this, this.observable.subscribe(cameraChangedCallback), onCancel, null, onCameraChangeListener, 4, null);
    }

    public static Cancelable subscribeCameraChangedCoalesced$default(NativeObserver nativeObserver, CameraChangedCoalescedCallback cameraChangedCoalescedCallback, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = null;
        }
        return nativeObserver.subscribeCameraChangedCoalesced(cameraChangedCoalescedCallback, function0);
    }

    public final Cancelable subscribeCameraChangedCoalesced(CameraChangedCoalescedCallback cameraChangedCoalescedCallback, Function0<Unit> onCancel) {
        Intrinsics.checkNotNullParameter(cameraChangedCoalescedCallback, "cameraChangedCoalescedCallback");
        return new ExtendedCancelable(this, this.observable.subscribe(cameraChangedCoalescedCallback), onCancel, null, null, 12, null);
    }

    public static Cancelable subscribeMapLoaded$default(NativeObserver nativeObserver, MapLoadedCallback mapLoadedCallback, Function0 function0, OnMapLoadedListener onMapLoadedListener, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = null;
        }
        if ((i & 4) != 0) {
            onMapLoadedListener = null;
        }
        return nativeObserver.subscribeMapLoaded(mapLoadedCallback, function0, onMapLoadedListener);
    }

    public final Cancelable subscribeMapLoaded(MapLoadedCallback mapLoadedCallback, Function0<Unit> onCancel, OnMapLoadedListener mapLoadedListener) {
        Intrinsics.checkNotNullParameter(mapLoadedCallback, "mapLoadedCallback");
        return new ExtendedCancelable(this, this.observable.subscribe(mapLoadedCallback), onCancel, null, mapLoadedListener, 4, null);
    }

    public static Cancelable subscribeMapIdle$default(NativeObserver nativeObserver, MapIdleCallback mapIdleCallback, Function0 function0, OnMapIdleListener onMapIdleListener, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = null;
        }
        if ((i & 4) != 0) {
            onMapIdleListener = null;
        }
        return nativeObserver.subscribeMapIdle(mapIdleCallback, function0, onMapIdleListener);
    }

    public final Cancelable subscribeMapIdle(MapIdleCallback mapIdleCallback, Function0<Unit> onCancel, OnMapIdleListener mapIdleListener) {
        Intrinsics.checkNotNullParameter(mapIdleCallback, "mapIdleCallback");
        return new ExtendedCancelable(this, this.observable.subscribe(mapIdleCallback), onCancel, null, mapIdleListener, 4, null);
    }

    public static Cancelable subscribeMapLoadingError$default(NativeObserver nativeObserver, MapLoadingErrorCallback mapLoadingErrorCallback, Function0 function0, OnMapLoadErrorListener onMapLoadErrorListener, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = null;
        }
        if ((i & 4) != 0) {
            onMapLoadErrorListener = null;
        }
        return nativeObserver.subscribeMapLoadingError(mapLoadingErrorCallback, function0, onMapLoadErrorListener);
    }

    public final Cancelable subscribeMapLoadingError(final MapLoadingErrorCallback mapLoadingErrorCallback, final Function0<Unit> onCancel, OnMapLoadErrorListener mapLoadingErrorListener) {
        Intrinsics.checkNotNullParameter(mapLoadingErrorCallback, "mapLoadingErrorCallback");
        this.mapLoadingErrorCallbackSet.add(mapLoadingErrorCallback);
        return new ExtendedCancelable(this, this.observable.subscribe(mapLoadingErrorCallback), new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                NativeObserver.this.mapLoadingErrorCallbackSet.remove(mapLoadingErrorCallback);
                Function0<Unit> function0 = onCancel;
                if (function0 != null) {
                    function0.invoke();
                }
            }
        }, null, mapLoadingErrorListener, 4, null);
    }

    public static Cancelable subscribeStyleLoaded$default(NativeObserver nativeObserver, StyleLoadedCallback styleLoadedCallback, Function0 function0, OnStyleLoadedListener onStyleLoadedListener, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = null;
        }
        if ((i & 4) != 0) {
            onStyleLoadedListener = null;
        }
        return nativeObserver.subscribeStyleLoaded(styleLoadedCallback, function0, onStyleLoadedListener);
    }

    public final Cancelable subscribeStyleLoaded(final StyleLoadedCallback styleLoadedCallback, Function0<Unit> onCancel, OnStyleLoadedListener styleLoadedListener) {
        Intrinsics.checkNotNullParameter(styleLoadedCallback, "styleLoadedCallback");
        Function0<Cancelable> function0 = new Function0<Cancelable>() {
            {
                super(0);
            }

            @Override
            public final Cancelable invoke() {
                return this.this$0.observable.subscribe(styleLoadedCallback);
            }
        };
        return new ResubscribeExtendedCancelable(this, function0, function0.invoke(), this.resubscribableSet, onCancel, styleLoadedListener);
    }

    public static Cancelable subscribeStyleDataLoaded$default(NativeObserver nativeObserver, StyleDataLoadedCallback styleDataLoadedCallback, Function0 function0, OnStyleDataLoadedListener onStyleDataLoadedListener, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = null;
        }
        if ((i & 4) != 0) {
            onStyleDataLoadedListener = null;
        }
        return nativeObserver.subscribeStyleDataLoaded(styleDataLoadedCallback, function0, onStyleDataLoadedListener);
    }

    public final Cancelable subscribeStyleDataLoaded(final StyleDataLoadedCallback styleDataLoadedCallback, Function0<Unit> onCancel, OnStyleDataLoadedListener styleDataLoadedListener) {
        Intrinsics.checkNotNullParameter(styleDataLoadedCallback, "styleDataLoadedCallback");
        Function0<Cancelable> function0 = new Function0<Cancelable>() {
            {
                super(0);
            }

            @Override
            public final Cancelable invoke() {
                return this.this$0.observable.subscribe(styleDataLoadedCallback);
            }
        };
        return new ResubscribeExtendedCancelable(this, function0, function0.invoke(), this.resubscribableSet, onCancel, styleDataLoadedListener);
    }

    public static Cancelable subscribeSourceDataLoaded$default(NativeObserver nativeObserver, SourceDataLoadedCallback sourceDataLoadedCallback, Function0 function0, OnSourceDataLoadedListener onSourceDataLoadedListener, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = null;
        }
        if ((i & 4) != 0) {
            onSourceDataLoadedListener = null;
        }
        return nativeObserver.subscribeSourceDataLoaded(sourceDataLoadedCallback, function0, onSourceDataLoadedListener);
    }

    public final Cancelable subscribeSourceDataLoaded(SourceDataLoadedCallback sourceDataLoadedCallback, Function0<Unit> onCancel, OnSourceDataLoadedListener sourceDataLoadedListener) {
        Intrinsics.checkNotNullParameter(sourceDataLoadedCallback, "sourceDataLoadedCallback");
        return new ExtendedCancelable(this, this.observable.subscribe(sourceDataLoadedCallback), onCancel, null, sourceDataLoadedListener, 4, null);
    }

    public static Cancelable subscribeSourceAdded$default(NativeObserver nativeObserver, SourceAddedCallback sourceAddedCallback, Function0 function0, OnSourceAddedListener onSourceAddedListener, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = null;
        }
        if ((i & 4) != 0) {
            onSourceAddedListener = null;
        }
        return nativeObserver.subscribeSourceAdded(sourceAddedCallback, function0, onSourceAddedListener);
    }

    public final Cancelable subscribeSourceAdded(SourceAddedCallback sourceAddedCallback, Function0<Unit> onCancel, OnSourceAddedListener sourceAddedListener) {
        Intrinsics.checkNotNullParameter(sourceAddedCallback, "sourceAddedCallback");
        return new ExtendedCancelable(this, this.observable.subscribe(sourceAddedCallback), onCancel, null, sourceAddedListener, 4, null);
    }

    public static Cancelable subscribeSourceRemoved$default(NativeObserver nativeObserver, SourceRemovedCallback sourceRemovedCallback, Function0 function0, OnSourceRemovedListener onSourceRemovedListener, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = null;
        }
        if ((i & 4) != 0) {
            onSourceRemovedListener = null;
        }
        return nativeObserver.subscribeSourceRemoved(sourceRemovedCallback, function0, onSourceRemovedListener);
    }

    public final Cancelable subscribeSourceRemoved(SourceRemovedCallback sourceRemovedCallback, Function0<Unit> onCancel, OnSourceRemovedListener sourceRemovedListener) {
        Intrinsics.checkNotNullParameter(sourceRemovedCallback, "sourceRemovedCallback");
        return new ExtendedCancelable(this, this.observable.subscribe(sourceRemovedCallback), onCancel, null, sourceRemovedListener, 4, null);
    }

    public static Cancelable subscribeStyleImageMissing$default(NativeObserver nativeObserver, StyleImageMissingCallback styleImageMissingCallback, Function0 function0, OnStyleImageMissingListener onStyleImageMissingListener, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = null;
        }
        if ((i & 4) != 0) {
            onStyleImageMissingListener = null;
        }
        return nativeObserver.subscribeStyleImageMissing(styleImageMissingCallback, function0, onStyleImageMissingListener);
    }

    public final Cancelable subscribeStyleImageMissing(StyleImageMissingCallback styleImageMissingCallback, Function0<Unit> onCancel, OnStyleImageMissingListener styleImageMissingListener) {
        Intrinsics.checkNotNullParameter(styleImageMissingCallback, "styleImageMissingCallback");
        return new ExtendedCancelable(this, this.observable.subscribe(styleImageMissingCallback), onCancel, null, styleImageMissingListener, 4, null);
    }

    public static Cancelable subscribeStyleImageRemoveUnused$default(NativeObserver nativeObserver, StyleImageRemoveUnusedCallback styleImageRemoveUnusedCallback, Function0 function0, OnStyleImageUnusedListener onStyleImageUnusedListener, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = null;
        }
        if ((i & 4) != 0) {
            onStyleImageUnusedListener = null;
        }
        return nativeObserver.subscribeStyleImageRemoveUnused(styleImageRemoveUnusedCallback, function0, onStyleImageUnusedListener);
    }

    public final Cancelable subscribeStyleImageRemoveUnused(StyleImageRemoveUnusedCallback styleImageRemoveUnusedCallback, Function0<Unit> onCancel, OnStyleImageUnusedListener styleImageUnusedListener) {
        Intrinsics.checkNotNullParameter(styleImageRemoveUnusedCallback, "styleImageRemoveUnusedCallback");
        return new ExtendedCancelable(this, this.observable.subscribe(styleImageRemoveUnusedCallback), onCancel, null, styleImageUnusedListener, 4, null);
    }

    public static Cancelable subscribeRenderFrameStarted$default(NativeObserver nativeObserver, RenderFrameStartedCallback renderFrameStartedCallback, Function0 function0, OnRenderFrameStartedListener onRenderFrameStartedListener, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = null;
        }
        if ((i & 4) != 0) {
            onRenderFrameStartedListener = null;
        }
        return nativeObserver.subscribeRenderFrameStarted(renderFrameStartedCallback, function0, onRenderFrameStartedListener);
    }

    public final Cancelable subscribeRenderFrameStarted(RenderFrameStartedCallback renderFrameStartedCallback, Function0<Unit> onCancel, OnRenderFrameStartedListener renderFrameStarted) {
        Intrinsics.checkNotNullParameter(renderFrameStartedCallback, "renderFrameStartedCallback");
        return new ExtendedCancelable(this, this.observable.subscribe(renderFrameStartedCallback), onCancel, null, renderFrameStarted, 4, null);
    }

    public static Cancelable subscribeRenderFrameFinished$default(NativeObserver nativeObserver, RenderFrameFinishedCallback renderFrameFinishedCallback, Function0 function0, OnRenderFrameFinishedListener onRenderFrameFinishedListener, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = null;
        }
        if ((i & 4) != 0) {
            onRenderFrameFinishedListener = null;
        }
        return nativeObserver.subscribeRenderFrameFinished(renderFrameFinishedCallback, function0, onRenderFrameFinishedListener);
    }

    public final Cancelable subscribeRenderFrameFinished(RenderFrameFinishedCallback renderFrameFinishedCallback, Function0<Unit> onCancel, OnRenderFrameFinishedListener renderFrameFinishedListener) {
        Intrinsics.checkNotNullParameter(renderFrameFinishedCallback, "renderFrameFinishedCallback");
        return new ExtendedCancelable(this, this.observable.subscribe(renderFrameFinishedCallback), onCancel, null, renderFrameFinishedListener, 4, null);
    }

    public static Cancelable subscribeResourceRequest$default(NativeObserver nativeObserver, ResourceRequestCallback resourceRequestCallback, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = null;
        }
        return nativeObserver.subscribeResourceRequest(resourceRequestCallback, function0);
    }

    public final Cancelable subscribeResourceRequest(ResourceRequestCallback resourceRequestCallback, Function0<Unit> onCancel) {
        Intrinsics.checkNotNullParameter(resourceRequestCallback, "resourceRequestCallback");
        return new ExtendedCancelable(this, this.observable.subscribe(resourceRequestCallback), onCancel, null, null, 12, null);
    }

    public static Cancelable subscribeGenericEvent$default(NativeObserver nativeObserver, String str, GenericEventCallback genericEventCallback, Function0 function0, int i, Object obj) {
        if ((i & 4) != 0) {
            function0 = null;
        }
        return nativeObserver.subscribeGenericEvent(str, genericEventCallback, function0);
    }

    public final Cancelable subscribeGenericEvent(String eventName, GenericEventCallback genericEventCallback, Function0<Unit> onCancel) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        Intrinsics.checkNotNullParameter(genericEventCallback, "genericEventCallback");
        return new ExtendedCancelable(this, this.observable.subscribe(eventName, genericEventCallback), onCancel, null, null, 12, null);
    }

    public final void resubscribeStyleLoadListeners() {
        Iterator<T> it = this.resubscribableSet.iterator();
        while (it.hasNext()) {
            ((ResubscribeExtendedCancelable) it.next()).resubscribe();
        }
    }

    public final void onDestroy() {
        Iterator<T> it = this.cancelableSet.iterator();
        while (it.hasNext()) {
            ((Cancelable) it.next()).cancel();
        }
        Iterator<T> it2 = this.resubscribableSet.iterator();
        while (it2.hasNext()) {
            ((Cancelable) it2.next()).cancel();
        }
    }

    public final void sendMapLoadingError(MapLoadingError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        Iterator<T> it = this.mapLoadingErrorCallbackSet.iterator();
        while (it.hasNext()) {
            ((MapLoadingErrorCallback) it.next()).run(error);
        }
    }
}
