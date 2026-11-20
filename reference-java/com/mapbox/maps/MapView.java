package com.mapbox.maps;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.util.AttributeSet;
import android.view.Display;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mapbox.maps.debugoptions.DebugOptionsController;
import com.mapbox.maps.debugoptions.MapViewDebugOptions;
import com.mapbox.maps.plugin.MapPlugin;
import com.mapbox.maps.plugin.Plugin;
import com.mapbox.maps.plugin.delegates.MapPluginProviderDelegate;
import com.mapbox.maps.renderer.MapboxSurfaceHolderRenderer;
import com.mapbox.maps.renderer.MapboxTextureViewRenderer;
import com.mapbox.maps.renderer.OnFpsChangedListener;
import com.mapbox.maps.renderer.RenderThreadStatsRecorder;
import com.mapbox.maps.renderer.RendererSetupErrorListener;
import com.mapbox.maps.renderer.egl.EGLCore;
import com.mapbox.maps.renderer.widget.Widget;
import com.mapbox.maps.viewannotation.ViewAnnotationManager;
import com.mapbox.maps.viewannotation.ViewAnnotationManagerImpl;
import java.nio.IntBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

@Metadata(d1 = {"\u0000Ì\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u0000 t2\u00020\u00012\u00020\u00022\u00020\u0003:\u0002tuB\u0019\b\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bB\u0019\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bB!\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eB3\b\u0012\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\r\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u0011B!\b\u0012\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u0012\u001a\u00020\u0013¢\u0006\u0002\u0010\u0014J\u0010\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>H\u0016J\u0010\u0010?\u001a\u00020<2\u0006\u0010@\u001a\u00020AH\u0017J\u000e\u0010B\u001a\u00020<2\u0006\u0010C\u001a\u00020DJ\r\u0010-\u001a\u00020,H\u0007¢\u0006\u0002\bEJ!\u0010F\u001a\u0004\u0018\u0001HG\"\b\b\u0000\u0010G*\u00020H2\u0006\u0010I\u001a\u00020JH\u0016¢\u0006\u0002\u0010KJ\b\u0010L\u001a\u00020<H\u0014J\b\u0010M\u001a\u00020<H\u0016J\u0010\u0010N\u001a\u00020O2\u0006\u0010P\u001a\u00020'H\u0016J\u0010\u0010Q\u001a\u00020O2\u0006\u0010P\u001a\u00020'H\u0016J\b\u0010R\u001a\u00020<H\u0016J\b\u0010S\u001a\u00020<H\u0016J\u0018\u0010T\u001a\u00020<2\u0006\u0010U\u001a\u00020\r2\u0006\u0010V\u001a\u00020\rH\u0016J(\u0010T\u001a\u00020<2\u0006\u0010U\u001a\u00020\r2\u0006\u0010V\u001a\u00020\r2\u0006\u0010W\u001a\u00020\r2\u0006\u0010X\u001a\u00020\rH\u0016J\b\u0010Y\u001a\u00020<H\u0016J\b\u0010Z\u001a\u00020<H\u0016J\u0010\u0010[\u001a\u00020O2\u0006\u0010P\u001a\u00020'H\u0017J\u001f\u0010\\\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0001¢\u0006\u0002\b]J\u0018\u0010^\u001a\u00020<2\u0006\u0010P\u001a\u00020_2\u0006\u0010`\u001a\u00020OH\u0016J\u000e\u0010a\u001a\u00020<2\u0006\u0010I\u001a\u00020JJ\u0010\u0010b\u001a\u00020<2\u0006\u0010=\u001a\u00020>H\u0016J\u0010\u0010c\u001a\u00020O2\u0006\u0010@\u001a\u00020AH\u0017J\b\u0010d\u001a\u00020<H\u0007J\u0012\u0010e\u001a\u00020<2\b\b\u0001\u0010f\u001a\u00020\rH\u0016J\u0010\u0010g\u001a\u00020<2\u0006\u0010h\u001a\u00020iH\u0016J\u0010\u0010j\u001a\u00020<2\u0006\u0010k\u001a\u00020lH\u0017J\u0010\u0010m\u001a\u00020<2\u0006\u0010n\u001a\u00020OH\u0007J\n\u0010o\u001a\u0004\u0018\u00010pH\u0016J\u0010\u0010o\u001a\u00020<2\u0006\u0010h\u001a\u00020qH\u0016J\u001c\u0010r\u001a\u00020O*\u00020'2\u0006\u0010s\u001a\u00020'2\u0006\u0010/\u001a\u00020\rH\u0002R0\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u00162\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u00168F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001b\u0010\u001d\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\u001a\u0004\b!\u0010\"*\u0004\b\u001f\u0010 R\u0014\u0010#\u001a\b\u0012\u0004\u0012\u00020\u001e0$X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010%\u001a\b\u0012\u0004\u0012\u00020'0&X\u0082\u000e¢\u0006\u0002\n\u0000R \u0010\u0012\u001a\u00020\u00132\u0006\u0010(\u001a\u00020\u00138@@BX\u0080.¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u0014\u0010+\u001a\u00020,8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b-\u0010.R\u001b\u0010/\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b0\u00101R\u001b\u00104\u001a\u0002058FX\u0086\u0084\u0002¢\u0006\f\u001a\u0004\b7\u00108*\u0004\b6\u0010 R\u0014\u00109\u001a\b\u0012\u0004\u0012\u00020:0$X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006v"}, d2 = {"Lcom/mapbox/maps/MapView;", "Landroid/widget/FrameLayout;", "Lcom/mapbox/maps/plugin/delegates/MapPluginProviderDelegate;", "Lcom/mapbox/maps/MapControllable;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "mapInitOptions", "Lcom/mapbox/maps/MapInitOptions;", "(Landroid/content/Context;Lcom/mapbox/maps/MapInitOptions;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "defStyleRes", "initOptions", "(Landroid/content/Context;Landroid/util/AttributeSet;IILcom/mapbox/maps/MapInitOptions;)V", "mapController", "Lcom/mapbox/maps/MapController;", "(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/mapbox/maps/MapController;)V", "value", "", "Lcom/mapbox/maps/debugoptions/MapViewDebugOptions;", "debugOptions", "getDebugOptions", "()Ljava/util/Set;", "setDebugOptions", "(Ljava/util/Set;)V", "debugOptionsController", "Lcom/mapbox/maps/debugoptions/DebugOptionsController;", "getDebugOptionsController$delegate", "(Lcom/mapbox/maps/MapView;)Ljava/lang/Object;", "getDebugOptionsController", "()Lcom/mapbox/maps/debugoptions/DebugOptionsController;", "debugOptionsControllerDelegate", "Lkotlin/Lazy;", "interceptedViewAnnotationEvents", "", "Landroid/view/MotionEvent;", "<set-?>", "getMapController$maps_sdk_release", "()Lcom/mapbox/maps/MapController;", "mapboxMap", "Lcom/mapbox/maps/MapboxMap;", "getMapboxMap", "()Lcom/mapbox/maps/MapboxMap;", "touchSlop", "getTouchSlop", "()I", "touchSlop$delegate", "Lkotlin/Lazy;", "viewAnnotationManager", "Lcom/mapbox/maps/viewannotation/ViewAnnotationManager;", "getViewAnnotationManager$delegate", "getViewAnnotationManager", "()Lcom/mapbox/maps/viewannotation/ViewAnnotationManager;", "viewAnnotationManagerDelegate", "Lcom/mapbox/maps/viewannotation/ViewAnnotationManagerImpl;", "addRendererSetupErrorListener", "", "rendererSetupErrorListener", "Lcom/mapbox/maps/renderer/RendererSetupErrorListener;", "addWidget", "widget", "Lcom/mapbox/maps/renderer/widget/Widget;", "createPlugin", "plugin", "Lcom/mapbox/maps/plugin/Plugin;", "getMapboxMapDeprecated", "getPlugin", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/mapbox/maps/plugin/MapPlugin;", "id", "", "(Ljava/lang/String;)Lcom/mapbox/maps/plugin/MapPlugin;", "onAttachedToWindow", "onDestroy", "onGenericMotionEvent", "", NotificationCompat.CATEGORY_EVENT, "onInterceptTouchEvent", "onLowMemory", "onResume", "onSizeChanged", "w", "h", "oldw", "oldh", "onStart", "onStop", "onTouchEvent", "parseTypedArray", "parseTypedArray$maps_sdk_release", "queueEvent", "Ljava/lang/Runnable;", "needRender", "removePlugin", "removeRendererSetupErrorListener", "removeWidget", "scheduleThreadServiceTypeReset", "setMaximumFps", "fps", "setOnFpsChangedListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/mapbox/maps/renderer/OnFpsChangedListener;", "setRenderThreadStatsRecorder", "renderThreadStatsRecorder", "Lcom/mapbox/maps/renderer/RenderThreadStatsRecorder;", "setSnapshotLegacyMode", ViewProps.ENABLED, "snapshot", "Landroid/graphics/Bitmap;", "Lcom/mapbox/maps/MapView$OnSnapshotReady;", "hypot", "moveEvent", "Companion", "OnSnapshotReady", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public class MapView extends FrameLayout implements MapPluginProviderDelegate, MapControllable {

    public static final Companion INSTANCE = new Companion(null);
    public static final int DEFAULT_ANTIALIASING_SAMPLE_COUNT = 1;
    public static final int DEFAULT_FPS = 60;
    private static final String TAG = "MapView";
    private final Lazy<DebugOptionsController> debugOptionsControllerDelegate;
    private List<MotionEvent> interceptedViewAnnotationEvents;
    private MapController mapController;

    private final Lazy touchSlop;
    private final Lazy<ViewAnnotationManagerImpl> viewAnnotationManagerDelegate;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/mapbox/maps/MapView$OnSnapshotReady;", "", "onSnapshotReady", "", "bitmap", "Landroid/graphics/Bitmap;", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public interface OnSnapshotReady {
        void onSnapshotReady(Bitmap bitmap);
    }

    public MapView(Context context) {
        this(context, (MapInitOptions) null, 2, (DefaultConstructorMarker) (0 == true ? 1 : 0));
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public MapView(Context context, AttributeSet attributeSet, MapController mapController, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, attributeSet, mapController);
    }

    @JvmStatic
    public static final boolean isRenderingSupported() {
        return INSTANCE.isRenderingSupported();
    }

    @JvmStatic
    public static final boolean isTerrainRenderingSupported() {
        return INSTANCE.isTerrainRenderingSupported();
    }

    public final MapController getMapController$maps_sdk_release() {
        MapController mapController = this.mapController;
        if (mapController != null) {
            return mapController;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mapController");
        return null;
    }

    private final DebugOptionsController getDebugOptionsController() {
        return this.debugOptionsControllerDelegate.getValue();
    }

    private final int getTouchSlop() {
        return ((Number) this.touchSlop.getValue()).intValue();
    }

    public final ViewAnnotationManager getViewAnnotationManager() {
        return this.viewAnnotationManagerDelegate.getValue();
    }

    public final Set<MapViewDebugOptions> getDebugOptions() {
        return getDebugOptionsController().getOptions();
    }

    public final void setDebugOptions(Set<MapViewDebugOptions> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getDebugOptionsController().setOptions(value);
    }

    public MapView(Context context, MapInitOptions mapInitOptions) {
        this(context, null, 0, 0, mapInitOptions);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mapInitOptions, "mapInitOptions");
    }

    public MapView(Context context, MapInitOptions mapInitOptions, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? new MapInitOptions(context, null, null, null, false, null, null, 0, null, TypedValues.PositionType.TYPE_POSITION_TYPE, null) : mapInitOptions);
    }

    public MapView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public MapView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private MapView(Context context, AttributeSet attributeSet, int i, int i2, MapInitOptions mapInitOptions) {
        MapInitOptions mapInitOptions2;
        SurfaceView surfaceView;
        MapboxTextureViewRenderer mapboxTextureViewRenderer;
        super(context, attributeSet, i, i2);
        this.debugOptionsControllerDelegate = LazyKt.lazy(new Function0<DebugOptionsController>() {
            {
                super(0);
            }

            @Override
            public final DebugOptionsController invoke() {
                MapView mapView = this.this$0;
                return new DebugOptionsController(mapView, mapView.getMapController$maps_sdk_release().getMapboxMapDeprecated());
            }
        });
        this.interceptedViewAnnotationEvents = new ArrayList();
        this.touchSlop = LazyKt.lazy(new Function0<Integer>() {
            {
                super(0);
            }

            @Override
            public final Integer invoke() {
                return Integer.valueOf(ViewConfiguration.get(this.this$0.getContext()).getScaledTouchSlop());
            }
        });
        this.viewAnnotationManagerDelegate = LazyKt.lazy(new Function0<ViewAnnotationManagerImpl>() {
            {
                super(0);
            }

            @Override
            public final ViewAnnotationManagerImpl invoke() {
                return new ViewAnnotationManagerImpl(this.this$0, null, 2, 0 == true ? 1 : 0);
            }
        });
        if (attributeSet != null) {
            mapInitOptions2 = parseTypedArray$maps_sdk_release(context, attributeSet);
        } else {
            mapInitOptions2 = mapInitOptions == null ? new MapInitOptions(context, null, null, null, false, null, null, 0, null, TypedValues.PositionType.TYPE_POSITION_TYPE, null) : mapInitOptions;
        }
        if (isInEditMode()) {
            return;
        }
        if (mapInitOptions2.getTextureView()) {
            surfaceView = new TextureView(context, attributeSet);
        } else {
            surfaceView = new SurfaceView(context, attributeSet);
        }
        ContextMode contextMode = mapInitOptions2.getMapOptions().getContextMode();
        contextMode = contextMode == null ? ContextMode.UNIQUE : contextMode;
        Intrinsics.checkNotNullExpressionValue(contextMode, "resolvedMapInitOptions.m…ode ?: ContextMode.UNIQUE");
        if (surfaceView instanceof SurfaceView) {
            SurfaceHolder holder = ((SurfaceView) surfaceView).getHolder();
            Intrinsics.checkNotNullExpressionValue(holder, "view.holder");
            mapboxTextureViewRenderer = new MapboxSurfaceHolderRenderer(holder, mapInitOptions2.getAntialiasingSampleCount(), contextMode, mapInitOptions2.getMapName());
        } else if (surfaceView instanceof TextureView) {
            mapboxTextureViewRenderer = new MapboxTextureViewRenderer((TextureView) surfaceView, mapInitOptions2.getAntialiasingSampleCount(), contextMode, mapInitOptions2.getMapName());
        } else {
            throw new IllegalArgumentException("Provided view has to be a texture or a surface.");
        }
        this.mapController = new MapController(mapboxTextureViewRenderer, mapInitOptions2);
        addView(surfaceView, 0);
        getMapController$maps_sdk_release().initializePlugins(mapInitOptions2, this);
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isInEditMode()) {
            return;
        }
        getMapController$maps_sdk_release().onAttachedToWindow$maps_sdk_release(this);
    }

    public final MapInitOptions parseTypedArray$maps_sdk_release(Context context, AttributeSet attrs) {
        Intrinsics.checkNotNullParameter(context, "context");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.mapbox_MapView, 0, 0);
        Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…ble.mapbox_MapView, 0, 0)");
        try {
            MapOptions mapOptions = MapAttributeParser.INSTANCE.parseMapOptions(typedArrayObtainStyledAttributes, context.getResources().getDisplayMetrics().density);
            String str = null;
            CameraOptions cameraOptions$default = CameraAttributeParser.parseCameraOptions$default(CameraAttributeParser.INSTANCE, typedArrayObtainStyledAttributes, 0.0f, 2, null);
            boolean z = typedArrayObtainStyledAttributes.getInt(R.styleable.mapbox_MapView_mapbox_mapSurface, 0) != 0;
            String string = typedArrayObtainStyledAttributes.getString(R.styleable.mapbox_MapView_mapbox_styleUri);
            if (string == null) {
                string = Style.STANDARD;
            }
            int integer = typedArrayObtainStyledAttributes.getInteger(R.styleable.mapbox_MapView_mapbox_mapAntialiasingSampleCount, 1);
            String string2 = typedArrayObtainStyledAttributes.getString(R.styleable.mapbox_MapView_mapbox_mapName);
            if (string2 == null) {
                string2 = "";
            }
            String str2 = string2;
            String str3 = string;
            if (str3.length() == 0) {
            } else {
                str = str3;
            }
            MapInitOptions mapInitOptions = new MapInitOptions(context, mapOptions, null, null, false, str, attrs, integer, str2, 28, null);
            mapInitOptions.setCameraOptions(cameraOptions$default);
            mapInitOptions.setTextureView(z);
            return mapInitOptions;
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private MapView(Context context, AttributeSet attributeSet, MapController mapController) {
        super(context, attributeSet, 0, 0);
        this.debugOptionsControllerDelegate = LazyKt.lazy(new Function0<DebugOptionsController>() {
            {
                super(0);
            }

            @Override
            public final DebugOptionsController invoke() {
                MapView mapView = this.this$0;
                return new DebugOptionsController(mapView, mapView.getMapController$maps_sdk_release().getMapboxMapDeprecated());
            }
        });
        this.interceptedViewAnnotationEvents = new ArrayList();
        this.touchSlop = LazyKt.lazy(new Function0<Integer>() {
            {
                super(0);
            }

            @Override
            public final Integer invoke() {
                return Integer.valueOf(ViewConfiguration.get(this.this$0.getContext()).getScaledTouchSlop());
            }
        });
        this.viewAnnotationManagerDelegate = LazyKt.lazy(new Function0<ViewAnnotationManagerImpl>() {
            {
                super(0);
            }

            @Override
            public final ViewAnnotationManagerImpl invoke() {
                return new ViewAnnotationManagerImpl(this.this$0, null, 2, 0 == true ? 1 : 0);
            }
        });
        this.mapController = mapController;
    }

    @Override
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        if (w == oldw && h == oldh) {
            return;
        }
        onSizeChanged(w, h);
    }

    @Override
    public void onSizeChanged(int w, int h) {
        if (isInEditMode()) {
            return;
        }
        getMapController$maps_sdk_release().onSizeChanged(w, h);
    }

    @Override
    public void onStart() {
        getMapController$maps_sdk_release().setScreenRefreshRate$maps_sdk_release(60);
        BuildersKt__Builders_commonKt.launch$default(getMapController$maps_sdk_release().getLifecycleScope(), null, null, new AnonymousClass1(null), 3, null);
        getMapController$maps_sdk_release().onStart();
        if (this.debugOptionsControllerDelegate.isInitialized()) {
            getDebugOptionsController().setStarted(true);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.mapbox.maps.MapView$onStart$1", f = "MapView.kt", i = {}, l = {236}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MapView.this.new AnonymousClass1(continuation);
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
                C00431 c00431 = new C00431(MapView.this, null);
                final MapView mapView = MapView.this;
                this.label = 1;
                if (UtilsKt.safeSystemCallWithCallback$default(0L, numBoxInt, MapView.TAG, null, null, c00431, new Function1<Integer, Unit>() {
                    {
                        super(1);
                    }

                    @Override
                    public Unit invoke(Integer num) {
                        invoke(num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(int i2) {
                        mapView.getMapController$maps_sdk_release().setScreenRefreshRate$maps_sdk_release(i2);
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
        @DebugMetadata(c = "com.mapbox.maps.MapView$onStart$1$1", f = "MapView.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class C00431 extends SuspendLambda implements Function1<Continuation<? super Integer>, Object> {
            int label;
            final MapView this$0;

            C00431(MapView mapView, Continuation<? super C00431> continuation) {
                super(1, continuation);
                this.this$0 = mapView;
            }

            @Override
            public final Continuation<Unit> create(Continuation<?> continuation) {
                return new C00431(this.this$0, continuation);
            }

            @Override
            public final Object invoke(Continuation<? super Integer> continuation) {
                return ((C00431) create(continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                Display display = this.this$0.getDisplay();
                return Boxing.boxInt(display != null ? (int) display.getRefreshRate() : 60);
            }
        }
    }

    @Override
    public void onStop() {
        getMapController$maps_sdk_release().onStop();
        if (this.debugOptionsControllerDelegate.isInitialized()) {
            getDebugOptionsController().setStarted(false);
        }
    }

    @Override
    public void onResume() {
        getMapController$maps_sdk_release().onResume();
    }

    @Override
    public void onLowMemory() {
        getMapController$maps_sdk_release().onLowMemory();
    }

    @Override
    public void onDestroy() {
        if (this.viewAnnotationManagerDelegate.isInitialized()) {
            ViewAnnotationManager viewAnnotationManager = getViewAnnotationManager();
            Intrinsics.checkNotNull(viewAnnotationManager, "null cannot be cast to non-null type com.mapbox.maps.viewannotation.ViewAnnotationManagerImpl");
            ((ViewAnnotationManagerImpl) viewAnnotationManager).destroy();
        }
        getMapController$maps_sdk_release().onDestroy();
    }

    @Override
    public MapboxMap getMapboxMapDeprecated() {
        return getMapController$maps_sdk_release().getMapboxMapDeprecated();
    }

    @Override
    public void queueEvent(Runnable event, boolean needRender) {
        Intrinsics.checkNotNullParameter(event, "event");
        getMapController$maps_sdk_release().queueEvent(event, needRender);
    }

    @Override
    public Bitmap snapshot() {
        return getMapController$maps_sdk_release().snapshot();
    }

    @Override
    public void snapshot(OnSnapshotReady listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        getMapController$maps_sdk_release().snapshot(listener);
    }

    public final void setSnapshotLegacyMode(boolean enabled) {
        getMapController$maps_sdk_release().getRenderer().setSnapshotLegacyModeEnabled$maps_sdk_release(enabled);
    }

    @Override
    public void setMaximumFps(int fps) {
        getMapController$maps_sdk_release().setMaximumFps(fps);
    }

    public final void createPlugin(Plugin plugin) {
        Intrinsics.checkNotNullParameter(plugin, "plugin");
        getMapController$maps_sdk_release().createPlugin(this, plugin);
    }

    public final void removePlugin(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        getMapController$maps_sdk_release().removePlugin(id);
    }

    @Override
    public <T extends MapPlugin> T getPlugin(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return (T) getMapController$maps_sdk_release().getPlugin(id);
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        boolean z;
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.interceptedViewAnnotationEvents.isEmpty()) {
            z = false;
        } else {
            List<MotionEvent> list = this.interceptedViewAnnotationEvents;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator<T> it = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (((MotionEvent) it.next()).getEventTime() == event.getEventTime()) {
                            z = false;
                        }
                    }
                }
            }
            z = false;
            for (MotionEvent motionEvent : this.interceptedViewAnnotationEvents) {
                z = getMapController$maps_sdk_release().onTouchEvent(motionEvent) || z;
                motionEvent.recycle();
            }
        }
        this.interceptedViewAnnotationEvents.clear();
        return getMapController$maps_sdk_release().onTouchEvent(event) || z;
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        int actionMasked = event.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    List<MotionEvent> list = this.interceptedViewAnnotationEvents;
                    if ((list instanceof Collection) && list.isEmpty()) {
                        return false;
                    }
                    Iterator<T> it = list.iterator();
                    while (it.hasNext()) {
                        if (hypot((MotionEvent) it.next(), event, getTouchSlop())) {
                            return true;
                        }
                    }
                    return false;
                }
                if (actionMasked != 3) {
                    if (actionMasked != 5) {
                        if (actionMasked != 6) {
                            return false;
                        }
                        final int pointerId = event.getPointerId(event.getActionIndex());
                        CollectionsKt.removeAll((List) this.interceptedViewAnnotationEvents, (Function1) new Function1<MotionEvent, Boolean>() {
                            {
                                super(1);
                            }

                            @Override
                            public final Boolean invoke(MotionEvent it2) {
                                Intrinsics.checkNotNullParameter(it2, "it");
                                return Boolean.valueOf(pointerId == it2.getPointerId(it2.getActionIndex()));
                            }
                        });
                        return false;
                    }
                }
            }
            this.interceptedViewAnnotationEvents.clear();
            return false;
        }
        List<MotionEvent> list2 = this.interceptedViewAnnotationEvents;
        MotionEvent motionEventObtain = MotionEvent.obtain(event);
        Intrinsics.checkNotNullExpressionValue(motionEventObtain, "obtain(event)");
        list2.add(motionEventObtain);
        return false;
    }

    private final boolean hypot(MotionEvent motionEvent, MotionEvent motionEvent2, int i) {
        int pointerCount = motionEvent2.getPointerCount();
        for (int i2 = 0; i2 < pointerCount; i2++) {
            int pointerId = motionEvent2.getPointerId(i2);
            int iFindPointerIndex = motionEvent.findPointerIndex(pointerId);
            int iFindPointerIndex2 = motionEvent2.findPointerIndex(pointerId);
            if (iFindPointerIndex != -1 && iFindPointerIndex2 != -1 && ((float) Math.hypot(motionEvent.getX(iFindPointerIndex) - motionEvent2.getX(iFindPointerIndex2), motionEvent.getY(iFindPointerIndex) - motionEvent2.getY(iFindPointerIndex2))) > i) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean onGenericMotionEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return getMapController$maps_sdk_release().onGenericMotionEvent(event) || super.onGenericMotionEvent(event);
    }

    @Override
    public void setOnFpsChangedListener(OnFpsChangedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        getMapController$maps_sdk_release().setOnFpsChangedListener(listener);
    }

    @Override
    public void setRenderThreadStatsRecorder(RenderThreadStatsRecorder renderThreadStatsRecorder) {
        Intrinsics.checkNotNullParameter(renderThreadStatsRecorder, "renderThreadStatsRecorder");
        getMapController$maps_sdk_release().setRenderThreadStatsRecorder(renderThreadStatsRecorder);
    }

    @Override
    public void addWidget(Widget widget) {
        Intrinsics.checkNotNullParameter(widget, "widget");
        getMapController$maps_sdk_release().addWidget(widget);
    }

    @Override
    public boolean removeWidget(Widget widget) {
        Intrinsics.checkNotNullParameter(widget, "widget");
        return getMapController$maps_sdk_release().removeWidget(widget);
    }

    public final void scheduleThreadServiceTypeReset() {
        getMapController$maps_sdk_release().getRenderer().getRenderThread$maps_sdk_release().scheduleThreadServiceTypeReset();
    }

    @Override
    public void addRendererSetupErrorListener(RendererSetupErrorListener rendererSetupErrorListener) {
        Intrinsics.checkNotNullParameter(rendererSetupErrorListener, "rendererSetupErrorListener");
        getMapController$maps_sdk_release().addRendererSetupErrorListener(rendererSetupErrorListener);
    }

    @Override
    public void removeRendererSetupErrorListener(RendererSetupErrorListener rendererSetupErrorListener) {
        Intrinsics.checkNotNullParameter(rendererSetupErrorListener, "rendererSetupErrorListener");
        getMapController$maps_sdk_release().removeRendererSetupErrorListener(rendererSetupErrorListener);
    }

    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0081\u0002¢\u0006\u0002\b\u0010J\b\u0010\u0011\u001a\u00020\u0012H\u0007J\b\u0010\u0013\u001a\u00020\u0012H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/mapbox/maps/MapView$Companion;", "", "()V", "DEFAULT_ANTIALIASING_SAMPLE_COUNT", "", "DEFAULT_FPS", "TAG", "", "invoke", "Lcom/mapbox/maps/MapView;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "mapController", "Lcom/mapbox/maps/MapController;", "invoke$maps_sdk_release", "isRenderingSupported", "", "isTerrainRenderingSupported", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final boolean isRenderingSupported() {
            EGLCore eGLCore = new EGLCore(false, 1, null, "", 4, null);
            boolean zPrepareEgl = eGLCore.prepareEgl();
            eGLCore.release();
            return zPrepareEgl;
        }

        @JvmStatic
        public final boolean isTerrainRenderingSupported() {
            EGLCore eGLCore = new EGLCore(false, 1, null, "", 4, null);
            boolean zPrepareEgl = eGLCore.prepareEgl();
            EGLSurface eGLSurfaceCreateOffscreenSurface = eGLCore.createOffscreenSurface(1, 1);
            eGLCore.makeCurrent(eGLSurfaceCreateOffscreenSurface);
            IntBuffer intBufferAllocate = IntBuffer.allocate(1);
            GLES20.glGetIntegerv(35660, intBufferAllocate);
            intBufferAllocate.rewind();
            boolean z = intBufferAllocate.get() > 0;
            eGLCore.releaseSurface(eGLSurfaceCreateOffscreenSurface);
            eGLCore.release();
            return zPrepareEgl && z;
        }

        public final MapView invoke$maps_sdk_release(Context context, AttributeSet attrs, MapController mapController) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(mapController, "mapController");
            return new MapView(context, attrs, mapController, (DefaultConstructorMarker) null);
        }
    }
}
