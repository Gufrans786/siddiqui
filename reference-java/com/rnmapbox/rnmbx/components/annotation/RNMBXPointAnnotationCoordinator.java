package com.rnmapbox.rnmbx.components.annotation;

import com.mapbox.maps.MapView;
import com.mapbox.maps.plugin.annotation.Annotation;
import com.mapbox.maps.plugin.annotation.AnnotationConfig;
import com.mapbox.maps.plugin.annotation.AnnotationsUtils;
import com.mapbox.maps.plugin.annotation.generated.OnPointAnnotationClickListener;
import com.mapbox.maps.plugin.annotation.generated.OnPointAnnotationDragListener;
import com.mapbox.maps.plugin.annotation.generated.PointAnnotation;
import com.mapbox.maps.plugin.annotation.generated.PointAnnotationManager;
import com.mapbox.maps.plugin.annotation.generated.PointAnnotationManagerKt;
import com.mapbox.maps.plugin.annotation.generated.PointAnnotationOptions;
import com.rnmapbox.rnmbx.utils.Logger;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 52\u00020\u0001:\u00015B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\"\u001a\u00020\rJ\u0006\u0010#\u001a\u00020\rJ\u0010\u0010$\u001a\u0004\u0018\u00010\u00162\u0006\u0010%\u001a\u00020&J\u000e\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u0016J\u000e\u0010'\u001a\u00020(2\u0006\u0010%\u001a\u00020&J\u0006\u0010*\u001a\u00020\rJ\u000e\u0010+\u001a\u00020(2\u0006\u0010,\u001a\u00020\u0016J\u000e\u0010-\u001a\u00020(2\u0006\u0010,\u001a\u00020\u0016J\u000e\u0010.\u001a\u00020(2\u0006\u0010,\u001a\u00020\u0016J\u000e\u0010/\u001a\u00020(2\u0006\u0010,\u001a\u00020&J\u000e\u00100\u001a\u00020(2\u0006\u0010,\u001a\u00020&J\u000e\u00101\u001a\u00020&2\u0006\u00102\u001a\u000203J\u000e\u00104\u001a\u00020(2\u0006\u0010,\u001a\u00020\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001d\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00160\u001c¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u001d\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00160\u001c¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001f¨\u00066"}, d2 = {"Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotationCoordinator;", "", "mapView", "Lcom/mapbox/maps/MapView;", "<init>", "(Lcom/mapbox/maps/MapView;)V", "getMapView", "()Lcom/mapbox/maps/MapView;", "manager", "Lcom/mapbox/maps/plugin/annotation/generated/PointAnnotationManager;", "getManager", "()Lcom/mapbox/maps/plugin/annotation/generated/PointAnnotationManager;", "annotationClicked", "", "getAnnotationClicked", "()Z", "setAnnotationClicked", "(Z)V", "annotationDragged", "getAnnotationDragged", "setAnnotationDragged", "selected", "Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotation;", "getSelected", "()Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotation;", "setSelected", "(Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotation;)V", "annotations", "", "", "getAnnotations", "()Ljava/util/Map;", "callouts", "getCallouts", "getAndClearAnnotationClicked", "getAndClearAnnotationDragged", "lookupForClick", "point", "Lcom/mapbox/maps/plugin/annotation/generated/PointAnnotation;", "onAnnotationClick", "", "pointAnnotation", "deselectSelectedAnnotation", "selectAnnotation", "annotation", "deselectAnnotation", "remove", "delete", "update", "create", "options", "Lcom/mapbox/maps/plugin/annotation/generated/PointAnnotationOptions;", "add", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXPointAnnotationCoordinator {
    public static final String LOG_TAG = "RNMBXPointAnnotationCoordinator";
    private boolean annotationClicked;
    private boolean annotationDragged;
    private final Map<String, RNMBXPointAnnotation> annotations;
    private final Map<String, RNMBXPointAnnotation> callouts;
    private final PointAnnotationManager manager;
    private final MapView mapView;
    private RNMBXPointAnnotation selected;

    public RNMBXPointAnnotationCoordinator(MapView mapView) {
        Intrinsics.checkNotNullParameter(mapView, "mapView");
        this.mapView = mapView;
        this.annotations = new HashMap();
        this.callouts = new HashMap();
        PointAnnotationManager pointAnnotationManagerCreatePointAnnotationManager = PointAnnotationManagerKt.createPointAnnotationManager(AnnotationsUtils.getAnnotations(mapView), new AnnotationConfig(null, "RNMBX-mapview-annotations", null, null, 13, null));
        this.manager = pointAnnotationManagerCreatePointAnnotationManager;
        pointAnnotationManagerCreatePointAnnotationManager.addClickListener(new OnPointAnnotationClickListener() {
            @Override
            public final boolean onAnnotationClick(Annotation annotation) {
                return RNMBXPointAnnotationCoordinator._init_$lambda$0(this.f$0, (PointAnnotation) annotation);
            }
        });
        pointAnnotationManagerCreatePointAnnotationManager.addDragListener(new OnPointAnnotationDragListener() {
            @Override
            public void onAnnotationDragStarted(Annotation<?> _annotation) {
                Intrinsics.checkNotNullParameter(_annotation, "_annotation");
                RNMBXPointAnnotationCoordinator.this.setAnnotationDragged(true);
                Iterator<String> it = RNMBXPointAnnotationCoordinator.this.getAnnotations().keySet().iterator();
                RNMBXPointAnnotation rNMBXPointAnnotation = null;
                while (it.hasNext()) {
                    RNMBXPointAnnotation rNMBXPointAnnotation2 = RNMBXPointAnnotationCoordinator.this.getAnnotations().get(it.next());
                    if (Intrinsics.areEqual(_annotation.getId(), rNMBXPointAnnotation2 != null ? rNMBXPointAnnotation2.getMapboxID() : null)) {
                        rNMBXPointAnnotation = rNMBXPointAnnotation2;
                    }
                }
                if (rNMBXPointAnnotation != null) {
                    rNMBXPointAnnotation.onDragStart();
                }
            }

            @Override
            public void onAnnotationDrag(Annotation<?> _annotation) {
                Intrinsics.checkNotNullParameter(_annotation, "_annotation");
                Iterator<String> it = RNMBXPointAnnotationCoordinator.this.getAnnotations().keySet().iterator();
                RNMBXPointAnnotation rNMBXPointAnnotation = null;
                while (it.hasNext()) {
                    RNMBXPointAnnotation rNMBXPointAnnotation2 = RNMBXPointAnnotationCoordinator.this.getAnnotations().get(it.next());
                    if (Intrinsics.areEqual(_annotation.getId(), rNMBXPointAnnotation2 != null ? rNMBXPointAnnotation2.getMapboxID() : null)) {
                        rNMBXPointAnnotation = rNMBXPointAnnotation2;
                    }
                }
                if (rNMBXPointAnnotation != null) {
                    rNMBXPointAnnotation.onDrag();
                }
            }

            @Override
            public void onAnnotationDragFinished(Annotation<?> _annotation) {
                Intrinsics.checkNotNullParameter(_annotation, "_annotation");
                RNMBXPointAnnotationCoordinator.this.setAnnotationDragged(false);
                Iterator<String> it = RNMBXPointAnnotationCoordinator.this.getAnnotations().keySet().iterator();
                RNMBXPointAnnotation rNMBXPointAnnotation = null;
                while (it.hasNext()) {
                    RNMBXPointAnnotation rNMBXPointAnnotation2 = RNMBXPointAnnotationCoordinator.this.getAnnotations().get(it.next());
                    if (Intrinsics.areEqual(_annotation.getId(), rNMBXPointAnnotation2 != null ? rNMBXPointAnnotation2.getMapboxID() : null)) {
                        rNMBXPointAnnotation = rNMBXPointAnnotation2;
                    }
                }
                if (rNMBXPointAnnotation != null) {
                    rNMBXPointAnnotation.onDragEnd();
                }
            }
        });
    }

    public final MapView getMapView() {
        return this.mapView;
    }

    public final PointAnnotationManager getManager() {
        return this.manager;
    }

    public final boolean getAnnotationClicked() {
        return this.annotationClicked;
    }

    public final void setAnnotationClicked(boolean z) {
        this.annotationClicked = z;
    }

    public final boolean getAnnotationDragged() {
        return this.annotationDragged;
    }

    public final void setAnnotationDragged(boolean z) {
        this.annotationDragged = z;
    }

    public final RNMBXPointAnnotation getSelected() {
        return this.selected;
    }

    public final void setSelected(RNMBXPointAnnotation rNMBXPointAnnotation) {
        this.selected = rNMBXPointAnnotation;
    }

    public final Map<String, RNMBXPointAnnotation> getAnnotations() {
        return this.annotations;
    }

    public final Map<String, RNMBXPointAnnotation> getCallouts() {
        return this.callouts;
    }

    public static final boolean _init_$lambda$0(RNMBXPointAnnotationCoordinator rNMBXPointAnnotationCoordinator, PointAnnotation pointAnnotation) {
        Intrinsics.checkNotNullParameter(pointAnnotation, "pointAnnotation");
        rNMBXPointAnnotationCoordinator.onAnnotationClick(pointAnnotation);
        return false;
    }

    public final boolean getAndClearAnnotationClicked() {
        if (!this.annotationClicked) {
            return false;
        }
        this.annotationClicked = false;
        return true;
    }

    public final boolean getAndClearAnnotationDragged() {
        if (!this.annotationDragged) {
            return false;
        }
        this.annotationDragged = false;
        return true;
    }

    public final RNMBXPointAnnotation lookupForClick(PointAnnotation point) {
        Intrinsics.checkNotNullParameter(point, "point");
        for (RNMBXPointAnnotation rNMBXPointAnnotation : this.annotations.values()) {
            if (Intrinsics.areEqual(point.getId(), rNMBXPointAnnotation.getMapboxID())) {
                return rNMBXPointAnnotation;
            }
            if (Intrinsics.areEqual(point.getId(), rNMBXPointAnnotation.getCalloutMapboxID())) {
                return null;
            }
        }
        Logger.INSTANCE.e(LOG_TAG, "Failed to find RNMBXPointAnnotation for " + point.getId());
        return null;
    }

    public final void onAnnotationClick(RNMBXPointAnnotation pointAnnotation) {
        Intrinsics.checkNotNullParameter(pointAnnotation, "pointAnnotation");
        RNMBXPointAnnotation rNMBXPointAnnotation = this.selected;
        this.annotationClicked = true;
        if (Intrinsics.areEqual(pointAnnotation, rNMBXPointAnnotation)) {
            pointAnnotation = null;
        }
        if (rNMBXPointAnnotation != null) {
            deselectAnnotation(rNMBXPointAnnotation);
        }
        if (pointAnnotation != null) {
            selectAnnotation(pointAnnotation);
        }
    }

    public final void onAnnotationClick(PointAnnotation point) {
        Intrinsics.checkNotNullParameter(point, "point");
        RNMBXPointAnnotation rNMBXPointAnnotationLookupForClick = lookupForClick(point);
        if (rNMBXPointAnnotationLookupForClick != null) {
            onAnnotationClick(rNMBXPointAnnotationLookupForClick);
        }
    }

    public final boolean deselectSelectedAnnotation() {
        RNMBXPointAnnotation rNMBXPointAnnotation = this.selected;
        if (rNMBXPointAnnotation == null) {
            return false;
        }
        deselectAnnotation(rNMBXPointAnnotation);
        return true;
    }

    public final void selectAnnotation(RNMBXPointAnnotation annotation) {
        Intrinsics.checkNotNullParameter(annotation, "annotation");
        this.selected = annotation;
        annotation.doSelect(true);
    }

    public final void deselectAnnotation(RNMBXPointAnnotation annotation) {
        Intrinsics.checkNotNullParameter(annotation, "annotation");
        this.selected = null;
        annotation.doDeselect();
    }

    public final void remove(RNMBXPointAnnotation annotation) {
        Intrinsics.checkNotNullParameter(annotation, "annotation");
        if (Intrinsics.areEqual(annotation, this.selected)) {
            this.selected = null;
        }
        Map<String, RNMBXPointAnnotation> map = this.annotations;
        TypeIntrinsics.asMutableMap(map).remove(annotation.getID());
    }

    public final void delete(PointAnnotation annotation) {
        Intrinsics.checkNotNullParameter(annotation, "annotation");
        this.manager.delete(annotation);
    }

    public final void update(PointAnnotation annotation) {
        Intrinsics.checkNotNullParameter(annotation, "annotation");
        this.manager.update(annotation);
    }

    public final PointAnnotation create(PointAnnotationOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
        return this.manager.create(options);
    }

    public final void add(RNMBXPointAnnotation annotation) {
        Intrinsics.checkNotNullParameter(annotation, "annotation");
        Map<String, RNMBXPointAnnotation> map = this.annotations;
        String id = annotation.getID();
        Intrinsics.checkNotNull(id);
        map.put(id, annotation);
    }
}
