package com.rnmapbox.rnmbx.components.images;

import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.uimanager.ViewProps;
import com.facebook.react.views.view.ReactViewGroup;
import com.mapbox.maps.ImageContent;
import com.mapbox.maps.ImageStretches;
import com.rnmapbox.rnmbx.components.mapview.RNMBXMapView;
import com.rnmapbox.rnmbx.utils.BitmapUtils;
import com.rnmapbox.rnmbx.utils.Logger;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0012\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020FH\u0016JP\u0010G\u001a\u00020D2\u0006\u0010H\u001a\u00020,2\u0006\u0010I\u001a\u00020F2\u0006\u0010J\u001a\u00020F2\u0006\u0010K\u001a\u00020F2\u0006\u0010L\u001a\u00020F2\u0006\u0010M\u001a\u00020F2\u0006\u0010N\u001a\u00020F2\u0006\u0010O\u001a\u00020F2\u0006\u0010P\u001a\u00020FH\u0016J8\u0010Q\u001a\u00020D2\u0006\u0010H\u001a\u00020,2\b\b\u0002\u0010I\u001a\u00020F2\b\b\u0002\u0010J\u001a\u00020F2\b\b\u0002\u0010K\u001a\u00020F2\b\b\u0002\u0010L\u001a\u00020FH\u0002J\u0006\u0010R\u001a\u00020DJ\u0018\u0010S\u001a\u00020D2\u0006\u0010T\u001a\u00020,2\u0006\u0010U\u001a\u00020FH\u0016J\u000e\u0010V\u001a\u00020D2\u0006\u0010W\u001a\u000202R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR \u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R \u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u001f\"\u0004\b$\u0010!R\u001c\u0010%\u001a\u0004\u0018\u00010&X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u001c\u0010+\u001a\u0004\u0018\u00010,X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u001c\u00101\u001a\u0004\u0018\u000102X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u001c\u00107\u001a\u0004\u0018\u000108X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\u001c\u0010=\u001a\u0004\u0018\u00010>X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010@\"\u0004\bA\u0010B¨\u0006X"}, d2 = {"Lcom/rnmapbox/rnmbx/components/images/RNMBXImage;", "Lcom/facebook/react/views/view/ReactViewGroup;", "Landroid/view/View$OnLayoutChangeListener;", "mContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "mManager", "Lcom/rnmapbox/rnmbx/components/images/RNMBXImageManager;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/rnmapbox/rnmbx/components/images/RNMBXImageManager;)V", "name", "", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "sdf", "", "getSdf", "()Z", "setSdf", "(Z)V", "scale", "", "getScale", "()D", "setScale", "(D)V", "stretchX", "", "Lcom/mapbox/maps/ImageStretches;", "getStretchX", "()Ljava/util/List;", "setStretchX", "(Ljava/util/List;)V", "stretchY", "getStretchY", "setStretchY", "content", "Lcom/mapbox/maps/ImageContent;", "getContent", "()Lcom/mapbox/maps/ImageContent;", "setContent", "(Lcom/mapbox/maps/ImageContent;)V", "mChildView", "Landroid/view/View;", "getMChildView", "()Landroid/view/View;", "setMChildView", "(Landroid/view/View;)V", "mMapView", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "getMMapView", "()Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "setMMapView", "(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V", "nativeImageUpdater", "Lcom/rnmapbox/rnmbx/components/images/NativeImageUpdater;", "getNativeImageUpdater", "()Lcom/rnmapbox/rnmbx/components/images/NativeImageUpdater;", "setNativeImageUpdater", "(Lcom/rnmapbox/rnmbx/components/images/NativeImageUpdater;)V", "mBitmap", "Landroid/graphics/Bitmap;", "getMBitmap", "()Landroid/graphics/Bitmap;", "setMBitmap", "(Landroid/graphics/Bitmap;)V", "setId", "", "id", "", "onLayoutChange", "v", ViewProps.LEFT, ViewProps.TOP, ViewProps.RIGHT, ViewProps.BOTTOM, "oldLeft", "oldTop", "oldRight", "oldBottom", "refreshBitmap", "refresh", "addView", "childView", "childPosition", "addToMap", "mapView", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXImage extends ReactViewGroup implements View.OnLayoutChangeListener {
    private ImageContent content;
    private Bitmap mBitmap;
    private View mChildView;
    private final ReactApplicationContext mContext;
    private final RNMBXImageManager mManager;
    private RNMBXMapView mMapView;
    private String name;
    private NativeImageUpdater nativeImageUpdater;
    private double scale;
    private boolean sdf;
    private List<ImageStretches> stretchX;
    private List<ImageStretches> stretchY;

    public RNMBXImage(ReactApplicationContext mContext, RNMBXImageManager mManager) {
        super(mContext);
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        Intrinsics.checkNotNullParameter(mManager, "mManager");
        this.mContext = mContext;
        this.mManager = mManager;
        this.scale = 1.0d;
        this.stretchX = CollectionsKt.emptyList();
        this.stretchY = CollectionsKt.emptyList();
    }

    public final String getName() {
        return this.name;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final boolean getSdf() {
        return this.sdf;
    }

    public final void setSdf(boolean z) {
        this.sdf = z;
    }

    public final double getScale() {
        return this.scale;
    }

    public final void setScale(double d) {
        this.scale = d;
    }

    public final List<ImageStretches> getStretchX() {
        return this.stretchX;
    }

    public final void setStretchX(List<ImageStretches> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.stretchX = list;
    }

    public final List<ImageStretches> getStretchY() {
        return this.stretchY;
    }

    public final void setStretchY(List<ImageStretches> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.stretchY = list;
    }

    public final ImageContent getContent() {
        return this.content;
    }

    public final void setContent(ImageContent imageContent) {
        this.content = imageContent;
    }

    public final View getMChildView() {
        return this.mChildView;
    }

    public final void setMChildView(View view) {
        this.mChildView = view;
    }

    public final RNMBXMapView getMMapView() {
        return this.mMapView;
    }

    public final void setMMapView(RNMBXMapView rNMBXMapView) {
        this.mMapView = rNMBXMapView;
    }

    public final NativeImageUpdater getNativeImageUpdater() {
        return this.nativeImageUpdater;
    }

    public final void setNativeImageUpdater(NativeImageUpdater nativeImageUpdater) {
        this.nativeImageUpdater = nativeImageUpdater;
    }

    public final Bitmap getMBitmap() {
        return this.mBitmap;
    }

    public final void setMBitmap(Bitmap bitmap) {
        this.mBitmap = bitmap;
    }

    @Override
    public void setId(int id) {
        super.setId(id);
        this.mManager.tagAssigned(id);
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

    static void refreshBitmap$default(RNMBXImage rNMBXImage, View view, int i, int i2, int i3, int i4, int i5, Object obj) {
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
        rNMBXImage.refreshBitmap(view, i6, i7, i8, i4);
    }

    private final void refreshBitmap(View v, int left, int top, int right, int bottom) {
        NativeImageUpdater nativeImageUpdater;
        String str = this.name;
        if (str == null) {
            Logger.INSTANCE.e("RNMBXImage", "Image component has no name");
            return;
        }
        Bitmap bitmapViewToBitmap = BitmapUtils.INSTANCE.viewToBitmap(v, left, top, right, bottom);
        if (bitmapViewToBitmap == null || (nativeImageUpdater = this.nativeImageUpdater) == null) {
            return;
        }
        nativeImageUpdater.updateImage(str, bitmapViewToBitmap, this.sdf, this.stretchX, this.stretchY, this.content, this.scale);
        this.mBitmap = null;
    }

    public final void refresh() {
        View view = this.mChildView;
        if (view != null) {
            refreshBitmap$default(this, view, 0, 0, 0, 0, 30, null);
        }
    }

    @Override
    public void addView(View childView, int childPosition) {
        ViewGroup offscreenAnnotationViewContainer;
        Intrinsics.checkNotNullParameter(childView, "childView");
        if (childPosition != 0) {
            Logger.INSTANCE.e("RNMBXImage", "expected a single subview got childView:" + childView + " position:" + childPosition);
        }
        RNMBXMapView rNMBXMapView = this.mMapView;
        if (rNMBXMapView != null && (offscreenAnnotationViewContainer = rNMBXMapView.getOffscreenAnnotationViewContainer()) != null) {
            offscreenAnnotationViewContainer.addView(childView);
        }
        this.mChildView = childView;
        childView.addOnLayoutChangeListener(this);
    }

    public final void addToMap(RNMBXMapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        this.mMapView = mapView;
    }
}
