package com.mapbox.maps;

import com.mapbox.geojson.Point;

public interface ElevationData {
    Double getElevation(Point point);

    double getTerrainExaggeration();
}
