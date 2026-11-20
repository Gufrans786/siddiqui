package com.rnmapbox.rnmbx.components.annotation;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PointF;
import android.view.View;
import android.view.ViewGroup;
import com.caverock.androidsvg.SVGParser;
import com.facebook.react.uimanager.ViewProps;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mapbox.geojson.Point;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.ScreenCoordinate;
import com.mapbox.maps.Style;
import com.mapbox.maps.extension.style.layers.properties.generated.IconAnchor;
import com.mapbox.maps.plugin.annotation.generated.PointAnnotation;
import com.mapbox.maps.plugin.annotation.generated.PointAnnotationOptions;
import com.nimbusds.jose.jwk.JWKParameterNames;
import com.rnmapbox.rnmbx.components.AbstractMapFeature;
import com.rnmapbox.rnmbx.components.RemovalReason;
import com.rnmapbox.rnmbx.components.mapview.RNMBXMapView;
import com.rnmapbox.rnmbx.events.PointAnnotationClickEvent;
import com.rnmapbox.rnmbx.events.PointAnnotationDragEvent;
import com.rnmapbox.rnmbx.events.constants.EventTypes;
import com.rnmapbox.rnmbx.utils.BitmapUtils;
import com.rnmapbox.rnmbx.utils.GeoJSONUtils;
import com.rnmapbox.rnmbx.utils.LatLng;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 |2\u00020\u00012\u00020\u0002:\u0001|B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0018\u00105\u001a\u0002062\u0006\u00107\u001a\u00020)2\u0006\u00108\u001a\u000209H\u0016J\u0010\u0010:\u001a\u00020)2\u0006\u00108\u001a\u000209H\u0016J\b\u0010;\u001a\u000209H\u0016J\u0010\u0010<\u001a\u0002062\u0006\u0010=\u001a\u000209H\u0016J\u0010\u0010>\u001a\u0002062\u0006\u00107\u001a\u00020)H\u0016J\u0010\u0010?\u001a\u0002062\u0006\u0010@\u001a\u000209H\u0016J\u0010\u0010A\u001a\u0002062\u0006\u0010B\u001a\u00020CH\u0016J\u0018\u0010D\u001a\u00020\u00172\u0006\u0010B\u001a\u00020C2\u0006\u0010E\u001a\u00020FH\u0016JP\u0010G\u001a\u0002062\u0006\u0010H\u001a\u00020)2\u0006\u0010I\u001a\u0002092\u0006\u0010J\u001a\u0002092\u0006\u0010K\u001a\u0002092\u0006\u0010L\u001a\u0002092\u0006\u0010M\u001a\u0002092\u0006\u0010N\u001a\u0002092\u0006\u0010O\u001a\u0002092\u0006\u0010P\u001a\u000209H\u0016J8\u0010Q\u001a\u0002062\u0006\u0010H\u001a\u00020)2\b\b\u0002\u0010I\u001a\u0002092\b\b\u0002\u0010J\u001a\u0002092\b\b\u0002\u0010K\u001a\u0002092\b\b\u0002\u0010L\u001a\u000209H\u0002J\u000e\u0010[\u001a\u0002062\u0006\u0010\\\u001a\u00020\u0019J\u0016\u0010]\u001a\u0002062\u0006\u0010^\u001a\u00020$2\u0006\u0010_\u001a\u00020$J\u000e\u0010`\u001a\u0002062\u0006\u0010a\u001a\u00020\u0017J\u000e\u0010b\u001a\u0002062\u0006\u0010c\u001a\u00020\u0017J\u0006\u0010d\u001a\u000206J\u0006\u0010e\u001a\u000206J\u0006\u0010f\u001a\u000206J\u0006\u0010g\u001a\u000206J\u0006\u0010h\u001a\u000206J\b\u0010i\u001a\u000206H\u0002J\b\u0010j\u001a\u000206H\u0002J\b\u0010k\u001a\u000206H\u0002J\b\u0010l\u001a\u000206H\u0002J\u001c\u0010m\u001a\u0002062\b\u0010n\u001a\u0004\u0018\u00010+2\b\u0010o\u001a\u0004\u0018\u00010\u001bH\u0002J\u0010\u0010p\u001a\u00020q2\u0006\u0010r\u001a\u00020\u0017H\u0002J\u0010\u0010s\u001a\u00020t2\u0006\u0010u\u001a\u00020\u001bH\u0002J\u0010\u0010y\u001a\u00020z2\u0006\u0010R\u001a\u00020SH\u0002J\u0006\u0010{\u001a\u000206R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082D¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0010\u0010 \u001a\u0004\u0018\u00010\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\"\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010#X\u0082\u000e¢\u0006\u0004\n\u0002\u0010%R\u000e\u0010&\u001a\u00020\u0017X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\"\u0010-\u001a\u0004\u0018\u00010)2\b\u0010\u000f\u001a\u0004\u0018\u00010)@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b.\u0010/R\u0010\u00100\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00101\u001a\u0004\u0018\u00010+X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00102\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u00103\u001a\b\u0012\u0004\u0012\u00020)04X\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010R\u001a\u0004\u0018\u00010S8F¢\u0006\u0006\u001a\u0004\bT\u0010UR\u0015\u0010V\u001a\u00060\u001bj\u0002`W8F¢\u0006\u0006\u001a\u0004\bX\u0010\u001dR\u0015\u0010Y\u001a\u00060\u001bj\u0002`W8F¢\u0006\u0006\u001a\u0004\bZ\u0010\u001dR\u0014\u0010v\u001a\u00020$8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bw\u0010x¨\u0006}"}, d2 = {"Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotation;", "Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;", "Landroid/view/View$OnLayoutChangeListener;", "mContext", "Landroid/content/Context;", "mManager", "Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotationManager;", "<init>", "(Landroid/content/Context;Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotationManager;)V", "pointAnnotations", "Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotationCoordinator;", "getPointAnnotations", "()Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotationCoordinator;", "setPointAnnotations", "(Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotationCoordinator;)V", "value", "Lcom/mapbox/maps/plugin/annotation/generated/PointAnnotation;", "annotation", "getAnnotation", "()Lcom/mapbox/maps/plugin/annotation/generated/PointAnnotation;", "mMap", "Lcom/mapbox/maps/MapboxMap;", "mHasChildren", "", "mCoordinate", "Lcom/mapbox/geojson/Point;", "iD", "", "getID", "()Ljava/lang/String;", "setID", "(Ljava/lang/String;)V", "mTitle", "mSnippet", "mAnchor", "", "", "[Ljava/lang/Float;", "mIsSelected", "mDraggable", "mChildView", "Landroid/view/View;", "mChildBitmap", "Landroid/graphics/Bitmap;", "mChildBitmapId", "calloutView", "getCalloutView", "()Landroid/view/View;", "mCalloutSymbol", "mCalloutBitmap", "mCalloutBitmapId", "childViews", "", "addView", "", "childView", "childPosition", "", "getChildAt", "getChildCount", "removeViewAt", FirebaseAnalytics.Param.INDEX, "removeView", "setId", "id", "addToMap", "mapView", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "removeFromMap", "reason", "Lcom/rnmapbox/rnmbx/components/RemovalReason;", "onLayoutChange", "v", ViewProps.LEFT, ViewProps.TOP, ViewProps.RIGHT, ViewProps.BOTTOM, "oldLeft", "oldTop", "oldRight", "oldBottom", "refreshBitmap", "latLng", "Lcom/rnmapbox/rnmbx/utils/LatLng;", "getLatLng", "()Lcom/rnmapbox/rnmbx/utils/LatLng;", "mapboxID", "Lcom/rnmapbox/rnmbx/v11compat/annotation/AnnotationID;", "getMapboxID", "calloutMapboxID", "getCalloutMapboxID", "setCoordinate", "point", "setAnchor", "x", JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE, "setDraggable", "draggable", "doSelect", "shouldSendEvent", "doDeselect", "onDragStart", "onDrag", "onDragEnd", "makeMarker", "updateOptions", "updateIconImage", "updateAnchor", "makeCallout", "addBitmapToStyle", "bitmap", "bitmapId", "makeEvent", "Lcom/rnmapbox/rnmbx/events/PointAnnotationClickEvent;", "isSelect", "makeDragEvent", "Lcom/rnmapbox/rnmbx/events/PointAnnotationDragEvent;", SVGParser.XML_STYLESHEET_ATTR_TYPE, "displayDensity", "getDisplayDensity", "()F", "getScreenPosition", "Landroid/graphics/PointF;", "refresh", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXPointAnnotation extends AbstractMapFeature implements View.OnLayoutChangeListener {
    private static final String MARKER_IMAGE_ID = "MARKER_IMAGE_ID";
    private PointAnnotation annotation;
    private View calloutView;
    private final List<View> childViews;
    private String iD;
    private Float[] mAnchor;
    private Bitmap mCalloutBitmap;
    private String mCalloutBitmapId;
    private PointAnnotation mCalloutSymbol;
    private Bitmap mChildBitmap;
    private String mChildBitmapId;
    private View mChildView;
    private final Context mContext;
    private Point mCoordinate;
    private boolean mDraggable;
    private final boolean mHasChildren;
    private final boolean mIsSelected;
    private final RNMBXPointAnnotationManager mManager;
    private MapboxMap mMap;
    private final String mSnippet;
    private final String mTitle;
    private RNMBXPointAnnotationCoordinator pointAnnotations;

    public RNMBXPointAnnotation(Context mContext, RNMBXPointAnnotationManager mManager) {
        super(mContext);
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        Intrinsics.checkNotNullParameter(mManager, "mManager");
        this.mContext = mContext;
        this.mManager = mManager;
        this.childViews = new ArrayList();
    }

    public final RNMBXPointAnnotationCoordinator getPointAnnotations() {
        return this.pointAnnotations;
    }

    public final void setPointAnnotations(RNMBXPointAnnotationCoordinator rNMBXPointAnnotationCoordinator) {
        this.pointAnnotations = rNMBXPointAnnotationCoordinator;
    }

    public final PointAnnotation getAnnotation() {
        return this.annotation;
    }

    public final String getID() {
        return this.iD;
    }

    public final void setID(String str) {
        this.iD = str;
    }

    public final View getCalloutView() {
        return this.calloutView;
    }

    @Override
    public void addView(View childView, int childPosition) {
        ViewGroup offscreenAnnotationViewContainer;
        Intrinsics.checkNotNullParameter(childView, "childView");
        if (childView instanceof RNMBXCallout) {
            this.calloutView = childView;
        } else {
            this.mChildView = childView;
        }
        childView.addOnLayoutChangeListener(this);
        RNMBXMapView mMapView = getMMapView();
        if (mMapView != null && (offscreenAnnotationViewContainer = mMapView.getOffscreenAnnotationViewContainer()) != null) {
            offscreenAnnotationViewContainer.addView(childView);
        }
        this.childViews.add(childPosition, childView);
    }

    @Override
    public View getChildAt(int childPosition) {
        return this.childViews.get(childPosition);
    }

    @Override
    public int getChildCount() {
        return this.childViews.size();
    }

    @Override
    public void removeViewAt(int index) {
        removeView(this.childViews.remove(index));
    }

    @Override
    public void removeView(View childView) {
        ViewGroup offscreenAnnotationViewContainer;
        MapboxMap mapboxMap;
        Intrinsics.checkNotNullParameter(childView, "childView");
        if (this.mChildView != null && (mapboxMap = this.mMap) != null) {
            mapboxMap.getStyle(new Style.OnStyleLoaded() {
                @Override
                public void onStyleLoaded(Style style) {
                    Intrinsics.checkNotNullParameter(style, "style");
                    String str = RNMBXPointAnnotation.this.mChildBitmapId;
                    if (str != null) {
                        style.removeStyleImage(str);
                    }
                    RNMBXPointAnnotation.this.mChildView = null;
                    RNMBXPointAnnotation.this.calloutView = null;
                    RNMBXPointAnnotation.this.mChildBitmap = null;
                    RNMBXPointAnnotation.this.mChildBitmapId = null;
                    RNMBXPointAnnotation.this.updateOptions();
                }
            });
        }
        RNMBXMapView mMapView = getMMapView();
        if (mMapView == null || (offscreenAnnotationViewContainer = mMapView.getOffscreenAnnotationViewContainer()) == null) {
            return;
        }
        offscreenAnnotationViewContainer.removeView(childView);
    }

    @Override
    public void setId(int id) {
        super.setId(id);
        this.mManager.tagAssigned(id);
    }

    @Override
    public void addToMap(RNMBXMapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        super.addToMap(mapView);
        this.mMap = mapView.getMapboxMap();
        this.pointAnnotations = mapView.getPointAnnotations();
        makeMarker();
        View view = this.mChildView;
        if (view != null) {
            Intrinsics.checkNotNull(view);
            if (!view.isAttachedToWindow()) {
                RNMBXMapView mMapView = getMMapView();
                Intrinsics.checkNotNull(mMapView);
                ViewGroup offscreenAnnotationViewContainer = mMapView.getOffscreenAnnotationViewContainer();
                if (offscreenAnnotationViewContainer != null) {
                    offscreenAnnotationViewContainer.addView(this.mChildView);
                }
            }
            addBitmapToStyle(this.mChildBitmap, this.mChildBitmapId);
            updateOptions();
        }
        View view2 = this.calloutView;
        if (view2 != null) {
            Intrinsics.checkNotNull(view2);
            if (!view2.isAttachedToWindow() && getMMapView() != null) {
                RNMBXMapView mMapView2 = getMMapView();
                Intrinsics.checkNotNull(mMapView2);
                ViewGroup offscreenAnnotationViewContainer2 = mMapView2.getOffscreenAnnotationViewContainer();
                if (offscreenAnnotationViewContainer2 != null) {
                    offscreenAnnotationViewContainer2.addView(this.calloutView);
                }
            }
            addBitmapToStyle(this.mCalloutBitmap, this.mCalloutBitmapId);
        }
    }

    @Override
    public boolean removeFromMap(RNMBXMapView mapView, RemovalReason reason) {
        ViewGroup offscreenAnnotationViewContainer;
        ViewGroup offscreenAnnotationViewContainer2;
        RNMBXPointAnnotationCoordinator pointAnnotations;
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        Intrinsics.checkNotNullParameter(reason, "reason");
        RNMBXMapView mMapView = getMMapView();
        if (mMapView == null) {
            mMapView = mapView;
        }
        PointAnnotation pointAnnotation = this.annotation;
        if (pointAnnotation != null && (pointAnnotations = mMapView.getPointAnnotations()) != null) {
            pointAnnotations.delete(pointAnnotation);
        }
        View view = this.mChildView;
        if (view != null && (offscreenAnnotationViewContainer2 = mMapView.getOffscreenAnnotationViewContainer()) != null) {
            offscreenAnnotationViewContainer2.removeView(view);
        }
        View view2 = this.calloutView;
        if (view2 != null && (offscreenAnnotationViewContainer = mMapView.getOffscreenAnnotationViewContainer()) != null) {
            offscreenAnnotationViewContainer.removeView(view2);
        }
        return super.removeFromMap(mapView, reason);
    }

    @Override
    public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
        Intrinsics.checkNotNullParameter(v, "v");
        if (left == 0 && top == 0 && right == 0 && bottom == 0) {
            return;
        }
        if (left == oldLeft && right == oldRight && top == oldTop && bottom == oldBottom) {
            return;
        }
        refreshBitmap(v, left, top, right, bottom);
    }

    static void refreshBitmap$default(RNMBXPointAnnotation rNMBXPointAnnotation, View view, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 2) != 0) {
            i = view.getLeft();
        }
        int i6 = i;
        if ((i5 & 4) != 0) {
            i2 = view.getTop();
        }
        int i7 = i2;
        if ((i5 & 8) != 0) {
            i3 = view.getRight();
        }
        int i8 = i3;
        if ((i5 & 16) != 0) {
            i4 = view.getBottom();
        }
        rNMBXPointAnnotation.refreshBitmap(view, i6, i7, i8, i4);
    }

    private final void refreshBitmap(View v, int left, int top, int right, int bottom) {
        Bitmap bitmapViewToBitmap = BitmapUtils.INSTANCE.viewToBitmap(v, left, top, right, bottom);
        String string = Integer.toString(v.getId());
        addBitmapToStyle(bitmapViewToBitmap, string);
        if (v instanceof RNMBXCallout) {
            this.mCalloutBitmap = bitmapViewToBitmap;
            this.mCalloutBitmapId = string;
        } else if (bitmapViewToBitmap != null) {
            this.mChildBitmap = bitmapViewToBitmap;
            this.mChildBitmapId = string;
            updateOptions();
        }
    }

    public final LatLng getLatLng() {
        Point point = this.mCoordinate;
        if (point != null) {
            return GeoJSONUtils.INSTANCE.toLatLng(point);
        }
        return null;
    }

    public final String getMapboxID() {
        String id;
        PointAnnotation pointAnnotation = this.annotation;
        return (pointAnnotation == null || (id = pointAnnotation.getId()) == null) ? "" : id;
    }

    public final String getCalloutMapboxID() {
        String id;
        PointAnnotation pointAnnotation = this.mCalloutSymbol;
        return (pointAnnotation == null || (id = pointAnnotation.getId()) == null) ? "" : id;
    }

    public final void setCoordinate(Point point) {
        Intrinsics.checkNotNullParameter(point, "point");
        this.mCoordinate = point;
        PointAnnotation pointAnnotation = this.annotation;
        if (pointAnnotation != null) {
            pointAnnotation.setPoint(point);
            RNMBXPointAnnotationCoordinator rNMBXPointAnnotationCoordinator = this.pointAnnotations;
            if (rNMBXPointAnnotationCoordinator != null) {
                rNMBXPointAnnotationCoordinator.update(pointAnnotation);
            }
        }
        PointAnnotation pointAnnotation2 = this.mCalloutSymbol;
        if (pointAnnotation2 != null) {
            pointAnnotation2.setPoint(point);
            RNMBXPointAnnotationCoordinator rNMBXPointAnnotationCoordinator2 = this.pointAnnotations;
            if (rNMBXPointAnnotationCoordinator2 != null) {
                rNMBXPointAnnotationCoordinator2.update(pointAnnotation2);
            }
        }
    }

    public final void setAnchor(float x, float y) {
        this.mAnchor = new Float[]{Float.valueOf(x), Float.valueOf(y)};
        PointAnnotation pointAnnotation = this.annotation;
        if (pointAnnotation != null) {
            updateAnchor();
            RNMBXPointAnnotationCoordinator rNMBXPointAnnotationCoordinator = this.pointAnnotations;
            if (rNMBXPointAnnotationCoordinator != null) {
                rNMBXPointAnnotationCoordinator.update(pointAnnotation);
            }
        }
    }

    public final void setDraggable(boolean draggable) {
        this.mDraggable = draggable;
        PointAnnotation pointAnnotation = this.annotation;
        if (pointAnnotation != null) {
            pointAnnotation.setDraggable(draggable);
            RNMBXPointAnnotationCoordinator rNMBXPointAnnotationCoordinator = this.pointAnnotations;
            if (rNMBXPointAnnotationCoordinator != null) {
                rNMBXPointAnnotationCoordinator.update(pointAnnotation);
            }
        }
    }

    public final void doSelect(boolean shouldSendEvent) {
        if (this.calloutView != null) {
            makeCallout();
        }
        if (shouldSendEvent) {
            this.mManager.handleEvent(makeEvent(true));
        }
    }

    public final void doDeselect() {
        RNMBXPointAnnotationCoordinator rNMBXPointAnnotationCoordinator;
        this.mManager.handleEvent(makeEvent(false));
        PointAnnotation pointAnnotation = this.mCalloutSymbol;
        if (pointAnnotation == null || (rNMBXPointAnnotationCoordinator = this.pointAnnotations) == null) {
            return;
        }
        rNMBXPointAnnotationCoordinator.delete(pointAnnotation);
    }

    public final void onDragStart() {
        PointAnnotation pointAnnotation = this.annotation;
        Intrinsics.checkNotNull(pointAnnotation);
        this.mCoordinate = pointAnnotation.getPoint();
        this.mManager.handleEvent(makeDragEvent(EventTypes.ANNOTATION_DRAG_START));
    }

    public final void onDrag() {
        PointAnnotation pointAnnotation = this.annotation;
        Intrinsics.checkNotNull(pointAnnotation);
        this.mCoordinate = pointAnnotation.getPoint();
        this.mManager.handleEvent(makeDragEvent(EventTypes.ANNOTATION_DRAG));
    }

    public final void onDragEnd() {
        PointAnnotation pointAnnotation = this.annotation;
        Intrinsics.checkNotNull(pointAnnotation);
        this.mCoordinate = pointAnnotation.getPoint();
        this.mManager.handleEvent(makeDragEvent(EventTypes.ANNOTATION_DRAG_END));
    }

    public final void makeMarker() {
        Point point = this.mCoordinate;
        PointAnnotationOptions pointAnnotationOptionsWithSymbolSortKey = point != null ? new PointAnnotationOptions().withPoint(point).withDraggable(this.mDraggable).withIconSize(1.0d).withSymbolSortKey(10.0d) : null;
        this.annotation = null;
        if (pointAnnotationOptionsWithSymbolSortKey != null) {
            RNMBXPointAnnotationCoordinator rNMBXPointAnnotationCoordinator = this.pointAnnotations;
            this.annotation = rNMBXPointAnnotationCoordinator != null ? rNMBXPointAnnotationCoordinator.create(pointAnnotationOptionsWithSymbolSortKey) : null;
            updateOptions();
        }
    }

    public final void updateOptions() {
        PointAnnotation pointAnnotation = this.annotation;
        if (pointAnnotation != null) {
            updateIconImage();
            updateAnchor();
            RNMBXPointAnnotationCoordinator rNMBXPointAnnotationCoordinator = this.pointAnnotations;
            if (rNMBXPointAnnotationCoordinator != null) {
                rNMBXPointAnnotationCoordinator.update(pointAnnotation);
            }
        }
    }

    private final void updateIconImage() {
        PointAnnotation pointAnnotation;
        if (this.mChildView != null) {
            String str = this.mChildBitmapId;
            if (str == null || (pointAnnotation = this.annotation) == null) {
                return;
            }
            pointAnnotation.setIconImage(str);
            return;
        }
        PointAnnotation pointAnnotation2 = this.annotation;
        if (pointAnnotation2 != null) {
            pointAnnotation2.setIconImage(MARKER_IMAGE_ID);
        }
        PointAnnotation pointAnnotation3 = this.annotation;
        if (pointAnnotation3 != null) {
            pointAnnotation3.setIconAnchor(IconAnchor.BOTTOM);
        }
    }

    private final void updateAnchor() {
        Bitmap bitmap;
        if (this.mAnchor == null || this.mChildView == null || (bitmap = this.mChildBitmap) == null || this.annotation == null) {
            return;
        }
        Intrinsics.checkNotNull(bitmap);
        int width = bitmap.getWidth();
        Bitmap bitmap2 = this.mChildBitmap;
        Intrinsics.checkNotNull(bitmap2);
        int height = bitmap2.getHeight();
        float f = getResources().getDisplayMetrics().density;
        int i = (int) (width / f);
        int i2 = (int) (height / f);
        PointAnnotation pointAnnotation = this.annotation;
        if (pointAnnotation != null) {
            pointAnnotation.setIconAnchor(IconAnchor.TOP_LEFT);
        }
        PointAnnotation pointAnnotation2 = this.annotation;
        if (pointAnnotation2 != null) {
            double d = i;
            Float[] fArr = this.mAnchor;
            Intrinsics.checkNotNull(fArr);
            Float[] fArr2 = this.mAnchor;
            Intrinsics.checkNotNull(fArr2);
            pointAnnotation2.setIconOffset(Arrays.asList(Double.valueOf(d * ((double) fArr[0].floatValue()) * (-1.0d)), Double.valueOf(((double) i2) * ((double) fArr2[1].floatValue()) * (-1.0d))));
        }
    }

    private final void makeCallout() {
        float height;
        String str;
        if (this.mChildView == null || this.mChildBitmap == null) {
            height = -28.0f;
        } else {
            float f = getResources().getDisplayMetrics().density;
            Bitmap bitmap = this.mChildBitmap;
            Intrinsics.checkNotNull(bitmap);
            height = ((int) ((bitmap.getHeight() / 2) / f)) * (-1);
        }
        Point point = this.mCoordinate;
        PointAnnotationOptions pointAnnotationOptionsWithDraggable = null;
        if (point != null && (str = this.mCalloutBitmapId) != null) {
            PointAnnotationOptions pointAnnotationOptionsWithIconAnchor = new PointAnnotationOptions().withPoint(point).withIconImage(str).withIconSize(1.0d).withIconAnchor(IconAnchor.BOTTOM);
            List<Double> listAsList = Arrays.asList(Double.valueOf(0.0d), Double.valueOf(height));
            Intrinsics.checkNotNullExpressionValue(listAsList, "asList(...)");
            pointAnnotationOptionsWithDraggable = pointAnnotationOptionsWithIconAnchor.withIconOffset(listAsList).withSymbolSortKey(11.0d).withDraggable(false);
        }
        RNMBXPointAnnotationCoordinator rNMBXPointAnnotationCoordinator = this.pointAnnotations;
        if (rNMBXPointAnnotationCoordinator == null || pointAnnotationOptionsWithDraggable == null) {
            return;
        }
        this.mCalloutSymbol = rNMBXPointAnnotationCoordinator.create(pointAnnotationOptionsWithDraggable);
    }

    private final void addBitmapToStyle(final Bitmap bitmap, final String bitmapId) {
        MapboxMap mapboxMap = this.mMap;
        if (mapboxMap == null || bitmapId == null || bitmap == null) {
            return;
        }
        Intrinsics.checkNotNull(mapboxMap);
        mapboxMap.getStyle(new Style.OnStyleLoaded() {
            @Override
            public void onStyleLoaded(Style style) {
                Intrinsics.checkNotNullParameter(style, "style");
                style.addImage(bitmapId, bitmap);
            }
        });
    }

    private final PointAnnotationClickEvent makeEvent(boolean isSelect) {
        String str = isSelect ? EventTypes.ANNOTATION_SELECTED : EventTypes.ANNOTATION_DESELECTED;
        GeoJSONUtils geoJSONUtils = GeoJSONUtils.INSTANCE;
        Point point = this.mCoordinate;
        Intrinsics.checkNotNull(point);
        LatLng latLng = geoJSONUtils.toLatLng(point);
        PointF screenPosition = getScreenPosition(latLng);
        return new PointAnnotationClickEvent(this, latLng, new ScreenCoordinate(screenPosition.x, screenPosition.y), str);
    }

    private final PointAnnotationDragEvent makeDragEvent(String type) {
        GeoJSONUtils geoJSONUtils = GeoJSONUtils.INSTANCE;
        Point point = this.mCoordinate;
        Intrinsics.checkNotNull(point);
        LatLng latLng = geoJSONUtils.toLatLng(point);
        return new PointAnnotationDragEvent(this, latLng, getScreenPosition(latLng), type);
    }

    private final float getDisplayDensity() {
        return this.mContext.getResources().getDisplayMetrics().density;
    }

    private final PointF getScreenPosition(LatLng latLng) {
        MapboxMap mapboxMap = this.mMap;
        Intrinsics.checkNotNull(mapboxMap);
        Point point = latLng.getPoint();
        Intrinsics.checkNotNullExpressionValue(point, "getPoint(...)");
        ScreenCoordinate screenCoordinatePixelForCoordinate = mapboxMap.pixelForCoordinate(point);
        double displayDensity = getDisplayDensity();
        return new PointF((float) (screenCoordinatePixelForCoordinate.getX() / displayDensity), (float) (screenCoordinatePixelForCoordinate.getY() / displayDensity));
    }

    public final void refresh() {
        View view = this.mChildView;
        if (view != null) {
            Intrinsics.checkNotNull(view);
            refreshBitmap$default(this, view, 0, 0, 0, 0, 30, null);
        }
    }
}
