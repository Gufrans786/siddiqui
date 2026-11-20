package com.rnmapbox.rnmbx.components.annotation;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.geojson.Point;
import com.mapbox.maps.ViewAnnotationOptions;
import com.mapbox.maps.viewannotation.ViewAnnotationManager;
import com.nimbusds.jose.jwk.JWKParameterNames;
import com.rnmapbox.rnmbx.components.AbstractMapFeature;
import com.rnmapbox.rnmbx.components.RemovalReason;
import com.rnmapbox.rnmbx.components.mapview.RNMBXMapView;
import com.rnmapbox.rnmbx.utils.Logger;
import com.rnmapbox.rnmbx.v11compat.annotation.AnnotationKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u000eJ\u0016\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019J\u000e\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\fJ\u000e\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\fJ\u000e\u0010\u001f\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\fJ\u0018\u0010!\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\n2\u0006\u0010#\u001a\u00020$H\u0016JP\u0010%\u001a\u00020\u00152\u0006\u0010&\u001a\u00020\n2\u0006\u0010'\u001a\u00020$2\u0006\u0010(\u001a\u00020$2\u0006\u0010)\u001a\u00020$2\u0006\u0010*\u001a\u00020$2\u0006\u0010+\u001a\u00020$2\u0006\u0010,\u001a\u00020$2\u0006\u0010-\u001a\u00020$2\u0006\u0010.\u001a\u00020$H\u0016J\u0010\u0010/\u001a\u00020\u00152\u0006\u00100\u001a\u000201H\u0016J\u0018\u00102\u001a\u00020\f2\u0006\u00100\u001a\u0002012\u0006\u00103\u001a\u000204H\u0016J\b\u00105\u001a\u00020\u0015H\u0002J\b\u00106\u001a\u00020\u0015H\u0002J\u0006\u00107\u001a\u00020\u0015J\u0010\u00108\u001a\u00020\u00152\u0006\u00100\u001a\u000201H\u0002J\b\u00109\u001a\u00020:H\u0002J\b\u0010;\u001a\u00020\u0010H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006<"}, d2 = {"Lcom/rnmapbox/rnmbx/components/annotation/RNMBXMarkerView;", "Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;", "Landroid/view/View$OnLayoutChangeListener;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "mManager", "Lcom/rnmapbox/rnmbx/components/annotation/RNMBXMarkerViewManager;", "<init>", "(Landroid/content/Context;Lcom/rnmapbox/rnmbx/components/annotation/RNMBXMarkerViewManager;)V", "mView", "Landroid/view/View;", "didAddToMap", "", "mCoordinate", "Lcom/mapbox/geojson/Point;", "mAnchor", "Lcom/rnmapbox/rnmbx/components/annotation/Vec2;", "mAllowOverlap", "mAllowOverlapWithPuck", "mIsSelected", "setCoordinate", "", "point", "setAnchor", "x", "", JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE, "setAllowOverlap", "allowOverlap", "setAllowOverlapWithPuck", "allowOverlapWithPuck", "setIsSelected", "isSelected", "addView", "childView", "childPosition", "", "onLayoutChange", "v", ViewProps.LEFT, ViewProps.TOP, ViewProps.RIGHT, ViewProps.BOTTOM, "oldLeft", "oldTop", "oldRight", "oldBottom", "addToMap", "mapView", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "removeFromMap", "reason", "Lcom/rnmapbox/rnmbx/components/RemovalReason;", "addOrUpdate", "add", "update", "remove", "getOptions", "Lcom/mapbox/maps/ViewAnnotationOptions;", "getOffset", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXMarkerView extends AbstractMapFeature implements View.OnLayoutChangeListener {
    private boolean didAddToMap;
    private boolean mAllowOverlap;
    private boolean mAllowOverlapWithPuck;
    private Vec2 mAnchor;
    private Point mCoordinate;
    private boolean mIsSelected;
    private final RNMBXMarkerViewManager mManager;
    private View mView;

    public RNMBXMarkerView(Context context, RNMBXMarkerViewManager mManager) {
        super(context);
        Intrinsics.checkNotNullParameter(mManager, "mManager");
        this.mManager = mManager;
        this.mAnchor = new Vec2(0.5d, 0.5d);
    }

    public final void setCoordinate(Point point) {
        this.mCoordinate = point;
        update();
    }

    public final void setAnchor(float x, float y) {
        this.mAnchor = new Vec2(x, y);
        update();
    }

    public final void setAllowOverlap(boolean allowOverlap) {
        this.mAllowOverlap = allowOverlap;
        update();
    }

    public final void setAllowOverlapWithPuck(boolean allowOverlapWithPuck) {
        this.mAllowOverlapWithPuck = allowOverlapWithPuck;
        update();
    }

    public final void setIsSelected(boolean isSelected) {
        this.mIsSelected = isSelected;
        update();
    }

    @Override
    public void addView(View childView, int childPosition) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        this.mView = childView;
    }

    @Override
    public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
        Intrinsics.checkNotNullParameter(v, "v");
        addOrUpdate();
    }

    @Override
    public void addToMap(RNMBXMapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        super.addToMap(mapView);
        add();
    }

    @Override
    public boolean removeFromMap(RNMBXMapView mapView, RemovalReason reason) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(reason, "reason");
        super.removeFromMap(mapView, reason);
        remove(mapView);
        return true;
    }

    private final void addOrUpdate() {
        if (this.didAddToMap) {
            update();
        } else {
            add();
        }
    }

    private final void add() {
        View view;
        ViewAnnotationManager viewAnnotationManager;
        ViewGroup offscreenAnnotationViewContainer;
        ViewGroup offscreenAnnotationViewContainer2;
        if (this.didAddToMap || (view = this.mView) == null || this.mCoordinate == null) {
            return;
        }
        Intrinsics.checkNotNull(view);
        view.addOnLayoutChangeListener(this);
        if (view.getLayoutParams() == null && !view.isAttachedToWindow()) {
            RNMBXMapView mMapView = getMMapView();
            if (mMapView != null && (offscreenAnnotationViewContainer2 = mMapView.getOffscreenAnnotationViewContainer()) != null) {
                offscreenAnnotationViewContainer2.addView(view);
            }
            RNMBXMapView mMapView2 = getMMapView();
            if (mMapView2 != null && (offscreenAnnotationViewContainer = mMapView2.getOffscreenAnnotationViewContainer()) != null) {
                offscreenAnnotationViewContainer.removeView(view);
            }
        }
        ViewAnnotationOptions options = getOptions();
        RNMBXMarkerViewContent rNMBXMarkerViewContent = view instanceof RNMBXMarkerViewContent ? (RNMBXMarkerViewContent) view : null;
        if (rNMBXMarkerViewContent != null) {
            rNMBXMarkerViewContent.setInAdd(true);
        }
        this.didAddToMap = true;
        RNMBXMapView mMapView3 = getMMapView();
        if (mMapView3 != null && (viewAnnotationManager = mMapView3.getViewAnnotationManager()) != null) {
            viewAnnotationManager.addViewAnnotation(view, options);
            Unit unit = Unit.INSTANCE;
        }
        if (rNMBXMarkerViewContent != null) {
            rNMBXMarkerViewContent.setInAdd(false);
        }
    }

    public final void update() {
        View view;
        ViewAnnotationManager viewAnnotationManager;
        if (!this.didAddToMap || (view = this.mView) == null || this.mCoordinate == null) {
            return;
        }
        Intrinsics.checkNotNull(view);
        ViewAnnotationOptions options = getOptions();
        RNMBXMapView mMapView = getMMapView();
        if (mMapView == null || (viewAnnotationManager = mMapView.getViewAnnotationManager()) == null) {
            return;
        }
        Boolean.valueOf(viewAnnotationManager.updateViewAnnotation(view, options));
    }

    private final void remove(RNMBXMapView mapView) {
        removeOnLayoutChangeListener(this);
        View view = this.mView;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).endViewTransition(view);
            }
            ViewAnnotationManager viewAnnotationManager = mapView.getViewAnnotationManager();
            if (Intrinsics.areEqual((Object) (viewAnnotationManager != null ? Boolean.valueOf(viewAnnotationManager.removeViewAnnotation(view)) : null), (Object) false)) {
                Logger.INSTANCE.w(RNMBXMarkerViewManager.REACT_CLASS, "Unable to remove view");
            }
            this.didAddToMap = false;
        }
    }

    private final ViewAnnotationOptions getOptions() {
        View view = this.mView;
        Intrinsics.checkNotNull(view);
        int width = view.getWidth();
        int height = view.getHeight();
        Point point = this.mCoordinate;
        Vec2 offset = getOffset();
        ViewAnnotationOptions.Builder builder = new ViewAnnotationOptions.Builder();
        if (point != null) {
            AnnotationKt.geometry(builder, point);
        }
        builder.width(Double.valueOf(width));
        builder.height(Double.valueOf(height));
        builder.allowOverlap(Boolean.valueOf(this.mAllowOverlap));
        builder.allowOverlapWithPuck(Boolean.valueOf(this.mAllowOverlapWithPuck));
        AnnotationKt.offsets(builder, offset.getDx(), offset.getDy());
        builder.selected(Boolean.valueOf(this.mIsSelected));
        builder.ignoreCameraPadding(true);
        ViewAnnotationOptions viewAnnotationOptionsBuild = builder.build();
        Intrinsics.checkNotNullExpressionValue(viewAnnotationOptionsBuild, "Builder().apply(block).build()");
        return viewAnnotationOptionsBuild;
    }

    private final Vec2 getOffset() {
        View view = this.mView;
        if (view == null) {
            return new Vec2(0.0d, 0.0d);
        }
        Intrinsics.checkNotNull(view);
        double d = 2;
        double d2 = 1;
        return new Vec2(((this.mAnchor.getDx() * d) - d2) * ((double) (view.getWidth() / 2)) * ((double) (-1)), ((this.mAnchor.getDy() * d) - d2) * ((double) (view.getHeight() / 2)));
    }
}
