package com.rnmapbox.rnmbx.utils;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.react.bridge.Promise;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B%\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0007HÆ\u0003J1\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0014\b\u0002\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0002HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u001d\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0018"}, d2 = {"Lcom/rnmapbox/rnmbx/utils/ViewTagWaiter;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "fn", "Lkotlin/Function1;", "", "reject", "Lcom/facebook/react/bridge/Promise;", "<init>", "(Lkotlin/jvm/functions/Function1;Lcom/facebook/react/bridge/Promise;)V", "getFn", "()Lkotlin/jvm/functions/Function1;", "getReject", "()Lcom/facebook/react/bridge/Promise;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ViewTagWaiter<V> {
    private final Function1<V, Unit> fn;
    private final Promise reject;

    public static ViewTagWaiter copy$default(ViewTagWaiter viewTagWaiter, Function1 function1, Promise promise, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = viewTagWaiter.fn;
        }
        if ((i & 2) != 0) {
            promise = viewTagWaiter.reject;
        }
        return viewTagWaiter.copy(function1, promise);
    }

    public final Function1<V, Unit> component1() {
        return this.fn;
    }

    public final Promise getReject() {
        return this.reject;
    }

    public final ViewTagWaiter<V> copy(Function1<? super V, Unit> fn, Promise reject) {
        Intrinsics.checkNotNullParameter(fn, "fn");
        return new ViewTagWaiter<>(fn, reject);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ViewTagWaiter)) {
            return false;
        }
        ViewTagWaiter viewTagWaiter = (ViewTagWaiter) other;
        return Intrinsics.areEqual(this.fn, viewTagWaiter.fn) && Intrinsics.areEqual(this.reject, viewTagWaiter.reject);
    }

    public int hashCode() {
        int iHashCode = this.fn.hashCode() * 31;
        Promise promise = this.reject;
        return iHashCode + (promise == null ? 0 : promise.hashCode());
    }

    public String toString() {
        return "ViewTagWaiter(fn=" + this.fn + ", reject=" + this.reject + ")";
    }

    public ViewTagWaiter(Function1<? super V, Unit> fn, Promise promise) {
        Intrinsics.checkNotNullParameter(fn, "fn");
        this.fn = fn;
        this.reject = promise;
    }

    public final Function1<V, Unit> getFn() {
        return this.fn;
    }

    public final Promise getReject() {
        return this.reject;
    }
}
