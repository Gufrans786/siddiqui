package com.mapbox.maps.plugin.viewport;

import android.animation.ValueAnimator;
import android.os.Handler;
import android.os.Looper;
import com.mapbox.common.Cancelable;
import com.mapbox.maps.plugin.animation.CameraAnimationsLifecycleListener;
import com.mapbox.maps.plugin.animation.CameraAnimationsPlugin;
import com.mapbox.maps.plugin.animation.CameraAnimationsUtils;
import com.mapbox.maps.plugin.animation.CameraAnimatorType;
import com.mapbox.maps.plugin.animation.MapAnimationOwnerRegistry;
import com.mapbox.maps.plugin.delegates.MapDelegateProvider;
import com.mapbox.maps.plugin.viewport.data.DefaultViewportTransitionOptions;
import com.mapbox.maps.plugin.viewport.data.FollowPuckViewportStateOptions;
import com.mapbox.maps.plugin.viewport.data.OverviewViewportStateOptions;
import com.mapbox.maps.plugin.viewport.data.ViewportOptions;
import com.mapbox.maps.plugin.viewport.data.ViewportStatusChangeReason;
import com.mapbox.maps.plugin.viewport.state.FollowPuckViewportState;
import com.mapbox.maps.plugin.viewport.state.FollowPuckViewportStateImpl;
import com.mapbox.maps.plugin.viewport.state.OverviewViewportState;
import com.mapbox.maps.plugin.viewport.state.OverviewViewportStateImpl;
import com.mapbox.maps.plugin.viewport.state.ViewportState;
import com.mapbox.maps.plugin.viewport.transition.DefaultViewportTransition;
import com.mapbox.maps.plugin.viewport.transition.DefaultViewportTransitionImpl;
import com.mapbox.maps.plugin.viewport.transition.ImmediateViewportTransition;
import com.mapbox.maps.plugin.viewport.transition.ViewportTransition;
import com.mapbox.maps.plugin.viewport.util.ViewportTelemetryEvents;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

