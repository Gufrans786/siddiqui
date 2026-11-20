package com.mapbox.maps;

import java.util.List;

interface ViewAnnotationPositionsUpdateListener {
    void onViewAnnotationPositionsUpdate(List<ViewAnnotationPositionDescriptor> list);
}
