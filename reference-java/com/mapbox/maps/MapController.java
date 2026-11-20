package com.mapbox.maps;

import android.graphics.Bitmap;
import android.view.MotionEvent;
import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mapbox.common.Cancelable;
import com.mapbox.common.MapboxOptions;
import com.mapbox.maps.plugin.InvalidViewPluginHostException;
import com.mapbox.maps.plugin.MapPlugin;
import com.mapbox.maps.plugin.MapPluginRegistry;
import com.mapbox.maps.plugin.Plugin;
import com.mapbox.maps.plugin.animation.CameraAnimationsPlugin;
import com.mapbox.maps.plugin.animation.CameraAnimationsUtils;
import com.mapbox.maps.plugin.annotation.AnnotationsUtils;
import com.mapbox.maps.plugin.attribution.AttributionUtils;
import com.mapbox.maps.plugin.compass.CompassUtils;
import com.mapbox.maps.plugin.delegates.MapPluginProviderDelegate;
import com.mapbox.maps.plugin.gestures.GesturesPlugin;
import com.mapbox.maps.plugin.gestures.GesturesUtils;
import com.mapbox.maps.plugin.lifecycle.LifecycleUtils;
import com.mapbox.maps.plugin.lifecycle.MapboxLifecyclePlugin;
import com.mapbox.maps.plugin.locationcomponent.LocationComponentUtils;
import com.mapbox.maps.plugin.logo.LogoUtils;
import com.mapbox.maps.plugin.overlay.MapOverlayUtils;
import com.mapbox.maps.plugin.scalebar.ScaleBarUtils;
import com.mapbox.maps.plugin.viewport.ViewportUtils;
import com.mapbox.maps.renderer.MapboxRenderer;
import com.mapbox.maps.renderer.OnFpsChangedListener;
import com.mapbox.maps.renderer.RenderThreadStatsRecorder;
import com.mapbox.maps.renderer.RendererSetupErrorListener;
import com.mapbox.maps.renderer.widget.Widget;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;

