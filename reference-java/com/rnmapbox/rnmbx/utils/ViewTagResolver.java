package com.rnmapbox.rnmbx.utils;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.exifinterface.media.ExifInterface;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.UIManager;
import com.facebook.react.uimanager.IllegalViewOperationException;
import com.facebook.react.uimanager.UIManagerHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J4\u0010\u0014\u001a\u00020\u0015\"\u0004\b\u0000\u0010\u00162\u0006\u0010\u0017\u001a\u00020\n2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u00020\u00150\u001bH\u0002J\u000e\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\nJ\u000e\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\nJ4\u0010\"\u001a\u00020\u0015\"\u0004\b\u0000\u0010\u00162\u0006\u0010\u0017\u001a\u00020\n2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u00020\u00150\u001bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001e\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000RF\u0010\f\u001a:\u0012\u0004\u0012\u00020\n\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f0\u000e0\rj\u001c\u0012\u0004\u0012\u00020\n\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f0\u000e`\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u00020\u001f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b \u0010!¨\u0006#"}, d2 = {"Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;", "", CoreConstants.CONTEXT_SCOPE_VALUE, "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "getContext", "()Lcom/facebook/react/bridge/ReactApplicationContext;", "createdViews", "Ljava/util/HashSet;", "", "Lkotlin/collections/HashSet;", "viewWaiters", "Ljava/util/HashMap;", "", "Lcom/rnmapbox/rnmbx/utils/ViewTagWaiter;", "Landroid/view/View;", "Lkotlin/collections/HashMap;", "handler", "Landroid/os/Handler;", "addWaiter", "", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "viewTag", "reject", "Lcom/facebook/react/bridge/Promise;", "fn", "Lkotlin/Function1;", "tagAssigned", "viewRemoved", "manager", "Lcom/facebook/react/bridge/UIManager;", "getManager", "()Lcom/facebook/react/bridge/UIManager;", "withViewResolved", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class ViewTagResolver {
    private final ReactApplicationContext context;
    private final HashSet<Integer> createdViews;
    private final Handler handler;
    private final HashMap<Integer, List<ViewTagWaiter<View>>> viewWaiters;

    public ViewTagResolver(ReactApplicationContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.createdViews = new HashSet<>();
        this.viewWaiters = new HashMap<>();
        this.handler = new Handler(Looper.getMainLooper());
    }

    public final ReactApplicationContext getContext() {
        return this.context;
    }

    private final <V> void addWaiter(final int viewTag, final Promise reject, final Function1<? super V, Unit> fn) {
        ViewTagWaiter<View> viewTagWaiter = new ViewTagWaiter<>(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ViewTagResolver.addWaiter$lambda$0(fn, viewTag, reject, (View) obj);
            }
        }, reject);
        HashMap<Integer, List<ViewTagWaiter<View>>> map = this.viewWaiters;
        Integer numValueOf = Integer.valueOf(viewTag);
        ArrayList arrayList = map.get(numValueOf);
        if (arrayList == null) {
            arrayList = new ArrayList();
            map.put(numValueOf, arrayList);
        }
        arrayList.add(viewTagWaiter);
    }

    public static final Unit addWaiter$lambda$0(Function1 function1, int i, Promise promise, View view) {
        if (view != null) {
            function1.invoke(view);
        } else {
            Logger.INSTANCE.e(ViewTagResolverKt.LOG_TAG, "view: " + i + " but is null (timeout or resolve)");
            if (promise != null) {
                promise.reject(new Throwable("view: " + i + " but is null (timeout or resolve)"));
            }
        }
        return Unit.INSTANCE;
    }

    public final void tagAssigned(final int viewTag) {
        this.createdViews.add(Integer.valueOf(viewTag));
        final List<ViewTagWaiter<View>> list = this.viewWaiters.get(Integer.valueOf(viewTag));
        if (list != null) {
            this.context.runOnUiQueueThread(new Runnable() {
                @Override
                public final void run() {
                    ViewTagResolver.tagAssigned$lambda$4(this.f$0, viewTag, list);
                }
            });
        }
    }

    public static final void tagAssigned$lambda$4(ViewTagResolver viewTagResolver, int i, List list) {
        try {
            View viewResolveView = viewTagResolver.getManager().resolveView(i);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((ViewTagWaiter) it.next()).getFn().invoke(viewResolveView);
            }
        } catch (IllegalViewOperationException e) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                Promise reject = ((ViewTagWaiter) it2.next()).getReject();
                if (reject != null) {
                    reject.reject(e);
                }
            }
        }
        viewTagResolver.viewWaiters.remove(Integer.valueOf(i));
    }

    public final void viewRemoved(int viewTag) {
        this.viewWaiters.remove(Integer.valueOf(viewTag));
        this.createdViews.remove(Integer.valueOf(viewTag));
    }

    private final UIManager getManager() {
        UIManager uIManager = UIManagerHelper.getUIManager(this.context, 2);
        Intrinsics.checkNotNull(uIManager);
        return uIManager;
    }

    public static void withViewResolved$default(ViewTagResolver viewTagResolver, int i, Promise promise, Function1 function1, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: withViewResolved");
        }
        if ((i2 & 2) != 0) {
            promise = null;
        }
        viewTagResolver.withViewResolved(i, promise, function1);
    }

    public final <V> void withViewResolved(final int viewTag, final Promise reject, final Function1<? super V, Unit> fn) {
        Intrinsics.checkNotNullParameter(fn, "fn");
        this.context.runOnUiQueueThread(new Runnable() {
            @Override
            public final void run() {
                ViewTagResolver.withViewResolved$lambda$5(this.f$0, viewTag, fn, reject);
            }
        });
    }

    public static final void withViewResolved$lambda$5(ViewTagResolver viewTagResolver, int i, Function1 function1, Promise promise) {
        try {
            View viewResolveView = viewTagResolver.getManager().resolveView(i);
            if (!(viewResolveView instanceof Object)) {
                viewResolveView = null;
            }
            if (viewResolveView != null) {
                function1.invoke(viewResolveView);
            } else {
                viewTagResolver.addWaiter(i, promise, function1);
            }
        } catch (IllegalViewOperationException e) {
            if (!viewTagResolver.createdViews.contains(Integer.valueOf(i))) {
                viewTagResolver.addWaiter(i, promise, function1);
            } else if (promise != null) {
                promise.reject(e);
            }
        }
    }
}
