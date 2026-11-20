package app.notifee.core;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import app.notifee.core.interfaces.EventListener;
import app.notifee.core.interfaces.MethodCallResult;
import app.notifee.core.model.NotificationModel;
import com.google.common.util.concurrent.FutureCallback;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListeningExecutorService;
import com.google.common.util.concurrent.MoreExecutors;
import com.mapbox.maps.plugin.locationcomponent.ModelSourceWrapper;
import com.transistorsoft.locationmanager.config.TSNotification;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import n.o.t.i.f.e.e.q;

public class Notifee {
    public static final int REQUEST_CODE_NOTIFICATION_PERMISSION = 11111;
    public static Notifee b = null;
    public static boolean c = false;
    public static final ListeningExecutorService d = MoreExecutors.listeningDecorator(Executors.newCachedThreadPool());
    public MethodCallResult<Bundle> a;

    public class a implements FutureCallback<List<Bundle>> {
        public final MethodCallResult a;

        public a(Notifee notifee, MethodCallResult methodCallResult) {
            this.a = methodCallResult;
        }

        @Override
        public void onFailure(Throwable th) {
            this.a.onComplete(new Exception(th), null);
        }

        @Override
        public void onSuccess(List<Bundle> list) {
            this.a.onComplete(null, list);
        }
    }

    public class b implements FutureCallback<Bundle> {
        public final MethodCallResult a;

        public b(Notifee notifee, MethodCallResult methodCallResult) {
            this.a = methodCallResult;
        }

        @Override
        public void onFailure(Throwable th) {
            this.a.onComplete(new Exception(th), null);
        }

        @Override
        public void onSuccess(Bundle bundle) {
            this.a.onComplete(null, bundle);
        }
    }

    public class c implements FutureCallback<List<Bundle>> {
        public final MethodCallResult a;

        public c(Notifee notifee, MethodCallResult methodCallResult) {
            this.a = methodCallResult;
        }

        @Override
        public void onFailure(Throwable th) {
            this.a.onComplete(new Exception(th), null);
        }

        @Override
        public void onSuccess(List<Bundle> list) {
            this.a.onComplete(null, list);
        }
    }

    public class d implements FutureCallback<Bundle> {
        public final MethodCallResult a;

        public d(Notifee notifee, MethodCallResult methodCallResult) {
            this.a = methodCallResult;
        }

        @Override
        public void onFailure(Throwable th) {
            this.a.onComplete(new Exception(th), null);
        }

        @Override
        public void onSuccess(Bundle bundle) {
            this.a.onComplete(null, bundle);
        }
    }

    public class e implements FutureCallback<Boolean> {
        public final MethodCallResult a;

        public e(Notifee notifee, MethodCallResult methodCallResult) {
            this.a = methodCallResult;
        }

        @Override
        public void onFailure(Throwable th) {
            this.a.onComplete(new Exception(th), null);
        }

        @Override
        public void onSuccess(Boolean bool) {
            this.a.onComplete(null, bool);
        }
    }

    public class f implements FutureCallback<Boolean> {
        public final MethodCallResult a;

        public f(Notifee notifee, MethodCallResult methodCallResult) {
            this.a = methodCallResult;
        }

        @Override
        public void onFailure(Throwable th) {
            this.a.onComplete(new Exception(th), null);
        }

        @Override
        public void onSuccess(Boolean bool) {
            this.a.onComplete(null, bool);
        }
    }

    public class g implements FutureCallback<Void> {
        public final MethodCallResult a;

        public g(Notifee notifee, MethodCallResult methodCallResult) {
            this.a = methodCallResult;
        }

        @Override
        public void onFailure(Throwable th) {
            this.a.onComplete(new Exception(th), null);
        }

        @Override
        public void onSuccess(Void r3) {
            this.a.onComplete(null, r3);
        }
    }

    public class h implements FutureCallback<Void> {
        public final MethodCallResult a;

        public h(Notifee notifee, MethodCallResult methodCallResult) {
            this.a = methodCallResult;
        }

        @Override
        public void onFailure(Throwable th) {
            this.a.onComplete(new Exception(th), null);
        }

