package com.rnmapbox.rnmbx.components.annotation;

import com.facebook.react.bridge.Dynamic;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewManagerDelegate;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.viewmanagers.RNMBXPointAnnotationManagerDelegate;
import com.facebook.react.viewmanagers.RNMBXPointAnnotationManagerInterface;
import com.mapbox.geojson.Point;
import com.nimbusds.jose.jwk.JWKParameterNames;
import com.rnmapbox.rnmbx.components.AbstractEventEmitter;
import com.rnmapbox.rnmbx.events.constants.EventKeys;
import com.rnmapbox.rnmbx.events.constants.EventKeysKt;
import com.rnmapbox.rnmbx.utils.GeoJSONUtils;
import com.rnmapbox.rnmbx.utils.Logger;
import com.rnmapbox.rnmbx.utils.ViewTagResolver;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 &2\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003:\u0001&B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\rH\u0014J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\u0014\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0015H\u0014J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0002H\u0016J\u000e\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001bJ\u0018\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001fH\u0017J\u0018\u0010 \u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u001fH\u0017J\u0018\u0010\"\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\u001fH\u0017J\u0018\u0010$\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u001fH\u0017R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotationManager;", "Lcom/rnmapbox/rnmbx/components/AbstractEventEmitter;", "Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotation;", "Lcom/facebook/react/viewmanagers/RNMBXPointAnnotationManagerInterface;", "reactApplicationContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "viewTagResolver", "Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;)V", "getViewTagResolver", "()Lcom/rnmapbox/rnmbx/utils/ViewTagResolver;", "mDelegate", "Lcom/facebook/react/uimanager/ViewManagerDelegate;", "getDelegate", "getName", "", "customEvents", "", "createViewInstance", "reactContext", "Lcom/facebook/react/uimanager/ThemedReactContext;", "onDropViewInstance", "", "view", "tagAssigned", "reactTag", "", "setId", "annotation", "id", "Lcom/facebook/react/bridge/Dynamic;", "setCoordinate", "geoJSONStr", "setAnchor", "map", "setDraggable", "draggable", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXPointAnnotationManager extends AbstractEventEmitter<RNMBXPointAnnotation> implements RNMBXPointAnnotationManagerInterface<RNMBXPointAnnotation> {
    public static final String REACT_CLASS = "RNMBXPointAnnotation";
    private final ViewManagerDelegate<RNMBXPointAnnotation> mDelegate;
    private final ViewTagResolver viewTagResolver;

    public RNMBXPointAnnotationManager(ReactApplicationContext reactApplicationContext, ViewTagResolver viewTagResolver) {
        super(reactApplicationContext);
        Intrinsics.checkNotNullParameter(reactApplicationContext, "reactApplicationContext");
        Intrinsics.checkNotNullParameter(viewTagResolver, "viewTagResolver");
        this.viewTagResolver = viewTagResolver;
        this.mDelegate = new RNMBXPointAnnotationManagerDelegate(this);
    }

    public final ViewTagResolver getViewTagResolver() {
        return this.viewTagResolver;
    }

    @Override
    protected ViewManagerDelegate<RNMBXPointAnnotation> getDelegate() {
        return this.mDelegate;
    }

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    public Map<String, String> customEvents() {
        return EventKeysKt.eventMapOf(TuplesKt.to(EventKeys.POINT_ANNOTATION_SELECTED, "onMapboxPointAnnotationSelected"), TuplesKt.to(EventKeys.POINT_ANNOTATION_DESELECTED, "onMapboxPointAnnotationDeselected"), TuplesKt.to(EventKeys.POINT_ANNOTATION_DRAG_START, "onMapboxPointAnnotationDragStart"), TuplesKt.to(EventKeys.POINT_ANNOTATION_DRAG, "onMapboxPointAnnotationDrag"), TuplesKt.to(EventKeys.POINT_ANNOTATION_DRAG_END, "onMapboxPointAnnotationDragEnd"));
    }

    @Override
    public RNMBXPointAnnotation createViewInstance(ThemedReactContext reactContext) {
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        return new RNMBXPointAnnotation(reactContext, this);
    }

    @Override
    public void onDropViewInstance(RNMBXPointAnnotation view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.viewTagResolver.viewRemoved(view.getId());
        super.onDropViewInstance(view);
    }

    public final void tagAssigned(int reactTag) {
        this.viewTagResolver.tagAssigned(reactTag);
    }

    @Override
    @ReactProp(name = "id")
    public void setId(RNMBXPointAnnotation annotation, Dynamic id) {
        Intrinsics.checkNotNullParameter(annotation, "annotation");
        Intrinsics.checkNotNullParameter(id, "id");
        annotation.setID(id.asString());
    }

    @Override
    @ReactProp(name = "coordinate")
    public void setCoordinate(RNMBXPointAnnotation annotation, Dynamic geoJSONStr) {
        Intrinsics.checkNotNullParameter(annotation, "annotation");
        Intrinsics.checkNotNullParameter(geoJSONStr, "geoJSONStr");
        Point pointGeometry = GeoJSONUtils.toPointGeometry(geoJSONStr.asString());
        Intrinsics.checkNotNull(pointGeometry);
        annotation.setCoordinate(pointGeometry);
    }

    @Override
    @ReactProp(name = "anchor")
    public void setAnchor(RNMBXPointAnnotation annotation, Dynamic map) {
        Intrinsics.checkNotNullParameter(annotation, "annotation");
        Intrinsics.checkNotNullParameter(map, "map");
        ReadableMap readableMapAsMap = map.asMap();
        if (readableMapAsMap == null) {
            Logger.INSTANCE.e("RNMBXPointAnnotationManager", "anchor map is null");
        } else {
            annotation.setAnchor((float) readableMapAsMap.getDouble("x"), (float) readableMapAsMap.getDouble(JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE));
        }
    }

    @Override
    @ReactProp(name = "draggable")
    public void setDraggable(RNMBXPointAnnotation annotation, Dynamic draggable) {
        Intrinsics.checkNotNullParameter(annotation, "annotation");
        Intrinsics.checkNotNullParameter(draggable, "draggable");
        annotation.setDraggable(draggable.asBoolean());
    }
}
