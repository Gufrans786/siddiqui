package com.mapbox.maps.renderer;

import android.os.Handler;
import androidx.core.os.HandlerCompat;
import ch.qos.logback.core.CoreConstants;
import com.mapbox.maps.MapboxLogger;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0001\u0018\u0000 42\u00020\u0001:\u00014B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010$\u001a\u00020%H\u0002J\u0006\u0010&\u001a\u00020%J\b\u0010'\u001a\u00020%H\u0002J\u0006\u0010(\u001a\u00020%J\u0010\u0010)\u001a\u00020*2\u0006\u0010!\u001a\u00020\"H\u0002J\u0006\u0010+\u001a\u00020%J\u0018\u0010,\u001a\u00020*2\u0006\u0010-\u001a\u00020\u00142\b\b\u0002\u0010.\u001a\u00020*J\u000e\u0010/\u001a\u00020%2\u0006\u0010\u001b\u001a\u00020\u000bJ\u000e\u00100\u001a\u00020%2\u0006\u00101\u001a\u00020\u000bJ\u0010\u00102\u001a\u00020%2\u0006\u0010-\u001a\u00020\u0014H\u0002J\b\u00103\u001a\u00020%H\u0002R\u0014\u0010\u0007\u001a\u00020\u0005X\u0082\u0004¢\u0006\b\n\u0000\u0012\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u000b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u000e\u0010 \u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e¢\u0006\u0004\n\u0002\u0010#¨\u00065"}, d2 = {"Lcom/mapbox/maps/renderer/FpsManager;", "", "handler", "Landroid/os/Handler;", "mapName", "", "(Landroid/os/Handler;Ljava/lang/String;)V", "TAG", "getTAG$annotations", "()V", "choreographerSkips", "", "choreographerTicks", "fpsChangedListener", "Lcom/mapbox/maps/renderer/OnFpsChangedListener;", "getFpsChangedListener$maps_sdk_release", "()Lcom/mapbox/maps/renderer/OnFpsChangedListener;", "setFpsChangedListener$maps_sdk_release", "(Lcom/mapbox/maps/renderer/OnFpsChangedListener;)V", "frameRenderTimeAccumulatedNs", "", "onRenderingPausedRunnable", "Ljava/lang/Runnable;", "preRenderTimeNs", "previousDrawnFrameIndex", "previousFrameTimeNs", "screenRefreshPeriodNs", "screenRefreshRate", "<set-?>", "skippedNow", "getSkippedNow", "()I", "userRefreshRate", "userToScreenRefreshRateRatio", "", "Ljava/lang/Double;", "calculateFpsAndReset", "", "destroy", "onRenderingPaused", "onSurfaceDestroyed", "performPacing", "", "postRender", "preRender", "frameTimeNs", "recorderStarted", "setScreenRefreshRate", "setUserRefreshRate", "refreshRate", "updateFrameStats", "updateUserToScreenRefreshRatio", "Companion", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class FpsManager {
    private static final boolean LOG_STATISTICS = false;
    private static final int SCREEN_METRICS_NOT_DEFINED = -1;
    private static final int USER_DEFINED_REFRESH_RATE_NOT_SET = -1;
    public static final int VSYNC_COUNT_TILL_IDLE = 3;
    private final String TAG;
    private int choreographerSkips;
    private int choreographerTicks;
    private OnFpsChangedListener fpsChangedListener;
    private long frameRenderTimeAccumulatedNs;
    private final Handler handler;
    private final Runnable onRenderingPausedRunnable;
    private long preRenderTimeNs;
    private int previousDrawnFrameIndex;
    private long previousFrameTimeNs;
    private long screenRefreshPeriodNs;
    private int screenRefreshRate;
    private int skippedNow;
    private int userRefreshRate;
    private Double userToScreenRefreshRateRatio;
    private static final Object fpsManagerToken = new Object();
    private static final long ONE_SECOND_NS = (long) Math.pow(10.0d, 9.0d);
    private static final long ONE_MILLISECOND_NS = (long) Math.pow(10.0d, 6.0d);

    private static void getTAG$annotations() {
    }

    public FpsManager(Handler handler, String mapName) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        Intrinsics.checkNotNullParameter(mapName, "mapName");
        this.handler = handler;
        this.userRefreshRate = -1;
        this.screenRefreshRate = -1;
        this.screenRefreshPeriodNs = -1L;
        this.previousFrameTimeNs = -1L;
        this.preRenderTimeNs = -1L;
        this.TAG = "Mbgl-FpsManager" + (!StringsKt.isBlank(mapName) ? "\\" + mapName : "");
        this.onRenderingPausedRunnable = new Runnable() {
            @Override
            public final void run() {
                FpsManager.onRenderingPausedRunnable$lambda$1(this.f$0);
            }
        };
    }

    public final int getSkippedNow() {
        return this.skippedNow;
    }

    public final OnFpsChangedListener getFpsChangedListener() {
        return this.fpsChangedListener;
    }

    public final void setFpsChangedListener$maps_sdk_release(OnFpsChangedListener onFpsChangedListener) {
        this.fpsChangedListener = onFpsChangedListener;
    }

    public final void setScreenRefreshRate(int screenRefreshRate) {
        if (this.screenRefreshRate == screenRefreshRate) {
            return;
        }
        this.screenRefreshRate = screenRefreshRate;
        this.screenRefreshPeriodNs = ONE_SECOND_NS / ((long) screenRefreshRate);
        updateUserToScreenRefreshRatio();
    }

    public final void setUserRefreshRate(int refreshRate) {
        if (this.userRefreshRate != refreshRate) {
            this.userRefreshRate = refreshRate;
            MapboxLogger.logI(this.TAG, "User set max FPS to " + this.userRefreshRate);
            updateUserToScreenRefreshRatio();
        }
    }

    private final void updateUserToScreenRefreshRatio() {
        int i;
        int i2 = this.userRefreshRate;
        if (i2 == -1 || (i = this.screenRefreshRate) == -1) {
            MapboxLogger.logI(this.TAG, "userToScreenRefreshRateRatio is not set (userRefreshRate=" + this.userRefreshRate + ", screenRefreshRate=" + this.screenRefreshRate + CoreConstants.RIGHT_PARENTHESIS_CHAR);
            return;
        }
        this.userToScreenRefreshRateRatio = Double.valueOf(RangesKt.coerceIn(((double) i2) / ((double) i), 0.0d, 1.0d));
        MapboxLogger.logI(this.TAG, "User defined ratio is " + this.userToScreenRefreshRateRatio);
        calculateFpsAndReset();
    }

    public static boolean preRender$default(FpsManager fpsManager, long j, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return fpsManager.preRender(j, z);
    }

    public final boolean preRender(long frameTimeNs, boolean recorderStarted) {
        if (this.userToScreenRefreshRateRatio == null && this.fpsChangedListener == null && !recorderStarted) {
            return true;
        }
        this.handler.removeCallbacksAndMessages(fpsManagerToken);
        updateFrameStats(frameTimeNs);
        Double d = this.userToScreenRefreshRateRatio;
        if (d != null) {
            return performPacing(d.doubleValue());
        }
        return true;
    }

    public static final void onRenderingPausedRunnable$lambda$1(FpsManager this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onRenderingPaused();
    }

    public final void postRender() {
        this.frameRenderTimeAccumulatedNs += System.nanoTime() - this.preRenderTimeNs;
        if (this.choreographerTicks >= this.screenRefreshRate) {
            calculateFpsAndReset();
        } else {
            HandlerCompat.postDelayed(this.handler, this.onRenderingPausedRunnable, fpsManagerToken, ((long) 3) * (this.screenRefreshPeriodNs / ONE_MILLISECOND_NS));
        }
        this.preRenderTimeNs = -1L;
    }

    public final void onSurfaceDestroyed() {
        onRenderingPaused();
    }

    public final void destroy() {
        this.handler.removeCallbacksAndMessages(fpsManagerToken);
        this.fpsChangedListener = null;
    }

    private final void updateFrameStats(long frameTimeNs) {
        this.preRenderTimeNs = System.nanoTime();
        this.skippedNow = 0;
        long j = this.previousFrameTimeNs;
        if (j != -1) {
            long j2 = frameTimeNs - j;
            long j3 = this.screenRefreshPeriodNs;
            long j4 = ONE_MILLISECOND_NS;
            if (j2 > j3 + j4) {
                int i = (int) ((frameTimeNs - j) / (j3 + j4));
                this.skippedNow = i;
                this.choreographerSkips += i;
            }
        }
        this.previousFrameTimeNs = frameTimeNs;
        this.choreographerTicks += this.skippedNow + 1;
    }

    private final void onRenderingPaused() {
        this.handler.removeCallbacksAndMessages(fpsManagerToken);
        calculateFpsAndReset();
        this.previousFrameTimeNs = -1L;
    }

    private final boolean performPacing(double userToScreenRefreshRateRatio) {
        int i = (int) (((double) this.choreographerTicks) * userToScreenRefreshRateRatio);
        if (i > this.previousDrawnFrameIndex) {
            this.previousDrawnFrameIndex = i;
            return true;
        }
        this.choreographerSkips++;
        return false;
    }

    private final void calculateFpsAndReset() {
        int i = this.choreographerTicks;
        if (i == 0) {
            return;
        }
        OnFpsChangedListener onFpsChangedListener = this.fpsChangedListener;
        if (onFpsChangedListener != null) {
            double d = (1.0d - (((double) this.choreographerSkips) / ((double) i))) * ((double) this.screenRefreshRate);
            onFpsChangedListener.onFpsChanged(d);
            int i2 = this.choreographerTicks;
            int i3 = this.choreographerSkips;
            if (i2 == i3) {
                MapboxLogger.logI(this.TAG, "VSYNC based FPS is " + d + ", missed " + this.choreographerSkips + " out of " + this.choreographerTicks + " VSYNC pulses");
            } else {
                double d2 = this.frameRenderTimeAccumulatedNs / ((double) (i2 - i3));
                String str = this.TAG;
                StringBuilder sbAppend = new StringBuilder("VSYNC based FPS is ").append(d).append(", average core rendering time is ").append(d2 / ONE_MILLISECOND_NS).append(" ms (or ");
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String str2 = String.format("%.2f", Arrays.copyOf(new Object[]{Double.valueOf((this.screenRefreshPeriodNs / d2) * ((double) this.screenRefreshRate))}, 1));
                Intrinsics.checkNotNullExpressionValue(str2, "format(format, *args)");
                MapboxLogger.logI(str, sbAppend.append(str2).append(" FPS), missed ").append(this.choreographerSkips).append(" out of ").append(this.choreographerTicks).append(" VSYNC pulses").toString());
            }
        }
        this.previousDrawnFrameIndex = 0;
        this.frameRenderTimeAccumulatedNs = 0L;
        this.choreographerTicks = 0;
        this.choreographerSkips = 0;
    }
}
