package com.mapbox.maps;

import java.util.List;

public interface CustomLayerMapProjection {
    List<Double> convertMercatorModelMatrix(List<Double> list, boolean z);

    List<Double> getModelMatrix();

    List<Double> getTransitionMatrix();

    float getTransitionPhase();
}
