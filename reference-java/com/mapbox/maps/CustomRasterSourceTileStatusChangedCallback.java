package com.mapbox.maps;

public interface CustomRasterSourceTileStatusChangedCallback {
    void run(CanonicalTileID canonicalTileID, CustomRasterSourceTileStatus customRasterSourceTileStatus);
}
