package com.transistorsoft.locationmanager.service;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.location.Geofence;
import com.google.android.gms.location.GeofencingClient;
import com.google.android.gms.location.GeofencingEvent;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationServices;
import com.transistorsoft.locationmanager.adapter.BackgroundGeolocation;
import com.transistorsoft.locationmanager.adapter.TSConfig;
import com.transistorsoft.locationmanager.config.TSNotification;
import com.transistorsoft.locationmanager.event.LaunchForegroundServiceEvent;
import com.transistorsoft.locationmanager.location.TSLocationManager;
import com.transistorsoft.locationmanager.logger.TSLog;
import com.transistorsoft.locationmanager.scheduler.TSScheduleManager;
import com.transistorsoft.locationmanager.util.Util;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public abstract class AbstractService extends Service {
    private static final String m = "ForegroundServiceStartNotAllowedException";

    private static final String f3746n = "TSLocationManager::FOREGROUND_SERVICE_GEOFENCE";
    private long a;
    protected Date i;
    private static final AtomicBoolean k = new AtomicBoolean(false);
    private static final AtomicBoolean l = new AtomicBoolean(false);
    private static final List<String> o = new ArrayList();
    private static final List<Intent> p = new ArrayList();
    private int b = 0;
    private final Handler c = new Handler(Looper.getMainLooper());
    private final AtomicInteger d = new AtomicInteger(0);
    private final AtomicInteger e = new AtomicInteger(0);
    private final AtomicBoolean f = new AtomicBoolean(false);
    private final AtomicReference<Runnable> g = new AtomicReference<>();
    protected final List<Intent> h = new ArrayList();
    private String j = "AbstractService";

    class a implements TSLocationManager.LocationCallback {
        final Context a;
        final Intent b;

        a(Context context, Intent intent) {
            this.a = context;
            this.b = intent;
        }

        @Override
        public void onFailure(String str) {
            TSLog.logger.info(TSLog.warn("Failed to fetch lastLocation to create TSLocationManager::FOREGROUND_SERVICE_GEOFENCE"));
            AbstractService.startForegroundService(this.a, this.b);
        }

        @Override
        public void onLocation(Location location) {
            TSLog.logger.debug(TSLog.pin(location.toString()));
            GeofencingClient geofencingClient = LocationServices.getGeofencingClient(this.a);
            geofencingClient.addGeofences(new GeofencingRequest.Builder().setInitialTrigger(1).addGeofence(new Geofence.Builder().setRequestId(AbstractService.f3746n).setCircularRegion(location.getLatitude(), location.getLongitude(), location.hasAccuracy() ? 200.0f + location.getAccuracy() : 200.0f).setExpirationDuration(120000L).setTransitionTypes(1).setLoiteringDelay(0).setNotificationResponsiveness(0).build()).build(), PendingIntent.getForegroundService(this.a, 0, this.b, Util.getPendingIntentFlags(134217728)));
        }
    }

    static boolean a() {
        boolean z;
        List<String> list = o;
        synchronized (list) {
            z = !list.isEmpty();
        }
        return z;
    }

    private static void b(String str) {
        List<String> list = o;
        synchronized (list) {
            if (!list.contains(str)) {
                list.add(str);
            }
        }
    }

    private static void c(String str) {
        List<String> list = o;
        synchronized (list) {
            list.remove(str);
        }
    }

    private static List<Intent> d() {
        ArrayList arrayList;
        List<Intent> list = p;
        synchronized (list) {
            arrayList = new ArrayList(list);
            list.clear();
        }
        return arrayList;
    }

    public void e() {
        BackgroundGeolocation.getInstance(getApplicationContext());
    }

    public void f() {
        if (this.f.get()) {
            b();
        } else if (this.d.get() <= 0) {
            TSLog.logger.debug("\n  ⚙️︎  " + this.j + ".stopSelfResult(" + this.e.get() + "): " + stopSelfResult(this.e.get()));
        }
    }

    private boolean g() {
        return k.get() && l.get();
    }

    public static void launchQueuedServices(Context context) {
        Iterator<Intent> it = d().iterator();
        while (it.hasNext()) {
            startForegroundService(context, it.next());
        }
    }

    public static void launchService(Context context, Class<?> cls, String str) {
        Intent intent = new Intent(context, cls);
        intent.setAction(str);
        startForegroundService(context, intent);
    }

    public static void r(boolean z) {
        k.set(true);
        l.set(z);
    }

    public static void startForegroundService(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT < 26) {
            context.startService(intent);
            return;
        }
        try {
            context.startForegroundService(intent);
        } catch (Exception e) {
            if (Build.VERSION.SDK_INT < 31 || !e.getClass().getSimpleName().equalsIgnoreCase(m)) {
                TSLog.logger.error(TSLog.error("[startForegroundService] ERROR: " + intent + " " + intent.getExtras() + ", error: " + e.getMessage()), (Throwable) e);
                return;
            }
            int intExtra = intent.getIntExtra("launch_failures", 0) + 1;
            if (intExtra > 1) {
                TSLog.logger.error(TSLog.warn("[startForegroundService] LAUNCH DENIED (2nd try). Giving up. " + intent), (Throwable) e);
                return;
            }
            intent.putExtra("launch_failures", intExtra);
            a(intent);
            AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
            if (Build.VERSION.SDK_INT <= 33) {
                TSLog.logger.warn(TSLog.info("Background FGS launch denied:  Retrying with AlarmManager..." + intent));
                TSScheduleManager.getInstance(context).oneShot(LaunchForegroundServiceEvent.ACTION, 0L, true, true);
            } else if (alarmManager.canScheduleExactAlarms()) {
                TSLog.logger.warn(TSLog.info("Background FGS launch denied:  Retrying with AlarmManager..." + intent));
                TSScheduleManager.getInstance(context).oneShot(LaunchForegroundServiceEvent.ACTION, 0L, true, true);
            } else {
                TSLog.logger.warn(TSLog.info("Background FGS launch denied:  Retrying with TSLocationManager::FOREGROUND_SERVICE_GEOFENCE..." + intent));
                a(context, intent);
            }
        }
    }

    public static void stop(Context context, Class<?> cls) {
        Intent intent = new Intent(context, cls);
        if (a(cls.getSimpleName())) {
            intent.setAction("stop");
            startForegroundService(context, intent);
        }
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public void onDestroy() {
        b();
        c(this.j);
        TSLog.logger.debug(TSLog.off(this.j + " stopped"));
    }

    public void onTimeout(int i, int i2) {
        TSLog.logger.warn(TSLog.warn("Force stopping Service"));
        a(false);
        a(i);
        super.onTimeout(i, i2);
    }

    static boolean a(String str) {
        boolean zContains;
        List<String> list = o;
        synchronized (list) {
            zContains = list.contains(str);
        }
        return zContains;
    }

    private void c() {
        if (this.f.get() && this.i == null) {
            this.i = new Date();
        }
        try {
            if (this.a >= 0) {
                long jCurrentTimeMillis = System.currentTimeMillis() - this.a;
                if (jCurrentTimeMillis > 250) {
                    TSLog.logger.debug("\n  ⚙️︎   dt " + this.j + ".onCreate -> startForeground(): " + jCurrentTimeMillis + "ms");
                }
                this.a = -1L;
            }
            if (Build.VERSION.SDK_INT >= 34) {
                startForeground(ForegroundNotification.NOTIFICATION_ID, ForegroundNotification.build(this), -1);
            } else {
                startForeground(ForegroundNotification.NOTIFICATION_ID, ForegroundNotification.build(this));
            }
        } catch (Exception e) {
            stopSelf();
            TSLog.logger.error(TSLog.error(e.getMessage()), (Throwable) e);
        }
    }

    private static void a(Intent intent) {
        List<Intent> list = p;
        synchronized (list) {
            list.add(intent);
        }
    }

    private void b(int i) {
        TSLog.logger.debug(TSLog.on("STOP [" + this.j + " startId: " + i + ", eventCount: " + this.d.get() + "]"));
        this.f.set(false);
        a(i);
    }

    private void b() {
        synchronized (this.g) {
            if (this.g.get() != null) {
                this.c.removeCallbacks(this.g.get());
                this.g.set(null);
            }
        }
    }

    private static void a(Context context, Intent intent) {
        TSLocationManager.getInstance(context).getLastLocation(new a(context, intent));
    }

    protected void a(String str, int i) {
        this.b = i;
        this.a = System.currentTimeMillis();
        super.onCreate();
        this.j = str;
        c();
        b(str);
        BackgroundGeolocation.getThreadPool().execute(new Runnable() {
            @Override
            public final void run() {
                this.f$0.e();
            }
        });
    }

    protected boolean a(Intent intent, int i, boolean z) {
        this.e.set(i);
        this.d.incrementAndGet();
        TSConfig tSConfig = TSConfig.getInstance(getApplicationContext());
        if (!g()) {
            tSConfig.reset();
            stopSelf();
            return false;
        }
        c();
        String action = intent.getAction();
        if (action != null) {
            if (action.equalsIgnoreCase("stop")) {
                b(i);
                return false;
            }
            if (action.equalsIgnoreCase("start")) {
                GeofencingEvent geofencingEventFromIntent = GeofencingEvent.fromIntent(intent);
                if (geofencingEventFromIntent != null) {
                    a(geofencingEventFromIntent);
                }
                a(true);
            } else if (action.equalsIgnoreCase("notificationaction")) {
                TSLog.logger.debug("[notificationaction] " + intent.getStringExtra("id"));
                if (intent.hasExtra("id")) {
                    String stringExtra = intent.getStringExtra("id");
                    if (tSConfig.getNotification().getLayout().equalsIgnoreCase("default")) {
                        if (stringExtra.equalsIgnoreCase("notificationButtonPause")) {
                            TrackingService.changePace(getApplicationContext(), false);
                        }
                    } else if (TSNotification.NAME.equalsIgnoreCase(stringExtra)) {
                        startActivity(getApplicationContext().getPackageManager().getLaunchIntentForPackage(getApplicationContext().getPackageName()));
                    }
                    BackgroundGeolocation.getInstance(getApplicationContext()).fireNotificationActionListeners(stringExtra);
                } else {
                    TSLog.logger.warn(TSLog.warn("Notification action received with no id"));
                }
            }
        }
        if (z && !tSConfig.getEnabled().booleanValue()) {
            TSLog.logger.warn(TSLog.warn("Refusing to start " + this.j + ", enabled: false"));
            b(i);
            return false;
        }
        if (action == null) {
            action = "start";
        }
        TSLog.logger.debug(TSLog.on(action + " [" + this.j + "  startId: " + i + ", eventCount: " + this.d.get() + "]"));
        if (this.f.get() && !this.h.contains(intent)) {
            this.h.add(intent);
        }
        return true;
    }

    private void a(GeofencingEvent geofencingEvent) {
        if (geofencingEvent.hasError()) {
            TSLog.logger.info("TSLocationManager::FOREGROUND_SERVICE_GEOFENCE Error: " + geofencingEvent.getErrorCode());
            return;
        }
        List<Geofence> triggeringGeofences = geofencingEvent.getTriggeringGeofences();
        if (triggeringGeofences != null) {
            Iterator<Geofence> it = triggeringGeofences.iterator();
            while (it.hasNext()) {
                if (it.next().getRequestId().equals(f3746n)) {
                    TSLog.logger.info(TSLog.info("👍 Foreground-service launched with TSLocationManager::FOREGROUND_SERVICE_GEOFENCE"));
                    a(getApplicationContext());
                    return;
                }
            }
        }
    }

    private static void a(Context context) {
        GeofencingClient geofencingClient = LocationServices.getGeofencingClient(context);
        if (geofencingClient == null) {
            TSLog.logger.warn(TSLog.warn("GeofencingClient is null"));
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(f3746n);
        geofencingClient.removeGeofences(arrayList);
    }

    protected void a(boolean z) {
        this.f.set(z);
    }

    protected void a(int i) {
        TSLog.logger.debug("\n  ⚙️︎   FINISH [" + this.j + " startId: " + i + ", eventCount: " + Math.max(this.d.decrementAndGet(), 0) + ", sticky: " + this.f.get() + "]");
        if (!this.f.get() && this.d.get() <= 0) {
            a(200L);
        }
    }

    private void a(long j) {
        b();
        synchronized (this.g) {
            this.g.set(new Runnable() {
                @Override
                public final void run() {
                    this.f$0.f();
                }
            });
            this.c.postDelayed(this.g.get(), j);
        }
    }
}
