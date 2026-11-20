package com.mapbox.maps;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.None;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.geojson.Geometry;
import com.mapbox.geojson.Point;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.util.List;

public class CameraManager extends StyleManager {
    protected static native void cleanNativePeer(long j);

    @Deprecated
    public native CameraOptions cameraForCoordinateBounds(CoordinateBounds coordinateBounds, EdgeInsets edgeInsets, Double d, Double d2, Double d3, ScreenCoordinate screenCoordinate);

    public native Expected<String, CameraOptions> cameraForCoordinates(List<Point> list, CameraOptions cameraOptions, EdgeInsets edgeInsets, Double d, ScreenCoordinate screenCoordinate);

    public native CameraOptions cameraForCoordinates(List<Point> list, CameraOptions cameraOptions, ScreenBox screenBox);

    @Deprecated
    public native CameraOptions cameraForCoordinates(List<Point> list, EdgeInsets edgeInsets, Double d, Double d2);

    public native CameraOptions cameraForDrag(ScreenCoordinate screenCoordinate, ScreenCoordinate screenCoordinate2);

    @Deprecated
    public native CameraOptions cameraForGeometry(Geometry geometry, EdgeInsets edgeInsets, Double d, Double d2);

    public native CoordinateBounds coordinateBoundsForCamera(CameraOptions cameraOptions);

    public native CoordinateBounds coordinateBoundsForCameraUnwrapped(CameraOptions cameraOptions);

    public native CoordinateBoundsZoom coordinateBoundsZoomForCamera(CameraOptions cameraOptions);

    public native CoordinateBoundsZoom coordinateBoundsZoomForCameraUnwrapped(CameraOptions cameraOptions);

    public native Point coordinateForPixel(ScreenCoordinate screenCoordinate);

    public native CoordinateInfo coordinateInfoForPixel(ScreenCoordinate screenCoordinate);

    public native List<Point> coordinatesForPixels(List<ScreenCoordinate> list);

    public native List<CoordinateInfo> coordinatesInfoForPixels(List<ScreenCoordinate> list);

    public native CameraBounds getBounds();

    public native CameraState getCameraState();

    public native FreeCameraOptions getFreeCameraOptions();

    public native boolean getRenderWorldCopies();

    public native boolean isPixelAboveHorizon(ScreenCoordinate screenCoordinate);

    public native ScreenCoordinate pixelForCoordinate(Point point);

    public native List<ScreenCoordinate> pixelsForCoordinates(List<Point> list);

    public native Expected<String, None> setBounds(CameraBoundsOptions cameraBoundsOptions);

    public native void setCamera(CameraOptions cameraOptions);

    public native void setCamera(FreeCameraOptions freeCameraOptions);

    public native void setRenderWorldCopies(boolean z);

    public native List<CanonicalTileID> tileCover(TileCoverOptions tileCoverOptions, CameraOptions cameraOptions);

    protected CameraManager(long j) {
        super(0L);
        setPeer(j);
    }

    private void setPeer(long j) {
        this.peer = j;
        if (j == 0) {
            return;
        }
        CleanerService.register(this, new CameraManagerPeerCleaner(j));
    }

    private static class CameraManagerPeerCleaner implements Runnable {
        private long peer;

        public CameraManagerPeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            CameraManager.cleanNativePeer(this.peer);
        }
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