        @Override
        public void onSuccess(Void r3) {
            this.a.onComplete(null, r3);
        }
    }

    public class i implements FutureCallback<Void> {
        public final MethodCallResult a;

        public i(Notifee notifee, MethodCallResult methodCallResult) {
            this.a = methodCallResult;
        }

        @Override
        public void onFailure(Throwable th) {
            this.a.onComplete(new Exception(th), null);
        }

        @Override
        public void onSuccess(Void r3) {
            this.a.onComplete(null, r3);
        }
    }

    public class j implements FutureCallback<Void> {
        public final MethodCallResult a;

        public j(Notifee notifee, MethodCallResult methodCallResult) {
            this.a = methodCallResult;
        }

        @Override
        public void onFailure(Throwable th) {
            this.a.onComplete(new Exception(th), null);
        }

        @Override
        public void onSuccess(Void r3) {
            this.a.onComplete(null, r3);
        }
    }

    public class k implements FutureCallback<Void> {
        public final MethodCallResult a;

        public k(Notifee notifee, MethodCallResult methodCallResult) {
            this.a = methodCallResult;
        }

        @Override
        public void onFailure(Throwable th) {
            this.a.onComplete(new Exception(th), null);
        }

        @Override
        public void onSuccess(Void r3) {
            this.a.onComplete(null, r3);
        }
    }

    public class l implements FutureCallback<Void> {
        public final MethodCallResult a;

        public l(Notifee notifee, MethodCallResult methodCallResult) {
            this.a = methodCallResult;
        }

        @Override
        public void onFailure(Throwable th) {
            this.a.onComplete(new Exception(th), null);
        }

        @Override
        public void onSuccess(Void r3) {
            this.a.onComplete(null, r3);
        }
    }

    public class m implements FutureCallback<Void> {
        public final MethodCallResult a;

        public m(Notifee notifee, MethodCallResult methodCallResult) {
            this.a = methodCallResult;
        }

        @Override
        public void onFailure(Throwable th) {
            Exception exc = new Exception(th);
            Logger.e("API", "displayNotification", exc);
            this.a.onComplete(exc, null);
        }

        @Override
        public void onSuccess(Void r3) {
            this.a.onComplete(null, r3);
        }
    }

    public class n implements FutureCallback<Void> {
        public final MethodCallResult a;

        public n(Notifee notifee, MethodCallResult methodCallResult) {
            this.a = methodCallResult;
        }

        @Override
        public void onFailure(Throwable th) {
            Exception exc = new Exception(th);
            Logger.e("API", "createTriggerNotification", exc);
            this.a.onComplete(exc, null);
        }

        @Override
        public void onSuccess(Void r3) {
            this.a.onComplete(null, r3);
        }
    }

    public class o implements FutureCallback<List<Bundle>> {
        public final MethodCallResult a;

        public o(Notifee notifee, MethodCallResult methodCallResult) {
            this.a = methodCallResult;
        }

        @Override
        public void onFailure(Throwable th) {
            this.a.onComplete(new Exception(th), null);
        }

        @Override
        public void onSuccess(List<Bundle> list) {
            this.a.onComplete(null, list);
        }
    }

    public static Context getContext() {
        return n.o.t.i.f.e.e.f.a;
    }

    public static Notifee getInstance() {
        if (!c) {
            Logger.w("API", "getInstance() accessed before event listener is initialized");
            b = new Notifee();
        }
        return b;
    }

    public static ListeningExecutorService getListeningExecutorService() {
        return d;
    }

    public static void initialize(EventListener eventListener) {
        synchronized (Notifee.class) {
            if (c) {
                return;
            }
            if (b == null) {
                b = new Notifee();
            }
            if (eventListener != null) {
                EventSubscriber.register(eventListener);
            }
            c = true;
        }
    }

    public void cancelAllNotifications(int i2, MethodCallResult<Void> methodCallResult) {
        Futures.addCallback(app.notifee.core.c.a(i2), new g(this, methodCallResult), getListeningExecutorService());
    }

