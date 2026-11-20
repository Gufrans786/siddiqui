package com.rnmapbox.rnmbx.components.camera;

import android.animation.Animator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mapbox.maps.CameraOptions;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.plugin.animation.MapAnimationOptions;
import com.rnmapbox.rnmbx.v11compat.mapboxmap.MapboxMapKt;
import java.lang.ref.WeakReference;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0001 B1\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0011H\u0016J\b\u0010\u0019\u001a\u00020\u0011H\u0016J\b\u0010\u001a\u001a\u00020\u0011H\u0016J\n\u0010\u001b\u001a\u0004\u0018\u00010\u0002H\u0016J\u001b\u0010\u001b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0096\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00040\u0014X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/rnmapbox/rnmbx/components/camera/CameraUpdateItem;", "Ljava/util/concurrent/RunnableFuture;", "Ljava/lang/Void;", "map", "Lcom/mapbox/maps/MapboxMap;", "mCameraUpdate", "Lcom/mapbox/maps/CameraOptions;", TypedValues.TransitionType.S_DURATION, "", "mCallback", "Landroid/animation/Animator$AnimatorListener;", "mCameraMode", "<init>", "(Lcom/mapbox/maps/MapboxMap;Lcom/mapbox/maps/CameraOptions;ILandroid/animation/Animator$AnimatorListener;I)V", "getDuration", "()I", "isCameraActionFinished", "", "isCameraActionCancelled", "mMap", "Ljava/lang/ref/WeakReference;", "run", "", "cancel", "mayInterruptIfRunning", "isCancelled", "isDone", "get", "timeout", "", "unit", "Ljava/util/concurrent/TimeUnit;", "CallbackMode", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CameraUpdateItem implements RunnableFuture<Void> {
    private final int duration;
    private boolean isCameraActionCancelled;
    private boolean isCameraActionFinished;
    private final Animator.AnimatorListener mCallback;
    private final int mCameraMode;
    private final CameraOptions mCameraUpdate;
    private final WeakReference<MapboxMap> mMap;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/rnmapbox/rnmbx/components/camera/CameraUpdateItem$CallbackMode;", "", "<init>", "(Ljava/lang/String;I)V", "START", "END", "CANCEL", "REPEAT", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum CallbackMode {
        START,
        END,
        CANCEL,
        REPEAT;

        private static final EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        public static EnumEntries<CallbackMode> getEntries() {
            return $ENTRIES;
        }
    }

    @Override
    public boolean cancel(boolean mayInterruptIfRunning) {
        return false;
    }

    @Override
    public Void get() throws ExecutionException, InterruptedException {
        return null;
    }

    @Override
    public Void get(long timeout, TimeUnit unit) throws ExecutionException, InterruptedException, TimeoutException {
        Intrinsics.checkNotNullParameter(unit, "unit");
        return null;
    }

    public CameraUpdateItem(MapboxMap map, CameraOptions mCameraUpdate, int i, Animator.AnimatorListener animatorListener, int i2) {
        Intrinsics.checkNotNullParameter(map, "map");
        Intrinsics.checkNotNullParameter(mCameraUpdate, "mCameraUpdate");
        this.mCameraUpdate = mCameraUpdate;
        this.duration = i;
        this.mCallback = animatorListener;
        this.mCameraMode = i2;
        this.mMap = new WeakReference<>(map);
    }

    public final int getDuration() {
        return this.duration;
    }

    @Override
    public void run() {
        int i;
        Animator.AnimatorListener animatorListener = new Animator.AnimatorListener() {
            @Override
            public void onAnimationStart(Animator animator) {
                Intrinsics.checkNotNullParameter(animator, "animator");
                this.this$0.isCameraActionCancelled = false;
                this.this$0.isCameraActionFinished = false;
                Animator.AnimatorListener animatorListener2 = this.this$0.mCallback;
                if (animatorListener2 != null) {
                    animatorListener2.onAnimationStart(animator);
                }
            }

            @Override
            public void onAnimationEnd(Animator animator) {
                Intrinsics.checkNotNullParameter(animator, "animator");
                this.this$0.isCameraActionCancelled = false;
                this.this$0.isCameraActionFinished = true;
                Animator.AnimatorListener animatorListener2 = this.this$0.mCallback;
                if (animatorListener2 != null) {
                    animatorListener2.onAnimationEnd(animator);
                }
            }

            @Override
            public void onAnimationCancel(Animator animator) {
                Intrinsics.checkNotNullParameter(animator, "animator");
                this.this$0.isCameraActionCancelled = true;
                this.this$0.isCameraActionFinished = false;
                Animator.AnimatorListener animatorListener2 = this.this$0.mCallback;
                if (animatorListener2 != null) {
                    animatorListener2.onAnimationCancel(animator);
                }
            }

            @Override
            public void onAnimationRepeat(Animator animator) {
                Intrinsics.checkNotNullParameter(animator, "animator");
                this.this$0.isCameraActionCancelled = false;
                this.this$0.isCameraActionFinished = false;
                Animator.AnimatorListener animatorListener2 = this.this$0.mCallback;
                if (animatorListener2 != null) {
                    animatorListener2.onAnimationRepeat(animator);
                }
            }
        };
        MapboxMap mapboxMap = this.mMap.get();
        if (mapboxMap == null) {
            this.isCameraActionCancelled = true;
            return;
        }
        MapAnimationOptions.Builder builder = new MapAnimationOptions.Builder();
        if (this.duration == 0 || (i = this.mCameraMode) == 4 || i == 5) {
            CameraOptions cameraOptions = this.mCameraUpdate;
            builder.duration(0L);
            Unit unit = Unit.INSTANCE;
            MapboxMapKt.flyToV11(mapboxMap, cameraOptions, builder, animatorListener);
        }
        int i2 = this.duration;
        if (i2 > 0) {
            builder.duration(i2);
        }
        int i3 = this.mCameraMode;
        if (i3 == 1) {
            MapboxMapKt.flyToV11(mapboxMap, this.mCameraUpdate, builder, animatorListener);
            return;
        }
        if (i3 == 3) {
            CameraOptions cameraOptions2 = this.mCameraUpdate;
            builder.interpolator(new LinearInterpolator());
            Unit unit2 = Unit.INSTANCE;
            MapboxMapKt.easeToV11(mapboxMap, cameraOptions2, builder, animatorListener);
            return;
        }
        if (i3 == 2) {
            CameraOptions cameraOptions3 = this.mCameraUpdate;
            builder.interpolator(new AccelerateDecelerateInterpolator());
            Unit unit3 = Unit.INSTANCE;
            MapboxMapKt.easeToV11(mapboxMap, cameraOptions3, builder, animatorListener);
        }
    }

    @Override
    public boolean isCancelled() {
        return this.isCameraActionCancelled;
    }

    @Override
    public boolean isDone() {
        return this.isCameraActionFinished;
    }
}
