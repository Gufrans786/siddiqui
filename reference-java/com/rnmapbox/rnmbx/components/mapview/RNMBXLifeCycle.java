package com.rnmapbox.rnmbx.components.mapview;

import android.util.Log;
import android.view.View;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u0007J\u0006\u0010\u000b\u001a\u00020\u0007J\u0006\u0010\f\u001a\u00020\rJ\u0014\u0010\u0015\u001a\u00020\u00162\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00070\u0010J\u0006\u0010\u0018\u001a\u00020\u0007R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R&\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00100\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0019"}, d2 = {"Lcom/rnmapbox/rnmbx/components/mapview/RNMBXLifeCycle;", "", "<init>", "()V", "lifecycleOwner", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXLifeCycleOwner;", "onAttachedToWindow", "", "view", "Landroid/view/View;", "onDetachedFromWindow", "onDestroy", "getState", "Landroidx/lifecycle/Lifecycle$State;", "attachedToWindowWaiters", "", "Lkotlin/Function0;", "getAttachedToWindowWaiters", "()Ljava/util/List;", "setAttachedToWindowWaiters", "(Ljava/util/List;)V", "callIfAttachedToWindow", "Lcom/rnmapbox/rnmbx/components/mapview/Cancelable;", "callback", "afterAttachFromLooper", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXLifeCycle {
    private List<Function0<Unit>> attachedToWindowWaiters = new ArrayList();
    private RNMBXLifeCycleOwner lifecycleOwner;

    public static final void callIfAttachedToWindow$lambda$0() {
    }

    public final void onAttachedToWindow(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (this.lifecycleOwner == null) {
            RNMBXLifeCycleOwner rNMBXLifeCycleOwner = new RNMBXLifeCycleOwner() {
                private LifecycleRegistry lifecycleRegistry;

                {
                    LifecycleRegistry lifecycleRegistry = new LifecycleRegistry(this);
                    this.lifecycleRegistry = lifecycleRegistry;
                    lifecycleRegistry.setCurrentState(Lifecycle.State.CREATED);
                }

                @Override
                public void handleLifecycleEvent(Lifecycle.Event event) {
                    Intrinsics.checkNotNullParameter(event, "event");
                    try {
                        LifecycleRegistry lifecycleRegistry = this.lifecycleRegistry;
                        if (lifecycleRegistry == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("lifecycleRegistry");
                            lifecycleRegistry = null;
                        }
                        lifecycleRegistry.handleLifecycleEvent(event);
                    } catch (RuntimeException e) {
                        Log.e("RNMBXMapView", "handleLifecycleEvent, handleLifecycleEvent error: " + e);
                    }
                }

                @Override
                public Lifecycle getViewLifecycleRegistry() {
                    LifecycleRegistry lifecycleRegistry = this.lifecycleRegistry;
                    if (lifecycleRegistry == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("lifecycleRegistry");
                        lifecycleRegistry = null;
                    }
                    return lifecycleRegistry;
                }
            };
            this.lifecycleOwner = rNMBXLifeCycleOwner;
            ViewTreeLifecycleOwner.set(view, rNMBXLifeCycleOwner);
        }
        RNMBXLifeCycleOwner rNMBXLifeCycleOwner2 = this.lifecycleOwner;
        if (rNMBXLifeCycleOwner2 != null) {
            rNMBXLifeCycleOwner2.handleLifecycleEvent(Lifecycle.Event.ON_START);
        }
    }

    public final void onDetachedFromWindow() {
        RNMBXLifeCycleOwner rNMBXLifeCycleOwner;
        Lifecycle lifecycle;
        RNMBXLifeCycleOwner rNMBXLifeCycleOwner2 = this.lifecycleOwner;
        if (((rNMBXLifeCycleOwner2 == null || (lifecycle = rNMBXLifeCycleOwner2.getViewLifecycleRegistry()) == null) ? null : lifecycle.getState()) == Lifecycle.State.DESTROYED || (rNMBXLifeCycleOwner = this.lifecycleOwner) == null) {
            return;
        }
        rNMBXLifeCycleOwner.handleLifecycleEvent(Lifecycle.Event.ON_STOP);
    }

    public final void onDestroy() {
        RNMBXLifeCycleOwner rNMBXLifeCycleOwner;
        RNMBXLifeCycleOwner rNMBXLifeCycleOwner2;
        Lifecycle lifecycle;
        Lifecycle lifecycle2;
        Lifecycle lifecycle3;
        RNMBXLifeCycleOwner rNMBXLifeCycleOwner3 = this.lifecycleOwner;
        Lifecycle.State state = null;
        if (((rNMBXLifeCycleOwner3 == null || (lifecycle3 = rNMBXLifeCycleOwner3.getViewLifecycleRegistry()) == null) ? null : lifecycle3.getState()) == Lifecycle.State.STARTED) {
            rNMBXLifeCycleOwner = this.lifecycleOwner;
            if (rNMBXLifeCycleOwner != null) {
                rNMBXLifeCycleOwner.handleLifecycleEvent(Lifecycle.Event.ON_STOP);
            }
        } else {
            RNMBXLifeCycleOwner rNMBXLifeCycleOwner4 = this.lifecycleOwner;
            if (((rNMBXLifeCycleOwner4 == null || (lifecycle2 = rNMBXLifeCycleOwner4.getViewLifecycleRegistry()) == null) ? null : lifecycle2.getState()) == Lifecycle.State.RESUMED) {
                rNMBXLifeCycleOwner = this.lifecycleOwner;
                if (rNMBXLifeCycleOwner != null) {
                    rNMBXLifeCycleOwner.handleLifecycleEvent(Lifecycle.Event.ON_STOP);
                }
            }
        }
        RNMBXLifeCycleOwner rNMBXLifeCycleOwner5 = this.lifecycleOwner;
        if (rNMBXLifeCycleOwner5 != null && (lifecycle = rNMBXLifeCycleOwner5.getViewLifecycleRegistry()) != null) {
            state = lifecycle.getState();
        }
        if (state == Lifecycle.State.DESTROYED || (rNMBXLifeCycleOwner2 = this.lifecycleOwner) == null) {
            return;
        }
        rNMBXLifeCycleOwner2.handleLifecycleEvent(Lifecycle.Event.ON_DESTROY);
    }

    public final Lifecycle.State getState() {
        Lifecycle lifecycle;
        Lifecycle.State state;
        RNMBXLifeCycleOwner rNMBXLifeCycleOwner = this.lifecycleOwner;
        return (rNMBXLifeCycleOwner == null || (lifecycle = rNMBXLifeCycleOwner.getViewLifecycleRegistry()) == null || (state = lifecycle.getState()) == null) ? Lifecycle.State.INITIALIZED : state;
    }

    public final List<Function0<Unit>> getAttachedToWindowWaiters() {
        return this.attachedToWindowWaiters;
    }

    public final void setAttachedToWindowWaiters(List<Function0<Unit>> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.attachedToWindowWaiters = list;
    }

    public final Cancelable callIfAttachedToWindow(final Function0<Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (getState() == Lifecycle.State.STARTED) {
            callback.invoke();
            return new Cancelable() {
                @Override
                public final void cancel() {
                    RNMBXLifeCycle.callIfAttachedToWindow$lambda$0();
                }
            };
        }
        this.attachedToWindowWaiters.add(callback);
        return new Cancelable() {
            @Override
            public final void cancel() {
                RNMBXLifeCycle.callIfAttachedToWindow$lambda$1(this.f$0, callback);
            }
        };
    }

    public static final void callIfAttachedToWindow$lambda$1(RNMBXLifeCycle rNMBXLifeCycle, Function0 function0) {
        rNMBXLifeCycle.attachedToWindowWaiters.remove(function0);
    }

    public final void afterAttachFromLooper() {
        Iterator<T> it = this.attachedToWindowWaiters.iterator();
        while (it.hasNext()) {
            ((Function0) it.next()).invoke();
        }
        this.attachedToWindowWaiters.clear();
    }
}
