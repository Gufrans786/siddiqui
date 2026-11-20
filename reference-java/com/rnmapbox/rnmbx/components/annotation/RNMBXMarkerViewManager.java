package com.rnmapbox.rnmbx.components.annotation;

import android.view.View;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.facebook.react.bridge.Dynamic;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.common.MapBuilder;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewManagerDelegate;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.viewmanagers.RNMBXMarkerViewManagerDelegate;
import com.facebook.react.viewmanagers.RNMBXMarkerViewManagerInterface;
import com.mapbox.maps.viewannotation.ViewAnnotationManager;
import com.nimbusds.jose.jwk.JWKParameterNames;
import com.rnmapbox.rnmbx.components.AbstractEventEmitter;
import com.rnmapbox.rnmbx.components.mapview.RNMBXMapView;
import com.rnmapbox.rnmbx.utils.GeoJSONUtils;
import com.rnmapbox.rnmbx.utils.LatLng;
import com.rnmapbox.rnmbx.utils.Logger;
import com.rnmapbox.rnmbx.v11compat.annotation.OnViewAnnotationUpdatedListener;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\u0018\u0000 \u001f2\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003:\u0001\u001fB\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\tH\u0014J\b\u0010\u000b\u001a\u00020\fH\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0011H\u0017J\u0018\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0011H\u0017J\u0018\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0011H\u0017J\u0018\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0011H\u0017J\u0018\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0011H\u0017J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001cH\u0014J\u0016\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f\u0018\u00010\u001eH\u0016R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/rnmapbox/rnmbx/components/annotation/RNMBXMarkerViewManager;", "Lcom/rnmapbox/rnmbx/components/AbstractEventEmitter;", "Lcom/rnmapbox/rnmbx/components/annotation/RNMBXMarkerView;", "Lcom/facebook/react/viewmanagers/RNMBXMarkerViewManagerInterface;", "reactApplicationContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "mDelegate", "Lcom/facebook/react/uimanager/ViewManagerDelegate;", "getDelegate", "getName", "", "setCoordinate", "", "markerView", "value", "Lcom/facebook/react/bridge/Dynamic;", "setAnchor", "map", "setAllowOverlap", "allowOverlap", "setAllowOverlapWithPuck", "allowOverlapWithPuck", "setIsSelected", "isSelected", "createViewInstance", "reactContext", "Lcom/facebook/react/uimanager/ThemedReactContext;", "customEvents", "", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXMarkerViewManager extends AbstractEventEmitter<RNMBXMarkerView> implements RNMBXMarkerViewManagerInterface<RNMBXMarkerView> {

    public static final Companion INSTANCE = new Companion(null);
    public static final String REACT_CLASS = "RNMBXMarkerView";
    private final ViewManagerDelegate<RNMBXMarkerView> mDelegate;

    public RNMBXMarkerViewManager(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        Intrinsics.checkNotNullParameter(reactApplicationContext, "reactApplicationContext");
        this.mDelegate = new RNMBXMarkerViewManagerDelegate(this);
    }

    @Override
    protected ViewManagerDelegate<RNMBXMarkerView> getDelegate() {
        return this.mDelegate;
    }

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    @ReactProp(name = "coordinate")
    public void setCoordinate(RNMBXMarkerView markerView, Dynamic value) {
        Intrinsics.checkNotNullParameter(markerView, "markerView");
        Intrinsics.checkNotNullParameter(value, "value");
        ReadableArray readableArrayAsArray = value.asArray();
        if (readableArrayAsArray == null) {
            Logger.INSTANCE.e("RNMBXMarkerViewManager", "array in setCoordinate is null");
        } else {
            markerView.setCoordinate(GeoJSONUtils.toGNPointGeometry(new LatLng(readableArrayAsArray.getDouble(1), readableArrayAsArray.getDouble(0))));
        }
    }

    @Override
    @ReactProp(name = "anchor")
    public void setAnchor(RNMBXMarkerView markerView, Dynamic map) {
        Intrinsics.checkNotNullParameter(markerView, "markerView");
        Intrinsics.checkNotNullParameter(map, "map");
        ReadableMap readableMapAsMap = map.asMap();
        if (readableMapAsMap == null) {
            Logger.INSTANCE.e("RNMBXMarkerViewManager", "map in setAnchor is null");
        } else {
            markerView.setAnchor((float) readableMapAsMap.getDouble("x"), (float) readableMapAsMap.getDouble(JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE));
        }
    }

    @Override
    @ReactProp(name = "allowOverlap")
    public void setAllowOverlap(RNMBXMarkerView markerView, Dynamic allowOverlap) {
        Intrinsics.checkNotNullParameter(markerView, "markerView");
        Intrinsics.checkNotNullParameter(allowOverlap, "allowOverlap");
        markerView.setAllowOverlap(allowOverlap.asBoolean());
    }

    @Override
    @ReactProp(name = "allowOverlapWithPuck")
    public void setAllowOverlapWithPuck(RNMBXMarkerView markerView, Dynamic allowOverlapWithPuck) {
        Intrinsics.checkNotNullParameter(markerView, "markerView");
        Intrinsics.checkNotNullParameter(allowOverlapWithPuck, "allowOverlapWithPuck");
        markerView.setAllowOverlapWithPuck(allowOverlapWithPuck.asBoolean());
    }

    @Override
    @ReactProp(name = "isSelected")
    public void setIsSelected(RNMBXMarkerView markerView, Dynamic isSelected) {
        Intrinsics.checkNotNullParameter(markerView, "markerView");
        Intrinsics.checkNotNullParameter(isSelected, "isSelected");
        markerView.setIsSelected(isSelected.asBoolean());
    }

    @Override
    public RNMBXMarkerView createViewInstance(ThemedReactContext reactContext) {
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        return new RNMBXMarkerView(reactContext, this);
    }

    @Override
    public Map<String, String> customEvents() {
        return MapBuilder.builder().build();
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/rnmapbox/rnmbx/components/annotation/RNMBXMarkerViewManager$Companion;", "", "<init>", "()V", "REACT_CLASS", "", "markerViewContainerSizeFixer", "", "mapView", "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;", "viewAnnotationManager", "Lcom/mapbox/maps/viewannotation/ViewAnnotationManager;", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void markerViewContainerSizeFixer(final RNMBXMapView mapView, ViewAnnotationManager viewAnnotationManager) {
            Intrinsics.checkNotNullParameter(mapView, "mapView");
            Intrinsics.checkNotNullParameter(viewAnnotationManager, "viewAnnotationManager");
            viewAnnotationManager.addOnViewAnnotationUpdatedListener(new OnViewAnnotationUpdatedListener() {
                @Override
                public void onViewAnnotationVisibilityUpdated(View view, boolean visible) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    ViewParent parent = view.getParent();
                    if (parent instanceof FrameLayout) {
                        FrameLayout frameLayout = (FrameLayout) parent;
                        if (frameLayout.getWidth() == 0 && frameLayout.getHeight() == 0) {
                            if (mapView.getWidth() == 0 && mapView.getHeight() == 0) {
                                return;
                            }
                            frameLayout.layout(0, 0, mapView.getWidth(), mapView.getHeight());
                        }
                    }
                }
            });
        }
    }
}
