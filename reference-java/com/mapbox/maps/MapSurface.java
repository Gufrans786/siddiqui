package com.mapbox.maps;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.Display;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.WindowManager;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import ch.qos.logback.core.CoreConstants;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mapbox.maps.plugin.MapPlugin;
import com.mapbox.maps.plugin.delegates.MapPluginProviderDelegate;
import com.mapbox.maps.renderer.MapboxSurfaceRenderer;
import com.mapbox.maps.renderer.OnFpsChangedListener;
import com.mapbox.maps.renderer.RenderThreadStatsRecorder;
import com.mapbox.maps.renderer.RendererSetupErrorListener;
import com.mapbox.maps.renderer.widget.Widget;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

@Metadata(d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 F2\u00020\u00012\u00020\u0002:\u0001FB!\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tB/\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u001bH\u0017J\r\u0010\u0011\u001a\u00020\u0010H\u0007¢\u0006\u0002\b\u001cJ!\u0010\u001d\u001a\u0004\u0018\u0001H\u001e\"\b\b\u0000\u0010\u001e*\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0016¢\u0006\u0002\u0010\"J\b\u0010#\u001a\u00020\u0016H\u0016J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'H\u0016J\b\u0010(\u001a\u00020\u0016H\u0016J\b\u0010)\u001a\u00020\u0016H\u0016J\u0018\u0010*\u001a\u00020\u00162\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020,H\u0016J\b\u0010.\u001a\u00020\u0016H\u0016J\b\u0010/\u001a\u00020\u0016H\u0016J\u0010\u00100\u001a\u00020%2\u0006\u0010&\u001a\u00020'H\u0016J\u0018\u00101\u001a\u00020\u00162\u0006\u0010&\u001a\u0002022\u0006\u00103\u001a\u00020%H\u0016J\u0010\u00104\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u00105\u001a\u00020%2\u0006\u0010\u001a\u001a\u00020\u001bH\u0017J\u0010\u00106\u001a\u00020\u00162\u0006\u00107\u001a\u00020,H\u0016J\u0010\u00108\u001a\u00020\u00162\u0006\u00109\u001a\u00020:H\u0016J\u0010\u0010;\u001a\u00020\u00162\u0006\u0010<\u001a\u00020=H\u0017J\n\u0010>\u001a\u0004\u0018\u00010?H\u0016J\u0010\u0010>\u001a\u00020\u00162\u0006\u00109\u001a\u00020@H\u0016J\u0016\u0010A\u001a\u00020\u00162\u0006\u0010B\u001a\u00020,2\u0006\u0010C\u001a\u00020,J\u0006\u0010D\u001a\u00020\u0016J\u0006\u0010E\u001a\u00020\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006G"}, d2 = {"Lcom/mapbox/maps/MapSurface;", "Lcom/mapbox/maps/plugin/delegates/MapPluginProviderDelegate;", "Lcom/mapbox/maps/MapControllable;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "surface", "Landroid/view/Surface;", "mapInitOptions", "Lcom/mapbox/maps/MapInitOptions;", "(Landroid/content/Context;Landroid/view/Surface;Lcom/mapbox/maps/MapInitOptions;)V", "renderer", "Lcom/mapbox/maps/renderer/MapboxSurfaceRenderer;", "mapController", "Lcom/mapbox/maps/MapController;", "(Landroid/content/Context;Landroid/view/Surface;Lcom/mapbox/maps/MapInitOptions;Lcom/mapbox/maps/renderer/MapboxSurfaceRenderer;Lcom/mapbox/maps/MapController;)V", "mapboxMap", "Lcom/mapbox/maps/MapboxMap;", "getMapboxMap", "()Lcom/mapbox/maps/MapboxMap;", "getSurface", "()Landroid/view/Surface;", "addRendererSetupErrorListener", "", "rendererSetupErrorListener", "Lcom/mapbox/maps/renderer/RendererSetupErrorListener;", "addWidget", "widget", "Lcom/mapbox/maps/renderer/widget/Widget;", "getMapboxMapDeprecated", "getPlugin", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/mapbox/maps/plugin/MapPlugin;", "id", "", "(Ljava/lang/String;)Lcom/mapbox/maps/plugin/MapPlugin;", "onDestroy", "onGenericMotionEvent", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "onLowMemory", "onResume", "onSizeChanged", "w", "", "h", "onStart", "onStop", "onTouchEvent", "queueEvent", "Ljava/lang/Runnable;", "needRender", "removeRendererSetupErrorListener", "removeWidget", "setMaximumFps", "fps", "setOnFpsChangedListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/mapbox/maps/renderer/OnFpsChangedListener;", "setRenderThreadStatsRecorder", "renderThreadStatsRecorder", "Lcom/mapbox/maps/renderer/RenderThreadStatsRecorder;", "snapshot", "Landroid/graphics/Bitmap;", "Lcom/mapbox/maps/MapView$OnSnapshotReady;", "surfaceChanged", "width", "height", "surfaceCreated", "surfaceDestroyed", "Companion", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MapSurface implements MapPluginProviderDelegate, MapControllable {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    private static final String TAG = "MapSurface";
    private final Context context;
    private final MapController mapController;
    private final MapInitOptions mapInitOptions;
    private final MapboxSurfaceRenderer renderer;
    private final Surface surface;

    public MapSurface(Context context, Surface surface) {
        this(context, surface, (MapInitOptions) null, 4, (DefaultConstructorMarker) null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(surface, "surface");
    }

    public final Surface getSurface() {
        return this.surface;
    }

    public MapSurface(Context context, Surface surface, MapInitOptions mapInitOptions, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, surface, (i & 4) != 0 ? new MapInitOptions(context, null, null, null, false, null, null, 0, null, TypedValues.PositionType.TYPE_POSITION_TYPE, null) : mapInitOptions);
    }

    public MapSurface(Context context, Surface surface, MapInitOptions mapInitOptions) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(surface, "surface");
        Intrinsics.checkNotNullParameter(mapInitOptions, "mapInitOptions");
        this.context = context;
        this.surface = surface;
        this.mapInitOptions = mapInitOptions;
        int antialiasingSampleCount = mapInitOptions.getAntialiasingSampleCount();
        ContextMode contextMode = mapInitOptions.getMapOptions().getContextMode();
        contextMode = contextMode == null ? ContextMode.UNIQUE : contextMode;
        Intrinsics.checkNotNullExpressionValue(contextMode, "mapInitOptions.mapOption…ode ?: ContextMode.UNIQUE");
        MapboxSurfaceRenderer mapboxSurfaceRenderer = new MapboxSurfaceRenderer(antialiasingSampleCount, contextMode, mapInitOptions.getMapName());
        this.renderer = mapboxSurfaceRenderer;
        MapController mapController = new MapController(mapboxSurfaceRenderer, mapInitOptions);
        MapController.initializePlugins$default(mapController, mapInitOptions, null, 2, null);
        this.mapController = mapController;
    }

    public MapSurface(Context context, Surface surface, MapInitOptions mapInitOptions, MapboxSurfaceRenderer renderer, MapController mapController) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(surface, "surface");
        Intrinsics.checkNotNullParameter(mapInitOptions, "mapInitOptions");
        Intrinsics.checkNotNullParameter(renderer, "renderer");
        Intrinsics.checkNotNullParameter(mapController, "mapController");
        this.context = context;
        this.surface = surface;
        this.mapInitOptions = mapInitOptions;
        this.renderer = renderer;
        this.mapController = mapController;
    }

    public final void surfaceCreated() {
        this.renderer.surfaceCreated();
        this.mapController.setScreenRefreshRate$maps_sdk_release(60);
        BuildersKt__Builders_commonKt.launch$default(this.mapController.getLifecycleScope(), null, null, new AnonymousClass1(null), 3, null);
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.mapbox.maps.MapSurface$surfaceCreated$1", f = "MapSurface.kt", i = {}, l = {94}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MapSurface.this.new AnonymousClass1(continuation);
        }

        @Override
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Integer numBoxInt = Boxing.boxInt(60);
                C00421 c00421 = new C00421(MapSurface.this, null);
                final MapSurface mapSurface = MapSurface.this;
                this.label = 1;
                if (UtilsKt.safeSystemCallWithCallback$default(0L, numBoxInt, MapSurface.TAG, null, null, c00421, new Function1<Integer, Unit>() {
                    {
                        super(1);
                    }

                    @Override
                    public Unit invoke(Integer num) {
                        invoke(num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(int i2) {
                        mapSurface.mapController.setScreenRefreshRate$maps_sdk_release(i2);
                    }
                }, this, 25, null) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }

        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\b\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 7, 1}, xi = 48)
        @DebugMetadata(c = "com.mapbox.maps.MapSurface$surfaceCreated$1$1", f = "MapSurface.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class C00421 extends SuspendLambda implements Function1<Continuation<? super Integer>, Object> {
            int label;
            final MapSurface this$0;

            C00421(MapSurface mapSurface, Continuation<? super C00421> continuation) {
                super(1, continuation);
                this.this$0 = mapSurface;
            }

            @Override
            public final Continuation<Unit> create(Continuation<?> continuation) {
                return new C00421(this.this$0, continuation);
            }

            @Override
            public final Object invoke(Continuation<? super Integer> continuation) {
                return ((C00421) create(continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                Display defaultDisplay;
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label == 0) {
                    ResultKt.throwOnFailure(obj);
                    WindowManager windowManager = (WindowManager) this.this$0.context.getSystemService("window");
                    return Boxing.boxInt((windowManager == null || (defaultDisplay = windowManager.getDefaultDisplay()) == null) ? 60 : (int) defaultDisplay.getRefreshRate());
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public final void surfaceChanged(int width, int height) {
        this.renderer.surfaceChanged(this.surface, width, height);
        onSizeChanged(width, height);
    }

    public final void surfaceDestroyed() {
        this.renderer.surfaceDestroyed();
    }

    @Override
    public MapboxMap getMapboxMapDeprecated() {
        return this.mapController.getMapboxMapDeprecated();
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return this.mapController.onTouchEvent(event);
    }

    @Override
    public boolean onGenericMotionEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return this.mapController.onGenericMotionEvent(event);
    }

    @Override
    public void onSizeChanged(int w, int h) {
        this.mapController.onSizeChanged(w, h);
    }

    @Override
    public void queueEvent(Runnable event, boolean needRender) {
        Intrinsics.checkNotNullParameter(event, "event");
        MapControllable.DefaultImpls.queueEvent$default(this.mapController, event, false, 2, null);
    }

    @Override
    public Bitmap snapshot() {
        return this.mapController.snapshot();
    }

    @Override
    public void snapshot(MapView.OnSnapshotReady listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.mapController.snapshot(listener);
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
        this.mapController.setRenderThreadStatsRecorder(renderThreadStatsRecorder);
    }

    @Override
    public void onStart() {
        this.mapController.onStart();
    }

    @Override
    public void onStop() {
        this.mapController.onStop();
    }

    @Override
    public void onResume() {
        this.mapController.onResume();
    }

    @Override
    public void onDestroy() {
        this.mapController.onDestroy();
    }

    @Override
    public void onLowMemory() {
        this.mapController.onLowMemory();
    }

    @Override
    public void addWidget(Widget widget) {
        Intrinsics.checkNotNullParameter(widget, "widget");
        this.mapController.addWidget(widget);
    }

    @Override
    public boolean removeWidget(Widget widget) {
        Intrinsics.checkNotNullParameter(widget, "widget");
        return this.mapController.removeWidget(widget);
    }

    @Override
    public void addRendererSetupErrorListener(RendererSetupErrorListener rendererSetupErrorListener) {
        Intrinsics.checkNotNullParameter(rendererSetupErrorListener, "rendererSetupErrorListener");
        this.mapController.addRendererSetupErrorListener(rendererSetupErrorListener);
    }

    @Override
    public void removeRendererSetupErrorListener(RendererSetupErrorListener rendererSetupErrorListener) {
        Intrinsics.checkNotNullParameter(rendererSetupErrorListener, "rendererSetupErrorListener");
        this.mapController.removeRendererSetupErrorListener(rendererSetupErrorListener);
    }

    @Override
    public <T extends MapPlugin> T getPlugin(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return (T) this.mapController.getPlugin(id);
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/mapbox/maps/MapSurface$Companion;", "", "()V", "TAG", "", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
