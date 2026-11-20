package com.rnmapbox.rnmbx.events;

import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.caverock.androidsvg.SVGParser;
import com.mapbox.android.gestures.MoveGestureDetector;
import com.mapbox.android.gestures.RotateGestureDetector;
import com.mapbox.android.gestures.ShoveGestureDetector;
import com.mapbox.android.gestures.StandardScaleGestureDetector;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.plugin.animation.CameraAnimationsLifecycleListener;
import com.mapbox.maps.plugin.animation.CameraAnimationsPlugin;
import com.mapbox.maps.plugin.animation.CameraAnimatorType;
import com.mapbox.maps.plugin.animation.MapAnimationOwnerRegistry;
import com.mapbox.maps.plugin.gestures.GesturesPlugin;
import com.mapbox.maps.plugin.gestures.OnMoveListener;
import com.mapbox.maps.plugin.gestures.OnRotateListener;
import com.mapbox.maps.plugin.gestures.OnScaleListener;
import com.mapbox.maps.plugin.gestures.OnShoveListener;
import com.rnmapbox.rnmbx.components.AbstractMapFeature;
import com.rnmapbox.rnmbx.components.RemovalReason;
import com.rnmapbox.rnmbx.components.mapview.OnMapReadyCallback;
import com.rnmapbox.rnmbx.components.mapview.RNMBXMapView;
import com.transistorsoft.tsbackgroundfetch.BackgroundFetchConfig;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 K2\u00020\u0001:\u0001KB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010,\u001a\u00020\u000fH\u0002J\b\u0010-\u001a\u00020\u000fH\u0002J\u0010\u00100\u001a\u00020!2\u0006\u00101\u001a\u00020!H\u0002J\u0010\u00102\u001a\u0002032\u0006\u00104\u001a\u00020!H\u0002J\u0018\u00105\u001a\u00020$2\u0006\u00106\u001a\u00020\u000f2\u0006\u00107\u001a\u00020$H\u0002J\b\u00108\u001a\u000203H\u0002J\b\u00109\u001a\u000203H\u0002J\b\u0010:\u001a\u000203H\u0002J\b\u0010;\u001a\u000203H\u0002J\u0014\u0010<\u001a\u0002032\n\b\u0002\u0010=\u001a\u0004\u0018\u00010!H\u0002J\b\u0010>\u001a\u000203H\u0002J\u0010\u0010?\u001a\u0002032\u0006\u0010@\u001a\u00020\u000fH\u0002J\b\u0010A\u001a\u000203H\u0002J\u0010\u0010B\u001a\u0002032\u0006\u0010C\u001a\u00020DH\u0016J\u0018\u0010E\u001a\u00020\t2\u0006\u0010C\u001a\u00020D2\u0006\u0010F\u001a\u00020GH\u0016J\b\u0010H\u001a\u000203H\u0002J\u0010\u0010I\u001a\u0002032\u0006\u00101\u001a\u00020!H\u0002J\u0010\u0010J\u001a\u0002032\u0006\u00101\u001a\u00020!H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0016\u0010\u0011\"\u0004\b\u0017\u0010\u0013R\u001a\u0010\u0018\u001a\u00020\tX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u000b\"\u0004\b\u001a\u0010\rR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\"\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0014R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010$X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010'\u001a\u00020\u000f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b(\u0010)R\u0016\u0010*\u001a\u0004\u0018\u00010\u000f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b+\u0010\u0011R\u0014\u0010.\u001a\u00020\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b/\u0010\u000b¨\u0006L"}, d2 = {"Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserver;", "Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;", "mContext", "Landroid/content/Context;", "mManager", "Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager;", "<init>", "(Landroid/content/Context;Lcom/rnmapbox/rnmbx/events/RNMBXCameraGestureObserverManager;)V", "hasOnMapSteady", "", "getHasOnMapSteady", "()Z", "setHasOnMapSteady", "(Z)V", "quietPeriodMs", "", "getQuietPeriodMs", "()Ljava/lang/Double;", "setQuietPeriodMs", "(Ljava/lang/Double;)V", "Ljava/lang/Double;", "maxIntervalMs", "getMaxIntervalMs", "setMaxIntervalMs", "requiresStyleLoad", "getRequiresStyleLoad", "setRequiresStyleLoad", "handler", "Landroid/os/Handler;", "activeAnimations", "", "isGestureActive", "lastGestureType", "", "lastTransitionEndedAtMs", "quietRunnable", "Ljava/lang/Runnable;", "timeoutRunnable", "emittedForCurrentActivity", "quietMs", "getQuietMs", "()D", "maxMs", "getMaxMs", "nowMs", "timestamp", "canEmitSteady", "getCanEmitSteady", "normalizeGestureType", SVGParser.XML_STYLESHEET_ATTR_TYPE, "debugLog", "", "message", "scheduleTimer", BackgroundFetchConfig.FIELD_DELAY, "task", "cancelQuietTimer", "cancelTimeoutTimer", "scheduleQuietCheck", "scheduleTimeout", "markActivity", "gestureType", "maybeEmitSteady", "emitSteady", "idleDurationMs", "emitTimeout", "addToMap", "mapView", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "removeFromMap", "reason", "Lcom/rnmapbox/rnmbx/components/RemovalReason;", "handleAnimatorEnd", "handleGestureBegin", "handleGestureEnd", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXCameraGestureObserver extends AbstractMapFeature {
    public static final String LOG_TAG = "RNMBXCameraGestureObserver";
    private int activeAnimations;
    private boolean emittedForCurrentActivity;
    private final Handler handler;
    private boolean hasOnMapSteady;
    private boolean isGestureActive;
    private String lastGestureType;
    private Double lastTransitionEndedAtMs;
    private final Context mContext;
    private final RNMBXCameraGestureObserverManager mManager;
    private Double maxIntervalMs;
    private Double quietPeriodMs;
    private Runnable quietRunnable;
    private boolean requiresStyleLoad;
    private Runnable timeoutRunnable;

    public RNMBXCameraGestureObserver(Context mContext, RNMBXCameraGestureObserverManager mManager) {
        super(mContext);
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        Intrinsics.checkNotNullParameter(mManager, "mManager");
        this.mContext = mContext;
        this.mManager = mManager;
        this.handler = new Handler(Looper.getMainLooper());
    }

    public final boolean getHasOnMapSteady() {
        return this.hasOnMapSteady;
    }

    public final void setHasOnMapSteady(boolean z) {
        this.hasOnMapSteady = z;
    }

    public final Double getQuietPeriodMs() {
        return this.quietPeriodMs;
    }

    public final void setQuietPeriodMs(Double d) {
        this.quietPeriodMs = d;
    }

    public final Double getMaxIntervalMs() {
        return this.maxIntervalMs;
    }

    public final void setMaxIntervalMs(Double d) {
        this.maxIntervalMs = d;
    }

    @Override
    public boolean getRequiresStyleLoad() {
        return this.requiresStyleLoad;
    }

    @Override
    public void setRequiresStyleLoad(boolean z) {
        this.requiresStyleLoad = z;
    }

    private final double getQuietMs() {
        Double d = this.quietPeriodMs;
        if (d != null) {
            return d.doubleValue();
        }
        return 200.0d;
    }

    private final Double getMaxIntervalMs() {
        return this.maxIntervalMs;
    }

    private final double nowMs() {
        return System.currentTimeMillis();
    }

    private final double timestamp() {
        return nowMs();
    }

    private final boolean getCanEmitSteady() {
        return (this.activeAnimations != 0 || this.isGestureActive || this.lastTransitionEndedAtMs == null) ? false : true;
    }

    private final String normalizeGestureType(String type) {
        switch (type) {
            case "rotate":
                return "rotate";
            case "move":
                return "pan";
            case "scale":
                return "pinch";
            case "shove":
                return "pitch";
            default:
                return type;
        }
    }

    public final void debugLog(String message) {
        int i = this.activeAnimations;
        boolean z = this.isGestureActive;
        Object obj = this.lastTransitionEndedAtMs;
        if (obj == null) {
            obj = -1;
        }
        Log.d("RNMBXCameraGestureObserver", message + "; activeAnimations=" + i + " isGestureActive=" + z + " lastTransitionEnd=" + obj);
    }

    private final Runnable scheduleTimer(double delay, Runnable task) {
        this.handler.removeCallbacks(task);
        if (delay > 0.0d) {
            this.handler.postDelayed(task, (long) delay);
        }
        return task;
    }

    private final void cancelQuietTimer() {
        Runnable runnable = this.quietRunnable;
        if (runnable != null) {
            this.handler.removeCallbacks(runnable);
        }
        this.quietRunnable = null;
    }

    private final void cancelTimeoutTimer() {
        Runnable runnable = this.timeoutRunnable;
        if (runnable != null) {
            this.handler.removeCallbacks(runnable);
        }
        this.timeoutRunnable = null;
    }

    private final void scheduleQuietCheck() {
        double quietMs = getQuietMs();
        if (quietMs <= 0.0d) {
            cancelQuietTimer();
            maybeEmitSteady();
        } else {
            debugLog("scheduleQuietCheck in " + ((int) quietMs) + "ms");
            this.quietRunnable = scheduleTimer(quietMs, new Runnable() {
                @Override
                public final void run() {
                    RNMBXCameraGestureObserver.scheduleQuietCheck$lambda$2(this.f$0);
                }
            });
        }
    }

    public static final void scheduleQuietCheck$lambda$2(RNMBXCameraGestureObserver rNMBXCameraGestureObserver) {
        rNMBXCameraGestureObserver.debugLog("quiet timer fired");
        rNMBXCameraGestureObserver.maybeEmitSteady();
    }

    private final void scheduleTimeout() {
        Double maxIntervalMs = getMaxIntervalMs();
        if (maxIntervalMs != null) {
            this.timeoutRunnable = scheduleTimer(maxIntervalMs.doubleValue(), new Runnable() {
                @Override
                public final void run() {
                    this.f$0.emitTimeout();
                }
            });
        }
    }

    static void markActivity$default(RNMBXCameraGestureObserver rNMBXCameraGestureObserver, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        rNMBXCameraGestureObserver.markActivity(str);
    }

    private final void markActivity(String gestureType) {
        if (gestureType != null) {
            this.lastGestureType = gestureType;
        }
        this.emittedForCurrentActivity = false;
        scheduleQuietCheck();
        scheduleTimeout();
    }

    private final void maybeEmitSteady() {
        Double d;
        if (getCanEmitSteady() && (d = this.lastTransitionEndedAtMs) != null) {
            double dNowMs = nowMs() - d.doubleValue();
            if (dNowMs < getQuietMs()) {
                return;
            }
            emitSteady(dNowMs);
        }
    }

    private final void emitSteady(double idleDurationMs) {
        if (this.emittedForCurrentActivity) {
            return;
        }
        cancelQuietTimer();
        cancelTimeoutTimer();
        String str = this.lastGestureType;
        debugLog("EMIT steady idleDurationMs=" + idleDurationMs + " lastGestureType=" + str);
        this.mManager.handleEvent(MapSteadyEvent.INSTANCE.make(this, "steady", Double.valueOf(idleDurationMs), str));
        this.lastGestureType = null;
        this.emittedForCurrentActivity = true;
    }

    public final void emitTimeout() {
        cancelQuietTimer();
        debugLog("EMIT timeout lastGestureType=" + this.lastGestureType);
        this.mManager.handleEvent(MapSteadyEvent.INSTANCE.make(this, "timeout", null, this.lastGestureType));
        scheduleTimeout();
    }

    @Override
    public void addToMap(RNMBXMapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        super.addToMap(mapView);
        if (this.hasOnMapSteady) {
            mapView.getMapAsync(new OnMapReadyCallback() {
                @Override
                public final void onMapReady(MapboxMap mapboxMap) {
                    RNMBXCameraGestureObserver.addToMap$lambda$6(this.f$0, mapboxMap);
                }
            });
        }
    }

    public static final void addToMap$lambda$6(final RNMBXCameraGestureObserver rNMBXCameraGestureObserver, MapboxMap mapboxMap) {
        Intrinsics.checkNotNullParameter(mapboxMap, "mapboxMap");
        mapboxMap.cameraAnimationsPlugin(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXCameraGestureObserver.addToMap$lambda$6$lambda$4(this.f$0, (CameraAnimationsPlugin) obj);
            }
        });
        mapboxMap.gesturesPlugin(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RNMBXCameraGestureObserver.addToMap$lambda$6$lambda$5(this.f$0, (GesturesPlugin) obj);
            }
        });
        rNMBXCameraGestureObserver.debugLog("addToMap and subscribed to gestures");
    }

    public static final Unit addToMap$lambda$6$lambda$4(final RNMBXCameraGestureObserver rNMBXCameraGestureObserver, CameraAnimationsPlugin cameraAnimationsPlugin) {
        Intrinsics.checkNotNullParameter(cameraAnimationsPlugin, "$this$cameraAnimationsPlugin");
        cameraAnimationsPlugin.addCameraAnimationsLifecycleListener(new CameraAnimationsLifecycleListener() {
            @Override
            public void onAnimatorInterrupting(CameraAnimatorType type, ValueAnimator runningAnimator, String runningAnimatorOwner, ValueAnimator newAnimator, String newAnimatorOwner) {
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(runningAnimator, "runningAnimator");
                Intrinsics.checkNotNullParameter(newAnimator, "newAnimator");
            }

            @Override
            public void onAnimatorStarting(CameraAnimatorType type, ValueAnimator animator, String owner) {
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(animator, "animator");
                if (Intrinsics.areEqual(owner, MapAnimationOwnerRegistry.GESTURES)) {
                    this.this$0.activeAnimations++;
                    this.this$0.lastTransitionEndedAtMs = null;
                    RNMBXCameraGestureObserver.markActivity$default(this.this$0, null, 1, null);
                    this.this$0.debugLog("camera animator started");
                }
            }

            @Override
            public void onAnimatorEnding(CameraAnimatorType type, ValueAnimator animator, String owner) {
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(animator, "animator");
                if (Intrinsics.areEqual(owner, MapAnimationOwnerRegistry.GESTURES)) {
                    this.this$0.handleAnimatorEnd();
                }
            }

            @Override
            public void onAnimatorCancelling(CameraAnimatorType type, ValueAnimator animator, String owner) {
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(animator, "animator");
                if (Intrinsics.areEqual(owner, MapAnimationOwnerRegistry.GESTURES)) {
                    this.this$0.handleAnimatorEnd();
                }
            }
        });
        return Unit.INSTANCE;
    }

    public static final Unit addToMap$lambda$6$lambda$5(final RNMBXCameraGestureObserver rNMBXCameraGestureObserver, GesturesPlugin gesturesPlugin) {
        Intrinsics.checkNotNullParameter(gesturesPlugin, "$this$gesturesPlugin");
        gesturesPlugin.addOnMoveListener(new OnMoveListener() {
            @Override
            public boolean onMove(MoveGestureDetector detector) {
                Intrinsics.checkNotNullParameter(detector, "detector");
                return false;
            }

            @Override
            public void onMoveBegin(MoveGestureDetector detector) {
                Intrinsics.checkNotNullParameter(detector, "detector");
                this.this$0.handleGestureBegin("move");
            }

            @Override
            public void onMoveEnd(MoveGestureDetector detector) {
                Intrinsics.checkNotNullParameter(detector, "detector");
                this.this$0.handleGestureEnd("move");
            }
        });
        gesturesPlugin.addOnScaleListener(new OnScaleListener() {
            @Override
            public void onScale(StandardScaleGestureDetector detector) {
                Intrinsics.checkNotNullParameter(detector, "detector");
            }

            @Override
            public void onScaleBegin(StandardScaleGestureDetector detector) {
                Intrinsics.checkNotNullParameter(detector, "detector");
                this.this$0.handleGestureBegin("scale");
            }

            @Override
            public void onScaleEnd(StandardScaleGestureDetector detector) {
                Intrinsics.checkNotNullParameter(detector, "detector");
                this.this$0.handleGestureEnd("scale");
            }
        });
        gesturesPlugin.addOnRotateListener(new OnRotateListener() {
            @Override
            public void onRotate(RotateGestureDetector detector) {
                Intrinsics.checkNotNullParameter(detector, "detector");
            }

            @Override
            public void onRotateBegin(RotateGestureDetector detector) {
                Intrinsics.checkNotNullParameter(detector, "detector");
                this.this$0.handleGestureBegin("rotate");
            }

            @Override
            public void onRotateEnd(RotateGestureDetector detector) {
                Intrinsics.checkNotNullParameter(detector, "detector");
                this.this$0.handleGestureEnd("rotate");
            }
        });
        gesturesPlugin.addOnShoveListener(new OnShoveListener() {
            @Override
            public void onShove(ShoveGestureDetector detector) {
                Intrinsics.checkNotNullParameter(detector, "detector");
            }

            @Override
            public void onShoveBegin(ShoveGestureDetector detector) {
                Intrinsics.checkNotNullParameter(detector, "detector");
                this.this$0.handleGestureBegin("shove");
            }

            @Override
            public void onShoveEnd(ShoveGestureDetector detector) {
                Intrinsics.checkNotNullParameter(detector, "detector");
                this.this$0.handleGestureEnd("shove");
            }
        });
        return Unit.INSTANCE;
    }

    @Override
    public boolean removeFromMap(RNMBXMapView mapView, RemovalReason reason) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(reason, "reason");
        debugLog("removeFromMap and unsubscribed from gestures");
        cancelQuietTimer();
        cancelTimeoutTimer();
        return super.removeFromMap(mapView, reason);
    }

    public final void handleAnimatorEnd() {
        int i = this.activeAnimations - 1;
        this.activeAnimations = i;
        if (i < 0) {
            Log.w("RNMBXCameraGestureObserver", "WARNING: activeAnimations went negative, resetting to 0");
            this.activeAnimations = 0;
        }
        this.lastTransitionEndedAtMs = Double.valueOf(nowMs());
        scheduleQuietCheck();
        debugLog("camera animator ended");
    }

    public final void handleGestureBegin(String type) {
        this.isGestureActive = true;
        String strNormalizeGestureType = normalizeGestureType(type);
        this.lastGestureType = strNormalizeGestureType;
        this.lastTransitionEndedAtMs = null;
        markActivity(strNormalizeGestureType);
        debugLog("gesture didBegin type=" + this.lastGestureType);
    }

    public final void handleGestureEnd(String type) {
        this.lastGestureType = normalizeGestureType(type);
        this.isGestureActive = false;
        this.lastTransitionEndedAtMs = Double.valueOf(nowMs());
        markActivity(this.lastGestureType);
        debugLog("gesture didEnd type=" + this.lastGestureType + " -> isGestureActive=" + this.isGestureActive);
    }
}
