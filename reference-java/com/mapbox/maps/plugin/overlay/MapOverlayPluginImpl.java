package com.mapbox.maps.plugin.overlay;

import android.view.View;
import com.facebook.react.uimanager.ViewProps;
import com.mapbox.geojson.Point;
import com.mapbox.maps.CameraOptions;
import com.mapbox.maps.EdgeInsets;
import com.mapbox.maps.plugin.delegates.MapCameraManagerDelegate;
import com.mapbox.maps.plugin.delegates.MapDelegateProvider;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0006\b\u0001\u0018\u00002\u00020\u0001:\u00013B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000fH\u0002J\u0010\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0018\u0010!\u001a\u00020\u00182\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004H\u0016J\u001e\u0010\"\u001a\u00020\u00182\u0014\u0010#\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010%\u0012\u0004\u0012\u00020\u00180$H\u0002J\u0012\u0010\"\u001a\u00020\u00182\b\u0010&\u001a\u0004\u0018\u00010'H\u0016J\u0010\u0010(\u001a\u00020\u00182\u0006\u0010)\u001a\u00020\fH\u0016J\u0010\u0010*\u001a\u00020\u00182\u0006\u0010+\u001a\u00020\u000fH\u0016J\u0016\u0010,\u001a\u00020\u00182\f\u0010-\u001a\b\u0012\u0004\u0012\u00020\u000f0.H\u0016J(\u0010/\u001a\u00020\u00182\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004H\u0016J\b\u00100\u001a\u00020\u0018H\u0016J\u0010\u00101\u001a\u00020\u00182\u0006\u0010+\u001a\u00020\u000fH\u0016J\u0016\u00102\u001a\u00020\u00182\f\u0010-\u001a\b\u0012\u0004\u0012\u00020\u000f0.H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u00020\u0004X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0006\"\u0004\b\u0016\u0010\b¨\u00064"}, d2 = {"Lcom/mapbox/maps/plugin/overlay/MapOverlayPluginImpl;", "Lcom/mapbox/maps/plugin/overlay/MapOverlayPlugin;", "()V", "height", "", "getHeight$plugin_overlay_release", "()I", "setHeight$plugin_overlay_release", "(I)V", "mapCameraManagerDelegate", "Lcom/mapbox/maps/plugin/delegates/MapCameraManagerDelegate;", "mapOverlayCoordinatesProvider", "Lcom/mapbox/maps/plugin/overlay/MapOverlayCoordinatesProvider;", "mapOverlays", "", "Landroid/view/View;", ViewProps.MARGIN_BOTTOM, ViewProps.MARGIN_LEFT, ViewProps.MARGIN_RIGHT, ViewProps.MARGIN_TOP, "width", "getWidth$plugin_overlay_release", "setWidth$plugin_overlay_release", "cleanup", "", "getEdgeInsets", "Lcom/mapbox/maps/EdgeInsets;", "getMapOverLayRect", "Lcom/mapbox/maps/plugin/overlay/MapOverlayPluginImpl$MapOverLayRect;", "view", "onDelegateProvider", "delegateProvider", "Lcom/mapbox/maps/plugin/delegates/MapDelegateProvider;", "onSizeChanged", "reframe", "result", "Lkotlin/Function1;", "Lcom/mapbox/maps/CameraOptions;", "onReframeFinished", "Lcom/mapbox/maps/plugin/overlay/OnReframeFinished;", "registerMapOverlayCoordinatesProvider", "provider", "registerOverlay", "overlay", "registerOverlays", "overlays", "", "setDisplayingAreaMargins", "unregisterMapOverlayCoordinatesProvider", "unregisterOverlay", "unregisterOverlays", "MapOverLayRect", "plugin-overlay_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MapOverlayPluginImpl implements MapOverlayPlugin {
    private int height;
    private MapCameraManagerDelegate mapCameraManagerDelegate;
    private MapOverlayCoordinatesProvider mapOverlayCoordinatesProvider;
    private final List<View> mapOverlays = new ArrayList();
    private int marginBottom;
    private int marginLeft;
    private int marginRight;
    private int marginTop;
    private int width;

    @Override
    public void initialize() {
        MapOverlayPlugin.DefaultImpls.initialize(this);
    }

    public final int getWidth() {
        return this.width;
    }

    public final void setWidth$plugin_overlay_release(int i) {
        this.width = i;
    }

    public final int getHeight() {
        return this.height;
    }

    public final void setHeight$plugin_overlay_release(int i) {
        this.height = i;
    }

    @Override
    public void onSizeChanged(int width, int height) {
        this.width = width;
        this.height = height;
    }

    @Override
    public void registerMapOverlayCoordinatesProvider(MapOverlayCoordinatesProvider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.mapOverlayCoordinatesProvider = provider;
    }

    @Override
    public void unregisterMapOverlayCoordinatesProvider() {
        this.mapOverlayCoordinatesProvider = null;
    }

    @Override
    public void registerOverlay(View overlay) {
        Intrinsics.checkNotNullParameter(overlay, "overlay");
        this.mapOverlays.add(overlay);
    }

    @Override
    public void registerOverlays(List<? extends View> overlays) {
        Intrinsics.checkNotNullParameter(overlays, "overlays");
        this.mapOverlays.addAll(overlays);
    }

    @Override
    public void unregisterOverlay(View overlay) {
        Intrinsics.checkNotNullParameter(overlay, "overlay");
        this.mapOverlays.remove(overlay);
    }

    @Override
    public void unregisterOverlays(List<? extends View> overlays) {
        Intrinsics.checkNotNullParameter(overlays, "overlays");
        Iterator<T> it = overlays.iterator();
        while (it.hasNext()) {
            this.mapOverlays.remove((View) it.next());
        }
    }

    @Override
    public void setDisplayingAreaMargins(int marginTop, int marginLeft, int marginBottom, int marginRight) {
        this.marginLeft = marginLeft;
        this.marginTop = marginTop;
        this.marginRight = marginRight;
        this.marginBottom = marginBottom;
    }

    @Override
    public void reframe(final OnReframeFinished onReframeFinished) {
        reframe(new Function1<CameraOptions, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(CameraOptions cameraOptions) {
                invoke2(cameraOptions);
                return Unit.INSTANCE;
            }

            public final void invoke2(CameraOptions cameraOptions) {
                OnReframeFinished onReframeFinished2 = onReframeFinished;
                if (onReframeFinished2 != null) {
                    onReframeFinished2.onReframeFinished(cameraOptions);
                    return;
                }
                if (cameraOptions != null) {
                    MapCameraManagerDelegate mapCameraManagerDelegate = this.mapCameraManagerDelegate;
                    if (mapCameraManagerDelegate == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mapCameraManagerDelegate");
                        mapCameraManagerDelegate = null;
                    }
                    mapCameraManagerDelegate.setCamera(cameraOptions);
                }
            }
        });
    }

    private final void reframe(Function1<? super CameraOptions, Unit> result) {
        Unit unit;
        MapCameraManagerDelegate mapCameraManagerDelegate;
        MapOverlayCoordinatesProvider mapOverlayCoordinatesProvider = this.mapOverlayCoordinatesProvider;
        if (mapOverlayCoordinatesProvider != null) {
            double dMax = -90.0d;
            double dMin = 90.0d;
            double dMin2 = 180.0d;
            double dMax2 = -180.0d;
            for (Point point : mapOverlayCoordinatesProvider.getShownCoordinates()) {
                dMax = Math.max(dMax, point.latitude());
                dMin = Math.min(dMin, point.latitude());
                dMin2 = Math.min(dMin2, point.longitude());
                dMax2 = Math.max(dMax2, point.longitude());
            }
            MapCameraManagerDelegate mapCameraManagerDelegate2 = this.mapCameraManagerDelegate;
            if (mapCameraManagerDelegate2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mapCameraManagerDelegate");
                mapCameraManagerDelegate = null;
            } else {
                mapCameraManagerDelegate = mapCameraManagerDelegate2;
            }
            List<Point> listListOf = CollectionsKt.listOf((Object[]) new Point[]{Point.fromLngLat(dMin2, dMin), Point.fromLngLat(dMax2, dMax)});
            CameraOptions.Builder builder = new CameraOptions.Builder();
            Unit unit2 = Unit.INSTANCE;
            CameraOptions cameraOptionsBuild = builder.build();
            Intrinsics.checkNotNullExpressionValue(cameraOptionsBuild, "Builder().apply(block).build()");
            mapCameraManagerDelegate.cameraForCoordinates(listListOf, cameraOptionsBuild, getEdgeInsets(), null, null, result);
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            result.invoke(null);
        }
    }

    private final MapOverLayRect getMapOverLayRect(View view) {
        return new MapOverLayRect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    @Override
    public EdgeInsets getEdgeInsets() {
        LinkedList linkedList = new LinkedList();
        linkedList.push(new MapOverLayRect(0, 0, this.width, this.height));
        List<View> list = this.mapOverlays;
        ArrayList<MapOverLayRect> arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(getMapOverLayRect((View) it.next()));
        }
        for (MapOverLayRect mapOverLayRect : arrayList) {
            for (int size = linkedList.size(); size > 0; size--) {
                Object objPollFirst = linkedList.pollFirst();
                Intrinsics.checkNotNull(objPollFirst);
                MapOverLayRect mapOverLayRect2 = (MapOverLayRect) objPollFirst;
                if (mapOverLayRect.isOverLap(mapOverLayRect2)) {
                    if (mapOverLayRect.getTop() - mapOverLayRect2.getTop() < mapOverLayRect2.getBottom() - mapOverLayRect.getBottom()) {
                        linkedList.offerLast(mapOverLayRect2.updateTop(mapOverLayRect.getBottom()));
                    } else if (mapOverLayRect.getTop() - mapOverLayRect2.getTop() > mapOverLayRect2.getBottom() - mapOverLayRect.getBottom()) {
                        linkedList.offerLast(mapOverLayRect2.updateBottom(mapOverLayRect.getTop()));
                    } else {
                        linkedList.offerLast(mapOverLayRect2.updateTop(mapOverLayRect.getBottom()));
                        linkedList.offerLast(mapOverLayRect2.updateBottom(mapOverLayRect.getTop()));
                    }
                    if (mapOverLayRect.getLeft() - mapOverLayRect2.getLeft() < mapOverLayRect2.getRight() - mapOverLayRect.getRight()) {
                        linkedList.offerLast(mapOverLayRect2.updateLeft(mapOverLayRect.getRight()));
                    } else if (mapOverLayRect.getLeft() - mapOverLayRect2.getLeft() < mapOverLayRect2.getRight() - mapOverLayRect.getRight()) {
                        linkedList.offerLast(mapOverLayRect2.updateRight(mapOverLayRect.getLeft()));
                    } else {
                        linkedList.offerLast(mapOverLayRect2.updateLeft(mapOverLayRect.getRight()));
                        linkedList.offerLast(mapOverLayRect2.updateRight(mapOverLayRect.getLeft()));
                    }
                } else {
                    linkedList.offerLast(mapOverLayRect2);
                }
            }
        }
        MapOverLayRect mapOverLayRect3 = (MapOverLayRect) CollectionsKt.maxOrNull((Iterable) linkedList);
        if (mapOverLayRect3 == null) {
            return new EdgeInsets(this.marginTop, this.marginLeft, this.marginBottom, this.marginRight);
        }
        return new EdgeInsets(((double) mapOverLayRect3.getTop()) + ((double) this.marginTop), ((double) mapOverLayRect3.getLeft()) + ((double) this.marginLeft), (this.height - mapOverLayRect3.getBottom()) + this.marginBottom, (this.width - mapOverLayRect3.getRight()) + this.marginRight);
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\n\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\u0011\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0000H\u0096\u0002J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0000J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0003J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0003J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0003J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0003R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000b¨\u0006\u001f"}, d2 = {"Lcom/mapbox/maps/plugin/overlay/MapOverlayPluginImpl$MapOverLayRect;", "", ViewProps.LEFT, "", ViewProps.TOP, ViewProps.RIGHT, ViewProps.BOTTOM, "(IIII)V", "getBottom", "()I", "setBottom", "(I)V", "getLeft", "setLeft", "getRight", "setRight", "getTop", "setTop", "compareTo", "other", "isOverLap", "", "reactAnother", "updateBottom", "newBottom", "updateLeft", "newLeft", "updateRight", "newRight", "updateTop", "newTop", "plugin-overlay_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class MapOverLayRect implements Comparable<MapOverLayRect> {
        private int bottom;
        private int left;
        private int right;
        private int top;

        public MapOverLayRect(int i, int i2, int i3, int i4) {
            this.left = i;
            this.top = i2;
            this.right = i3;
            this.bottom = i4;
        }

        public final int getLeft() {
            return this.left;
        }

        public final void setLeft(int i) {
            this.left = i;
        }

        public final int getTop() {
            return this.top;
        }

        public final void setTop(int i) {
            this.top = i;
        }

        public final int getRight() {
            return this.right;
        }

        public final void setRight(int i) {
            this.right = i;
        }

        public final int getBottom() {
            return this.bottom;
        }

        public final void setBottom(int i) {
            this.bottom = i;
        }

        public final boolean isOverLap(MapOverLayRect reactAnother) {
            Intrinsics.checkNotNullParameter(reactAnother, "reactAnother");
            return this.right > reactAnother.left && this.bottom > reactAnother.top && this.left < reactAnother.right && this.top < reactAnother.bottom;
        }

        public final MapOverLayRect updateTop(int newTop) {
            return new MapOverLayRect(this.left, newTop, this.right, this.bottom);
        }

        public final MapOverLayRect updateLeft(int newLeft) {
            return new MapOverLayRect(newLeft, this.top, this.right, this.bottom);
        }

        public final MapOverLayRect updateRight(int newRight) {
            return new MapOverLayRect(this.left, this.top, newRight, this.bottom);
        }

        public final MapOverLayRect updateBottom(int newBottom) {
            return new MapOverLayRect(this.left, this.top, this.right, newBottom);
        }

        @Override
        public int compareTo(MapOverLayRect other) {
            Intrinsics.checkNotNullParameter(other, "other");
            return ((this.right - this.left) * (this.bottom - this.top)) - ((other.right - other.left) * (other.bottom - other.top));
        }
    }

    @Override
    public void cleanup() {
        unregisterMapOverlayCoordinatesProvider();
        this.mapOverlays.clear();
    }

    @Override
    public void onDelegateProvider(MapDelegateProvider delegateProvider) {
        Intrinsics.checkNotNullParameter(delegateProvider, "delegateProvider");
        this.mapCameraManagerDelegate = delegateProvider.getMapCameraManagerDelegate();
    }
}
