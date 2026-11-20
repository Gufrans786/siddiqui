package com.rnmapbox.rnmbx.components;

import android.content.Context;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.views.view.ReactViewGroup;
import com.rnmapbox.rnmbx.components.mapview.RNMBXMapView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0007H\u0016J\u0018\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J0\u0010\u001c\u001a\u00020\u000f2!\u0010\u001d\u001a\u001d\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b(\u0018\u0012\u0004\u0012\u00020\u000f0\u000eH\u0000¢\u0006\u0002\b R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\f\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000f0\u000e\u0018\u00010\rX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006!"}, d2 = {"Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;", "Lcom/facebook/react/views/view/ReactViewGroup;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "mMapView", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "getMMapView", "()Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "setMMapView", "(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V", "mWithMapViewCallbacks", "", "Lkotlin/Function1;", "", "[Lkotlin/jvm/functions/Function1;", "requiresStyleLoad", "", "getRequiresStyleLoad", "()Z", "setRequiresStyleLoad", "(Z)V", "addToMap", "mapView", "removeFromMap", "reason", "Lcom/rnmapbox/rnmbx/components/RemovalReason;", "withMapView", "callback", "Lkotlin/ParameterName;", "name", "withMapView$rnmapbox_maps_release", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class AbstractMapFeature extends ReactViewGroup {
    private RNMBXMapView mMapView;
    private Function1<RNMBXMapView, Unit>[] mWithMapViewCallbacks;
    private boolean requiresStyleLoad;

    public AbstractMapFeature(Context context) {
        super(context);
        this.requiresStyleLoad = true;
    }

    protected final RNMBXMapView getMMapView() {
        return this.mMapView;
    }

    protected final void setMMapView(RNMBXMapView rNMBXMapView) {
        this.mMapView = rNMBXMapView;
    }

    public boolean getRequiresStyleLoad() {
        return this.requiresStyleLoad;
    }

    public void setRequiresStyleLoad(boolean z) {
        this.requiresStyleLoad = z;
    }

    public void addToMap(RNMBXMapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        this.mMapView = mapView;
        Function1<RNMBXMapView, Unit>[] function1Arr = this.mWithMapViewCallbacks;
        if (function1Arr != null) {
            for (Function1<RNMBXMapView, Unit> function1 : function1Arr) {
                function1.invoke(mapView);
            }
        }
        this.mWithMapViewCallbacks = null;
    }

    public boolean removeFromMap(RNMBXMapView mapView, RemovalReason reason) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(reason, "reason");
        this.mMapView = null;
        return true;
    }

    public final void withMapView$rnmapbox_maps_release(Function1<? super RNMBXMapView, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        RNMBXMapView rNMBXMapView = this.mMapView;
        if (rNMBXMapView == null) {
            Function1<RNMBXMapView, Unit>[] function1Arr = this.mWithMapViewCallbacks;
            if (function1Arr == null) {
                function1Arr = new Function1[0];
            }
            ArraysKt.plus(function1Arr, callback);
            this.mWithMapViewCallbacks = function1Arr;
            return;
        }
        callback.invoke(rNMBXMapView);
    }
}
