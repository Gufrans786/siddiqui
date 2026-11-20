package com.mapbox.maps.plugin.locationcomponent;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.SystemClock;
import android.view.WindowManager;
import androidx.core.app.NotificationCompat;
import ch.qos.logback.core.CoreConstants;
import com.mapbox.maps.MapboxLogger;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\b\u0001\u0018\u0000 :2\u00020\u0001:\u0002:;B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0007J\u0015\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\tH\u0000¢\u0006\u0002\b\u001fJ,\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\"0!2\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\"H\u0002J\u0014\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\"0!H\u0002J\b\u0010&\u001a\u00020'H\u0002J\u001a\u0010(\u001a\u00020\u00102\u0006\u0010)\u001a\u00020\u00102\b\u0010*\u001a\u0004\u0018\u00010\u0010H\u0002J\u0010\u0010+\u001a\u00020\u001b2\u0006\u0010,\u001a\u00020-H\u0002J\u001a\u0010.\u001a\u00020\u001b2\b\u0010/\u001a\u0004\u0018\u00010\u000b2\u0006\u00100\u001a\u00020\"H\u0016J\u0010\u00101\u001a\u00020\u001b2\u0006\u00102\u001a\u000203H\u0016J\b\u00104\u001a\u00020\u001bH\u0002J\u000e\u00105\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0007J\u0015\u00106\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\tH\u0000¢\u0006\u0002\b7J\b\u00108\u001a\u00020\u001bH\u0002J\b\u00109\u001a\u00020\u001bH\u0002R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006<"}, d2 = {"Lcom/mapbox/maps/plugin/locationcomponent/LocationCompassEngine;", "Landroid/hardware/SensorEventListener;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "(Landroid/content/Context;)V", "calibrationListeners", "", "Lcom/mapbox/maps/plugin/locationcomponent/LocationCompassCalibrationListener;", "compassListeners", "Lcom/mapbox/maps/plugin/locationcomponent/LocationCompassEngine$CompassListener;", "compassSensor", "Landroid/hardware/Sensor;", "compassUpdateNextTimestamp", "", "gravitySensor", "gravityValues", "", "magneticFieldSensor", "magneticValues", ModelSourceWrapper.ORIENTATION, "rotationMatrix", "rotationVectorValue", "sensorManager", "Landroid/hardware/SensorManager;", "windowManager", "Landroid/view/WindowManager;", "addCalibrationListener", "", "compassCalibrationListener", "addCompassListener", "compassListener", "addCompassListener$plugin_locationcomponent_release", "adjustWorldAxis", "Lkotlin/Pair;", "", "worldAxisForDeviceAxisX", "worldAxisForDeviceAxisY", "getWorldAxisFromRotation", "isCompassSensorAvailable", "", "lowPassFilter", "newValues", "smoothedValues", "notifyCompassChangeListeners", "heading", "", "onAccuracyChanged", "sensor", "accuracy", "onSensorChanged", NotificationCompat.CATEGORY_EVENT, "Landroid/hardware/SensorEvent;", "registerSensorListeners", "removeCalibrationListener", "removeCompassListener", "removeCompassListener$plugin_locationcomponent_release", "unregisterSensorListeners", "updateOrientation", "Companion", "CompassListener", "plugin-locationcomponent_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class LocationCompassEngine implements SensorEventListener {

    @Deprecated
    private static final float ALPHA = 0.45f;
    private static final Companion Companion = new Companion(null);

    @Deprecated
    private static final int SENSOR_DELAY_MICROS = 100000;

    @Deprecated
    private static final String TAG = "LocationCompassProvider";
    private final Set<LocationCompassCalibrationListener> calibrationListeners;
    private final Set<CompassListener> compassListeners;
    private Sensor compassSensor;
    private long compassUpdateNextTimestamp;
    private Sensor gravitySensor;
    private float[] gravityValues;
    private Sensor magneticFieldSensor;
    private float[] magneticValues;
    private final float[] orientation;
    private final float[] rotationMatrix;
    private float[] rotationVectorValue;
    private final SensorManager sensorManager;
    private final WindowManager windowManager;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/mapbox/maps/plugin/locationcomponent/LocationCompassEngine$CompassListener;", "", "onCompassChanged", "", "userHeading", "", "plugin-locationcomponent_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public interface CompassListener {
        void onCompassChanged(float userHeading);
    }

    public LocationCompassEngine(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getApplicationContext().getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.windowManager = (WindowManager) systemService;
        Object systemService2 = context.getApplicationContext().getSystemService("sensor");
        Intrinsics.checkNotNull(systemService2, "null cannot be cast to non-null type android.hardware.SensorManager");
        SensorManager sensorManager = (SensorManager) systemService2;
        this.sensorManager = sensorManager;
        this.compassListeners = new LinkedHashSet();
        this.calibrationListeners = new LinkedHashSet();
        this.rotationMatrix = new float[9];
        this.gravityValues = new float[3];
        this.magneticValues = new float[3];
        this.orientation = new float[3];
        Sensor defaultSensor = sensorManager.getDefaultSensor(11);
        this.compassSensor = defaultSensor;
        if (defaultSensor == null) {
            MapboxLogger.logW(TAG, "Rotation vector sensor not supported on device, falling back to accelerometer and magnetic field.");
            this.gravitySensor = sensorManager.getDefaultSensor(1);
            this.magneticFieldSensor = sensorManager.getDefaultSensor(2);
        }
    }

    public final void addCompassListener$plugin_locationcomponent_release(CompassListener compassListener) {
        Intrinsics.checkNotNullParameter(compassListener, "compassListener");
        if (this.compassListeners.isEmpty()) {
            registerSensorListeners();
        }
        this.compassListeners.add(compassListener);
    }

    public final void removeCompassListener$plugin_locationcomponent_release(CompassListener compassListener) {
        Intrinsics.checkNotNullParameter(compassListener, "compassListener");
        if (this.compassListeners.remove(compassListener) && this.compassListeners.isEmpty()) {
            unregisterSensorListeners();
        }
    }

    public final void addCalibrationListener(LocationCompassCalibrationListener compassCalibrationListener) {
        Intrinsics.checkNotNullParameter(compassCalibrationListener, "compassCalibrationListener");
        this.calibrationListeners.add(compassCalibrationListener);
    }

    public final void removeCalibrationListener(LocationCompassCalibrationListener compassCalibrationListener) {
        Intrinsics.checkNotNullParameter(compassCalibrationListener, "compassCalibrationListener");
        this.calibrationListeners.remove(compassCalibrationListener);
    }

    @Override
    public void onAccuracyChanged(Sensor sensor, int accuracy) {
        if (accuracy == 0) {
            MapboxLogger.logW(TAG, "Compass sensor is unreliable, device calibration is needed.");
            Iterator<LocationCompassCalibrationListener> it = this.calibrationListeners.iterator();
            while (it.hasNext()) {
                it.next().onCompassCalibrationNeeded();
            }
        }
    }

    @Override
    public void onSensorChanged(SensorEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        int type = event.sensor.getType();
        if (type == 1) {
            float[] fArr = event.values;
            Intrinsics.checkNotNullExpressionValue(fArr, "event.values");
            this.gravityValues = lowPassFilter(fArr, this.gravityValues);
        } else if (type == 2) {
            float[] fArr2 = event.values;
            Intrinsics.checkNotNullExpressionValue(fArr2, "event.values");
            this.magneticValues = lowPassFilter(fArr2, this.magneticValues);
        } else if (type == 11) {
            this.rotationVectorValue = event.values;
        }
        updateOrientation();
    }

    private final void updateOrientation() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime < this.compassUpdateNextTimestamp) {
            return;
        }
        float[] fArr = this.rotationVectorValue;
        if (fArr != null) {
            SensorManager.getRotationMatrixFromVector(this.rotationMatrix, fArr);
        } else {
            SensorManager.getRotationMatrix(this.rotationMatrix, null, this.gravityValues, this.magneticValues);
        }
        Pair<Integer, Integer> worldAxisFromRotation = getWorldAxisFromRotation();
        int iIntValue = worldAxisFromRotation.component1().intValue();
        int iIntValue2 = worldAxisFromRotation.component2().intValue();
        float[] fArr2 = new float[9];
        SensorManager.remapCoordinateSystem(this.rotationMatrix, iIntValue, iIntValue2, fArr2);
        SensorManager.getOrientation(fArr2, this.orientation);
        Pair<Integer, Integer> pairAdjustWorldAxis = adjustWorldAxis(this.orientation, iIntValue, iIntValue2);
        SensorManager.remapCoordinateSystem(this.rotationMatrix, pairAdjustWorldAxis.component1().intValue(), pairAdjustWorldAxis.component2().intValue(), fArr2);
        SensorManager.getOrientation(fArr2, this.orientation);
        notifyCompassChangeListeners((float) Math.toDegrees(this.orientation[0]));
        this.compassUpdateNextTimestamp = jElapsedRealtime + 500;
    }

    private final Pair<Integer, Integer> adjustWorldAxis(float[] orientation, int worldAxisForDeviceAxisX, int worldAxisForDeviceAxisY) {
        float f = orientation[1];
        if (f < -0.7853981633974483d) {
            int rotation = this.windowManager.getDefaultDisplay().getRotation();
            if (rotation == 1) {
                worldAxisForDeviceAxisY = 129;
                worldAxisForDeviceAxisX = 3;
            } else if (rotation == 2) {
                worldAxisForDeviceAxisY = 131;
                worldAxisForDeviceAxisX = 129;
            } else if (rotation != 3) {
                worldAxisForDeviceAxisX = 1;
                worldAxisForDeviceAxisY = 3;
            } else {
                worldAxisForDeviceAxisY = 1;
                worldAxisForDeviceAxisX = 131;
            }
        } else if (f > 0.7853981633974483d) {
            int rotation2 = this.windowManager.getDefaultDisplay().getRotation();
            if (rotation2 == 1) {
                worldAxisForDeviceAxisX = 131;
                worldAxisForDeviceAxisY = 129;
            } else if (rotation2 == 2) {
                worldAxisForDeviceAxisX = 129;
                worldAxisForDeviceAxisY = 3;
            } else if (rotation2 != 3) {
                worldAxisForDeviceAxisX = 1;
                worldAxisForDeviceAxisY = 131;
            } else {
                worldAxisForDeviceAxisY = 1;
                worldAxisForDeviceAxisX = 3;
            }
        } else if (Math.abs(orientation[2]) > 1.5707963267948966d) {
            int rotation3 = this.windowManager.getDefaultDisplay().getRotation();
            worldAxisForDeviceAxisX = 130;
            if (rotation3 == 1) {
                worldAxisForDeviceAxisY = 129;
            } else if (rotation3 == 2) {
                worldAxisForDeviceAxisX = 129;
                worldAxisForDeviceAxisY = 2;
            } else if (rotation3 != 3) {
                worldAxisForDeviceAxisY = 130;
                worldAxisForDeviceAxisX = 1;
            } else {
                worldAxisForDeviceAxisY = 1;
                worldAxisForDeviceAxisX = 2;
            }
        }
        return TuplesKt.to(Integer.valueOf(worldAxisForDeviceAxisX), Integer.valueOf(worldAxisForDeviceAxisY));
    }

    private final Pair<Integer, Integer> getWorldAxisFromRotation() {
        int rotation = this.windowManager.getDefaultDisplay().getRotation();
        int i = 129;
        int i2 = 2;
        if (rotation == 1) {
            i2 = 129;
            i = 2;
        } else if (rotation == 2) {
            i2 = 130;
        } else if (rotation != 3) {
            i = 1;
        } else {
            i2 = 1;
            i = 130;
        }
        return TuplesKt.to(Integer.valueOf(i), Integer.valueOf(i2));
    }

    private final void notifyCompassChangeListeners(float heading) {
        Iterator<CompassListener> it = this.compassListeners.iterator();
        while (it.hasNext()) {
            it.next().onCompassChanged(heading);
        }
    }

    private final void registerSensorListeners() {
        if (isCompassSensorAvailable()) {
            this.sensorManager.registerListener(this, this.compassSensor, SENSOR_DELAY_MICROS);
            return;
        }
        LocationCompassEngine locationCompassEngine = this;
        this.sensorManager.registerListener(locationCompassEngine, this.gravitySensor, SENSOR_DELAY_MICROS);
        this.sensorManager.registerListener(locationCompassEngine, this.magneticFieldSensor, SENSOR_DELAY_MICROS);
    }

    private final void unregisterSensorListeners() {
        if (isCompassSensorAvailable()) {
            this.sensorManager.unregisterListener(this, this.compassSensor);
            return;
        }
        LocationCompassEngine locationCompassEngine = this;
        this.sensorManager.unregisterListener(locationCompassEngine, this.gravitySensor);
        this.sensorManager.unregisterListener(locationCompassEngine, this.magneticFieldSensor);
    }

    private final boolean isCompassSensorAvailable() {
        return this.compassSensor != null;
    }

    private final float[] lowPassFilter(float[] newValues, float[] smoothedValues) {
        if (smoothedValues == null) {
            return newValues;
        }
        int length = newValues.length;
        for (int i = 0; i < length; i++) {
            float f = smoothedValues[i];
            smoothedValues[i] = f + ((newValues[i] - f) * ALPHA);
        }
        return smoothedValues;
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/mapbox/maps/plugin/locationcomponent/LocationCompassEngine$Companion;", "", "()V", "ALPHA", "", "SENSOR_DELAY_MICROS", "", "TAG", "", "plugin-locationcomponent_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