    public void cancelAllNotificationsWithIds(int i2, List<String> list, String str, MethodCallResult<Void> methodCallResult) {
        Futures.addCallback(app.notifee.core.c.a(i2, list, str), new h(this, methodCallResult), getListeningExecutorService());
    }

    public void createChannel(Bundle bundle, MethodCallResult<Void> methodCallResult) {
        Futures.addCallback(app.notifee.core.a.a(new n.o.t.i.f.e.e.d(bundle)), new i(this, methodCallResult), getListeningExecutorService());
    }

    public void createChannelGroup(Bundle bundle, MethodCallResult<Void> methodCallResult) {
        Futures.addCallback(app.notifee.core.a.a(new n.o.t.i.f.e.e.c(bundle)), new k(this, methodCallResult), getListeningExecutorService());
    }

    public void createChannelGroups(List<Bundle> list, MethodCallResult<Void> methodCallResult) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<Bundle> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new n.o.t.i.f.e.e.c(it.next()));
        }
        Futures.addCallback(app.notifee.core.a.a(arrayList), new l(this, methodCallResult), getListeningExecutorService());
    }

    public void createChannels(List<Bundle> list, MethodCallResult<Void> methodCallResult) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<Bundle> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new n.o.t.i.f.e.e.d(it.next()));
        }
        Futures.addCallback(app.notifee.core.a.b(arrayList), new j(this, methodCallResult), getListeningExecutorService());
    }

    public void createTriggerNotification(Bundle bundle, Bundle bundle2, MethodCallResult<Void> methodCallResult) {
        Futures.addCallback(app.notifee.core.c.a(new NotificationModel(bundle), bundle2), new n(this, methodCallResult), getListeningExecutorService());
    }

    public void deleteChannel(String str, MethodCallResult<Void> methodCallResult) {
        NotificationManagerCompat.from(n.o.t.i.f.e.e.f.a).deleteNotificationChannel(str);
        methodCallResult.onComplete(null, null);
    }

    public void deleteChannelGroup(String str, MethodCallResult<Void> methodCallResult) {
        NotificationManagerCompat.from(n.o.t.i.f.e.e.f.a).deleteNotificationChannelGroup(str);
        methodCallResult.onComplete(null, null);
    }

    public void displayNotification(Bundle bundle, MethodCallResult<Void> methodCallResult) {
        Futures.addCallback(app.notifee.core.c.b(new NotificationModel(bundle), (Bundle) null), new m(this, methodCallResult), getListeningExecutorService());
    }

    public void getChannel(String str, MethodCallResult<Bundle> methodCallResult) {
        Futures.addCallback(app.notifee.core.a.a(str), new b(this, methodCallResult), getListeningExecutorService());
    }

    public void getChannelGroup(String str, MethodCallResult<Bundle> methodCallResult) {
        Futures.addCallback(app.notifee.core.a.b(str), new d(this, methodCallResult), getListeningExecutorService());
    }

    public void getChannelGroups(MethodCallResult<List<Bundle>> methodCallResult) {
        Futures.addCallback(app.notifee.core.a.a(), new c(this, methodCallResult), getListeningExecutorService());
    }

    public void getChannels(MethodCallResult<List<Bundle>> methodCallResult) {
        Futures.addCallback(app.notifee.core.a.b(), new a(this, methodCallResult), getListeningExecutorService());
    }

    public void getDisplayedNotifications(MethodCallResult<List<Bundle>> methodCallResult) {
        Futures.addCallback(app.notifee.core.c.a(), new o(this, methodCallResult), getListeningExecutorService());
    }

    public void getInitialNotification(Activity activity, MethodCallResult<Bundle> methodCallResult) {
        n.o.t.i.f.e.e.i iVar = (n.o.t.i.f.e.e.i) n.o.t.i.f.e.e.g.b.a.removeStickyEvent(n.o.t.i.f.e.e.i.class);
        Bundle bundle = new Bundle();
        if (iVar != null) {
            bundle.putAll(iVar.b);
            bundle.putBundle(TSNotification.NAME, iVar.a.toBundle());
            methodCallResult.onComplete(null, bundle);
            return;
        }
        if (activity != null) {
            try {
                Intent intent = activity.getIntent();
                if (intent != null && intent.getExtras() != null && intent.hasExtra(TSNotification.NAME)) {
                    bundle.putBundle(TSNotification.NAME, intent.getBundleExtra(TSNotification.NAME));
                    methodCallResult.onComplete(null, bundle);
                    return;
                }
            } catch (Exception e2) {
                Logger.e("API", "getInitialNotification", e2);
            }
        }
        methodCallResult.onComplete(null, null);
    }

    public String getMainComponent(String str) {
        n.o.t.i.f.e.e.k kVar = (n.o.t.i.f.e.e.k) n.o.t.i.f.e.e.g.b.a.removeStickyEvent(n.o.t.i.f.e.e.k.class);
        return kVar == null ? str : kVar.a;
    }

    public void getNotificationSettings(MethodCallResult<Bundle> methodCallResult) {
        boolean zAreNotificationsEnabled = NotificationManagerCompat.from(n.o.t.i.f.e.e.f.a).areNotificationsEnabled();
        Bundle bundle = new Bundle();
        if (zAreNotificationsEnabled) {
            bundle.putInt("authorizationStatus", 1);
        } else {
            bundle.putInt("authorizationStatus", 0);
        }
        boolean zCanScheduleExactAlarms = Build.VERSION.SDK_INT >= 31 ? n.o.t.i.f.e.e.a.a().canScheduleExactAlarms() : true;
        Bundle bundle2 = new Bundle();
        if (zCanScheduleExactAlarms) {
            bundle2.putInt(NotificationCompat.CATEGORY_ALARM, 1);
        } else {
            bundle2.putInt(NotificationCompat.CATEGORY_ALARM, 0);
        }
        bundle.putBundle("android", bundle2);
        methodCallResult.onComplete(null, bundle);
    }

    public void getPowerManagerInfo(MethodCallResult<Bundle> methodCallResult) {
        String strA = n.o.t.i.f.e.e.j.a(q.a(n.o.t.i.f.e.e.f.a));
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        String str3 = Build.VERSION.RELEASE;
        Bundle bundle = new Bundle();
        bundle.putString("manufacturer", str);
        bundle.putString(ModelSourceWrapper.TYPE, str2);
        bundle.putString("version", str3);
        bundle.putString("activity", strA);
        methodCallResult.onComplete(null, bundle);
    }

    public void getTriggerNotificationIds(MethodCallResult<List<String>> methodCallResult) {
        ExecutorService executorService = app.notifee.core.c.a;
        Futures.addCallback(new app.notifee.core.database.a(n.o.t.i.f.e.e.f.a).b(), new n.o.t.i.f.e.e.m(methodCallResult), app.notifee.core.c.b);
    }

    public void getTriggerNotifications(MethodCallResult<List<Bundle>> methodCallResult) {
        ExecutorService executorService = app.notifee.core.c.a;
        Futures.addCallback(new app.notifee.core.database.a(n.o.t.i.f.e.e.f.a).b(), new n.o.t.i.f.e.e.l(new ArrayList(), methodCallResult), app.notifee.core.c.b);
    }

    public void isBatteryOptimizationEnabled(MethodCallResult<Boolean> methodCallResult) {
        Context context = n.o.t.i.f.e.e.f.a;
        methodCallResult.onComplete(null, Boolean.valueOf(!((PowerManager) context.getSystemService("power")).isIgnoringBatteryOptimizations(context.getPackageName())));
    }

    public void isChannelBlocked(String str, MethodCallResult<Boolean> methodCallResult) {
        Futures.addCallback(app.notifee.core.a.c(str), new f(this, methodCallResult), getListeningExecutorService());
    }

    public void isChannelCreated(String str, MethodCallResult<Boolean> methodCallResult) {
        Futures.addCallback(app.notifee.core.a.d(str), new e(this, methodCallResult), getListeningExecutorService());
    }

    public boolean onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        MethodCallResult<Bundle> methodCallResult;
        if (i2 != 11111 || (methodCallResult = this.a) == null) {
            return false;
        }
        getNotificationSettings(methodCallResult);
        return true;
    }

    public void openAlarmPermissionSettings(Activity activity, MethodCallResult<Void> methodCallResult) {
        if (Build.VERSION.SDK_INT >= 31) {
            try {
                Intent intent = new Intent();
                intent.setFlags(268435456);
                intent.setAction("android.settings.REQUEST_SCHEDULE_EXACT_ALARM");
                intent.setData(Uri.parse("package:" + n.o.t.i.f.e.e.f.a.getPackageName()));
                n.o.t.i.f.e.e.j.a(activity, intent);
            } catch (Exception e2) {
                Logger.e("AlarmUtils", "An error occurred whilst trying to open alarm permission settings", e2);
            }
        }
        methodCallResult.onComplete(null, null);
    }

    public void openBatteryOptimizationSettings(Activity activity, MethodCallResult<Void> methodCallResult) {
        try {
            Intent intent = new Intent();
            intent.setAction("android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS");
            intent.setFlags(268435456);
            if (activity != null) {
                if (Boolean.valueOf(n.o.t.i.f.e.e.j.a(n.o.t.i.f.e.e.f.a, intent)).booleanValue()) {
                    n.o.t.i.f.e.e.j.a(activity, intent);
                } else {
                    Logger.d("PowerManagerUtils", "battery optimization settings is not available on device");
                }
            }
        } catch (Exception e2) {
            Logger.e("PowerManagerUtils", "An error occurred whilst trying to open battery optimization settings", e2);
        }
        methodCallResult.onComplete(null, null);
    }

    public void openNotificationSettings(String str, Activity activity, MethodCallResult<Void> methodCallResult) {
        final Intent intent;
        if (getContext() == null || activity == null) {
            Logger.d("openNotificationSettings", "attempted to start activity but no current activity or context was available.");
            methodCallResult.onComplete(null, null);
            return;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            if (str != null) {
                intent = new Intent("android.settings.CHANNEL_NOTIFICATION_SETTINGS");
                intent.putExtra("android.provider.extra.CHANNEL_ID", str);
            } else {
                intent = new Intent("android.settings.APP_NOTIFICATION_SETTINGS");
            }
            intent.putExtra("android.provider.extra.APP_PACKAGE", getContext().getPackageName());
        } else {
            intent = new Intent("android.settings.APPLICATION_SETTINGS");
        }
        intent.setFlags(268435456);
        activity.runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                Notifee.getContext().startActivity(intent);
            }
        });
        methodCallResult.onComplete(null, null);
    }

    public void openPowerManagerSettings(Activity activity, MethodCallResult<Void> methodCallResult) {
        Intent intentA;
        synchronized (q.class) {
            intentA = q.a;
        }
        if (intentA == null) {
            intentA = q.a(n.o.t.i.f.e.e.f.a);
        }
        if (intentA != null) {
            try {
                intentA.setFlags(268435456);
                n.o.t.i.f.e.e.j.a(activity, intentA);
            } catch (Exception e2) {
                Logger.e("PowerManagerUtils", "Unable to start activity: " + n.o.t.i.f.e.e.j.a(intentA), e2);
            }
        } else {
            Logger.w("PowerManagerUtils", "Unable to find an activity to open the device's power manager");
        }
        methodCallResult.onComplete(null, null);
    }

    public void setRequestPermissionCallback(MethodCallResult<Bundle> methodCallResult) {
        this.a = methodCallResult;
    }

    public void stopForegroundService(MethodCallResult<Void> methodCallResult) {
        String str = ForegroundService.a;
        Intent intent = new Intent(n.o.t.i.f.e.e.f.a, (Class<?>) ForegroundService.class);
        intent.setAction("app.notifee.core.ForegroundService.STOP");
        try {
            n.o.t.i.f.e.e.f.a.startService(intent);
        } catch (IllegalStateException unused) {
            n.o.t.i.f.e.e.f.a.stopService(intent);
        } catch (Exception e2) {
            Logger.e("ForegroundService", "Unable to stop foreground service", e2);
        }
        methodCallResult.onComplete(null, null);
    }
}
