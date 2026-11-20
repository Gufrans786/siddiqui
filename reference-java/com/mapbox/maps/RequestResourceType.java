package com.mapbox.maps;

import androidx.exifinterface.media.ExifInterface;

public enum RequestResourceType {
    UNKNOWN("Unknown"),
    STYLE("Style"),
    SOURCE("Source"),
    TILE("Tile"),
    GLYPHS("Glyphs"),
    SPRITE_IMAGE("SpriteImage"),
    SPRITE_JSON("SpriteJSON"),
    IMAGE("Image"),
    MODEL(ExifInterface.TAG_MODEL);

    private String str;

    RequestResourceType(String str) {
        this.str = str;
    }

    @Override
    public String toString() {
        return this.str;
    }

    private int getValue() {
        return ordinal();
    }
}