@Metadata(d1 = {"\u0000Ø\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u0000 i2\u00020\u00012\u00020\u0002:\u0002ijB\u0017\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007BI\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013¢\u0006\u0002\u0010\u0014J\u0010\u0010/\u001a\u0002002\u0006\u00101\u001a\u000202H\u0016J\u0010\u00103\u001a\u0002002\u0006\u00104\u001a\u000205H\u0016J\u0018\u00106\u001a\u0002002\b\u00107\u001a\u0004\u0018\u0001082\u0006\u00109\u001a\u00020:J\r\u0010(\u001a\u00020\u000fH\u0007¢\u0006\u0002\b;J\u0006\u0010<\u001a\u00020\rJ!\u0010=\u001a\u0004\u0018\u0001H>\"\b\b\u0000\u0010>*\u00020?2\u0006\u0010@\u001a\u00020AH\u0016¢\u0006\u0002\u0010BJ\u001a\u0010C\u001a\u0002002\u0006\u0010D\u001a\u00020\u00062\n\b\u0002\u00107\u001a\u0004\u0018\u000108J\u0015\u0010E\u001a\u0002002\u0006\u00107\u001a\u000208H\u0000¢\u0006\u0002\bFJ\b\u0010G\u001a\u000200H\u0016J\u0010\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020KH\u0016J\b\u0010L\u001a\u000200H\u0016J\b\u0010M\u001a\u000200H\u0016J\u0018\u0010N\u001a\u0002002\u0006\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020PH\u0016J\b\u0010R\u001a\u000200H\u0016J\b\u0010S\u001a\u000200H\u0016J\u0010\u0010T\u001a\u00020I2\u0006\u0010J\u001a\u00020KH\u0016J\u0018\u0010U\u001a\u0002002\u0006\u0010J\u001a\u00020V2\u0006\u0010W\u001a\u00020IH\u0016J\u000e\u0010X\u001a\u0002002\u0006\u0010@\u001a\u00020AJ\u0010\u0010Y\u001a\u0002002\u0006\u00101\u001a\u000202H\u0016J\u0010\u0010Z\u001a\u00020I2\u0006\u00104\u001a\u000205H\u0016J\u0010\u0010[\u001a\u0002002\u0006\u0010\\\u001a\u00020PH\u0016J\u0010\u0010]\u001a\u0002002\u0006\u0010^\u001a\u00020_H\u0016J\u0010\u0010`\u001a\u0002002\u0006\u0010a\u001a\u00020bH\u0016J\u0015\u0010c\u001a\u0002002\u0006\u0010d\u001a\u00020PH\u0000¢\u0006\u0002\beJ\n\u0010f\u001a\u0004\u0018\u00010gH\u0016J\u0010\u0010f\u001a\u0002002\u0006\u0010^\u001a\u00020hH\u0016R\u000e\u0010\u0015\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u00020\u001eX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R$\u0010!\u001a\u00020\"8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b#\u0010\u0019\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b(\u0010)R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+R\u0010\u0010,\u001a\u0004\u0018\u00010-X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006k"}, d2 = {"Lcom/mapbox/maps/MapController;", "Lcom/mapbox/maps/plugin/delegates/MapPluginProviderDelegate;", "Lcom/mapbox/maps/MapControllable;", "renderer", "Lcom/mapbox/maps/renderer/MapboxRenderer;", "mapInitOptions", "Lcom/mapbox/maps/MapInitOptions;", "(Lcom/mapbox/maps/renderer/MapboxRenderer;Lcom/mapbox/maps/MapInitOptions;)V", "nativeObserver", "Lcom/mapbox/maps/NativeObserver;", "contextMode", "Lcom/mapbox/maps/ContextMode;", "nativeMap", "Lcom/mapbox/maps/NativeMapImpl;", "mapboxMap", "Lcom/mapbox/maps/MapboxMap;", "pluginRegistry", "Lcom/mapbox/maps/plugin/MapPluginRegistry;", "onStyleLoadingFinishedListener", "Lcom/mapbox/maps/StyleDataLoadedCallback;", "(Lcom/mapbox/maps/renderer/MapboxRenderer;Lcom/mapbox/maps/NativeObserver;Lcom/mapbox/maps/MapInitOptions;Lcom/mapbox/maps/ContextMode;Lcom/mapbox/maps/NativeMapImpl;Lcom/mapbox/maps/MapboxMap;Lcom/mapbox/maps/plugin/MapPluginRegistry;Lcom/mapbox/maps/StyleDataLoadedCallback;)V", "_mapboxMap", "cameraChangedCoalescedCallback", "Lcom/mapbox/maps/CameraChangedCoalescedCallback;", "getCameraChangedCoalescedCallback$annotations", "()V", "cancelableSubscriberSet", "Ljava/util/concurrent/CopyOnWriteArraySet;", "Lcom/mapbox/common/Cancelable;", "lifecycleScope", "Lkotlinx/coroutines/CoroutineScope;", "getLifecycleScope$maps_sdk_release", "()Lkotlinx/coroutines/CoroutineScope;", "lifecycleState", "Lcom/mapbox/maps/MapController$LifecycleState;", "getLifecycleState$maps_sdk_release$annotations", "getLifecycleState$maps_sdk_release", "()Lcom/mapbox/maps/MapController$LifecycleState;", "setLifecycleState$maps_sdk_release", "(Lcom/mapbox/maps/MapController$LifecycleState;)V", "getMapboxMap", "()Lcom/mapbox/maps/MapboxMap;", "getRenderer$maps_sdk_release", "()Lcom/mapbox/maps/renderer/MapboxRenderer;", "style", "Lcom/mapbox/maps/Style;", "styleDataLoadedCallback", "addRendererSetupErrorListener", "", "rendererSetupErrorListener", "Lcom/mapbox/maps/renderer/RendererSetupErrorListener;", "addWidget", "widget", "Lcom/mapbox/maps/renderer/widget/Widget;", "createPlugin", "mapView", "Lcom/mapbox/maps/MapView;", "plugin", "Lcom/mapbox/maps/plugin/Plugin;", "getMapboxMapDeprecated", "getNativeMap", "getPlugin", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/mapbox/maps/plugin/MapPlugin;", "id", "", "(Ljava/lang/String;)Lcom/mapbox/maps/plugin/MapPlugin;", "initializePlugins", "options", "onAttachedToWindow", "onAttachedToWindow$maps_sdk_release", "onDestroy", "onGenericMotionEvent", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "onLowMemory", "onResume", "onSizeChanged", "w", "", "h", "onStart", "onStop", "onTouchEvent", "queueEvent", "Ljava/lang/Runnable;", "needRender", "removePlugin", "removeRendererSetupErrorListener", "removeWidget", "setMaximumFps", "fps", "setOnFpsChangedListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/mapbox/maps/renderer/OnFpsChangedListener;", "setRenderThreadStatsRecorder", "renderThreadStatsRecorder", "Lcom/mapbox/maps/renderer/RenderThreadStatsRecorder;", "setScreenRefreshRate", "refreshRate", "setScreenRefreshRate$maps_sdk_release", "snapshot", "Landroid/graphics/Bitmap;", "Lcom/mapbox/maps/MapView$OnSnapshotReady;", "Companion", "LifecycleState", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MapController implements MapPluginProviderDelegate, MapControllable {
    private static final String PLUGIN_MISSING_TEMPLATE = "Add %s plugin dependency to the classpath take automatically load the plugin implementation.";
    public static final String TAG = "MapController";
    private static final String VIEW_HIERARCHY_MISSING_TEMPLATE = "%s plugin requires a View hierarchy to be injected, plugin is ignored.";
    private final MapboxMap _mapboxMap;
    private final CameraChangedCoalescedCallback cameraChangedCoalescedCallback;
    private final CopyOnWriteArraySet<Cancelable> cancelableSubscriberSet;
    private ContextMode contextMode;
    private final CoroutineScope lifecycleScope;
    private LifecycleState lifecycleState;
    private final MapInitOptions mapInitOptions;
    private final NativeMapImpl nativeMap;
    private final NativeObserver nativeObserver;
    private final MapPluginRegistry pluginRegistry;
    private final MapboxRenderer renderer;
    private Style style;
    private final StyleDataLoadedCallback styleDataLoadedCallback;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0081\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/mapbox/maps/MapController$LifecycleState;", "", "(Ljava/lang/String;I)V", "STATE_STOPPED", "STATE_STARTED", "STATE_DESTROYED", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public enum LifecycleState {
        STATE_STOPPED,
        STATE_STARTED,
        STATE_DESTROYED
    }

    private static void getCameraChangedCoalescedCallback$annotations() {
    }

    public static void getLifecycleState$maps_sdk_release$annotations() {
    }

    public final MapboxRenderer getRenderer() {
        return this.renderer;
    }

    public final CoroutineScope getLifecycleScope() {
        return this.lifecycleScope;
    }

    public final LifecycleState getLifecycleState() {
        return this.lifecycleState;
    }

    public final void setLifecycleState$maps_sdk_release(LifecycleState lifecycleState) {
        Intrinsics.checkNotNullParameter(lifecycleState, "<set-?>");
        this.lifecycleState = lifecycleState;
    }

    @Override
    public MapboxMap getMapboxMapDeprecated() {
        return this._mapboxMap;
    }

    public MapController(MapboxRenderer renderer, MapInitOptions mapInitOptions) {
        Intrinsics.checkNotNullParameter(renderer, "renderer");
        Intrinsics.checkNotNullParameter(mapInitOptions, "mapInitOptions");
        this.cancelableSubscriberSet = new CopyOnWriteArraySet<>();
        this.lifecycleScope = CoroutineScopeKt.plus(CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null).plus(Dispatchers.getMain().getImmediate())), new CoroutineName("MapControllerLifecycleScope"));
        this.lifecycleState = LifecycleState.STATE_STOPPED;
        if (StringsKt.isBlank(MapboxOptions.getAccessToken())) {
            throw new MapboxConfigurationException();
        }
        this.renderer = renderer;
        this.mapInitOptions = mapInitOptions;
        this.contextMode = mapInitOptions.getMapOptions().getContextMode();
        NativeMapImpl nativeMapWrapper = MapProvider.INSTANCE.getNativeMapWrapper(mapInitOptions, renderer);
        this.nativeMap = nativeMapWrapper;
        NativeObserver nativeObserver = new NativeObserver(nativeMapWrapper);
        this.nativeObserver = nativeObserver;
        this._mapboxMap = MapProvider.INSTANCE.getMapboxMap(nativeMapWrapper, nativeObserver, mapInitOptions.getMapOptions().getPixelRatio());
        getMapboxMapDeprecated().setRenderHandler$maps_sdk_release(renderer.getRenderThread$maps_sdk_release().getRenderHandlerThread().getHandler());
        this.pluginRegistry = MapProvider.INSTANCE.getMapPluginRegistry(getMapboxMapDeprecated(), this, MapProvider.INSTANCE.getMapTelemetryInstance(mapInitOptions.getContext()), MapProvider.INSTANCE.getMapGeofencingConsent());
        this.cameraChangedCoalescedCallback = new CameraChangedCoalescedCallback() {
            @Override
            public final void run(CameraChangedCoalesced cameraChangedCoalesced) {
                MapController._init_$lambda$0(this.f$0, cameraChangedCoalesced);
            }
        };
        this.styleDataLoadedCallback = new StyleDataLoadedCallback() {
            @Override
            public final void run(StyleDataLoaded styleDataLoaded) {
                MapController._init_$lambda$2(this.f$0, styleDataLoaded);
            }
        };
        renderer.setMap(nativeMapWrapper);
        CameraOptions cameraOptions = mapInitOptions.getCameraOptions();
        if (cameraOptions != null) {
            getMapboxMapDeprecated().setCamera(cameraOptions);
        }
    }

    public static final void _init_$lambda$0(MapController this$0, CameraChangedCoalesced it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        MapPluginRegistry mapPluginRegistry = this$0.pluginRegistry;
        CameraState cameraState = it.getCameraState();
        Intrinsics.checkNotNullExpressionValue(cameraState, "it.cameraState");
        mapPluginRegistry.onCameraMove(cameraState);
    }

    public static final void _init_$lambda$2(final MapController this$0, StyleDataLoaded eventData) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(eventData, "eventData");
        if (eventData.getType() == StyleDataLoadedType.STYLE) {
            this$0.getMapboxMapDeprecated().getStyle(new Style.OnStyleLoaded() {
                @Override
                public final void onStyleLoaded(Style style) {
                    MapController._init_$lambda$2$lambda$1(this.f$0, style);
                }
            });
        }
    }

    public static final void _init_$lambda$2$lambda$1(MapController this$0, Style style) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(style, "style");
        this$0.style = style;
        this$0.pluginRegistry.onStyleChanged(style);
    }

    public MapController(MapboxRenderer renderer, NativeObserver nativeObserver, MapInitOptions mapInitOptions, ContextMode contextMode, NativeMapImpl nativeMap, MapboxMap mapboxMap, final MapPluginRegistry pluginRegistry, StyleDataLoadedCallback onStyleLoadingFinishedListener) {
        Intrinsics.checkNotNullParameter(renderer, "renderer");
        Intrinsics.checkNotNullParameter(nativeObserver, "nativeObserver");
        Intrinsics.checkNotNullParameter(mapInitOptions, "mapInitOptions");
        Intrinsics.checkNotNullParameter(nativeMap, "nativeMap");
        Intrinsics.checkNotNullParameter(mapboxMap, "mapboxMap");
        Intrinsics.checkNotNullParameter(pluginRegistry, "pluginRegistry");
        Intrinsics.checkNotNullParameter(onStyleLoadingFinishedListener, "onStyleLoadingFinishedListener");
        this.cancelableSubscriberSet = new CopyOnWriteArraySet<>();
        this.lifecycleScope = CoroutineScopeKt.plus(CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null).plus(Dispatchers.getMain().getImmediate())), new CoroutineName("MapControllerLifecycleScope"));
        this.lifecycleState = LifecycleState.STATE_STOPPED;
        this.renderer = renderer;
        this.nativeObserver = nativeObserver;
        this.mapInitOptions = mapInitOptions;
        this.contextMode = contextMode;
        this.nativeMap = nativeMap;
        this._mapboxMap = mapboxMap;
        this.pluginRegistry = pluginRegistry;
        this.cameraChangedCoalescedCallback = new CameraChangedCoalescedCallback() {
            @Override
            public final void run(CameraChangedCoalesced cameraChangedCoalesced) {
                MapController._init_$lambda$4(pluginRegistry, cameraChangedCoalesced);
            }
        };
        this.styleDataLoadedCallback = onStyleLoadingFinishedListener;
    }

    public static final void _init_$lambda$4(MapPluginRegistry pluginRegistry, CameraChangedCoalesced it) {
        Intrinsics.checkNotNullParameter(pluginRegistry, "$pluginRegistry");
        Intrinsics.checkNotNullParameter(it, "it");
        CameraState cameraState = it.getCameraState();
        Intrinsics.checkNotNullExpressionValue(cameraState, "it.cameraState");
        pluginRegistry.onCameraMove(cameraState);
    }

    public final NativeMapImpl getNativeMap() {
        return this.nativeMap;
    }

    @Override
    public void onStart() {
        String styleUri;
        if (this.lifecycleState == LifecycleState.STATE_STARTED) {
            return;
        }
        this.lifecycleState = LifecycleState.STATE_STARTED;
        Style styleDeprecated = getMapboxMapDeprecated().getStyleDeprecated();
        if (styleDeprecated != null && !Intrinsics.areEqual(styleDeprecated, this.style)) {
            this.style = styleDeprecated;
            this.pluginRegistry.onStyleChanged(styleDeprecated);
        }
        NativeObserver nativeObserver = this.nativeObserver;
        this.cancelableSubscriberSet.add(NativeObserver.subscribeCameraChangedCoalesced$default(nativeObserver, this.cameraChangedCoalescedCallback, null, 2, null));
        this.cancelableSubscriberSet.add(NativeObserver.subscribeStyleDataLoaded$default(nativeObserver, this.styleDataLoadedCallback, null, null, 6, null));
        this.renderer.onStart();
        if (!getMapboxMapDeprecated().getIsStyleLoadInitiated() && (styleUri = this.mapInitOptions.getStyleUri()) != null) {
            MapboxMap.loadStyle$default(getMapboxMapDeprecated(), styleUri, (Style.OnStyleLoaded) null, 2, (Object) null);
        }
        this.pluginRegistry.onStart();
    }

    @Override
    public void onStop() {
        if (this.lifecycleState == LifecycleState.STATE_STOPPED) {
            return;
        }
        this.lifecycleState = LifecycleState.STATE_STOPPED;
        Iterator<T> it = this.cancelableSubscriberSet.iterator();
        while (it.hasNext()) {
            ((Cancelable) it.next()).cancel();
        }
        this.cancelableSubscriberSet.clear();
        this.renderer.onStop();
        this.pluginRegistry.onStop();
        MapProvider.INSTANCE.flushPendingEvents();
    }

    @Override
    public void onResume() {
        this.renderer.onResume();
    }

    @Override
    public void onDestroy() {
        if (this.lifecycleState == LifecycleState.STATE_DESTROYED) {
            return;
        }
        this.lifecycleState = LifecycleState.STATE_DESTROYED;
        CoroutineScopeKt.cancel$default(this.lifecycleScope, null, 1, null);
        this.pluginRegistry.onDestroy();
        this.nativeObserver.onDestroy();
        this.renderer.onDestroy();
        getMapboxMapDeprecated().onDestroy$maps_sdk_release();
        this.style = null;
    }

    @Override
    public void onLowMemory() {
        getMapboxMapDeprecated().reduceMemoryUse();
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return this.pluginRegistry.onTouch(event);
    }

    @Override
    public boolean onGenericMotionEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return this.pluginRegistry.onGenericMotionEvent(event);
    }

    @Override
    public void onSizeChanged(final int w, final int h) {
        this.nativeMap.setSizeSet$maps_sdk_release(false);
        this.renderer.queueRenderEvent(new Runnable() {
            @Override
            public final void run() {
                MapController.onSizeChanged$lambda$9(this.f$0, w, h);
            }
        });
        this.pluginRegistry.onSizeChanged(w, h);
    }

    public static final void onSizeChanged$lambda$9(MapController this$0, int i, int i2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.renderer.onSurfaceChanged(i, i2);
        this$0.nativeMap.setSizeSet$maps_sdk_release(true);
    }

    @Override
    public void queueEvent(Runnable event, boolean needRender) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (needRender) {
            this.renderer.queueRenderEvent(event);
        } else {
            this.renderer.queueNonRenderEvent(event);
        }
    }

    @Override
    public Bitmap snapshot() {
        return this.renderer.snapshot();
    }

    @Override
    public void snapshot(MapView.OnSnapshotReady listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.renderer.snapshot(listener);
    }

    @Override
    public void setMaximumFps(int fps) {
        this.renderer.setMaximumFps(fps);
    }

    @Override
    public void setOnFpsChangedListener(OnFpsChangedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.renderer.setOnFpsChangedListener(listener);
    }

    @Override
    public void setRenderThreadStatsRecorder(RenderThreadStatsRecorder renderThreadStatsRecorder) {
        Intrinsics.checkNotNullParameter(renderThreadStatsRecorder, "renderThreadStatsRecorder");
        this.renderer.getRenderThread$maps_sdk_release().setRenderThreadStatsRecorder$maps_sdk_release(renderThreadStatsRecorder);
    }

    @Override
    public void addWidget(Widget widget) {
        Intrinsics.checkNotNullParameter(widget, "widget");
        if (this.contextMode != ContextMode.SHARED) {
            throw new RuntimeException("Map view or map surface must be init with MapInitOptions.mapOptions.contextMode = ContextMode.SHARED when using widgets!");
        }
        widget.setTriggerRepaintAction$maps_sdk_release(new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                MapController.this.getRenderer().scheduleRepaint();
            }
        });
        this.renderer.getRenderThread$maps_sdk_release().addWidget(widget);
        this.renderer.scheduleRepaint();
    }

    @Override
    public boolean removeWidget(Widget widget) {
        Intrinsics.checkNotNullParameter(widget, "widget");
        boolean zRemoveWidget = this.renderer.getRenderThread$maps_sdk_release().removeWidget(widget);
        if (zRemoveWidget) {
            this.renderer.scheduleRepaint();
        }
        return zRemoveWidget;
    }

    @Override
    public void addRendererSetupErrorListener(final RendererSetupErrorListener rendererSetupErrorListener) {
        Intrinsics.checkNotNullParameter(rendererSetupErrorListener, "rendererSetupErrorListener");
        this.renderer.getRenderThread$maps_sdk_release().getRenderHandlerThread().post(new Runnable() {
            @Override
            public final void run() {
                MapController.addRendererSetupErrorListener$lambda$10(this.f$0, rendererSetupErrorListener);
            }
        });
    }

    public static final void addRendererSetupErrorListener$lambda$10(MapController this$0, RendererSetupErrorListener rendererSetupErrorListener) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(rendererSetupErrorListener, "$rendererSetupErrorListener");
        this$0.renderer.getRenderThread$maps_sdk_release().getEglCore().addRendererStateListener$maps_sdk_release(rendererSetupErrorListener);
    }

    @Override
    public void removeRendererSetupErrorListener(final RendererSetupErrorListener rendererSetupErrorListener) {
        Intrinsics.checkNotNullParameter(rendererSetupErrorListener, "rendererSetupErrorListener");
        this.renderer.getRenderThread$maps_sdk_release().getRenderHandlerThread().post(new Runnable() {
            @Override
            public final void run() {
                MapController.removeRendererSetupErrorListener$lambda$11(this.f$0, rendererSetupErrorListener);
            }
        });
    }

    public static final void removeRendererSetupErrorListener$lambda$11(MapController this$0, RendererSetupErrorListener rendererSetupErrorListener) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(rendererSetupErrorListener, "$rendererSetupErrorListener");
        this$0.renderer.getRenderThread$maps_sdk_release().getEglCore().removeRendererStateListener$maps_sdk_release(rendererSetupErrorListener);
    }

    public final void setScreenRefreshRate$maps_sdk_release(int refreshRate) {
        if (refreshRate <= 0) {
            MapboxLogger.logE(TAG, "Screen refresh rate could not be <= 0! Setting max fps and fps counter will not work properly.");
        } else {
            this.renderer.getRenderThread$maps_sdk_release().setScreenRefreshRate(refreshRate);
        }
    }

    @Override
    public <T extends MapPlugin> T getPlugin(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return (T) this.pluginRegistry.getPlugin(id);
    }

    public final void createPlugin(MapView mapView, Plugin plugin) {
        Intrinsics.checkNotNullParameter(plugin, "plugin");
        this.pluginRegistry.createPlugin(mapView, this.mapInitOptions, plugin);
    }

    public final void removePlugin(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        this.pluginRegistry.removePlugin(id);
    }

    public static void initializePlugins$default(MapController mapController, MapInitOptions mapInitOptions, MapView mapView, int i, Object obj) {
        if ((i & 2) != 0) {
            mapView = null;
        }
        mapController.initializePlugins(mapInitOptions, mapView);
    }

    public final void initializePlugins(MapInitOptions options, MapView mapView) {
        MapboxLifecyclePlugin mapboxLifecyclePluginCreateLifecyclePlugin;
        Intrinsics.checkNotNullParameter(options, "options");
        for (Plugin plugin : options.getPlugins()) {
            try {
                String id = plugin.getId();
                switch (id.hashCode()) {
                    case -2043316830:
                        if (id.equals(Plugin.MAPBOX_LIFECYCLE_PLUGIN_ID)) {
                            mapboxLifecyclePluginCreateLifecyclePlugin = LifecycleUtils.createLifecyclePlugin();
                        } else {
                            mapboxLifecyclePluginCreateLifecyclePlugin = plugin.getInstance();
                            if (mapboxLifecyclePluginCreateLifecyclePlugin != null) {
                                throw new MapboxConfigurationException("Custom non Mapbox plugins must have non-null `instance` parameter!");
                            }
                        }
                        createPlugin(mapView, new Plugin.Custom(plugin.getId(), mapboxLifecyclePluginCreateLifecyclePlugin));
                        if (!(plugin instanceof Plugin.Mapbox)) {
                            if (mapboxLifecyclePluginCreateLifecyclePlugin instanceof CameraAnimationsPlugin) {
                                getMapboxMapDeprecated().setCameraAnimationsPlugin$maps_sdk_release((CameraAnimationsPlugin) mapboxLifecyclePluginCreateLifecyclePlugin);
                            } else if (mapboxLifecyclePluginCreateLifecyclePlugin instanceof GesturesPlugin) {
                                getMapboxMapDeprecated().setGesturesPlugin$maps_sdk_release((GesturesPlugin) mapboxLifecyclePluginCreateLifecyclePlugin);
                            }
                        }
                        break;
                    case -1778826934:
                        if (id.equals(Plugin.MAPBOX_COMPASS_PLUGIN_ID)) {
                            mapboxLifecyclePluginCreateLifecyclePlugin = CompassUtils.createCompassPlugin();
                        } else {
                            mapboxLifecyclePluginCreateLifecyclePlugin = plugin.getInstance();
                            if (mapboxLifecyclePluginCreateLifecyclePlugin != null) {
                                throw new MapboxConfigurationException("Custom non Mapbox plugins must have non-null `instance` parameter!");
                            }
                        }
                        createPlugin(mapView, new Plugin.Custom(plugin.getId(), mapboxLifecyclePluginCreateLifecyclePlugin));
                        if (!(plugin instanceof Plugin.Mapbox)) {
                            if (mapboxLifecyclePluginCreateLifecyclePlugin instanceof CameraAnimationsPlugin) {
                                getMapboxMapDeprecated().setCameraAnimationsPlugin$maps_sdk_release((CameraAnimationsPlugin) mapboxLifecyclePluginCreateLifecyclePlugin);
                            } else if (mapboxLifecyclePluginCreateLifecyclePlugin instanceof GesturesPlugin) {
                                getMapboxMapDeprecated().setGesturesPlugin$maps_sdk_release((GesturesPlugin) mapboxLifecyclePluginCreateLifecyclePlugin);
                            }
                        }
                        break;
                    case -1553017881:
                        if (id.equals(Plugin.MAPBOX_ANNOTATION_PLUGIN_ID)) {
                            mapboxLifecyclePluginCreateLifecyclePlugin = AnnotationsUtils.createAnnotationPlugin();
                        } else {
                            mapboxLifecyclePluginCreateLifecyclePlugin = plugin.getInstance();
                            if (mapboxLifecyclePluginCreateLifecyclePlugin != null) {
                                throw new MapboxConfigurationException("Custom non Mapbox plugins must have non-null `instance` parameter!");
                            }
                        }
                        createPlugin(mapView, new Plugin.Custom(plugin.getId(), mapboxLifecyclePluginCreateLifecyclePlugin));
                        if (!(plugin instanceof Plugin.Mapbox)) {
                            if (mapboxLifecyclePluginCreateLifecyclePlugin instanceof CameraAnimationsPlugin) {
                                getMapboxMapDeprecated().setCameraAnimationsPlugin$maps_sdk_release((CameraAnimationsPlugin) mapboxLifecyclePluginCreateLifecyclePlugin);
                            } else if (mapboxLifecyclePluginCreateLifecyclePlugin instanceof GesturesPlugin) {
                                getMapboxMapDeprecated().setGesturesPlugin$maps_sdk_release((GesturesPlugin) mapboxLifecyclePluginCreateLifecyclePlugin);
                            }
                        }
                        break;
                    case -245209278:
                        if (id.equals(Plugin.MAPBOX_GESTURES_PLUGIN_ID)) {
                            mapboxLifecyclePluginCreateLifecyclePlugin = GesturesUtils.createGesturePlugin(options.getContext(), options.getAttrs(), options.getMapOptions().getPixelRatio());
                        } else {
                            mapboxLifecyclePluginCreateLifecyclePlugin = plugin.getInstance();
                            if (mapboxLifecyclePluginCreateLifecyclePlugin != null) {
                                throw new MapboxConfigurationException("Custom non Mapbox plugins must have non-null `instance` parameter!");
                            }
                        }
                        createPlugin(mapView, new Plugin.Custom(plugin.getId(), mapboxLifecyclePluginCreateLifecyclePlugin));
                        if (!(plugin instanceof Plugin.Mapbox)) {
                            if (mapboxLifecyclePluginCreateLifecyclePlugin instanceof CameraAnimationsPlugin) {
                                getMapboxMapDeprecated().setCameraAnimationsPlugin$maps_sdk_release((CameraAnimationsPlugin) mapboxLifecyclePluginCreateLifecyclePlugin);
                            } else if (mapboxLifecyclePluginCreateLifecyclePlugin instanceof GesturesPlugin) {
                                getMapboxMapDeprecated().setGesturesPlugin$maps_sdk_release((GesturesPlugin) mapboxLifecyclePluginCreateLifecyclePlugin);
                            }
                        }
                        break;
                    case -229667997:
                        if (id.equals(Plugin.MAPBOX_LOGO_PLUGIN_ID)) {
                            mapboxLifecyclePluginCreateLifecyclePlugin = LogoUtils.createLogoPlugin();
                        } else {
                            mapboxLifecyclePluginCreateLifecyclePlugin = plugin.getInstance();
                            if (mapboxLifecyclePluginCreateLifecyclePlugin != null) {
                                throw new MapboxConfigurationException("Custom non Mapbox plugins must have non-null `instance` parameter!");
                            }
                        }
                        createPlugin(mapView, new Plugin.Custom(plugin.getId(), mapboxLifecyclePluginCreateLifecyclePlugin));
                        if (!(plugin instanceof Plugin.Mapbox)) {
                            if (mapboxLifecyclePluginCreateLifecyclePlugin instanceof CameraAnimationsPlugin) {
                                getMapboxMapDeprecated().setCameraAnimationsPlugin$maps_sdk_release((CameraAnimationsPlugin) mapboxLifecyclePluginCreateLifecyclePlugin);
                            } else if (mapboxLifecyclePluginCreateLifecyclePlugin instanceof GesturesPlugin) {
                                getMapboxMapDeprecated().setGesturesPlugin$maps_sdk_release((GesturesPlugin) mapboxLifecyclePluginCreateLifecyclePlugin);
                            }
                        }
                        break;
                    case 571477697:
                        if (id.equals(Plugin.MAPBOX_SCALEBAR_PLUGIN_ID)) {
                            mapboxLifecyclePluginCreateLifecyclePlugin = ScaleBarUtils.createScaleBarPlugin();
                        } else {
                            mapboxLifecyclePluginCreateLifecyclePlugin = plugin.getInstance();
                            if (mapboxLifecyclePluginCreateLifecyclePlugin != null) {
                                throw new MapboxConfigurationException("Custom non Mapbox plugins must have non-null `instance` parameter!");
                            }
                        }
                        createPlugin(mapView, new Plugin.Custom(plugin.getId(), mapboxLifecyclePluginCreateLifecyclePlugin));
                        if (!(plugin instanceof Plugin.Mapbox)) {
                            if (mapboxLifecyclePluginCreateLifecyclePlugin instanceof CameraAnimationsPlugin) {
                                getMapboxMapDeprecated().setCameraAnimationsPlugin$maps_sdk_release((CameraAnimationsPlugin) mapboxLifecyclePluginCreateLifecyclePlugin);
                            } else if (mapboxLifecyclePluginCreateLifecyclePlugin instanceof GesturesPlugin) {
                                getMapboxMapDeprecated().setGesturesPlugin$maps_sdk_release((GesturesPlugin) mapboxLifecyclePluginCreateLifecyclePlugin);
                            }
                        }
                        break;
                    case 876236958:
                        if (id.equals(Plugin.MAPBOX_VIEWPORT_PLUGIN_ID)) {
                            mapboxLifecyclePluginCreateLifecyclePlugin = ViewportUtils.createViewportPlugin();
                        } else {
                            mapboxLifecyclePluginCreateLifecyclePlugin = plugin.getInstance();
                            if (mapboxLifecyclePluginCreateLifecyclePlugin != null) {
                                throw new MapboxConfigurationException("Custom non Mapbox plugins must have non-null `instance` parameter!");
                            }
                        }
                        createPlugin(mapView, new Plugin.Custom(plugin.getId(), mapboxLifecyclePluginCreateLifecyclePlugin));
                        if (!(plugin instanceof Plugin.Mapbox)) {
                            if (mapboxLifecyclePluginCreateLifecyclePlugin instanceof CameraAnimationsPlugin) {
                                getMapboxMapDeprecated().setCameraAnimationsPlugin$maps_sdk_release((CameraAnimationsPlugin) mapboxLifecyclePluginCreateLifecyclePlugin);
                            } else if (mapboxLifecyclePluginCreateLifecyclePlugin instanceof GesturesPlugin) {
                                getMapboxMapDeprecated().setGesturesPlugin$maps_sdk_release((GesturesPlugin) mapboxLifecyclePluginCreateLifecyclePlugin);
                            }
                        }
                        break;
                    case 962011255:
                        if (id.equals(Plugin.MAPBOX_ATTRIBUTION_PLUGIN_ID)) {
                            mapboxLifecyclePluginCreateLifecyclePlugin = AttributionUtils.createAttributionPlugin();
                        } else {
                            mapboxLifecyclePluginCreateLifecyclePlugin = plugin.getInstance();
                            if (mapboxLifecyclePluginCreateLifecyclePlugin != null) {
                                throw new MapboxConfigurationException("Custom non Mapbox plugins must have non-null `instance` parameter!");
                            }
                        }
                        createPlugin(mapView, new Plugin.Custom(plugin.getId(), mapboxLifecyclePluginCreateLifecyclePlugin));
                        if (!(plugin instanceof Plugin.Mapbox)) {
                            if (mapboxLifecyclePluginCreateLifecyclePlugin instanceof CameraAnimationsPlugin) {
                                getMapboxMapDeprecated().setCameraAnimationsPlugin$maps_sdk_release((CameraAnimationsPlugin) mapboxLifecyclePluginCreateLifecyclePlugin);
                            } else if (mapboxLifecyclePluginCreateLifecyclePlugin instanceof GesturesPlugin) {
                                getMapboxMapDeprecated().setGesturesPlugin$maps_sdk_release((GesturesPlugin) mapboxLifecyclePluginCreateLifecyclePlugin);
                            }
                        }
                        break;
                    case 1272100549:
                        if (id.equals(Plugin.MAPBOX_MAP_OVERLAY_PLUGIN_ID)) {
                            mapboxLifecyclePluginCreateLifecyclePlugin = MapOverlayUtils.createOverlayPlugin();
                        } else {
                            mapboxLifecyclePluginCreateLifecyclePlugin = plugin.getInstance();
                            if (mapboxLifecyclePluginCreateLifecyclePlugin != null) {
                                throw new MapboxConfigurationException("Custom non Mapbox plugins must have non-null `instance` parameter!");
                            }
                        }
                        createPlugin(mapView, new Plugin.Custom(plugin.getId(), mapboxLifecyclePluginCreateLifecyclePlugin));
                        if (!(plugin instanceof Plugin.Mapbox)) {
                            if (mapboxLifecyclePluginCreateLifecyclePlugin instanceof CameraAnimationsPlugin) {
                                getMapboxMapDeprecated().setCameraAnimationsPlugin$maps_sdk_release((CameraAnimationsPlugin) mapboxLifecyclePluginCreateLifecyclePlugin);
                            } else if (mapboxLifecyclePluginCreateLifecyclePlugin instanceof GesturesPlugin) {
                                getMapboxMapDeprecated().setGesturesPlugin$maps_sdk_release((GesturesPlugin) mapboxLifecyclePluginCreateLifecyclePlugin);
                            }
                        }
                        break;
                    case 1380638813:
                        if (id.equals(Plugin.MAPBOX_CAMERA_PLUGIN_ID)) {
                            mapboxLifecyclePluginCreateLifecyclePlugin = CameraAnimationsUtils.createCameraAnimationPlugin();
                        } else {
                            mapboxLifecyclePluginCreateLifecyclePlugin = plugin.getInstance();
                            if (mapboxLifecyclePluginCreateLifecyclePlugin != null) {
                                throw new MapboxConfigurationException("Custom non Mapbox plugins must have non-null `instance` parameter!");
                            }
                        }
                        createPlugin(mapView, new Plugin.Custom(plugin.getId(), mapboxLifecyclePluginCreateLifecyclePlugin));
                        if (!(plugin instanceof Plugin.Mapbox)) {
                            if (mapboxLifecyclePluginCreateLifecyclePlugin instanceof CameraAnimationsPlugin) {
                                getMapboxMapDeprecated().setCameraAnimationsPlugin$maps_sdk_release((CameraAnimationsPlugin) mapboxLifecyclePluginCreateLifecyclePlugin);
                            } else if (mapboxLifecyclePluginCreateLifecyclePlugin instanceof GesturesPlugin) {
                                getMapboxMapDeprecated().setGesturesPlugin$maps_sdk_release((GesturesPlugin) mapboxLifecyclePluginCreateLifecyclePlugin);
                            }
                        }
                        break;
                    case 1896827019:
                        if (id.equals(Plugin.MAPBOX_LOCATION_COMPONENT_PLUGIN_ID)) {
                            mapboxLifecyclePluginCreateLifecyclePlugin = LocationComponentUtils.createLocationComponentPlugin();
                        } else {
                            mapboxLifecyclePluginCreateLifecyclePlugin = plugin.getInstance();
                            if (mapboxLifecyclePluginCreateLifecyclePlugin != null) {
                                throw new MapboxConfigurationException("Custom non Mapbox plugins must have non-null `instance` parameter!");
                            }
                        }
                        createPlugin(mapView, new Plugin.Custom(plugin.getId(), mapboxLifecyclePluginCreateLifecyclePlugin));
                        if (!(plugin instanceof Plugin.Mapbox)) {
                            if (mapboxLifecyclePluginCreateLifecyclePlugin instanceof CameraAnimationsPlugin) {
                                getMapboxMapDeprecated().setCameraAnimationsPlugin$maps_sdk_release((CameraAnimationsPlugin) mapboxLifecyclePluginCreateLifecyclePlugin);
                            } else if (mapboxLifecyclePluginCreateLifecyclePlugin instanceof GesturesPlugin) {
                                getMapboxMapDeprecated().setGesturesPlugin$maps_sdk_release((GesturesPlugin) mapboxLifecyclePluginCreateLifecyclePlugin);
                            }
                        }
                        break;
                    default:
                        mapboxLifecyclePluginCreateLifecyclePlugin = plugin.getInstance();
                        if (mapboxLifecyclePluginCreateLifecyclePlugin != null) {
                            throw new MapboxConfigurationException("Custom non Mapbox plugins must have non-null `instance` parameter!");
                        }
                        createPlugin(mapView, new Plugin.Custom(plugin.getId(), mapboxLifecyclePluginCreateLifecyclePlugin));
                        if (!(plugin instanceof Plugin.Mapbox)) {
                            if (mapboxLifecyclePluginCreateLifecyclePlugin instanceof CameraAnimationsPlugin) {
                                getMapboxMapDeprecated().setCameraAnimationsPlugin$maps_sdk_release((CameraAnimationsPlugin) mapboxLifecyclePluginCreateLifecyclePlugin);
                            } else if (mapboxLifecyclePluginCreateLifecyclePlugin instanceof GesturesPlugin) {
                                getMapboxMapDeprecated().setGesturesPlugin$maps_sdk_release((GesturesPlugin) mapboxLifecyclePluginCreateLifecyclePlugin);
                            }
                        }
                        break;
                }
            } catch (InvalidViewPluginHostException unused) {
                String str = String.format(VIEW_HIERARCHY_MISSING_TEMPLATE, Arrays.copyOf(new Object[]{plugin}, 1));
                Intrinsics.checkNotNullExpressionValue(str, "format(this, *args)");
                MapboxLogger.logI(TAG, str);
            } catch (NoClassDefFoundError unused2) {
                String str2 = String.format(PLUGIN_MISSING_TEMPLATE, Arrays.copyOf(new Object[]{plugin.getId()}, 1));
                Intrinsics.checkNotNullExpressionValue(str2, "format(this, *args)");
                MapboxLogger.logI(TAG, str2);
            }
        }
    }

    public final void onAttachedToWindow$maps_sdk_release(MapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        this.pluginRegistry.onAttachedToWindow(mapView);
    }
}
