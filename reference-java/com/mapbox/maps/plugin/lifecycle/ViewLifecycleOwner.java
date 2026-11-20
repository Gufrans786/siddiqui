package com.mapbox.maps.plugin.lifecycle;

import android.view.View;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000?\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0006\b\u0001\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0016\u001a\u00020\u0017J\u0010\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\b\u0010\u0019\u001a\u00020\u0017H\u0002J\b\u0010\u001a\u001a\u00020\u000eH\u0016R\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u00020\u000e8\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0010\u0012\f\u0012\n \u0015*\u0004\u0018\u00010\u00030\u00030\u0014X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/mapbox/maps/plugin/lifecycle/ViewLifecycleOwner;", "Landroidx/lifecycle/LifecycleOwner;", "view", "Landroid/view/View;", "(Landroid/view/View;)V", "attachStateChangeListener", "com/mapbox/maps/plugin/lifecycle/ViewLifecycleOwner$attachStateChangeListener$1", "Lcom/mapbox/maps/plugin/lifecycle/ViewLifecycleOwner$attachStateChangeListener$1;", "hostingLifecycleObserver", "Landroidx/lifecycle/LifecycleEventObserver;", "hostingLifecycleOwner", "isAttached", "", "viewLifecycleRegistry", "Landroidx/lifecycle/LifecycleRegistry;", "getViewLifecycleRegistry$plugin_lifecycle_release$annotations", "()V", "getViewLifecycleRegistry$plugin_lifecycle_release", "()Landroidx/lifecycle/LifecycleRegistry;", "viewWeakReference", "Ljava/lang/ref/WeakReference;", "kotlin.jvm.PlatformType", "cleanUp", "", "doOnAttached", "doOnDetached", "getLifecycle", "plugin-lifecycle_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ViewLifecycleOwner implements LifecycleOwner {
    private final ViewLifecycleOwner$attachStateChangeListener$1 attachStateChangeListener;
    private final LifecycleEventObserver hostingLifecycleObserver;
    private LifecycleOwner hostingLifecycleOwner;
    private boolean isAttached;
    private final LifecycleRegistry viewLifecycleRegistry;
    private final WeakReference<View> viewWeakReference;

    public static void getViewLifecycleRegistry$plugin_lifecycle_release$annotations() {
    }

    public ViewLifecycleOwner(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.viewWeakReference = new WeakReference<>(view);
        this.viewLifecycleRegistry = new LifecycleRegistry(this);
        this.hostingLifecycleObserver = new LifecycleEventObserver() {
            @Override
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                ViewLifecycleOwner.hostingLifecycleObserver$lambda$0(this.f$0, lifecycleOwner, event);
            }
        };
        ?? r0 = new View.OnAttachStateChangeListener() {
            @Override
            public void onViewAttachedToWindow(View view2) {
                Intrinsics.checkNotNullParameter(view2, "view");
                this.this$0.doOnAttached(view2);
            }

            @Override
            public void onViewDetachedFromWindow(View view2) {
                Intrinsics.checkNotNullParameter(view2, "view");
                this.this$0.doOnDetached();
            }
        };
        this.attachStateChangeListener = r0;
        view.addOnAttachStateChangeListener((View.OnAttachStateChangeListener) r0);
        if (view.isAttachedToWindow()) {
            doOnAttached(view);
        }
    }

    public final LifecycleRegistry getViewLifecycleRegistry$plugin_lifecycle_release() {
        return this.viewLifecycleRegistry;
    }

    @Override
    public LifecycleRegistry getViewLifecycleRegistry() {
        return this.viewLifecycleRegistry;
    }

    public static final void hostingLifecycleObserver$lambda$0(ViewLifecycleOwner this$0, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(lifecycleOwner, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(event, "event");
        boolean zIsAtLeast = this$0.viewLifecycleRegistry.getState().isAtLeast(Lifecycle.State.CREATED);
        if (this$0.isAttached || (zIsAtLeast && event == Lifecycle.Event.ON_DESTROY)) {
            this$0.viewLifecycleRegistry.handleLifecycleEvent(event);
        }
    }

    public final void doOnAttached(View view) {
        Lifecycle viewLifecycleRegistry;
        if (this.isAttached) {
            return;
        }
        LifecycleOwner lifecycleOwner = this.hostingLifecycleOwner;
        if (lifecycleOwner != null && (viewLifecycleRegistry = lifecycleOwner.getViewLifecycleRegistry()) != null) {
            viewLifecycleRegistry.removeObserver(this.hostingLifecycleObserver);
        }
        LifecycleOwner lifecycleOwner2 = ViewTreeLifecycleOwner.get(view);
        if (lifecycleOwner2 == null) {
            throw new IllegalStateException("Please ensure that the hosting activity/fragment is a valid LifecycleOwner");
        }
        this.viewLifecycleRegistry.setCurrentState(lifecycleOwner2.getViewLifecycleRegistry().getState());
        lifecycleOwner2.getViewLifecycleRegistry().addObserver(this.hostingLifecycleObserver);
        this.hostingLifecycleOwner = lifecycleOwner2;
        this.isAttached = true;
    }

    public final void doOnDetached() {
        if (this.isAttached) {
            this.isAttached = false;
            LifecycleOwner lifecycleOwner = this.hostingLifecycleOwner;
            if (lifecycleOwner == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            if (lifecycleOwner.getViewLifecycleRegistry().getState().isAtLeast(Lifecycle.State.CREATED)) {
                this.viewLifecycleRegistry.setCurrentState(Lifecycle.State.CREATED);
            }
        }
    }

    public final void cleanUp() {
        Lifecycle viewLifecycleRegistry;
        LifecycleOwner lifecycleOwner = this.hostingLifecycleOwner;
        if (lifecycleOwner != null && (viewLifecycleRegistry = lifecycleOwner.getViewLifecycleRegistry()) != null) {
            viewLifecycleRegistry.removeObserver(this.hostingLifecycleObserver);
        }
        View view = this.viewWeakReference.get();
        if (view != null) {
            view.removeOnAttachStateChangeListener(this.attachStateChangeListener);
        }
    }
}
