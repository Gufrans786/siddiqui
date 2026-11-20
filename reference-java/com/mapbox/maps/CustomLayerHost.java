package com.mapbox.maps;

public interface CustomLayerHost {
    void contextLost();

    void deinitialize();

    void initialize();

    void render(CustomLayerRenderParameters customLayerRenderParameters);

    default void renderToTile(CanonicalTileID canonicalTileID) {
    }

    default CustomLayerRenderConfiguration prerender(CustomLayerRenderParameters customLayerRenderParameters) {
        return new CustomLayerRenderConfiguration.Builder().build();
    }
}
