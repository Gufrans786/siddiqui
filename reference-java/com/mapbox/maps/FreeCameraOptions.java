package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.geojson.Point;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;

public final class FreeCameraOptions {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    public native Double getAltitude();

    public native Point getLocation();

    public native Vec4 getOrientation();

    public native Vec3 getPosition();

    public native void lookAtPoint(Point point);

    public native void lookAtPoint(Point point, double d);

    public native void lookAtPoint(Point point, double d, Vec3 vec3);

    public native void setAltitude(double d);

    public native void setLocation(Point point);

    public native void setLocation(Point point, double d);

    public native void setOrientation(Vec4 vec4);

    public native void setPitchBearing(double d, double d2);

    public native void setPosition(Vec3 vec3);

    protected FreeCameraOptions(long j) {
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new FreeCameraOptionsPeerCleaner(j));
    }

    long getNativePtr() {
        return this.peer;
    }

    private static class FreeCameraOptionsPeerCleaner implements Runnable {
        private long peer;

        public FreeCameraOptionsPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            FreeCameraOptions.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
