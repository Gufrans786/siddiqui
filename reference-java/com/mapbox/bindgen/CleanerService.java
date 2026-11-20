package com.mapbox.bindgen;

public final class CleanerService {
    private static final Cleaner cleaner = Cleaner.create();

    public static void register(Object obj, Runnable runnable) {
        cleaner.register(obj, runnable);
    }
}
