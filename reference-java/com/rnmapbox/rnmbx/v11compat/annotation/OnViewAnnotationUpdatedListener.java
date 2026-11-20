package com.rnmapbox.rnmbx.v11compat.annotation;

import android.view.View;
import com.mapbox.geojson.Point;
import com.mapbox.maps.ScreenCoordinate;
import com.mapbox.maps.ViewAnnotationAnchorConfig;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/rnmapbox/rnmbx/v11compat/annotation/OnViewAnnotationUpdatedListener;", "Lcom/mapbox/maps/viewannotation/OnViewAnnotationUpdatedListener;", "<init>", "()V", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class OnViewAnnotationUpdatedListener implements com.mapbox.maps.viewannotation.OnViewAnnotationUpdatedListener {
    @Override
    public void onViewAnnotationAnchorCoordinateUpdated(View view, Point point) {
        com.mapbox.maps.viewannotation.OnViewAnnotationUpdatedListener.DefaultImpls.onViewAnnotationAnchorCoordinateUpdated(this, view, point);
    }

    @Override
    public void onViewAnnotationAnchorUpdated(View view, ViewAnnotationAnchorConfig viewAnnotationAnchorConfig) {
        com.mapbox.maps.viewannotation.OnViewAnnotationUpdatedListener.DefaultImpls.onViewAnnotationAnchorUpdated(this, view, viewAnnotationAnchorConfig);
    }

    @Override
    public void onViewAnnotationPositionUpdated(View view, ScreenCoordinate screenCoordinate, double d, double d2) {
        com.mapbox.maps.viewannotation.OnViewAnnotationUpdatedListener.DefaultImpls.onViewAnnotationPositionUpdated(this, view, screenCoordinate, d, d2);
    }

    @Override
    public void onViewAnnotationVisibilityUpdated(View view, boolean z) {
        com.mapbox.maps.viewannotation.OnViewAnnotationUpdatedListener.DefaultImpls.onViewAnnotationVisibilityUpdated(this, view, z);
    }
}
