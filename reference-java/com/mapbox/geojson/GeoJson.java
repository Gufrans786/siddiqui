package com.mapbox.geojson;

import java.io.Serializable;

public interface GeoJson extends Serializable {
    BoundingBox bbox();

    String toJson();

    String type();
}
