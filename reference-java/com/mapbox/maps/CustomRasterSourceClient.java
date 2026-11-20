package com.mapbox.maps;

public class CustomRasterSourceClient {
    private Type type;
    private Object value;

    public enum Type {
        CUSTOM_RASTER_SOURCE_TILE_STATUS_CHANGED_CALLBACK,
        CUSTOM_RASTER_SOURCE_TILE_RENDERER
    }

    public String toString() {
        return String.valueOf(this.value);
    }

    public CustomRasterSourceClient(CustomRasterSourceTileStatusChangedCallback customRasterSourceTileStatusChangedCallback) {
        this.type = Type.CUSTOM_RASTER_SOURCE_TILE_STATUS_CHANGED_CALLBACK;
        this.value = customRasterSourceTileStatusChangedCallback;
    }

    public CustomRasterSourceClient(CustomRasterSourceTileRenderer customRasterSourceTileRenderer) {
        this.type = Type.CUSTOM_RASTER_SOURCE_TILE_RENDERER;
        this.value = customRasterSourceTileRenderer;
    }

    public static CustomRasterSourceClient valueOf(CustomRasterSourceTileStatusChangedCallback customRasterSourceTileStatusChangedCallback) {
        return new CustomRasterSourceClient(customRasterSourceTileStatusChangedCallback);
    }

    public static CustomRasterSourceClient valueOf(CustomRasterSourceTileRenderer customRasterSourceTileRenderer) {
        return new CustomRasterSourceClient(customRasterSourceTileRenderer);
    }

    public boolean isCustomRasterSourceTileStatusChangedCallback() {
        return this.type == Type.CUSTOM_RASTER_SOURCE_TILE_STATUS_CHANGED_CALLBACK;
    }

    public boolean isCustomRasterSourceTileRenderer() {
        return this.type == Type.CUSTOM_RASTER_SOURCE_TILE_RENDERER;
    }

    public CustomRasterSourceTileStatusChangedCallback getCustomRasterSourceTileStatusChangedCallback() {
        if (isCustomRasterSourceTileStatusChangedCallback()) {
            return (CustomRasterSourceTileStatusChangedCallback) this.value;
        }
        throw new IllegalStateException("The content of the variant does not have type (CustomRasterSourceTileStatusChangedCallback)");
    }

    public CustomRasterSourceTileRenderer getCustomRasterSourceTileRenderer() {
        if (isCustomRasterSourceTileRenderer()) {
            return (CustomRasterSourceTileRenderer) this.value;
        }
        throw new IllegalStateException("The content of the variant does not have type (CustomRasterSourceTileRenderer)");
    }

    public Type getTypeInfo() {
        return this.type;
    }
}
