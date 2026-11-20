package com.transistorsoft.locationmanager.service;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.location.ActivityRecognition;
import com.google.android.gms.location.ActivityRecognitionClient;
import com.google.android.gms.location.ActivityRecognitionResult;
import com.google.android.gms.location.ActivityTransition;
import com.google.android.gms.location.ActivityTransitionEvent;
import com.google.android.gms.location.ActivityTransitionRequest;
import com.google.android.gms.location.ActivityTransitionResult;
import com.google.android.gms.location.DetectedActivity;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.transistorsoft.locationmanager.adapter.BackgroundGeolocation;
import com.transistorsoft.locationmanager.adapter.TSConfig;
import com.transistorsoft.locationmanager.event.MotionTriggerDelayEvent;
import com.transistorsoft.locationmanager.event.StopTimeoutEvent;
import com.transistorsoft.locationmanager.geofence.TSGeofenceManager;
import com.transistorsoft.locationmanager.lifecycle.LifecycleManager;
import com.transistorsoft.locationmanager.logger.TSLog;
import com.transistorsoft.locationmanager.logger.TSMediaPlayer;
import com.transistorsoft.locationmanager.scheduler.TSScheduleManager;
import com.transistorsoft.locationmanager.util.LocationAuthorization;
import com.transistorsoft.locationmanager.util.Sensors;
import com.transistorsoft.locationmanager.util.Util;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.greenrobot.eventbus.EventBus;

public class ActivityRecognitionService extends AbstractService {
    private static final long s = 60000;
    public int mForegroundServiceType = 256;
    private static final AtomicBoolean q = new AtomicBoolean(false);
    private static final AtomicBoolean r = new AtomicBoolean(false);
    protected static AtomicBoolean t = new AtomicBoolean(false);
    private static ActivityTransitionEvent u = new ActivityTransitionEvent(3, 0, 0);
    private static final String[] v = {"HUAWEI"};

    class a implements Runnable {
        private final Intent a;
        private final int b;

        a(Intent intent, int i) {
            this.a = intent;
            this.b = i;
        }

        @Override
        public void run() {
            if (ActivityTransitionResult.hasResult(this.a)) {
                ActivityRecognitionService.this.a(ActivityTransitionResult.extractResult(this.a));
            } else if (ActivityRecognitionResult.hasResult(this.a)) {
                ActivityRecognitionService.this.a(ActivityRecognitionResult.extractResult(this.a));
                ActivityRecognitionService.this.a(false);
            } else {
                ActivityRecognitionService.this.a(false);
            }
            ActivityRecognitionService.this.a(ActivityRecognitionService.r.get());
            ActivityRecognitionService.this.a(this.b);
        }
    }

