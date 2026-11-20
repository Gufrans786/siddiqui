package com.mapbox.maps.loader;

import androidx.startup.Initializer;
import com.mapbox.common.BaseMapboxInitializer;

public class MapboxMapsInitializer extends BaseMapboxInitializer<MapboxMaps> {
    @Override
    public Class<? extends Initializer<MapboxMaps>> getInitializerClass() {
        return MapboxMapsInitializerImpl.class;
    }
}
