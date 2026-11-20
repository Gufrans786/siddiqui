package com.mapbox.bindgen;

public final class None {
    private static final None INSTANCE = new None();

    public static None getInstance() {
        return INSTANCE;
    }

    private None() {
    }
}