    private static void b(Context context) {
        ArrayList arrayList = new ArrayList(6);
        arrayList.add(3);
        arrayList.add(2);
        arrayList.add(7);
        arrayList.add(0);
        arrayList.add(1);
        arrayList.add(8);
        ArrayList arrayList2 = new ArrayList(12);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            int iIntValue = ((Integer) it.next()).intValue();
            arrayList2.add(new ActivityTransition.Builder().setActivityType(iIntValue).setActivityTransition(0).build());
            arrayList2.add(new ActivityTransition.Builder().setActivityType(iIntValue).setActivityTransition(1).build());
        }
        ActivityRecognitionClient client = ActivityRecognition.getClient(context);
        PendingIntent pendingIntent = getPendingIntent(context, null);
        client.removeActivityUpdates(pendingIntent);
        client.requestActivityTransitionUpdates(new ActivityTransitionRequest(arrayList2), pendingIntent).addOnFailureListener(new OnFailureListener() {
            @Override
            public final void onFailure(Exception exc) {
                ActivityRecognitionService.a(exc);
            }
        });
    }

    public static void disableMotionTriggerDelay(Context context) {
        r.set(false);
        stopService(context);
    }

    public static ActivityTransitionEvent getLastActivity() {
        return u;
    }

    public static ActivityTransitionEvent getMostProbableActivity() {
        return u;
    }

    private static PendingIntent getPendingIntent(Context context, String str) {
        Context applicationContext = context.getApplicationContext();
        Intent intent = new Intent(applicationContext, (Class<?>) ActivityRecognitionService.class);
        if (str != null) {
            intent.setAction(str);
        }
        return Build.VERSION.SDK_INT >= 26 ? PendingIntent.getForegroundService(applicationContext, 0, intent, Util.getPendingIntentFlags(134217728)) : PendingIntent.getService(applicationContext, 0, intent, 134217728);
    }

    private boolean i() {
        return LifecycleManager.getInstance().isBackground() && !LocationAuthorization.hasBackgroundPermission(getApplicationContext());
    }

    public static boolean isBadVendor() {
        return new ArrayList(Arrays.asList(v)).contains(Build.MANUFACTURER);
    }

    public static boolean isMoving(Context context) {
        return TSConfig.getInstance(context).hasTriggerActivity(u.getActivityType());
    }

    public static boolean isStarted() {
        return t.get();
    }

    public static void start(final Context context) {
        final Context applicationContext = context.getApplicationContext();
        TSConfig tSConfig = TSConfig.getInstance(applicationContext);
        if (tSConfig.getDisableMotionActivityUpdates().booleanValue()) {
            return;
        }
        if (!tSConfig.isLocationTrackingMode()) {
            TSGeofenceManager tSGeofenceManager = TSGeofenceManager.getInstance(applicationContext);
            if (!tSConfig.getGeofenceModeHighAccuracy().booleanValue() || !tSGeofenceManager.hasGeofences()) {
                return;
            }
        }
        if (!LocationAuthorization.hasActivityPermission(applicationContext)) {
            TSLog.logger.warn(TSLog.warn("Cannot start motion-activity updates:  permission is denied"));
            return;
        }
        TSLog.logger.info(TSLog.on("Start motion-activity updates"));
        ActivityRecognitionClient client = ActivityRecognition.getClient(applicationContext);
        if (client == null) {
            return;
        }
        client.requestActivityUpdates(0L, getPendingIntent(applicationContext, null)).addOnSuccessListener(new OnSuccessListener() {
            @Override
            public final void onSuccess(Object obj) {
                ActivityRecognitionService.a(obj);
            }
        }).addOnFailureListener(new OnFailureListener() {
            @Override
            public final void onFailure(Exception exc) {
                ActivityRecognitionService.a(context, applicationContext, exc);
            }
        });
    }

    public static void stop(Context context) {
        TSLog.logger.info(TSLog.off("Stop motion-activity updates"));
        ActivityRecognitionClient client = ActivityRecognition.getClient(context);
        PendingIntent pendingIntent = getPendingIntent(context, null);
        client.removeActivityTransitionUpdates(pendingIntent);
        client.removeActivityUpdates(pendingIntent);
        t.set(false);
        stopService(context);
    }

    private static void stopService(Context context) {
        AbstractService.stop(context, ActivityRecognitionService.class);
    }

    @Override
    public void onCreate() {
        if (Build.VERSION.SDK_INT >= 34) {
            super.a(getClass().getSimpleName(), 256);
        } else {
            super.a(getClass().getSimpleName(), 0);
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    @Override
    public int onStartCommand(Intent intent, int i, int i2) {
        boolean zA = super.a(intent, i2, true);
        t.set(zA);
        if (zA) {
            BackgroundGeolocation.getThreadPool().execute(new a(intent, i2));
            return 3;
        }
        r.set(false);
        return 2;
    }

    public static void a(Object obj) {
        t.set(true);
    }

    public static void a(Context context, Context context2, Exception exc) {
        t.set(true);
        try {
            ApiException apiException = (ApiException) ApiException.class.cast(exc);
            TSLog.logger.warn(TSLog.warn("Failed to initiate motion-activity updates (ERROR CODE: " + apiException.getStatusCode() + ", " + apiException.getStatusMessage() + ").  This device does not support the Motion API due to missing sensors (eg: gyroscope, accelerometer)." + Sensors.getInstance(context).print().toString()));
            b(context2);
        } catch (ClassCastException unused) {
            TSLog.logger.warn(TSLog.warn("Failed to initiate motion-activity updates:  " + exc.getMessage() + Sensors.getInstance(context).print().toString()));
            b(context2);
        }
    }

    public void a(ActivityTransitionResult activityTransitionResult) {
        Context applicationContext = getApplicationContext();
        if (activityTransitionResult == null) {
            return;
        }
        List<ActivityTransitionEvent> transitionEvents = activityTransitionResult.getTransitionEvents();
        if (transitionEvents == null) {
            TSLog.logger.warn(TSLog.warn("handleActivityTransitionResult received null transitionEvents"));
            return;
        }
        TSConfig tSConfig = TSConfig.getInstance(applicationContext);
        StringBuilder sb = new StringBuilder();
        sb.append(TSLog.header("Motion Transition Result"));
        TSScheduleManager tSScheduleManager = TSScheduleManager.getInstance(applicationContext);
        for (ActivityTransitionEvent activityTransitionEvent : transitionEvents) {
            if (activityTransitionEvent.getTransitionType() == 0) {
                ActivityTransitionEvent activityTransitionEvent2 = u;
                u = activityTransitionEvent;
                sb.append(TSLog.boxRow("🎾  ENTER: " + Util.getActivityName(activityTransitionEvent.getActivityType())));
                EventBus.getDefault().post(activityTransitionEvent);
                boolean zBooleanValue = tSConfig.getIsMoving().booleanValue();
                boolean zHasTriggerActivity = tSConfig.hasTriggerActivity(activityTransitionEvent.getActivityType());
                boolean z = !zBooleanValue && zHasTriggerActivity;
                boolean z2 = zBooleanValue && !zHasTriggerActivity;
                TSLog.logger.debug("*** wasMoving: " + zBooleanValue + ", nowMoving: " + zHasTriggerActivity + ", startedMoving: " + z + ", justStopped; " + z2);
                if (activityTransitionEvent.getActivityType() != 3 && !z2) {
                    if (i() && !tSConfig.getIsMoving().booleanValue()) {
                        TSLog.logger.warn(TSLog.warn("Refused to initiate location-services from MotionTransition event in the background with WhenInUse authorization"));
                    } else if (!z && q.get()) {
                        if (zBooleanValue && tSConfig.isLocationTrackingMode() && tSConfig.getUseSignificantChangesOnly().booleanValue()) {
                            tSScheduleManager.cancelOneShot(StopTimeoutEvent.ACTION);
                            TSMediaPlayer.getInstance().debug(applicationContext, "tslocationmanager_bell_ding_pop");
                        }
                    } else if (tSConfig.isLocationTrackingMode()) {
                        long jLongValue = tSConfig.getMotionTriggerDelay().longValue();
                        if (tSConfig.getUseSignificantChangesOnly().booleanValue() && jLongValue < 60000) {
                            jLongValue = 60000;
                        }
                        if (zHasTriggerActivity && jLongValue > 0) {
                            TSMediaPlayer.getInstance().debug(applicationContext, TSMediaPlayer.DOT_RETRY);
                            tSScheduleManager.oneShot(MotionTriggerDelayEvent.ACTION, jLongValue, true, true);
                            if (!tSScheduleManager.canScheduleExactAlarms()) {
                                r.set(true);
                            }
                        } else {
                            TrackingService.changePace(applicationContext, zHasTriggerActivity, null);
                        }
                    } else {
                        GeofencingService.changePace(applicationContext, zHasTriggerActivity, null);
                    }
                } else {
                    r.set(false);
                    if (tSConfig.getMotionTriggerDelay().longValue() >= 0 && !zBooleanValue && activityTransitionEvent2.getActivityType() != activityTransitionEvent.getActivityType()) {
                        TSMediaPlayer.getInstance().debug(applicationContext, TSMediaPlayer.DOT_STOP);
                        tSScheduleManager.cancelOneShot(MotionTriggerDelayEvent.ACTION);
                        a(false);
                    }
                    if (tSConfig.getIsMoving().booleanValue()) {
                        if (tSConfig.isLocationTrackingMode()) {
                            if (!q.get()) {
                                TrackingService.changePace(applicationContext, tSConfig.getIsMoving().booleanValue(), null);
                            } else {
                                TrackingService.b(applicationContext);
                            }
                        } else {
                            GeofencingService.changePace(applicationContext, false, null);
                        }
                    }
                }
                q.set(true);
            } else {
                sb.append(TSLog.boxRow("🔴  EXIT: " + Util.getActivityName(activityTransitionEvent.getActivityType())));
            }
        }
        sb.append(TSLog.BOX_BOTTOM);
        TSLog.logger.info(sb.toString());
    }

    public static void a(Exception exc) {
        try {
            ApiException apiException = (ApiException) ApiException.class.cast(exc);
            TSLog.logger.warn(TSLog.warn("Failed to initiate activity-transition updates (ERROR CODE: " + apiException.getStatusCode() + ", " + apiException.getStatusMessage() + ").  This device does not support the Motion API due to missing sensors (eg: gyroscope, accelerometer)."));
        } catch (ClassCastException unused) {
            TSLog.logger.warn(TSLog.warn("Failed to initiate activity-transition updates:  " + exc.getMessage()));
        }
    }

    public int a(ActivityRecognitionResult activityRecognitionResult) {
        r.set(false);
        DetectedActivity mostProbableActivity = activityRecognitionResult.getMostProbableActivity();
        TSLog.logger.debug(TSLog.activity(mostProbableActivity.toString()));
        TSConfig tSConfig = TSConfig.getInstance(getApplicationContext());
        if (!q.get() && tSConfig.getIsMoving().booleanValue() && mostProbableActivity.getType() == 3) {
            if (tSConfig.isLocationTrackingMode()) {
                TrackingService.b(getApplicationContext());
            } else {
                GeofencingService.changePace(getApplicationContext(), false, null);
            }
        }
        b(getApplicationContext());
        return 3;
    }
}
