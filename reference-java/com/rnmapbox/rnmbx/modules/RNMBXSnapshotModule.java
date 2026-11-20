package com.rnmapbox.rnmbx.modules;

import android.graphics.Bitmap;
import android.util.Log;
import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.module.annotations.ReactModule;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.Point;
import com.mapbox.maps.CameraOptions;
import com.mapbox.maps.Image;
import com.mapbox.maps.MapSnapshotOptions;
import com.mapbox.maps.Size;
import com.mapbox.maps.SnapshotOverlayOptions;
import com.mapbox.maps.Snapshotter;
import com.rnmapbox.rnmbx.utils.BitmapUtils;
import com.rnmapbox.rnmbx.v11compat.snapshot.SnapshotKt;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@ReactModule(name = RNMBXSnapshotModule.REACT_CLASS)
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\n\u001a\u00020\bH\u0016J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0012\u0010\u0015\u001a\u00020\f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/rnmapbox/rnmbx/modules/RNMBXSnapshotModule;", "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;", "mContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "mSnapshotterMap", "", "", "Lcom/mapbox/maps/Snapshotter;", "getName", "takeSnap", "", "jsOptions", "Lcom/facebook/react/bridge/ReadableMap;", BaseJavaModule.METHOD_TYPE_PROMISE, "Lcom/facebook/react/bridge/Promise;", "getCameraOptions", "Lcom/mapbox/maps/CameraOptions;", "getOptions", "Lcom/mapbox/maps/MapSnapshotOptions;", "closeSnapshotOutputStream", "outputStream", "Ljava/io/OutputStream;", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RNMBXSnapshotModule extends ReactContextBaseJavaModule {
    public static final String REACT_CLASS = "RNMBXSnapshotModule";
    private final ReactApplicationContext mContext;
    private final Map<String, Snapshotter> mSnapshotterMap;

    public RNMBXSnapshotModule(ReactApplicationContext mContext) {
        super(mContext);
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        this.mContext = mContext;
        this.mSnapshotterMap = new HashMap();
    }

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @ReactMethod
    public final void takeSnap(final ReadableMap jsOptions, final Promise promise) {
        Intrinsics.checkNotNullParameter(jsOptions, "jsOptions");
        Intrinsics.checkNotNullParameter(promise, "promise");
        this.mContext.runOnUiQueueThread(new Runnable() {
            @Override
            public final void run() {
                RNMBXSnapshotModule.takeSnap$lambda$1(this.f$0, jsOptions, promise);
            }
        });
    }

    public static final void takeSnap$lambda$1(final RNMBXSnapshotModule rNMBXSnapshotModule, final ReadableMap readableMap, final Promise promise) {
        final String string = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        Snapshotter snapshotter = new Snapshotter(rNMBXSnapshotModule.mContext, rNMBXSnapshotModule.getOptions(readableMap), (SnapshotOverlayOptions) null, 4, (DefaultConstructorMarker) null);
        String string2 = readableMap.getString("styleURL");
        Intrinsics.checkNotNull(string2);
        snapshotter.setStyleUri(string2);
        snapshotter.setCamera(rNMBXSnapshotModule.getCameraOptions(readableMap));
        rNMBXSnapshotModule.mSnapshotterMap.put(string, snapshotter);
        SnapshotKt.startV11(snapshotter, new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return RNMBXSnapshotModule.takeSnap$lambda$1$lambda$0(promise, rNMBXSnapshotModule, string, readableMap, (Bitmap) obj, (String) obj2);
            }
        });
    }

    public static final Unit takeSnap$lambda$1$lambda$0(Promise promise, RNMBXSnapshotModule rNMBXSnapshotModule, String str, ReadableMap readableMap, Bitmap bitmap, String str2) {
        String strCreateImgBase64;
        try {
            if (bitmap == null) {
                Log.w(REACT_CLASS, "Snapshot failed: " + str2);
                promise.reject(REACT_CLASS, "Snapshot failed: " + str2);
                rNMBXSnapshotModule.mSnapshotterMap.remove(str);
            } else {
                Image mapboxImage = SnapshotKt.toMapboxImage(bitmap);
                if (readableMap.getBoolean("writeToDisk")) {
                    strCreateImgBase64 = BitmapUtils.INSTANCE.createImgTempFile(rNMBXSnapshotModule.mContext, mapboxImage);
                } else {
                    strCreateImgBase64 = BitmapUtils.INSTANCE.createImgBase64(mapboxImage);
                }
                if (strCreateImgBase64 == null) {
                    promise.reject(REACT_CLASS, "Could not generate snapshot, please check Android logs for more info.");
                    return Unit.INSTANCE;
                }
                promise.resolve(strCreateImgBase64);
                rNMBXSnapshotModule.mSnapshotterMap.remove(str);
            }
        } catch (IOException e) {
            e.printStackTrace();
            promise.reject(REACT_CLASS, e.getLocalizedMessage());
        }
        return Unit.INSTANCE;
    }

    private final CameraOptions getCameraOptions(ReadableMap jsOptions) {
        String string = jsOptions.getString("centerCoordinate");
        Intrinsics.checkNotNull(string);
        CameraOptions cameraOptionsBuild = new CameraOptions.Builder().center((Point) Feature.fromJson(string).geometry()).pitch(Double.valueOf(jsOptions.getDouble("pitch"))).bearing(Double.valueOf(jsOptions.getDouble("heading"))).zoom(Double.valueOf(jsOptions.getDouble("zoomLevel"))).build();
        Intrinsics.checkNotNullExpressionValue(cameraOptionsBuild, "build(...)");
        return cameraOptionsBuild;
    }

    private final MapSnapshotOptions getOptions(ReadableMap jsOptions) {
        MapSnapshotOptions.Builder builder = new MapSnapshotOptions.Builder();
        builder.size(new Size((int) jsOptions.getDouble("width"), (int) jsOptions.getDouble("height")));
        builder.pixelRatio((int) this.mContext.getResources().getDisplayMetrics().density);
        SnapshotKt.accessToken(builder, RNMBXModule.INSTANCE.getAccessToken(this.mContext));
        MapSnapshotOptions mapSnapshotOptionsBuild = builder.build();
        Intrinsics.checkNotNullExpressionValue(mapSnapshotOptionsBuild, "build(...)");
        return mapSnapshotOptionsBuild;
    }

    private final void closeSnapshotOutputStream(OutputStream outputStream) {
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.close();
        } catch (IOException e) {
            Log.w(REACT_CLASS, e.getLocalizedMessage());
        }
    }
}
