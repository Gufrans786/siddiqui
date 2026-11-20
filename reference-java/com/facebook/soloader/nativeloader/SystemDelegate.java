package com.facebook.soloader.nativeloader;

public class SystemDelegate implements NativeLoaderDelegate {
    @Override
    public String getLibraryPath(String str) {
        return null;
    }

    @Override
    public int getSoSourcesVersion() {
        return 0;
    }

    @Override
    public boolean loadLibrary(String str, int i) {
        System.loadLibrary(str);
        return true;
    }
}
