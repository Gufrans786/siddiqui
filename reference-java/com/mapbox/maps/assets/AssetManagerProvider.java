package com.mapbox.maps.assets;

import android.content.res.AssetManager;

public class AssetManagerProvider {
    private long peer = 0;

    protected native void finalize();

    public native void initialize(AssetManager assetManager);
}