@Metadata(d1 = {"\u0000\u008f\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0006\b\u0001\u0018\u0000 @2\u00020\u0001:\u0001@B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u001cH\u0016J\b\u0010%\u001a\u00020#H\u0016J\b\u0010&\u001a\u00020#H\u0016J\u0010\u0010'\u001a\u00020(2\u0006\u0010\u0014\u001a\u00020)H\u0016J\u0010\u0010*\u001a\u00020+2\u0006\u0010\u0014\u001a\u00020,H\u0016J\b\u0010-\u001a\u00020\rH\u0016J\u0010\u0010.\u001a\u00020/2\u0006\u0010\u0014\u001a\u000200H\u0016J \u00101\u001a\u00020#2\u0006\u00102\u001a\u00020\u001e2\u0006\u00103\u001a\u00020\u001e2\u0006\u00104\u001a\u000205H\u0002J\u0010\u00106\u001a\u00020#2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u00107\u001a\u00020#2\u0006\u0010$\u001a\u00020\u001cH\u0016J$\u00108\u001a\u00020#2\u0006\u00109\u001a\u00020:2\b\u0010;\u001a\u0004\u0018\u00010\r2\b\u0010<\u001a\u0004\u0018\u00010=H\u0016J\u0018\u0010>\u001a\u00020#2\u0006\u0010?\u001a\u00020\u001e2\u0006\u00104\u001a\u000205H\u0002R\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\u00020\rX\u0096.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u00020\u0015X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u001e@RX\u0096\u000e¢\u0006\b\n\u0000\u001a\u0004\b \u0010!¨\u0006A"}, d2 = {"Lcom/mapbox/maps/plugin/viewport/ViewportPluginImpl;", "Lcom/mapbox/maps/plugin/viewport/ViewportPlugin;", "handler", "Landroid/os/Handler;", "(Landroid/os/Handler;)V", "cameraAnimationsLifecycleListener", "com/mapbox/maps/plugin/viewport/ViewportPluginImpl$cameraAnimationsLifecycleListener$1", "Lcom/mapbox/maps/plugin/viewport/ViewportPluginImpl$cameraAnimationsLifecycleListener$1;", "cameraPlugin", "Lcom/mapbox/maps/plugin/animation/CameraAnimationsPlugin;", "currentCancelable", "Lcom/mapbox/common/Cancelable;", "defaultTransition", "Lcom/mapbox/maps/plugin/viewport/transition/ViewportTransition;", "getDefaultTransition", "()Lcom/mapbox/maps/plugin/viewport/transition/ViewportTransition;", "setDefaultTransition", "(Lcom/mapbox/maps/plugin/viewport/transition/ViewportTransition;)V", "delegateProvider", "Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;", "options", "Lcom/mapbox/maps/plugin/viewport/data/ViewportOptions;", "getOptions", "()Lcom/mapbox/maps/plugin/viewport/data/ViewportOptions;", "setOptions", "(Lcom/mapbox/maps/plugin/viewport/data/ViewportOptions;)V", "registeredStatusObservers", "Ljava/util/concurrent/CopyOnWriteArraySet;", "Lcom/mapbox/maps/plugin/viewport/ViewportStatusObserver;", "<set-?>", "Lcom/mapbox/maps/plugin/viewport/ViewportStatus;", "status", "getStatus", "()Lcom/mapbox/maps/plugin/viewport/ViewportStatus;", "addStatusObserver", "", "viewportStatusObserver", "cleanup", "idle", "makeDefaultViewportTransition", "Lcom/mapbox/maps/plugin/viewport/transition/DefaultViewportTransition;", "Lcom/mapbox/maps/plugin/viewport/data/DefaultViewportTransitionOptions;", "makeFollowPuckViewportState", "Lcom/mapbox/maps/plugin/viewport/state/FollowPuckViewportState;", "Lcom/mapbox/maps/plugin/viewport/data/FollowPuckViewportStateOptions;", "makeImmediateViewportTransition", "makeOverviewViewportState", "Lcom/mapbox/maps/plugin/viewport/state/OverviewViewportState;", "Lcom/mapbox/maps/plugin/viewport/data/OverviewViewportStateOptions;", "notifyStatusChanged", "previousStatus", "currentStatus", "reason", "Lcom/mapbox/maps/plugin/viewport/data/ViewportStatusChangeReason;", "onDelegateProvider", "removeStatusObserver", "transitionTo", "targetState", "Lcom/mapbox/maps/plugin/viewport/state/ViewportState;", "transition", "completionListener", "Lcom/mapbox/maps/plugin/viewport/CompletionListener;", "updateStatus", "targetStatus", "Companion", "plugin-viewport_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ViewportPluginImpl implements ViewportPlugin {
    public static final String VIEWPORT_CAMERA_OWNER = "VIEWPORT_CAMERA_OWNER";
    private final ViewportPluginImpl$cameraAnimationsLifecycleListener$1 cameraAnimationsLifecycleListener;
    private CameraAnimationsPlugin cameraPlugin;
    private Cancelable currentCancelable;
    public ViewportTransition defaultTransition;
    private MapDelegateProvider delegateProvider;
    private final Handler handler;
    private ViewportOptions options;
    private final CopyOnWriteArraySet<ViewportStatusObserver> registeredStatusObservers;
    private ViewportStatus status;

    public ViewportPluginImpl() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public ViewportPluginImpl(Handler handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.handler = handler;
        this.registeredStatusObservers = new CopyOnWriteArraySet<>();
        this.cameraAnimationsLifecycleListener = new CameraAnimationsLifecycleListener() {
            @Override
            public void onAnimatorCancelling(CameraAnimatorType type, ValueAnimator animator, String owner) {
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(animator, "animator");
            }

            @Override
            public void onAnimatorEnding(CameraAnimatorType type, ValueAnimator animator, String owner) {
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(animator, "animator");
            }

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
                if (!Intrinsics.areEqual(owner, ViewportPluginImpl.VIEWPORT_CAMERA_OWNER) && Intrinsics.areEqual(owner, MapAnimationOwnerRegistry.GESTURES) && this.this$0.getOptions().getTransitionsToIdleUponUserInteraction()) {
                    Cancelable cancelable = this.this$0.currentCancelable;
                    if (cancelable != null) {
                        cancelable.cancel();
                    }
                    this.this$0.currentCancelable = null;
                    this.this$0.updateStatus(ViewportStatus.Idle.INSTANCE, ViewportStatusChangeReason.USER_INTERACTION);
                }
            }
        };
        this.status = ViewportStatus.Idle.INSTANCE;
        this.options = new ViewportOptions.Builder().build();
    }

    @Override
    public void initialize() {
        ViewportPlugin.DefaultImpls.initialize(this);
    }

    public ViewportPluginImpl(Handler handler, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new Handler(Looper.getMainLooper()) : handler);
    }

    @Override
    public ViewportStatus getStatus() {
        return this.status;
    }

    public final void updateStatus(ViewportStatus targetStatus, ViewportStatusChangeReason reason) {
        if (Intrinsics.areEqual(targetStatus, getStatus())) {
            return;
        }
        ViewportStatus status = getStatus();
        this.status = targetStatus;
        notifyStatusChanged(status, targetStatus, reason);
    }

    @Override
    public void transitionTo(final ViewportState targetState, ViewportTransition transition, final CompletionListener completionListener) {
        Intrinsics.checkNotNullParameter(targetState, "targetState");
        ViewportTelemetryEvents.INSTANCE.getStateTransition().increment();
        ViewportStatus status = getStatus();
        if (status instanceof ViewportStatus.State) {
            if (((ViewportStatus.State) status).getState() == targetState) {
                if (completionListener != null) {
                    completionListener.onComplete(true);
                    return;
                }
                return;
            }
        } else if (status instanceof ViewportStatus.Transition) {
            if (((ViewportStatus.Transition) status).getToState() == targetState) {
                if (completionListener != null) {
                    completionListener.onComplete(false);
                    return;
                }
                return;
            }
        } else {
            boolean z = status instanceof ViewportStatus.Idle;
        }
        Cancelable cancelable = this.currentCancelable;
        if (cancelable != null) {
            cancelable.cancel();
        }
        this.currentCancelable = null;
        if (transition == null) {
            transition = getDefaultTransition();
        }
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        Cancelable cancelableRun = transition.run(targetState, new CompletionListener() {
            @Override
            public final void onComplete(boolean z2) {
                ViewportPluginImpl.transitionTo$lambda$2(booleanRef, targetState, this, completionListener, z2);
            }
        });
        if (booleanRef.element) {
            return;
        }
        this.currentCancelable = cancelableRun;
        updateStatus(new ViewportStatus.Transition(transition, targetState), ViewportStatusChangeReason.TRANSITION_STARTED);
    }

    public static final void transitionTo$lambda$2(Ref.BooleanRef completionBlockInvoked, final ViewportState targetState, ViewportPluginImpl this$0, CompletionListener completionListener, boolean z) {
        Intrinsics.checkNotNullParameter(completionBlockInvoked, "$completionBlockInvoked");
        Intrinsics.checkNotNullParameter(targetState, "$targetState");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        completionBlockInvoked.element = true;
        if (z) {
            targetState.startUpdatingCamera();
            this$0.currentCancelable = new Cancelable() {
                @Override
                public final void cancel() {
                    ViewportPluginImpl.transitionTo$lambda$2$lambda$1(targetState);
                }
            };
            this$0.updateStatus(new ViewportStatus.State(targetState), ViewportStatusChangeReason.TRANSITION_SUCCEEDED);
        } else {
            this$0.currentCancelable = null;
            this$0.updateStatus(ViewportStatus.Idle.INSTANCE, ViewportStatusChangeReason.TRANSITION_FAILED);
        }
        if (completionListener != null) {
            completionListener.onComplete(z);
        }
    }

    public static final void transitionTo$lambda$2$lambda$1(ViewportState targetState) {
        Intrinsics.checkNotNullParameter(targetState, "$targetState");
        targetState.stopUpdatingCamera();
    }

    @Override
    public void idle() {
        if (Intrinsics.areEqual(getStatus(), ViewportStatus.Idle.INSTANCE)) {
            return;
        }
        Cancelable cancelable = this.currentCancelable;
        if (cancelable != null) {
            cancelable.cancel();
        }
        this.currentCancelable = null;
        updateStatus(ViewportStatus.Idle.INSTANCE, ViewportStatusChangeReason.IDLE_REQUESTED);
    }

    @Override
    public ViewportOptions getOptions() {
        return this.options;
    }

    @Override
    public void setOptions(ViewportOptions viewportOptions) {
        Intrinsics.checkNotNullParameter(viewportOptions, "<set-?>");
        this.options = viewportOptions;
    }

    private final void notifyStatusChanged(final ViewportStatus previousStatus, final ViewportStatus currentStatus, final ViewportStatusChangeReason reason) {
        for (final ViewportStatusObserver viewportStatusObserver : this.registeredStatusObservers) {
            this.handler.post(new Runnable() {
                @Override
                public final void run() {
                    ViewportPluginImpl.notifyStatusChanged$lambda$4$lambda$3(viewportStatusObserver, previousStatus, currentStatus, reason);
                }
            });
        }
    }

    public static final void notifyStatusChanged$lambda$4$lambda$3(ViewportStatusObserver viewportStatusObserver, ViewportStatus previousStatus, ViewportStatus currentStatus, ViewportStatusChangeReason reason) {
        Intrinsics.checkNotNullParameter(previousStatus, "$previousStatus");
        Intrinsics.checkNotNullParameter(currentStatus, "$currentStatus");
        Intrinsics.checkNotNullParameter(reason, "$reason");
        viewportStatusObserver.onViewportStatusChanged(previousStatus, currentStatus, reason);
    }

    @Override
    public ViewportTransition getDefaultTransition() {
        ViewportTransition viewportTransition = this.defaultTransition;
        if (viewportTransition != null) {
            return viewportTransition;
        }
        Intrinsics.throwUninitializedPropertyAccessException("defaultTransition");
        return null;
    }

    @Override
    public void setDefaultTransition(ViewportTransition viewportTransition) {
        Intrinsics.checkNotNullParameter(viewportTransition, "<set-?>");
        this.defaultTransition = viewportTransition;
    }

    @Override
    public void addStatusObserver(ViewportStatusObserver viewportStatusObserver) {
        Intrinsics.checkNotNullParameter(viewportStatusObserver, "viewportStatusObserver");
        this.registeredStatusObservers.add(viewportStatusObserver);
    }

    @Override
    public void removeStatusObserver(ViewportStatusObserver viewportStatusObserver) {
        Intrinsics.checkNotNullParameter(viewportStatusObserver, "viewportStatusObserver");
        this.registeredStatusObservers.remove(viewportStatusObserver);
    }

    @Override
    public FollowPuckViewportState makeFollowPuckViewportState(FollowPuckViewportStateOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
        ViewportTelemetryEvents.INSTANCE.getStateFollowPuck().increment();
        MapDelegateProvider mapDelegateProvider = this.delegateProvider;
        if (mapDelegateProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("delegateProvider");
            mapDelegateProvider = null;
        }
        return new FollowPuckViewportStateImpl(mapDelegateProvider, options, null, 4, null);
    }

    @Override
    public OverviewViewportState makeOverviewViewportState(OverviewViewportStateOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
        ViewportTelemetryEvents.INSTANCE.getStateOverview().increment();
        MapDelegateProvider mapDelegateProvider = this.delegateProvider;
        if (mapDelegateProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("delegateProvider");
            mapDelegateProvider = null;
        }
        return new OverviewViewportStateImpl(mapDelegateProvider, options, null, 4, null);
    }

    @Override
    public DefaultViewportTransition makeDefaultViewportTransition(DefaultViewportTransitionOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
        MapDelegateProvider mapDelegateProvider = this.delegateProvider;
        if (mapDelegateProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("delegateProvider");
            mapDelegateProvider = null;
        }
        return new DefaultViewportTransitionImpl(mapDelegateProvider, options, null, 4, null);
    }

    @Override
    public ViewportTransition makeImmediateViewportTransition() {
        MapDelegateProvider mapDelegateProvider = this.delegateProvider;
        if (mapDelegateProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("delegateProvider");
            mapDelegateProvider = null;
        }
        return new ImmediateViewportTransition(mapDelegateProvider);
    }

    @Override
    public void onDelegateProvider(MapDelegateProvider delegateProvider) {
        Intrinsics.checkNotNullParameter(delegateProvider, "delegateProvider");
        this.delegateProvider = delegateProvider;
        CameraAnimationsPlugin camera = CameraAnimationsUtils.getCamera(delegateProvider.getMapPluginProviderDelegate());
        this.cameraPlugin = camera;
        if (camera == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cameraPlugin");
            camera = null;
        }
        camera.addCameraAnimationsLifecycleListener(this.cameraAnimationsLifecycleListener);
        setDefaultTransition(new DefaultViewportTransitionImpl(delegateProvider, new DefaultViewportTransitionOptions.Builder().build(), null, 4, null));
    }

    @Override
    public void cleanup() {
        CameraAnimationsPlugin cameraAnimationsPlugin = this.cameraPlugin;
        if (cameraAnimationsPlugin == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cameraPlugin");
            cameraAnimationsPlugin = null;
        }
        cameraAnimationsPlugin.removeCameraAnimationsLifecycleListener(this.cameraAnimationsLifecycleListener);
    }
}
