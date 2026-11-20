package com.mapbox.maps.viewannotation;

import android.graphics.Rect;
import android.os.Looper;
import android.view.Choreographer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.asynclayoutinflater.view.AsyncLayoutInflater;
import androidx.exifinterface.media.ExifInterface;
import ch.qos.logback.core.CoreConstants;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mapbox.bindgen.Expected;
import com.mapbox.geojson.Geometry;
import com.mapbox.geojson.Point;
import com.mapbox.maps.AnnotatedFeature;
import com.mapbox.maps.AnnotatedLayerFeature;
import com.mapbox.maps.CameraOptions;
import com.mapbox.maps.CoordinateBounds;
import com.mapbox.maps.DelegatingViewAnnotationPositionDescriptor;
import com.mapbox.maps.DelegatingViewAnnotationPositionsUpdateListener;
import com.mapbox.maps.EdgeInsets;
import com.mapbox.maps.MapView;
import com.mapbox.maps.MapboxLogger;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.MapboxViewAnnotationException;
import com.mapbox.maps.ProjectedMeters;
import com.mapbox.maps.R;
import com.mapbox.maps.ScreenCoordinate;
import com.mapbox.maps.ViewAnnotationAnchor;
import com.mapbox.maps.ViewAnnotationAnchorConfig;
import com.mapbox.maps.ViewAnnotationOptions;
import com.mapbox.maps.renderer.MapboxRenderThread;
import com.mapbox.maps.util.CameraOptionsUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000ù\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001@\b\u0001\u0018\u0000 \u0085\u00012\u00020\u00012\u00020\u0002:\u0004\u0085\u0001\u0086\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020(H\u0016J\u0018\u0010/\u001a\u00020-2\u0006\u00100\u001a\u00020\n2\u0006\u00101\u001a\u00020\u000bH\u0016J\u001a\u0010/\u001a\u00020\n2\b\b\u0001\u00102\u001a\u0002032\u0006\u00101\u001a\u00020\u000bH\u0016J6\u0010/\u001a\u00020-2\b\b\u0001\u00102\u001a\u0002032\u0006\u00101\u001a\u00020\u000b2\u0006\u00104\u001a\u0002052\u0012\u00106\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020-07H\u0016JH\u00108\u001a\u0004\u0018\u0001092\u0006\u0010:\u001a\u0002092\b\u0010;\u001a\u0004\u0018\u00010<2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020%0\u000f2\u0006\u0010=\u001a\u0002092\u0014\u0010>\u001a\u0010\u0012\u0004\u0012\u000209\u0012\u0004\u0012\u00020-\u0018\u000107H\u0002J%\u0010?\u001a\u00020@2\u0006\u00100\u001a\u00020\n2\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020DH\u0002¢\u0006\u0002\u0010EJ\u0010\u0010F\u001a\u00020D2\u0006\u0010G\u001a\u00020%H\u0002J\u0010\u0010H\u001a\u00020B2\u0006\u0010G\u001a\u00020%H\u0002J)\u0010I\u001a\u0004\u0018\u00010J2\u0006\u0010G\u001a\u00020%2\u0006\u0010K\u001a\u00020L2\b\u0010M\u001a\u0004\u0018\u00010NH\u0002¢\u0006\u0002\u0010OJ;\u0010P\u001a\u0004\u0018\u0001092\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\u000f2\b\u0010;\u001a\u0004\u0018\u00010<2\b\u0010Q\u001a\u0004\u0018\u00010N2\b\u0010R\u001a\u0004\u0018\u00010NH\u0017¢\u0006\u0002\u0010SJM\u0010P\u001a\u00020-2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\u000f2\b\u0010;\u001a\u0004\u0018\u00010<2\b\u0010Q\u001a\u0004\u0018\u00010N2\b\u0010R\u001a\u0004\u0018\u00010N2\u0012\u0010T\u001a\u000e\u0012\u0004\u0012\u000209\u0012\u0004\u0012\u00020-07H\u0016¢\u0006\u0002\u0010UJQ\u0010V\u001a\u0004\u0018\u0001092\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\u000f2\b\u0010;\u001a\u0004\u0018\u00010<2\b\u0010Q\u001a\u0004\u0018\u00010N2\b\u0010R\u001a\u0004\u0018\u00010N2\u0014\u0010>\u001a\u0010\u0012\u0004\u0012\u000209\u0012\u0004\u0012\u00020-\u0018\u000107H\u0002¢\u0006\u0002\u0010WJ\u0006\u0010X\u001a\u00020-J \u0010Y\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0Z2\u0006\u0010[\u001a\u00020\\H\u0002J,\u0010]\u001a\u0004\u0018\u0001H^\"\u0006\b\u0000\u0010^\u0018\u00012\u0012\u0010_\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u0002H^0`H\u0082\b¢\u0006\u0002\u0010aJ\u0012\u0010b\u001a\u0004\u0018\u00010\n2\u0006\u0010[\u001a\u00020\\H\u0016J\u0012\u0010c\u001a\u0004\u0018\u00010\u000b2\u0006\u00100\u001a\u00020\nH\u0016J\u0012\u0010c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010[\u001a\u00020\\H\u0016J\u001c\u0010d\u001a\u0004\u0018\u00010L2\u0006\u0010G\u001a\u00020%2\b\u0010e\u001a\u0004\u0018\u00010\u0010H\u0002J\b\u0010f\u001a\u00020gH\u0016J*\u0010h\u001a\u0004\u0018\u0001092\b\u0010i\u001a\u0004\u0018\u0001092\u0014\u0010j\u001a\u0010\u0012\u0004\u0012\u000209\u0012\u0004\u0012\u00020-\u0018\u000107H\u0002J\u0010\u0010k\u001a\u00020-2\u0006\u00100\u001a\u00020\nH\u0002J\u0018\u0010l\u001a\u00020-2\u0006\u0010G\u001a\u00020%2\u0006\u0010m\u001a\u00020\u0010H\u0002J\u0018\u0010n\u001a\u00020-2\u0006\u0010G\u001a\u00020%2\u0006\u0010m\u001a\u00020\u0010H\u0002J\"\u0010o\u001a\u00020-2\u0006\u0010G\u001a\u00020%2\u0006\u0010m\u001a\u00020\u00102\b\b\u0002\u0010p\u001a\u00020qH\u0002J\u0016\u0010r\u001a\u00020-2\f\u0010s\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0017J\u0016\u0010t\u001a\u00020-2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u0018\u0010u\u001a\u00020-2\u0006\u0010v\u001a\u00020\n2\u0006\u00101\u001a\u00020\u000bH\u0002J\u0010\u0010w\u001a\u00020-2\u0006\u0010x\u001a\u00020%H\u0002J\b\u0010y\u001a\u00020-H\u0016J\u0010\u0010z\u001a\u00020-2\u0006\u0010.\u001a\u00020(H\u0016J\u0010\u0010{\u001a\u00020q2\u0006\u00100\u001a\u00020\nH\u0016J\u0010\u0010|\u001a\u00020-2\u0006\u0010}\u001a\u00020gH\u0016J\u0018\u0010~\u001a\u00020q2\u0006\u00100\u001a\u00020\n2\u0006\u00101\u001a\u00020\u000bH\u0016J\u001a\u0010\u007f\u001a\u00020-2\u0006\u0010x\u001a\u00020%2\b\u0010\u0080\u0001\u001a\u00030\u0081\u0001H\u0002J\u0011\u0010\u0082\u0001\u001a\u00020-2\u0006\u00101\u001a\u00020\u000bH\u0002J\u001a\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0084\u0001*\u00020%2\b\u0010e\u001a\u0004\u0018\u00010\u0010H\u0002R \u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u000e¢\u0006\u0002\n\u0000RJ\u0010\u001c\u001a\u0012\u0012\u0004\u0012\u00020\u001a0\u0019j\b\u0012\u0004\u0012\u00020\u001a`\u001b2\u0016\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00020\u001a0\u0019j\b\u0012\u0004\u0012\u00020\u001a`\u001b8V@VX\u0097\u000e¢\u0006\u0012\u0012\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020%0$X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010&\u001a\b\u0012\u0004\u0012\u00020(0'8\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b)\u0010\u001e\u001a\u0004\b*\u0010+¨\u0006\u0087\u0001"}, d2 = {"Lcom/mapbox/maps/viewannotation/ViewAnnotationManagerImpl;", "Lcom/mapbox/maps/viewannotation/ViewAnnotationManager;", "Lcom/mapbox/maps/DelegatingViewAnnotationPositionsUpdateListener;", "mapView", "Lcom/mapbox/maps/MapView;", "viewAnnotationsLayout", "Landroid/widget/FrameLayout;", "(Lcom/mapbox/maps/MapView;Landroid/widget/FrameLayout;)V", "annotations", "", "Landroid/view/View;", "Lcom/mapbox/maps/ViewAnnotationOptions;", "getAnnotations", "()Ljava/util/Map;", "currentPositionDescriptors", "", "Lcom/mapbox/maps/DelegatingViewAnnotationPositionDescriptor;", "mapboxMap", "Lcom/mapbox/maps/MapboxMap;", "pixelRatio", "", "renderThread", "Lcom/mapbox/maps/renderer/MapboxRenderThread;", "updatedPositionDescriptors", "value", "Ljava/util/HashSet;", "", "Lkotlin/collections/HashSet;", "viewAnnotationAvoidLayers", "getViewAnnotationAvoidLayers$annotations", "()V", "getViewAnnotationAvoidLayers", "()Ljava/util/HashSet;", "setViewAnnotationAvoidLayers", "(Ljava/util/HashSet;)V", "viewAnnotations", "", "Lcom/mapbox/maps/viewannotation/ViewAnnotationManagerImpl$ViewAnnotation;", "viewUpdatedListenerSet", "Ljava/util/concurrent/CopyOnWriteArraySet;", "Lcom/mapbox/maps/viewannotation/OnViewAnnotationUpdatedListener;", "getViewUpdatedListenerSet$maps_sdk_release$annotations", "getViewUpdatedListenerSet$maps_sdk_release", "()Ljava/util/concurrent/CopyOnWriteArraySet;", "addOnViewAnnotationUpdatedListener", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "addViewAnnotation", "view", "options", "resId", "", "asyncInflater", "Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;", "asyncInflateCallback", "Lkotlin/Function1;", "adjustCameraForAnnotations", "Lcom/mapbox/maps/CameraOptions;", "cameraForViewAnnotationPoints", "edgeInsets", "Lcom/mapbox/maps/EdgeInsets;", "cameraOptionsWithNoZoom", "resultCallback", "buildAttachStateListener", "com/mapbox/maps/viewannotation/ViewAnnotationManagerImpl$buildAttachStateListener$1", "onGlobalLayoutListener", "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;", "onDrawListener", "Landroid/view/ViewTreeObserver$OnDrawListener;", "(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnDrawListener;)Lcom/mapbox/maps/viewannotation/ViewAnnotationManagerImpl$buildAttachStateListener$1;", "buildDrawListener", "viewAnnotation", "buildGlobalLayoutListener", "calculateCoordinateBoundForAnnotation", "Lcom/mapbox/maps/CoordinateBounds;", "annotationFrame", "Landroid/graphics/Rect;", "zoom", "", "(Lcom/mapbox/maps/viewannotation/ViewAnnotationManagerImpl$ViewAnnotation;Landroid/graphics/Rect;Ljava/lang/Double;)Lcom/mapbox/maps/CoordinateBounds;", "cameraForAnnotations", "bearing", "pitch", "(Ljava/util/List;Lcom/mapbox/maps/EdgeInsets;Ljava/lang/Double;Ljava/lang/Double;)Lcom/mapbox/maps/CameraOptions;", "result", "(Ljava/util/List;Lcom/mapbox/maps/EdgeInsets;Ljava/lang/Double;Ljava/lang/Double;Lkotlin/jvm/functions/Function1;)V", "cameraForAnnotationsImpl", "(Ljava/util/List;Lcom/mapbox/maps/EdgeInsets;Ljava/lang/Double;Ljava/lang/Double;Lkotlin/jvm/functions/Function1;)Lcom/mapbox/maps/CameraOptions;", "destroy", "findByAnnotatedLayerFeature", "Lkotlin/Pair;", "annotatedLayerFeature", "Lcom/mapbox/maps/AnnotatedLayerFeature;", "getValue", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "expected", "Lcom/mapbox/bindgen/Expected;", "(Lcom/mapbox/bindgen/Expected;)Ljava/lang/Object;", "getViewAnnotation", "getViewAnnotationOptions", "getViewAnnotationOptionsFrame", "positionDescriptor", "getViewAnnotationUpdateMode", "Lcom/mapbox/maps/viewannotation/ViewAnnotationUpdateMode;", "invokeCallbackAndReturn", "camera", "callback", "measureView", "notifyAnchorCoordinateListeners", "newPositionDescriptor", "notifyAnchorListeners", "notifyPositionListeners", "positionChanged", "", "onDelegatingViewAnnotationPositionsUpdate", "positions", "positionAnnotationViews", "prepareViewAnnotation", "inflatedView", "remove", "annotation", "removeAllViewAnnotations", "removeOnViewAnnotationUpdatedListener", "removeViewAnnotation", "setViewAnnotationUpdateMode", "mode", "updateViewAnnotation", "updateVisibilityAndNotifyUpdateListeners", "currentVisibility", "Lcom/mapbox/maps/viewannotation/ViewAnnotationVisibility;", "validateOptions", "coordinate", "Lcom/mapbox/geojson/Point;", "Companion", "ViewAnnotation", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ViewAnnotationManagerImpl extends DelegatingViewAnnotationPositionsUpdateListener implements ViewAnnotationManager {

    public static final Companion INSTANCE = new Companion(null);
    private static final String EXCEPTION_TEXT_FEATURE_IS_NULL = "Annotated feature can not be null!";
    private static final int MAX_ADJUST_BOUNDS_COUNTER = 2;
    private static final String TAG = "ViewAnnotationImpl";
    private static final int USER_FIXED_DIMENSION = -1;
    private List<DelegatingViewAnnotationPositionDescriptor> currentPositionDescriptors;
    private final MapboxMap mapboxMap;
    private final float pixelRatio;
    private final MapboxRenderThread renderThread;
    private volatile List<DelegatingViewAnnotationPositionDescriptor> updatedPositionDescriptors;
    private final Map<String, ViewAnnotation> viewAnnotations;
    private final FrameLayout viewAnnotationsLayout;
    private final CopyOnWriteArraySet<OnViewAnnotationUpdatedListener> viewUpdatedListenerSet;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ViewAnnotationAnchor.values().length];
            try {
                iArr[ViewAnnotationAnchor.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ViewAnnotationAnchor.TOP_LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ViewAnnotationAnchor.TOP_RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ViewAnnotationAnchor.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ViewAnnotationAnchor.BOTTOM_LEFT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ViewAnnotationAnchor.BOTTOM_RIGHT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ViewAnnotationAnchor.LEFT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ViewAnnotationAnchor.RIGHT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static void getViewAnnotationAvoidLayers$annotations() {
    }

    public static void getViewUpdatedListenerSet$maps_sdk_release$annotations() {
    }

    public ViewAnnotationManagerImpl(MapView mapView, FrameLayout frameLayout, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(mapView, (i & 2) != 0 ? new FrameLayout(mapView.getContext()) : frameLayout);
    }

    public ViewAnnotationManagerImpl(MapView mapView, FrameLayout viewAnnotationsLayout) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(viewAnnotationsLayout, "viewAnnotationsLayout");
        this.viewAnnotationsLayout = viewAnnotationsLayout;
        MapboxMap mapboxMapDeprecated = mapView.getMapboxMapDeprecated();
        this.mapboxMap = mapboxMapDeprecated;
        this.renderThread = mapView.getMapController$maps_sdk_release().getRenderer().getRenderThread$maps_sdk_release();
        this.pixelRatio = mapView.getResources().getDisplayMetrics().density;
        this.viewAnnotations = new LinkedHashMap();
        this.viewUpdatedListenerSet = new CopyOnWriteArraySet<>();
        this.updatedPositionDescriptors = CollectionsKt.emptyList();
        this.currentPositionDescriptors = CollectionsKt.emptyList();
        viewAnnotationsLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        mapView.addView(viewAnnotationsLayout, 1);
        mapView.requestDisallowInterceptTouchEvent(false);
        mapboxMapDeprecated.setViewAnnotationPositionsUpdateListener$maps_sdk_release(this);
    }

    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b1\b\u0082\b\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0006\u0010\u0011\u001a\u00020\t\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0013¢\u0006\u0002\u0010\u0014J\t\u00105\u001a\u00020\u0003HÆ\u0003J\t\u00106\u001a\u00020\u0013HÆ\u0003J\t\u00107\u001a\u00020\u0005HÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u00109\u001a\u00020\tHÆ\u0003J\t\u0010:\u001a\u00020\u000bHÆ\u0003J\t\u0010;\u001a\u00020\rHÆ\u0003J\t\u0010<\u001a\u00020\rHÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\t\u0010>\u001a\u00020\tHÆ\u0003Jq\u0010?\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\r2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010\u0011\u001a\u00020\t2\b\b\u0002\u0010\u0012\u001a\u00020\u0013HÆ\u0001J\u0013\u0010@\u001a\u00020\t2\b\u0010A\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010B\u001a\u00020\rHÖ\u0001J\t\u0010C\u001a\u00020\u0013HÖ\u0001R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u0011\u0010\u0012\u001a\u00020\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u001a\u0010\u0011\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u001a\"\u0004\b\u001f\u0010\u001cR\u0011\u0010 \u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b \u0010\u001aR\u001a\u0010\u000e\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\"\"\u0004\b&\u0010$R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u00102\"\u0004\b3\u00104¨\u0006D"}, d2 = {"Lcom/mapbox/maps/viewannotation/ViewAnnotationManagerImpl$ViewAnnotation;", "", "view", "Landroid/view/View;", "viewLayoutParams", "Landroid/view/ViewGroup$LayoutParams;", "attachStateListener", "Landroid/view/View$OnAttachStateChangeListener;", "handleVisibilityAutomatically", "", "visibility", "Lcom/mapbox/maps/viewannotation/ViewAnnotationVisibility;", "measuredWidth", "", "measuredHeight", "positionDescriptor", "Lcom/mapbox/maps/DelegatingViewAnnotationPositionDescriptor;", "isPositioned", "id", "", "(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View$OnAttachStateChangeListener;ZLcom/mapbox/maps/viewannotation/ViewAnnotationVisibility;IILcom/mapbox/maps/DelegatingViewAnnotationPositionDescriptor;ZLjava/lang/String;)V", "getAttachStateListener", "()Landroid/view/View$OnAttachStateChangeListener;", "setAttachStateListener", "(Landroid/view/View$OnAttachStateChangeListener;)V", "getHandleVisibilityAutomatically", "()Z", "setHandleVisibilityAutomatically", "(Z)V", "getId", "()Ljava/lang/String;", "setPositioned", "isVisible", "getMeasuredHeight", "()I", "setMeasuredHeight", "(I)V", "getMeasuredWidth", "setMeasuredWidth", "getPositionDescriptor", "()Lcom/mapbox/maps/DelegatingViewAnnotationPositionDescriptor;", "setPositionDescriptor", "(Lcom/mapbox/maps/DelegatingViewAnnotationPositionDescriptor;)V", "getView", "()Landroid/view/View;", "getViewLayoutParams", "()Landroid/view/ViewGroup$LayoutParams;", "setViewLayoutParams", "(Landroid/view/ViewGroup$LayoutParams;)V", "getVisibility", "()Lcom/mapbox/maps/viewannotation/ViewAnnotationVisibility;", "setVisibility", "(Lcom/mapbox/maps/viewannotation/ViewAnnotationVisibility;)V", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "toString", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    static final class ViewAnnotation {
        private View.OnAttachStateChangeListener attachStateListener;
        private boolean handleVisibilityAutomatically;
        private final String id;
        private boolean isPositioned;
        private int measuredHeight;
        private int measuredWidth;
        private DelegatingViewAnnotationPositionDescriptor positionDescriptor;
        private final View view;
        private ViewGroup.LayoutParams viewLayoutParams;
        private ViewAnnotationVisibility visibility;

        public static ViewAnnotation copy$default(ViewAnnotation viewAnnotation, View view, ViewGroup.LayoutParams layoutParams, View.OnAttachStateChangeListener onAttachStateChangeListener, boolean z, ViewAnnotationVisibility viewAnnotationVisibility, int i, int i2, DelegatingViewAnnotationPositionDescriptor delegatingViewAnnotationPositionDescriptor, boolean z2, String str, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                view = viewAnnotation.view;
            }
            if ((i3 & 2) != 0) {
                layoutParams = viewAnnotation.viewLayoutParams;
            }
            if ((i3 & 4) != 0) {
                onAttachStateChangeListener = viewAnnotation.attachStateListener;
            }
            if ((i3 & 8) != 0) {
                z = viewAnnotation.handleVisibilityAutomatically;
            }
            if ((i3 & 16) != 0) {
                viewAnnotationVisibility = viewAnnotation.visibility;
            }
            if ((i3 & 32) != 0) {
                i = viewAnnotation.measuredWidth;
            }
            if ((i3 & 64) != 0) {
                i2 = viewAnnotation.measuredHeight;
            }
            if ((i3 & 128) != 0) {
                delegatingViewAnnotationPositionDescriptor = viewAnnotation.positionDescriptor;
            }
            if ((i3 & 256) != 0) {
                z2 = viewAnnotation.isPositioned;
            }
            if ((i3 & 512) != 0) {
                str = viewAnnotation.id;
            }
            boolean z3 = z2;
            String str2 = str;
            int i4 = i2;
            DelegatingViewAnnotationPositionDescriptor delegatingViewAnnotationPositionDescriptor2 = delegatingViewAnnotationPositionDescriptor;
            ViewAnnotationVisibility viewAnnotationVisibility2 = viewAnnotationVisibility;
            int i5 = i;
            return viewAnnotation.copy(view, layoutParams, onAttachStateChangeListener, z, viewAnnotationVisibility2, i5, i4, delegatingViewAnnotationPositionDescriptor2, z3, str2);
        }

        public final View getView() {
            return this.view;
        }

        public final String getId() {
            return this.id;
        }

        public final ViewGroup.LayoutParams getViewLayoutParams() {
            return this.viewLayoutParams;
        }

        public final View.OnAttachStateChangeListener getAttachStateListener() {
            return this.attachStateListener;
        }

        public final boolean getHandleVisibilityAutomatically() {
            return this.handleVisibilityAutomatically;
        }

        public final ViewAnnotationVisibility getVisibility() {
            return this.visibility;
        }

        public final int getMeasuredWidth() {
            return this.measuredWidth;
        }

        public final int getMeasuredHeight() {
            return this.measuredHeight;
        }

        public final DelegatingViewAnnotationPositionDescriptor getPositionDescriptor() {
            return this.positionDescriptor;
        }

        public final boolean getIsPositioned() {
            return this.isPositioned;
        }

        public final ViewAnnotation copy(View view, ViewGroup.LayoutParams viewLayoutParams, View.OnAttachStateChangeListener attachStateListener, boolean handleVisibilityAutomatically, ViewAnnotationVisibility visibility, int measuredWidth, int measuredHeight, DelegatingViewAnnotationPositionDescriptor positionDescriptor, boolean isPositioned, String id) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(viewLayoutParams, "viewLayoutParams");
            Intrinsics.checkNotNullParameter(visibility, "visibility");
            Intrinsics.checkNotNullParameter(id, "id");
            return new ViewAnnotation(view, viewLayoutParams, attachStateListener, handleVisibilityAutomatically, visibility, measuredWidth, measuredHeight, positionDescriptor, isPositioned, id);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ViewAnnotation)) {
                return false;
            }
            ViewAnnotation viewAnnotation = (ViewAnnotation) other;
            return Intrinsics.areEqual(this.view, viewAnnotation.view) && Intrinsics.areEqual(this.viewLayoutParams, viewAnnotation.viewLayoutParams) && Intrinsics.areEqual(this.attachStateListener, viewAnnotation.attachStateListener) && this.handleVisibilityAutomatically == viewAnnotation.handleVisibilityAutomatically && this.visibility == viewAnnotation.visibility && this.measuredWidth == viewAnnotation.measuredWidth && this.measuredHeight == viewAnnotation.measuredHeight && Intrinsics.areEqual(this.positionDescriptor, viewAnnotation.positionDescriptor) && this.isPositioned == viewAnnotation.isPositioned && Intrinsics.areEqual(this.id, viewAnnotation.id);
        }

        public int hashCode() {
            int iHashCode = ((this.view.hashCode() * 31) + this.viewLayoutParams.hashCode()) * 31;
            View.OnAttachStateChangeListener onAttachStateChangeListener = this.attachStateListener;
            int iHashCode2 = (iHashCode + (onAttachStateChangeListener == null ? 0 : onAttachStateChangeListener.hashCode())) * 31;
            boolean z = this.handleVisibilityAutomatically;
            ?? r1 = z;
            if (z) {
                r1 = 1;
            }
            int iHashCode3 = (((((((iHashCode2 + r1) * 31) + this.visibility.hashCode()) * 31) + Integer.hashCode(this.measuredWidth)) * 31) + Integer.hashCode(this.measuredHeight)) * 31;
            DelegatingViewAnnotationPositionDescriptor delegatingViewAnnotationPositionDescriptor = this.positionDescriptor;
            int iHashCode4 = (iHashCode3 + (delegatingViewAnnotationPositionDescriptor != null ? delegatingViewAnnotationPositionDescriptor.hashCode() : 0)) * 31;
            boolean z2 = this.isPositioned;
            return ((iHashCode4 + (z2 ? 1 : z2)) * 31) + this.id.hashCode();
        }

        public String toString() {
            return "ViewAnnotation(view=" + this.view + ", viewLayoutParams=" + this.viewLayoutParams + ", attachStateListener=" + this.attachStateListener + ", handleVisibilityAutomatically=" + this.handleVisibilityAutomatically + ", visibility=" + this.visibility + ", measuredWidth=" + this.measuredWidth + ", measuredHeight=" + this.measuredHeight + ", positionDescriptor=" + this.positionDescriptor + ", isPositioned=" + this.isPositioned + ", id=" + this.id + CoreConstants.RIGHT_PARENTHESIS_CHAR;
        }

        public ViewAnnotation(View view, ViewGroup.LayoutParams viewLayoutParams, View.OnAttachStateChangeListener onAttachStateChangeListener, boolean z, ViewAnnotationVisibility visibility, int i, int i2, DelegatingViewAnnotationPositionDescriptor delegatingViewAnnotationPositionDescriptor, boolean z2, String id) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(viewLayoutParams, "viewLayoutParams");
            Intrinsics.checkNotNullParameter(visibility, "visibility");
            Intrinsics.checkNotNullParameter(id, "id");
            this.view = view;
            this.viewLayoutParams = viewLayoutParams;
            this.attachStateListener = onAttachStateChangeListener;
            this.handleVisibilityAutomatically = z;
            this.visibility = visibility;
            this.measuredWidth = i;
            this.measuredHeight = i2;
            this.positionDescriptor = delegatingViewAnnotationPositionDescriptor;
            this.isPositioned = z2;
            this.id = id;
        }

        public final View getView() {
            return this.view;
        }

        public final ViewGroup.LayoutParams getViewLayoutParams() {
            return this.viewLayoutParams;
        }

        public final void setViewLayoutParams(ViewGroup.LayoutParams layoutParams) {
            Intrinsics.checkNotNullParameter(layoutParams, "<set-?>");
            this.viewLayoutParams = layoutParams;
        }

        public final View.OnAttachStateChangeListener getAttachStateListener() {
            return this.attachStateListener;
        }

        public final void setAttachStateListener(View.OnAttachStateChangeListener onAttachStateChangeListener) {
            this.attachStateListener = onAttachStateChangeListener;
        }

        public final boolean getHandleVisibilityAutomatically() {
            return this.handleVisibilityAutomatically;
        }

        public final void setHandleVisibilityAutomatically(boolean z) {
            this.handleVisibilityAutomatically = z;
        }

        public final ViewAnnotationVisibility getVisibility() {
            return this.visibility;
        }

        public final void setVisibility(ViewAnnotationVisibility viewAnnotationVisibility) {
            Intrinsics.checkNotNullParameter(viewAnnotationVisibility, "<set-?>");
            this.visibility = viewAnnotationVisibility;
        }

        public final int getMeasuredWidth() {
            return this.measuredWidth;
        }

        public final void setMeasuredWidth(int i) {
            this.measuredWidth = i;
        }

        public final int getMeasuredHeight() {
            return this.measuredHeight;
        }

        public final void setMeasuredHeight(int i) {
            this.measuredHeight = i;
        }

        public final DelegatingViewAnnotationPositionDescriptor getPositionDescriptor() {
            return this.positionDescriptor;
        }

        public final void setPositionDescriptor(DelegatingViewAnnotationPositionDescriptor delegatingViewAnnotationPositionDescriptor) {
            this.positionDescriptor = delegatingViewAnnotationPositionDescriptor;
        }

        public final boolean isPositioned() {
            return this.isPositioned;
        }

        public final void setPositioned(boolean z) {
            this.isPositioned = z;
        }

        public ViewAnnotation(View view, ViewGroup.LayoutParams layoutParams, View.OnAttachStateChangeListener onAttachStateChangeListener, boolean z, ViewAnnotationVisibility viewAnnotationVisibility, int i, int i2, DelegatingViewAnnotationPositionDescriptor delegatingViewAnnotationPositionDescriptor, boolean z2, String str, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            String str2;
            View.OnAttachStateChangeListener onAttachStateChangeListener2 = (i3 & 4) != 0 ? null : onAttachStateChangeListener;
            if ((i3 & 512) != 0) {
                String string = UUID.randomUUID().toString();
                Intrinsics.checkNotNullExpressionValue(string, "randomUUID().toString()");
                str2 = string;
            } else {
                str2 = str;
            }
            this(view, layoutParams, onAttachStateChangeListener2, z, viewAnnotationVisibility, i, i2, delegatingViewAnnotationPositionDescriptor, z2, str2);
        }

        public final String getId() {
            return this.id;
        }

        public final boolean isVisible() {
            return this.visibility == ViewAnnotationVisibility.VISIBLE_AND_POSITIONED || this.visibility == ViewAnnotationVisibility.VISIBLE_AND_NOT_POSITIONED;
        }
    }

    public final CopyOnWriteArraySet<OnViewAnnotationUpdatedListener> getViewUpdatedListenerSet$maps_sdk_release() {
        return this.viewUpdatedListenerSet;
    }

    @Override
    public HashSet<String> getViewAnnotationAvoidLayers() {
        return this.mapboxMap.getViewAnnotationAvoidLayers$maps_sdk_release();
    }

    @Override
    public void setViewAnnotationAvoidLayers(HashSet<String> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.mapboxMap.setViewAnnotationAvoidLayers$maps_sdk_release(value);
    }

    @Override
    public void addViewAnnotation(int resId, final ViewAnnotationOptions options, AsyncLayoutInflater asyncInflater, final Function1<? super View, Unit> asyncInflateCallback) {
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(asyncInflater, "asyncInflater");
        Intrinsics.checkNotNullParameter(asyncInflateCallback, "asyncInflateCallback");
        validateOptions(options);
        asyncInflater.inflate(resId, this.viewAnnotationsLayout, new AsyncLayoutInflater.OnInflateFinishedListener() {
            @Override
            public final void onInflateFinished(View view, int i, ViewGroup viewGroup) {
                ViewAnnotationManagerImpl.addViewAnnotation$lambda$0(this.f$0, options, asyncInflateCallback, view, i, viewGroup);
            }
        });
    }

    public static final void addViewAnnotation$lambda$0(ViewAnnotationManagerImpl this$0, ViewAnnotationOptions options, Function1 asyncInflateCallback, View view, int i, ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(options, "$options");
        Intrinsics.checkNotNullParameter(asyncInflateCallback, "$asyncInflateCallback");
        Intrinsics.checkNotNullParameter(view, "view");
        this$0.prepareViewAnnotation(view, options);
        asyncInflateCallback.invoke(view);
    }

    @Override
    public View addViewAnnotation(int resId, ViewAnnotationOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
        validateOptions(options);
        View view = LayoutInflater.from(this.viewAnnotationsLayout.getContext()).inflate(resId, (ViewGroup) this.viewAnnotationsLayout, false);
        Intrinsics.checkNotNullExpressionValue(view, "view");
        prepareViewAnnotation(view, options);
        return view;
    }

    @Override
    public void addViewAnnotation(View view, ViewAnnotationOptions options) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(options, "options");
        Map<String, ViewAnnotation> map = this.viewAnnotations;
        if (!map.isEmpty()) {
            Iterator<Map.Entry<String, ViewAnnotation>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                if (Intrinsics.areEqual(it.next().getValue().getView(), view)) {
                    throw new MapboxViewAnnotationException("Trying to add view annotation that was already added before! Please consider deleting annotation view (" + view + ") beforehand.");
                }
            }
        }
        validateOptions(options);
        prepareViewAnnotation(view, options);
    }

    @Override
    public boolean removeViewAnnotation(View view) {
        Object next;
        Intrinsics.checkNotNullParameter(view, "view");
        Iterator<T> it = this.viewAnnotations.entrySet().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.areEqual(((ViewAnnotation) ((Map.Entry) next).getValue()).getView(), view));
        Map.Entry entry = (Map.Entry) next;
        if (entry == null) {
            return false;
        }
        String str = (String) entry.getKey();
        ViewAnnotation viewAnnotation = (ViewAnnotation) entry.getValue();
        this.viewAnnotations.remove(str);
        remove(viewAnnotation);
        return true;
    }

    @Override
    public void removeAllViewAnnotations() {
        Iterator<Map.Entry<String, ViewAnnotation>> it = this.viewAnnotations.entrySet().iterator();
        while (it.hasNext()) {
            remove(it.next().getValue());
            it.remove();
        }
    }

    @Override
    public boolean updateViewAnnotation(View view, ViewAnnotationOptions options) {
        Object next;
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(options, "options");
        Iterator<T> it = this.viewAnnotations.values().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.areEqual(((ViewAnnotation) next).getView(), view));
        ViewAnnotation viewAnnotation = (ViewAnnotation) next;
        if (viewAnnotation == null) {
            return false;
        }
        viewAnnotation.setHandleVisibilityAutomatically(options.getVisible() == null);
        if (options.getWidth() != null) {
            viewAnnotation.setMeasuredWidth(-1);
        }
        if (options.getHeight() != null) {
            viewAnnotation.setMeasuredHeight(-1);
        }
        Expected expectedUpdateViewAnnotation$maps_sdk_release = this.mapboxMap.updateViewAnnotation$maps_sdk_release(viewAnnotation.getId(), options);
        if (expectedUpdateViewAnnotation$maps_sdk_release.isError()) {
            throw new MapboxViewAnnotationException((String) expectedUpdateViewAnnotation$maps_sdk_release.getError());
        }
        expectedUpdateViewAnnotation$maps_sdk_release.getValue();
        return true;
    }

    @Override
    public View getViewAnnotation(AnnotatedLayerFeature annotatedLayerFeature) {
        Intrinsics.checkNotNullParameter(annotatedLayerFeature, "annotatedLayerFeature");
        return findByAnnotatedLayerFeature(annotatedLayerFeature).getFirst();
    }

    @Override
    public ViewAnnotationOptions getViewAnnotationOptions(AnnotatedLayerFeature annotatedLayerFeature) {
        Intrinsics.checkNotNullParameter(annotatedLayerFeature, "annotatedLayerFeature");
        return findByAnnotatedLayerFeature(annotatedLayerFeature).getSecond();
    }

    @Override
    public ViewAnnotationOptions getViewAnnotationOptions(View view) {
        Object next;
        Intrinsics.checkNotNullParameter(view, "view");
        Iterator<T> it = this.viewAnnotations.values().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.areEqual(((ViewAnnotation) next).getView(), view));
        ViewAnnotation viewAnnotation = (ViewAnnotation) next;
        if (viewAnnotation == null) {
            return null;
        }
        Expected viewAnnotationOptions$maps_sdk_release = this.mapboxMap.getViewAnnotationOptions$maps_sdk_release(viewAnnotation.getId());
        if (viewAnnotationOptions$maps_sdk_release.isError()) {
            throw new MapboxViewAnnotationException((String) viewAnnotationOptions$maps_sdk_release.getError());
        }
        return (ViewAnnotationOptions) viewAnnotationOptions$maps_sdk_release.getValue();
    }

    @Override
    public void addOnViewAnnotationUpdatedListener(OnViewAnnotationUpdatedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.viewUpdatedListenerSet.add(listener);
    }

    @Override
    public void removeOnViewAnnotationUpdatedListener(OnViewAnnotationUpdatedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.viewUpdatedListenerSet.remove(listener);
    }

    @Override
    public void setViewAnnotationUpdateMode(ViewAnnotationUpdateMode mode) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        this.renderThread.setViewAnnotationMode$maps_sdk_release(mode);
    }

    @Override
    public ViewAnnotationUpdateMode getViewAnnotationUpdateMode() {
        return this.renderThread.getViewAnnotationMode();
    }

    @Override
    public Map<View, ViewAnnotationOptions> getAnnotations() {
        Map<String, ViewAnnotation> map = this.viewAnnotations;
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, ViewAnnotation>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            ViewAnnotation value = it.next().getValue();
            Expected viewAnnotationOptions$maps_sdk_release = this.mapboxMap.getViewAnnotationOptions$maps_sdk_release(value.getId());
            if (!viewAnnotationOptions$maps_sdk_release.isError()) {
                ViewAnnotationOptions viewAnnotationOptions = (ViewAnnotationOptions) viewAnnotationOptions$maps_sdk_release.getValue();
                Pair pair = viewAnnotationOptions != null ? TuplesKt.to(value.getView(), viewAnnotationOptions) : null;
                if (pair != null) {
                    arrayList.add(pair);
                }
            } else {
                throw new MapboxViewAnnotationException((String) viewAnnotationOptions$maps_sdk_release.getError());
            }
        }
        return MapsKt.toMap(arrayList);
    }

    @Override
    public CameraOptions cameraForAnnotations(List<? extends View> annotations, EdgeInsets edgeInsets, Double bearing, Double pitch) {
        Intrinsics.checkNotNullParameter(annotations, "annotations");
        return cameraForAnnotationsImpl(annotations, edgeInsets, bearing, pitch, null);
    }

    @Override
    public void cameraForAnnotations(List<? extends View> annotations, EdgeInsets edgeInsets, Double bearing, Double pitch, Function1<? super CameraOptions, Unit> result) {
        Intrinsics.checkNotNullParameter(annotations, "annotations");
        Intrinsics.checkNotNullParameter(result, "result");
        cameraForAnnotationsImpl(annotations, edgeInsets, bearing, pitch, result);
    }

    private final CameraOptions cameraForAnnotationsImpl(List<? extends View> annotations, final EdgeInsets edgeInsets, Double bearing, Double pitch, final Function1<? super CameraOptions, Unit> resultCallback) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : annotations) {
            if (((View) obj).getVisibility() == 0) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (true) {
            Object obj2 = null;
            if (!it.hasNext()) {
                break;
            }
            View view = (View) it.next();
            for (Object obj3 : this.viewAnnotations.values()) {
                if (Intrinsics.areEqual(((ViewAnnotation) obj3).getView(), view)) {
                    obj2 = obj3;
                    break;
                }
            }
            ViewAnnotation viewAnnotation = (ViewAnnotation) obj2;
            if (viewAnnotation != null) {
                arrayList2.add(viewAnnotation);
            }
        }
        final ArrayList<ViewAnnotation> arrayList3 = arrayList2;
        if (arrayList3.isEmpty()) {
            return invokeCallbackAndReturn(null, resultCallback);
        }
        ArrayList arrayList4 = new ArrayList();
        for (ViewAnnotation viewAnnotation2 : arrayList3) {
            Point pointCoordinate = coordinate(viewAnnotation2, viewAnnotation2.getPositionDescriptor());
            if (pointCoordinate != null) {
                arrayList4.add(pointCoordinate);
            }
        }
        ArrayList arrayList5 = arrayList4;
        CameraOptions.Builder builder = new CameraOptions.Builder();
        builder.pitch(pitch);
        builder.bearing(bearing);
        final CameraOptions cameraOptionsBuild = builder.build();
        Intrinsics.checkNotNullExpressionValue(cameraOptionsBuild, "Builder().apply(block).build()");
        if (resultCallback == null) {
            return adjustCameraForAnnotations(this.mapboxMap.cameraForCoordinates(arrayList5, cameraOptionsBuild, new EdgeInsets(0.0d, 0.0d, 0.0d, 0.0d), null, null), edgeInsets, arrayList3, cameraOptionsBuild, null);
        }
        this.mapboxMap.cameraForCoordinates(arrayList5, cameraOptionsBuild, new EdgeInsets(0.0d, 0.0d, 0.0d, 0.0d), null, null, new Function1<CameraOptions, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(CameraOptions cameraOptions) {
                invoke2(cameraOptions);
                return Unit.INSTANCE;
            }

            public final void invoke2(CameraOptions cameraForViewAnnotationPoints) {
                Intrinsics.checkNotNullParameter(cameraForViewAnnotationPoints, "cameraForViewAnnotationPoints");
                ViewAnnotationManagerImpl.this.adjustCameraForAnnotations(cameraForViewAnnotationPoints, edgeInsets, arrayList3, cameraOptionsBuild, resultCallback);
            }
        });
        return null;
    }

    public final CameraOptions adjustCameraForAnnotations(CameraOptions cameraForViewAnnotationPoints, EdgeInsets edgeInsets, List<ViewAnnotation> viewAnnotations, CameraOptions cameraOptionsWithNoZoom, Function1<? super CameraOptions, Unit> resultCallback) {
        if (CameraOptionsUtils.isEmpty(cameraForViewAnnotationPoints)) {
            return invokeCallbackAndReturn(null, resultCallback);
        }
        int i = 0;
        CameraOptions cameraOptionsCameraForCoordinates = cameraForViewAnnotationPoints;
        int i2 = 1;
        Triple triple = null;
        Triple triple2 = null;
        Triple triple3 = null;
        Triple triple4 = null;
        int i3 = 0;
        while (i3 == 0 && i2 <= 2) {
            Double zoom = cameraOptionsCameraForCoordinates.getZoom();
            i2++;
            Triple triple5 = triple4;
            Triple triple6 = triple3;
            Triple triple7 = triple2;
            Triple triple8 = triple;
            int i4 = 1;
            for (ViewAnnotation viewAnnotation : viewAnnotations) {
                Rect viewAnnotationOptionsFrame = getViewAnnotationOptionsFrame(viewAnnotation, viewAnnotation.getPositionDescriptor());
                if (viewAnnotationOptionsFrame == null) {
                    viewAnnotationOptionsFrame = new Rect(i, i, i, i);
                }
                CoordinateBounds coordinateBoundsCalculateCoordinateBoundForAnnotation = calculateCoordinateBoundForAnnotation(viewAnnotation, viewAnnotationOptionsFrame, zoom);
                if (coordinateBoundsCalculateCoordinateBoundForAnnotation != null) {
                    if (triple8 == null || ((Number) triple8.getThird()).doubleValue() < coordinateBoundsCalculateCoordinateBoundForAnnotation.north()) {
                        triple8 = new Triple(viewAnnotation, viewAnnotationOptionsFrame, Double.valueOf(coordinateBoundsCalculateCoordinateBoundForAnnotation.north()));
                        i4 = i;
                    }
                    if (triple7 == null || ((Number) triple7.getThird()).doubleValue() < coordinateBoundsCalculateCoordinateBoundForAnnotation.east()) {
                        triple7 = new Triple(viewAnnotation, viewAnnotationOptionsFrame, Double.valueOf(coordinateBoundsCalculateCoordinateBoundForAnnotation.east()));
                        i4 = i;
                    }
                    if (triple5 == null || ((Number) triple5.getThird()).doubleValue() > coordinateBoundsCalculateCoordinateBoundForAnnotation.south()) {
                        triple5 = new Triple(viewAnnotation, viewAnnotationOptionsFrame, Double.valueOf(coordinateBoundsCalculateCoordinateBoundForAnnotation.south()));
                        i4 = i;
                    }
                    if (triple6 == null || ((Number) triple6.getThird()).doubleValue() > coordinateBoundsCalculateCoordinateBoundForAnnotation.west()) {
                        triple6 = new Triple(viewAnnotation, viewAnnotationOptionsFrame, Double.valueOf(coordinateBoundsCalculateCoordinateBoundForAnnotation.west()));
                        i4 = i;
                    }
                }
            }
            if (triple8 == null || triple7 == null || triple5 == null || triple6 == null) {
                MapboxLogger.logW(TAG, "ViewAnnotation options framing is null. Returning empty camera");
                return invokeCallbackAndReturn(null, resultCallback);
            }
            Point[] pointArr = new Point[2];
            Point pointCoordinate = coordinate((ViewAnnotation) triple6.getFirst(), ((ViewAnnotation) triple6.getFirst()).getPositionDescriptor());
            Intrinsics.checkNotNull(pointCoordinate);
            double dLongitude = pointCoordinate.longitude();
            Point pointCoordinate2 = coordinate((ViewAnnotation) triple5.getFirst(), ((ViewAnnotation) triple5.getFirst()).getPositionDescriptor());
            Intrinsics.checkNotNull(pointCoordinate2);
            int i5 = i;
            pointArr[i5] = Point.fromLngLat(dLongitude, pointCoordinate2.latitude());
            Point pointCoordinate3 = coordinate((ViewAnnotation) triple7.getFirst(), ((ViewAnnotation) triple7.getFirst()).getPositionDescriptor());
            Intrinsics.checkNotNull(pointCoordinate3);
            double dLongitude2 = pointCoordinate3.longitude();
            Point pointCoordinate4 = coordinate((ViewAnnotation) triple8.getFirst(), ((ViewAnnotation) triple8.getFirst()).getPositionDescriptor());
            Intrinsics.checkNotNull(pointCoordinate4);
            pointArr[1] = Point.fromLngLat(dLongitude2, pointCoordinate4.latitude());
            List<Point> listListOf = CollectionsKt.listOf((Object[]) pointArr);
            double dDoubleValue = (edgeInsets != null ? Double.valueOf(edgeInsets.getTop()) : Integer.valueOf(i5)).doubleValue();
            Rect rect = (Rect) triple8.getSecond();
            double dAbs = dDoubleValue + Math.abs((rect != null ? Integer.valueOf(rect.top) : Double.valueOf(0.0d)).doubleValue());
            double dDoubleValue2 = (edgeInsets != null ? Double.valueOf(edgeInsets.getLeft()) : Integer.valueOf(i5)).doubleValue();
            Rect rect2 = (Rect) triple6.getSecond();
            double dAbs2 = dDoubleValue2 + Math.abs((rect2 != null ? Integer.valueOf(rect2.left) : Double.valueOf(0.0d)).doubleValue());
            double dDoubleValue3 = (edgeInsets != null ? Double.valueOf(edgeInsets.getBottom()) : Integer.valueOf(i5)).doubleValue();
            Rect rect3 = (Rect) triple5.getSecond();
            double dAbs3 = dDoubleValue3 + Math.abs((rect3 != null ? Integer.valueOf(rect3.bottom) : Double.valueOf(0.0d)).doubleValue());
            double dDoubleValue4 = (edgeInsets != null ? Double.valueOf(edgeInsets.getRight()) : Integer.valueOf(i5)).doubleValue();
            Rect rect4 = (Rect) triple7.getSecond();
            cameraOptionsCameraForCoordinates = this.mapboxMap.cameraForCoordinates(listListOf, cameraOptionsWithNoZoom, new EdgeInsets(dAbs, dAbs2, dAbs3, dDoubleValue4 + Math.abs((rect4 != null ? Integer.valueOf(rect4.right) : Double.valueOf(0.0d)).doubleValue())), null, null);
            i3 = i4;
            triple = triple8;
            triple2 = triple7;
            triple3 = triple6;
            i = i5;
            triple4 = triple5;
        }
        return invokeCallbackAndReturn(CameraOptionsUtils.isEmpty(cameraOptionsCameraForCoordinates) ? null : cameraOptionsCameraForCoordinates, resultCallback);
    }

    private final CoordinateBounds calculateCoordinateBoundForAnnotation(ViewAnnotation viewAnnotation, Rect annotationFrame, Double zoom) {
        double metersPerPixelAtLatitude;
        Point pointCoordinate = coordinate(viewAnnotation, viewAnnotation.getPositionDescriptor());
        if (pointCoordinate == null) {
            return null;
        }
        if (zoom == null) {
            metersPerPixelAtLatitude = this.mapboxMap.getMetersPerPixelAtLatitude(pointCoordinate.latitude());
        } else {
            metersPerPixelAtLatitude = this.mapboxMap.getMetersPerPixelAtLatitude(pointCoordinate.latitude(), zoom.doubleValue());
        }
        ProjectedMeters projectedMetersProjectedMetersForCoordinate = this.mapboxMap.projectedMetersForCoordinate(pointCoordinate);
        double d = metersPerPixelAtLatitude / ((double) this.pixelRatio);
        double northing = projectedMetersProjectedMetersForCoordinate.getNorthing() + (((double) Math.abs(annotationFrame.top)) * d);
        double easting = projectedMetersProjectedMetersForCoordinate.getEasting() + (((double) Math.abs(annotationFrame.right)) * d);
        double northing2 = projectedMetersProjectedMetersForCoordinate.getNorthing() - (((double) Math.abs(annotationFrame.bottom)) * d);
        double easting2 = projectedMetersProjectedMetersForCoordinate.getEasting() - (((double) Math.abs(annotationFrame.left)) * d);
        ProjectedMeters projectedMeters = new ProjectedMeters(northing, easting);
        ProjectedMeters projectedMeters2 = new ProjectedMeters(northing2, easting2);
        return new CoordinateBounds(this.mapboxMap.coordinateForProjectedMeters(projectedMeters2), this.mapboxMap.coordinateForProjectedMeters(projectedMeters));
    }

    private final Point coordinate(ViewAnnotation viewAnnotation, DelegatingViewAnnotationPositionDescriptor delegatingViewAnnotationPositionDescriptor) {
        Expected viewAnnotationOptions$maps_sdk_release = this.mapboxMap.getViewAnnotationOptions$maps_sdk_release(viewAnnotation.getId());
        if (!viewAnnotationOptions$maps_sdk_release.isError()) {
            ViewAnnotationOptions viewAnnotationOptions = (ViewAnnotationOptions) viewAnnotationOptions$maps_sdk_release.getValue();
            if (viewAnnotationOptions == null) {
                return null;
            }
            AnnotatedFeature annotatedFeature = viewAnnotationOptions.getAnnotatedFeature();
            Intrinsics.checkNotNull(annotatedFeature);
            if (!annotatedFeature.isGeometry()) {
                if (delegatingViewAnnotationPositionDescriptor != null) {
                    return delegatingViewAnnotationPositionDescriptor.getAnchorCoordinate();
                }
                return null;
            }
            AnnotatedFeature annotatedFeature2 = viewAnnotationOptions.getAnnotatedFeature();
            Intrinsics.checkNotNull(annotatedFeature2);
            Geometry geometry = annotatedFeature2.getGeometry();
            if (geometry instanceof Point) {
                return (Point) geometry;
            }
            return null;
        }
        throw new MapboxViewAnnotationException((String) viewAnnotationOptions$maps_sdk_release.getError());
    }

    private final Rect getViewAnnotationOptionsFrame(ViewAnnotation viewAnnotation, DelegatingViewAnnotationPositionDescriptor positionDescriptor) {
        int iDoubleValue;
        int iDoubleValue2;
        ViewAnnotationAnchorConfig viewAnnotationAnchorConfigBuild;
        Expected viewAnnotationOptions$maps_sdk_release = this.mapboxMap.getViewAnnotationOptions$maps_sdk_release(viewAnnotation.getId());
        if (!viewAnnotationOptions$maps_sdk_release.isError()) {
            ViewAnnotationOptions viewAnnotationOptions = (ViewAnnotationOptions) viewAnnotationOptions$maps_sdk_release.getValue();
            if (viewAnnotationOptions == null || viewAnnotationOptions.getWidth() == null || viewAnnotationOptions.getHeight() == null) {
                return null;
            }
            Double width = viewAnnotationOptions.getWidth();
            Intrinsics.checkNotNull(width);
            if (width.doubleValue() > 0.0d) {
                Double width2 = viewAnnotationOptions.getWidth();
                Intrinsics.checkNotNull(width2);
                iDoubleValue = (int) (width2.doubleValue() * 0.5d);
            } else {
                iDoubleValue = 0;
            }
            Double height = viewAnnotationOptions.getHeight();
            Intrinsics.checkNotNull(height);
            if (height.doubleValue() > 0.0d) {
                Double height2 = viewAnnotationOptions.getHeight();
                Intrinsics.checkNotNull(height2);
                iDoubleValue2 = (int) (height2.doubleValue() * 0.5d);
            } else {
                iDoubleValue2 = 0;
            }
            int i = -iDoubleValue;
            int i2 = -iDoubleValue2;
            Rect rect = new Rect(i, i2, iDoubleValue, iDoubleValue2);
            if (positionDescriptor == null || (viewAnnotationAnchorConfigBuild = positionDescriptor.getAnchorConfig()) == null) {
                viewAnnotationAnchorConfigBuild = new ViewAnnotationAnchorConfig.Builder().anchor(ViewAnnotationAnchor.CENTER).build();
            }
            switch (WhenMappings.$EnumSwitchMapping$0[viewAnnotationAnchorConfigBuild.getAnchor().ordinal()]) {
                case 1:
                    rect.offset(0, iDoubleValue2);
                    break;
                case 2:
                    rect.offset(iDoubleValue, iDoubleValue2);
                    break;
                case 3:
                    rect.offset(i, iDoubleValue2);
                    break;
                case 4:
                    rect.offset(0, i2);
                    break;
                case 5:
                    rect.offset(iDoubleValue, i2);
                    break;
                case 6:
                    rect.offset(i, i2);
                    break;
                case 7:
                    rect.offset(iDoubleValue, 0);
                    break;
                case 8:
                    rect.offset(i, 0);
                    break;
                default:
                    rect.offset(0, 0);
                    break;
            }
            rect.offset((int) viewAnnotationAnchorConfigBuild.getOffsetX(), (int) viewAnnotationAnchorConfigBuild.getOffsetY());
            return rect;
        }
        throw new MapboxViewAnnotationException((String) viewAnnotationOptions$maps_sdk_release.getError());
    }

    @Override
    public void onDelegatingViewAnnotationPositionsUpdate(List<DelegatingViewAnnotationPositionDescriptor> positions) {
        Intrinsics.checkNotNullParameter(positions, "positions");
        if (Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
            final List<DelegatingViewAnnotationPositionDescriptor> list = this.updatedPositionDescriptors;
            Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() {
                @Override
                public final void doFrame(long j) {
                    ViewAnnotationManagerImpl.onDelegatingViewAnnotationPositionsUpdate$lambda$20(this.f$0, list, j);
                }
            });
        } else {
            this.renderThread.setNeedViewAnnotationSync$maps_sdk_release(true);
            this.updatedPositionDescriptors = positions;
        }
    }

    public static final void onDelegatingViewAnnotationPositionsUpdate$lambda$20(ViewAnnotationManagerImpl this$0, List immutableUpdatedPositionDescriptorsCopy, long j) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(immutableUpdatedPositionDescriptorsCopy, "$immutableUpdatedPositionDescriptorsCopy");
        this$0.positionAnnotationViews(immutableUpdatedPositionDescriptorsCopy);
    }

    public final void destroy() {
        this.mapboxMap.setViewAnnotationPositionsUpdateListener$maps_sdk_release(null);
        this.viewUpdatedListenerSet.clear();
        removeAllViewAnnotations();
    }

    private final void validateOptions(ViewAnnotationOptions options) {
        if (options.getAnnotatedFeature() == null) {
            throw new IllegalArgumentException(EXCEPTION_TEXT_FEATURE_IS_NULL);
        }
    }

    private final void prepareViewAnnotation(View inflatedView, ViewAnnotationOptions options) {
        int measuredWidth;
        int measuredHeight;
        measureView(inflatedView);
        ViewGroup.LayoutParams layoutParams = inflatedView.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
        if (layoutParams.width < 0) {
            measuredWidth = inflatedView.getMeasuredWidth();
        } else {
            measuredWidth = layoutParams.width;
        }
        if (layoutParams.height < 0) {
            measuredHeight = inflatedView.getMeasuredHeight();
        } else {
            measuredHeight = layoutParams.height;
        }
        ViewAnnotationOptions.Builder builder = options.toBuilder();
        Double width = options.getWidth();
        if (width == null) {
            width = Double.valueOf(measuredWidth);
        }
        ViewAnnotationOptions.Builder builderWidth = builder.width(width);
        Double height = options.getHeight();
        if (height == null) {
            height = Double.valueOf(measuredHeight);
        }
        ViewAnnotationOptions updatedOptions = builderWidth.height(height).build();
        boolean z = options.getVisible() == null;
        ViewAnnotationVisibility viewAnnotationVisibility = ViewAnnotationVisibility.INITIAL;
        if (options.getWidth() != null) {
            measuredWidth = -1;
        }
        ViewAnnotation viewAnnotation = new ViewAnnotation(inflatedView, layoutParams, null, z, viewAnnotationVisibility, measuredWidth, options.getHeight() != null ? -1 : measuredHeight, null, false, null, 516, null);
        viewAnnotation.setAttachStateListener(buildAttachStateListener(viewAnnotation.getView(), buildGlobalLayoutListener(viewAnnotation), buildDrawListener(viewAnnotation)));
        inflatedView.addOnAttachStateChangeListener(viewAnnotation.getAttachStateListener());
        this.viewAnnotations.put(viewAnnotation.getId(), viewAnnotation);
        MapboxMap mapboxMap = this.mapboxMap;
        String id = viewAnnotation.getId();
        Intrinsics.checkNotNullExpressionValue(updatedOptions, "updatedOptions");
        Expected expectedAddViewAnnotation$maps_sdk_release = mapboxMap.addViewAnnotation$maps_sdk_release(id, updatedOptions);
        if (expectedAddViewAnnotation$maps_sdk_release.isError()) {
            throw new MapboxViewAnnotationException((String) expectedAddViewAnnotation$maps_sdk_release.getError());
        }
        expectedAddViewAnnotation$maps_sdk_release.getValue();
    }

    private final void measureView(View view) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        boolean z = view.getTag(R.id.composeView) != null;
        if (z) {
            this.viewAnnotationsLayout.addView(view);
        }
        view.measure(iMakeMeasureSpec, iMakeMeasureSpec);
        if (z) {
            this.viewAnnotationsLayout.removeView(view);
        }
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    private final AnonymousClass1 buildAttachStateListener(final View view, final ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, final ViewTreeObserver.OnDrawListener onDrawListener) {
        return new View.OnAttachStateChangeListener() {
            @Override
            public void onViewAttachedToWindow(View v) {
                Intrinsics.checkNotNullParameter(v, "v");
                view.getViewTreeObserver().addOnDrawListener(onDrawListener);
                view.getViewTreeObserver().addOnGlobalLayoutListener(onGlobalLayoutListener);
            }

            @Override
            public void onViewDetachedFromWindow(View v) {
                Intrinsics.checkNotNullParameter(v, "v");
                view.getViewTreeObserver().removeOnDrawListener(onDrawListener);
                view.getViewTreeObserver().removeOnGlobalLayoutListener(onGlobalLayoutListener);
            }
        };
    }

    private final ViewTreeObserver.OnDrawListener buildDrawListener(final ViewAnnotation viewAnnotation) {
        return new ViewTreeObserver.OnDrawListener() {
            @Override
            public final void onDraw() {
                ViewAnnotationManagerImpl.buildDrawListener$lambda$21(viewAnnotation, this);
            }
        };
    }

    public static final void buildDrawListener$lambda$21(ViewAnnotation viewAnnotation, ViewAnnotationManagerImpl this$0) {
        ViewAnnotationVisibility viewAnnotationVisibility;
        Intrinsics.checkNotNullParameter(viewAnnotation, "$viewAnnotation");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (viewAnnotation.getHandleVisibilityAutomatically()) {
            boolean z = viewAnnotation.getView().getVisibility() == 0;
            if (z && viewAnnotation.isVisible()) {
                return;
            }
            if (z || viewAnnotation.getVisibility() != ViewAnnotationVisibility.INVISIBLE) {
                if (z || viewAnnotation.getVisibility() != ViewAnnotationVisibility.VISIBLE_AND_NOT_POSITIONED) {
                    if (z) {
                        ViewAnnotation viewAnnotation2 = this$0.viewAnnotations.get(viewAnnotation.getId());
                        if (viewAnnotation2 != null) {
                            viewAnnotation2.setPositioned(false);
                        }
                        viewAnnotation.getView().setVisibility(4);
                    }
                    if (z) {
                        viewAnnotationVisibility = ViewAnnotationVisibility.VISIBLE_AND_NOT_POSITIONED;
                    } else {
                        viewAnnotationVisibility = ViewAnnotationVisibility.INVISIBLE;
                    }
                    this$0.updateVisibilityAndNotifyUpdateListeners(viewAnnotation, viewAnnotationVisibility);
                    Expected viewAnnotationOptions$maps_sdk_release = this$0.mapboxMap.getViewAnnotationOptions$maps_sdk_release(viewAnnotation.getId());
                    if (!viewAnnotationOptions$maps_sdk_release.isError()) {
                        ViewAnnotationOptions viewAnnotationOptions = (ViewAnnotationOptions) viewAnnotationOptions$maps_sdk_release.getValue();
                        if (viewAnnotationOptions != null ? Intrinsics.areEqual(viewAnnotationOptions.getVisible(), Boolean.valueOf(z)) : false) {
                            return;
                        }
                        MapboxMap mapboxMap = this$0.mapboxMap;
                        String id = viewAnnotation.getId();
                        ViewAnnotationOptions viewAnnotationOptionsBuild = new ViewAnnotationOptions.Builder().visible(Boolean.valueOf(z)).build();
                        Intrinsics.checkNotNullExpressionValue(viewAnnotationOptionsBuild, "Builder()\n              …e)\n              .build()");
                        Expected expectedUpdateViewAnnotation$maps_sdk_release = mapboxMap.updateViewAnnotation$maps_sdk_release(id, viewAnnotationOptionsBuild);
                        if (expectedUpdateViewAnnotation$maps_sdk_release.isError()) {
                            throw new MapboxViewAnnotationException((String) expectedUpdateViewAnnotation$maps_sdk_release.getError());
                        }
                        expectedUpdateViewAnnotation$maps_sdk_release.getValue();
                        return;
                    }
                    throw new MapboxViewAnnotationException((String) viewAnnotationOptions$maps_sdk_release.getError());
                }
            }
        }
    }

    private final ViewTreeObserver.OnGlobalLayoutListener buildGlobalLayoutListener(final ViewAnnotation viewAnnotation) {
        return new ViewTreeObserver.OnGlobalLayoutListener() {
            @Override
            public final void onGlobalLayout() {
                ViewAnnotationManagerImpl.buildGlobalLayoutListener$lambda$22(viewAnnotation, this);
            }
        };
    }

    public static final void buildGlobalLayoutListener$lambda$22(ViewAnnotation viewAnnotation, ViewAnnotationManagerImpl this$0) {
        Intrinsics.checkNotNullParameter(viewAnnotation, "$viewAnnotation");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (viewAnnotation.getMeasuredWidth() != -1 && viewAnnotation.getView().getMeasuredWidth() > 0 && viewAnnotation.getView().getMeasuredWidth() != viewAnnotation.getMeasuredWidth()) {
            viewAnnotation.setMeasuredWidth(viewAnnotation.getView().getMeasuredWidth());
            MapboxMap mapboxMap = this$0.mapboxMap;
            String id = viewAnnotation.getId();
            ViewAnnotationOptions viewAnnotationOptionsBuild = new ViewAnnotationOptions.Builder().width(Double.valueOf(viewAnnotation.getView().getMeasuredWidth())).build();
            Intrinsics.checkNotNullExpressionValue(viewAnnotationOptionsBuild, "Builder()\n              …))\n              .build()");
            Expected expectedUpdateViewAnnotation$maps_sdk_release = mapboxMap.updateViewAnnotation$maps_sdk_release(id, viewAnnotationOptionsBuild);
            if (expectedUpdateViewAnnotation$maps_sdk_release.isError()) {
                throw new MapboxViewAnnotationException((String) expectedUpdateViewAnnotation$maps_sdk_release.getError());
            }
            expectedUpdateViewAnnotation$maps_sdk_release.getValue();
        }
        if (viewAnnotation.getMeasuredHeight() == -1 || viewAnnotation.getView().getMeasuredHeight() <= 0 || viewAnnotation.getView().getMeasuredHeight() == viewAnnotation.getMeasuredHeight()) {
            return;
        }
        viewAnnotation.setMeasuredHeight(viewAnnotation.getView().getMeasuredHeight());
        MapboxMap mapboxMap2 = this$0.mapboxMap;
        String id2 = viewAnnotation.getId();
        ViewAnnotationOptions viewAnnotationOptionsBuild2 = new ViewAnnotationOptions.Builder().height(Double.valueOf(viewAnnotation.getView().getMeasuredHeight())).build();
        Intrinsics.checkNotNullExpressionValue(viewAnnotationOptionsBuild2, "Builder()\n              …))\n              .build()");
        Expected expectedUpdateViewAnnotation$maps_sdk_release2 = mapboxMap2.updateViewAnnotation$maps_sdk_release(id2, viewAnnotationOptionsBuild2);
        if (expectedUpdateViewAnnotation$maps_sdk_release2.isError()) {
            throw new MapboxViewAnnotationException((String) expectedUpdateViewAnnotation$maps_sdk_release2.getError());
        }
        expectedUpdateViewAnnotation$maps_sdk_release2.getValue();
    }

    private final Pair<View, ViewAnnotationOptions> findByAnnotatedLayerFeature(AnnotatedLayerFeature annotatedLayerFeature) {
        Object next;
        AnnotatedFeature annotatedFeature;
        Map<String, ViewAnnotation> map = this.viewAnnotations;
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, ViewAnnotation> entry : map.entrySet()) {
            String key = entry.getKey();
            View view = entry.getValue().getView();
            Expected viewAnnotationOptions$maps_sdk_release = this.mapboxMap.getViewAnnotationOptions$maps_sdk_release(key);
            if (!viewAnnotationOptions$maps_sdk_release.isError()) {
                arrayList.add(TuplesKt.to(view, viewAnnotationOptions$maps_sdk_release.getValue()));
            } else {
                throw new MapboxViewAnnotationException((String) viewAnnotationOptions$maps_sdk_release.getError());
            }
        }
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            ViewAnnotationOptions viewAnnotationOptions = (ViewAnnotationOptions) ((Pair) next).component2();
            if (viewAnnotationOptions != null && (annotatedFeature = viewAnnotationOptions.getAnnotatedFeature()) != null && annotatedFeature.isAnnotatedLayerFeature()) {
                AnnotatedFeature annotatedFeature2 = viewAnnotationOptions.getAnnotatedFeature();
                if (Intrinsics.areEqual(annotatedFeature2 != null ? annotatedFeature2.getAnnotatedLayerFeature() : null, annotatedLayerFeature)) {
                    break;
                }
            }
        }
        Pair<View, ViewAnnotationOptions> pair = (Pair) next;
        return pair == null ? new Pair<>(null, null) : pair;
    }

    private final void positionAnnotationViews(List<DelegatingViewAnnotationPositionDescriptor> updatedPositionDescriptors) {
        ViewAnnotationVisibility viewAnnotationVisibility;
        boolean zNeedToReorderZ$maps_sdk_release = INSTANCE.needToReorderZ$maps_sdk_release(this.currentPositionDescriptors, updatedPositionDescriptors);
        this.currentPositionDescriptors = updatedPositionDescriptors;
        for (DelegatingViewAnnotationPositionDescriptor delegatingViewAnnotationPositionDescriptor : updatedPositionDescriptors) {
            ViewAnnotation viewAnnotation = this.viewAnnotations.get(delegatingViewAnnotationPositionDescriptor.getIdentifier());
            if (viewAnnotation != null) {
                View view = viewAnnotation.getView();
                view.setTranslationX((float) delegatingViewAnnotationPositionDescriptor.getLeftTopCoordinate().getX());
                view.setTranslationY((float) delegatingViewAnnotationPositionDescriptor.getLeftTopCoordinate().getY());
                ViewGroup.LayoutParams viewLayoutParams = viewAnnotation.getViewLayoutParams();
                if (viewAnnotation.getMeasuredWidth() == -1) {
                    viewLayoutParams.width = (int) delegatingViewAnnotationPositionDescriptor.getWidth();
                }
                if (viewAnnotation.getMeasuredHeight() == -1) {
                    viewLayoutParams.height = (int) delegatingViewAnnotationPositionDescriptor.getHeight();
                }
                if (!viewAnnotation.isVisible() && this.viewAnnotationsLayout.indexOfChild(viewAnnotation.getView()) == -1) {
                    viewAnnotation.setPositioned(true);
                    this.viewAnnotationsLayout.addView(viewAnnotation.getView(), viewAnnotation.getViewLayoutParams());
                    if (viewAnnotation.getView().getVisibility() == 0) {
                        viewAnnotationVisibility = ViewAnnotationVisibility.VISIBLE_AND_POSITIONED;
                    } else {
                        viewAnnotationVisibility = ViewAnnotationVisibility.INVISIBLE;
                    }
                    updateVisibilityAndNotifyUpdateListeners(viewAnnotation, viewAnnotationVisibility);
                }
                if (!viewAnnotation.isPositioned()) {
                    viewAnnotation.setPositioned(true);
                    viewAnnotation.getView().setVisibility(0);
                    updateVisibilityAndNotifyUpdateListeners(viewAnnotation, ViewAnnotationVisibility.VISIBLE_AND_POSITIONED);
                    notifyPositionListeners(viewAnnotation, delegatingViewAnnotationPositionDescriptor, true);
                } else {
                    notifyPositionListeners$default(this, viewAnnotation, delegatingViewAnnotationPositionDescriptor, false, 4, null);
                }
                notifyAnchorListeners(viewAnnotation, delegatingViewAnnotationPositionDescriptor);
                notifyAnchorCoordinateListeners(viewAnnotation, delegatingViewAnnotationPositionDescriptor);
                viewAnnotation.setPositionDescriptor(delegatingViewAnnotationPositionDescriptor);
                if (zNeedToReorderZ$maps_sdk_release) {
                    viewAnnotation.getView().bringToFront();
                }
            }
        }
        Map<String, ViewAnnotation> map = this.viewAnnotations;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, ViewAnnotation> entry : map.entrySet()) {
            if (entry.getValue().getView().getVisibility() == 0) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            List<DelegatingViewAnnotationPositionDescriptor> list = this.currentPositionDescriptors;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator<T> it = list.iterator();
                do {
                    if (it.hasNext()) {
                    }
                } while (!Intrinsics.areEqual(((DelegatingViewAnnotationPositionDescriptor) it.next()).getIdentifier(), entry2.getKey()));
            }
            linkedHashMap2.put(entry2.getKey(), entry2.getValue());
        }
        Iterator it2 = linkedHashMap2.entrySet().iterator();
        while (it2.hasNext()) {
            ViewAnnotation viewAnnotation2 = (ViewAnnotation) ((Map.Entry) it2.next()).getValue();
            this.viewAnnotationsLayout.removeView(viewAnnotation2.getView());
            updateVisibilityAndNotifyUpdateListeners(viewAnnotation2, ViewAnnotationVisibility.INVISIBLE);
        }
    }

    static void notifyPositionListeners$default(ViewAnnotationManagerImpl viewAnnotationManagerImpl, ViewAnnotation viewAnnotation, DelegatingViewAnnotationPositionDescriptor delegatingViewAnnotationPositionDescriptor, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        viewAnnotationManagerImpl.notifyPositionListeners(viewAnnotation, delegatingViewAnnotationPositionDescriptor, z);
    }

    private final void notifyPositionListeners(ViewAnnotation viewAnnotation, DelegatingViewAnnotationPositionDescriptor newPositionDescriptor, boolean positionChanged) {
        if (!positionChanged) {
            DelegatingViewAnnotationPositionDescriptor positionDescriptor = viewAnnotation.getPositionDescriptor();
            if (Intrinsics.areEqual(positionDescriptor != null ? positionDescriptor.getLeftTopCoordinate() : null, newPositionDescriptor.getLeftTopCoordinate())) {
                DelegatingViewAnnotationPositionDescriptor positionDescriptor2 = viewAnnotation.getPositionDescriptor();
                if (Intrinsics.areEqual(positionDescriptor2 != null ? Double.valueOf(positionDescriptor2.getWidth()) : null, newPositionDescriptor.getWidth())) {
                    DelegatingViewAnnotationPositionDescriptor positionDescriptor3 = viewAnnotation.getPositionDescriptor();
                    if (Intrinsics.areEqual(positionDescriptor3 != null ? Double.valueOf(positionDescriptor3.getHeight()) : null, newPositionDescriptor.getHeight())) {
                        return;
                    }
                }
            }
        }
        for (OnViewAnnotationUpdatedListener onViewAnnotationUpdatedListener : this.viewUpdatedListenerSet) {
            View view = viewAnnotation.getView();
            ScreenCoordinate leftTopCoordinate = newPositionDescriptor.getLeftTopCoordinate();
            Intrinsics.checkNotNullExpressionValue(leftTopCoordinate, "newPositionDescriptor.leftTopCoordinate");
            onViewAnnotationUpdatedListener.onViewAnnotationPositionUpdated(view, leftTopCoordinate, newPositionDescriptor.getWidth(), newPositionDescriptor.getHeight());
        }
    }

    private final void notifyAnchorCoordinateListeners(ViewAnnotation viewAnnotation, DelegatingViewAnnotationPositionDescriptor newPositionDescriptor) {
        DelegatingViewAnnotationPositionDescriptor positionDescriptor = viewAnnotation.getPositionDescriptor();
        if (Intrinsics.areEqual(positionDescriptor != null ? positionDescriptor.getAnchorCoordinate() : null, newPositionDescriptor.getAnchorCoordinate())) {
            return;
        }
        for (OnViewAnnotationUpdatedListener onViewAnnotationUpdatedListener : this.viewUpdatedListenerSet) {
            View view = viewAnnotation.getView();
            Point anchorCoordinate = newPositionDescriptor.getAnchorCoordinate();
            Intrinsics.checkNotNullExpressionValue(anchorCoordinate, "newPositionDescriptor.anchorCoordinate");
            onViewAnnotationUpdatedListener.onViewAnnotationAnchorCoordinateUpdated(view, anchorCoordinate);
        }
    }

    private final void notifyAnchorListeners(ViewAnnotation viewAnnotation, DelegatingViewAnnotationPositionDescriptor newPositionDescriptor) {
        DelegatingViewAnnotationPositionDescriptor positionDescriptor = viewAnnotation.getPositionDescriptor();
        if (Intrinsics.areEqual(positionDescriptor != null ? positionDescriptor.getAnchorConfig() : null, newPositionDescriptor.getAnchorConfig())) {
            return;
        }
        for (OnViewAnnotationUpdatedListener onViewAnnotationUpdatedListener : this.viewUpdatedListenerSet) {
            View view = viewAnnotation.getView();
            ViewAnnotationAnchorConfig anchorConfig = newPositionDescriptor.getAnchorConfig();
            Intrinsics.checkNotNullExpressionValue(anchorConfig, "newPositionDescriptor.anchorConfig");
            onViewAnnotationUpdatedListener.onViewAnnotationAnchorUpdated(view, anchorConfig);
        }
    }

    private final <V> V getValue(Expected<String, V> expected) {
        if (expected.isError()) {
            throw new MapboxViewAnnotationException(expected.getError());
        }
        return expected.getValue();
    }

    private final void updateVisibilityAndNotifyUpdateListeners(ViewAnnotation annotation, ViewAnnotationVisibility currentVisibility) {
        if (annotation.getVisibility() != currentVisibility) {
            if (annotation.getVisibility() == ViewAnnotationVisibility.INITIAL && currentVisibility == ViewAnnotationVisibility.INVISIBLE) {
                return;
            }
            boolean zIsVisible = annotation.isVisible();
            boolean z = currentVisibility == ViewAnnotationVisibility.VISIBLE_AND_POSITIONED || currentVisibility == ViewAnnotationVisibility.VISIBLE_AND_NOT_POSITIONED;
            annotation.setVisibility(currentVisibility);
            if (this.viewUpdatedListenerSet.isEmpty() || z == zIsVisible) {
                return;
            }
            Iterator<T> it = this.viewUpdatedListenerSet.iterator();
            while (it.hasNext()) {
                ((OnViewAnnotationUpdatedListener) it.next()).onViewAnnotationVisibilityUpdated(annotation.getView(), z);
            }
        }
    }

    private final void remove(ViewAnnotation annotation) {
        this.viewAnnotationsLayout.removeView(annotation.getView());
        updateVisibilityAndNotifyUpdateListeners(annotation, ViewAnnotationVisibility.INVISIBLE);
        View.OnAttachStateChangeListener attachStateListener = annotation.getAttachStateListener();
        if (attachStateListener != null) {
            attachStateListener.onViewDetachedFromWindow(annotation.getView());
        }
        annotation.getView().removeOnAttachStateChangeListener(annotation.getAttachStateListener());
        annotation.setAttachStateListener(null);
        Expected expectedRemoveViewAnnotation$maps_sdk_release = this.mapboxMap.removeViewAnnotation$maps_sdk_release(annotation.getId());
        if (expectedRemoveViewAnnotation$maps_sdk_release.isError()) {
            throw new MapboxViewAnnotationException((String) expectedRemoveViewAnnotation$maps_sdk_release.getError());
        }
        expectedRemoveViewAnnotation$maps_sdk_release.getValue();
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J)\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0001¢\u0006\u0002\b\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/mapbox/maps/viewannotation/ViewAnnotationManagerImpl$Companion;", "", "()V", "EXCEPTION_TEXT_FEATURE_IS_NULL", "", "MAX_ADJUST_BOUNDS_COUNTER", "", "TAG", "USER_FIXED_DIMENSION", "needToReorderZ", "", "currentPositionDescriptors", "", "Lcom/mapbox/maps/DelegatingViewAnnotationPositionDescriptor;", "updatedPositionDescriptors", "needToReorderZ$maps_sdk_release", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean needToReorderZ$maps_sdk_release(List<DelegatingViewAnnotationPositionDescriptor> currentPositionDescriptors, List<DelegatingViewAnnotationPositionDescriptor> updatedPositionDescriptors) {
            Intrinsics.checkNotNullParameter(currentPositionDescriptors, "currentPositionDescriptors");
            Intrinsics.checkNotNullParameter(updatedPositionDescriptors, "updatedPositionDescriptors");
            if (currentPositionDescriptors.size() < updatedPositionDescriptors.size()) {
                return true;
            }
            if (!currentPositionDescriptors.isEmpty() && !updatedPositionDescriptors.isEmpty()) {
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                int i = 0;
                int i2 = 0;
                while (i < currentPositionDescriptors.size() && i2 < updatedPositionDescriptors.size()) {
                    if (Intrinsics.areEqual(currentPositionDescriptors.get(i).getIdentifier(), updatedPositionDescriptors.get(i2).getIdentifier())) {
                        i++;
                        i2++;
                    } else {
                        if (linkedHashSet.contains(updatedPositionDescriptors.get(i2).getIdentifier())) {
                            return true;
                        }
                        while (i < currentPositionDescriptors.size() && !Intrinsics.areEqual(currentPositionDescriptors.get(i).getIdentifier(), updatedPositionDescriptors.get(i2).getIdentifier())) {
                            String identifier = currentPositionDescriptors.get(i).getIdentifier();
                            Intrinsics.checkNotNullExpressionValue(identifier, "currentPositionDescripto…[currentIndex].identifier");
                            linkedHashSet.add(identifier);
                            i++;
                        }
                    }
                }
                while (i2 < updatedPositionDescriptors.size()) {
                    if (linkedHashSet.contains(updatedPositionDescriptors.get(i2).getIdentifier())) {
                        return true;
                    }
                    i2++;
                }
            }
            return false;
        }
    }

    private final CameraOptions invokeCallbackAndReturn(CameraOptions camera, Function1<? super CameraOptions, Unit> callback) {
        CameraOptions cameraOptionsBuild;
        if (callback != null) {
            if (camera == null) {
                cameraOptionsBuild = new CameraOptions.Builder().build();
                Intrinsics.checkNotNullExpressionValue(cameraOptionsBuild, "Builder().apply(block).build()");
            } else {
                cameraOptionsBuild = camera;
            }
            callback.invoke(cameraOptionsBuild);
        }
        return camera;
    }
}
