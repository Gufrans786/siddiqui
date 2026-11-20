package app.notifee.core;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import androidx.core.app.AlarmManagerCompat;
import app.notifee.core.model.NotificationModel;
import com.caverock.androidsvg.SVGParser;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.FutureCallback;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.ListeningExecutorService;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import n.o.t.i.f.e.e.f;
import n.o.t.i.f.e.e.h;
import n.o.t.i.f.e.e.p;
import n.o.t.i.f.e.e.u;

public class b {
    public static final ExecutorService a;
    public static final ListeningExecutorService b;

    public class a implements FutureCallback<List<u>> {
        public a() {
        }

        @Override
        public void onFailure(Throwable th) {
        }

        @Override
        public void onSuccess(List<u> list) {
            byte[] bArr;
            for (u uVar : list) {
                b.this.getClass();
                byte[] bArr2 = uVar.b;
                if (bArr2 != null && (bArr = uVar.c) != null) {
                    Bundle bundleA = p.a(bArr);
                    NotificationModel notificationModel = new NotificationModel(p.a(bArr2));
                    if (p.a(bundleA.get(SVGParser.XML_STYLESHEET_ATTR_TYPE)) == 0) {
                        app.notifee.core.model.a aVar = new app.notifee.core.model.a(bundleA);
                        if (aVar.d.booleanValue()) {
                            b.a(notificationModel, aVar);
                        }
                    }
                }
            }
        }
    }

    static {
        ExecutorService executorServiceNewCachedThreadPool = Executors.newCachedThreadPool();
        a = executorServiceNewCachedThreadPool;
        b = MoreExecutors.listeningDecorator(executorServiceNewCachedThreadPool);
    }

    public static ListenableFuture<Void> a() {
        return new h(app.notifee.core.database.a.a(f.a).a(Boolean.TRUE)).a(new AsyncFunction() {
            @Override
            public final ListenableFuture apply(Object obj) {
                return b.a((List) obj);
            }
        }, b);
    }

    public void b() {
        Logger.d("NotifeeAlarmManager", "Reschedule Notifications on reboot");
        Futures.addCallback(new app.notifee.core.database.a(f.a).a(Boolean.TRUE), new a(), b);
    }

    public static PendingIntent a(String str) {
        try {
            Context context = f.a;
            Intent intent = new Intent(context, (Class<?>) NotificationAlarmReceiver.class);
            intent.putExtra("notificationId", str);
            return PendingIntent.getBroadcast(context, str.hashCode(), intent, 167772160);
        } catch (Exception e) {
            Logger.e("NotifeeAlarmManager", "Unable to create AlarmManager intent", e);
            return null;
        }
    }

    public static ListenableFuture a(final String str, final u uVar) throws Exception {
        byte[] bArr;
        if (uVar != null && uVar.b != null && (bArr = uVar.c) != null) {
            final Bundle bundleA = p.a(bArr);
            final NotificationModel notificationModel = new NotificationModel(p.a(uVar.b));
            return new h(c.b(notificationModel, bundleA)).a(new AsyncFunction() {
                @Override
                public final ListenableFuture apply(Object obj) {
                    return b.a(bundleA, notificationModel, str, uVar, (Void) obj);
                }
            }, a);
        }
        Logger.w("NotifeeAlarmManager", "Attempted to handle doScheduledWork but no notification data was found.");
        return Futures.immediateFuture(null);
    }

    public static void a(Bundle bundle) {
        final String string;
        if (bundle == null || (string = bundle.getString("notificationId")) == null) {
            return;
        }
        h hVar = new h(new app.notifee.core.database.a(f.a).b(string));
        AsyncFunction asyncFunction = new AsyncFunction() {
            @Override
            public final ListenableFuture apply(Object obj) {
                return b.a(string, (u) obj);
            }
        };
        ExecutorService executorService = a;
        hVar.a(asyncFunction, executorService).a(new n.o.t.i.f.e.e.b() {
            @Override
            public final void a(Exception exc, Object obj) {
                b.a(exc, obj);
            }
        }, executorService);
    }

    public static ListenableFuture a(Bundle bundle, NotificationModel notificationModel, String str, u uVar, Void r5) throws Exception {
        if (bundle.containsKey("repeatFrequency") && p.a(bundle.get("repeatFrequency")) != -1) {
            app.notifee.core.model.a aVar = new app.notifee.core.model.a(bundle);
            aVar.a();
            a(notificationModel, aVar);
            app.notifee.core.database.a.a(f.a).d(new u(str, uVar.b, p.a(bundle), Boolean.TRUE));
        } else {
            app.notifee.core.database.a.a(f.a).a(str);
        }
        return Futures.immediateFuture(null);
    }

    public static void a(Exception exc, Object obj) {
        if (exc != null) {
            Logger.e("NotifeeAlarmManager", "Failed to display notification", exc);
        }
    }

    public static void a(NotificationModel notificationModel, app.notifee.core.model.a aVar) {
        PendingIntent pendingIntentA = a(notificationModel.c());
        AlarmManager alarmManagerA = n.o.t.i.f.e.e.a.a();
        app.notifee.core.model.a.EnumC0012a enumC0012a = aVar.e;
        if (Build.VERSION.SDK_INT >= 31 && Arrays.asList(app.notifee.core.model.a.EnumC0012a.SET_EXACT, app.notifee.core.model.a.EnumC0012a.SET_EXACT_AND_ALLOW_WHILE_IDLE, app.notifee.core.model.a.EnumC0012a.SET_ALARM_CLOCK).contains(enumC0012a) && !alarmManagerA.canScheduleExactAlarms()) {
            System.err.println("Missing SCHEDULE_EXACT_ALARM permission. Trigger not scheduled. See: https://notifee.app/react-native/docs/triggers#android-12-limitations");
            return;
        }
        aVar.a();
        int iOrdinal = enumC0012a.ordinal();
        if (iOrdinal == 0) {
            alarmManagerA.set(1, aVar.g.longValue(), pendingIntentA);
            return;
        }
        if (iOrdinal == 1) {
            AlarmManagerCompat.setAndAllowWhileIdle(alarmManagerA, 0, aVar.g.longValue(), pendingIntentA);
            return;
        }
        if (iOrdinal == 2) {
            AlarmManagerCompat.setExact(alarmManagerA, 0, aVar.g.longValue(), pendingIntentA);
            return;
        }
        if (iOrdinal == 3) {
            AlarmManagerCompat.setExactAndAllowWhileIdle(alarmManagerA, 0, aVar.g.longValue(), pendingIntentA);
        } else {
            if (iOrdinal != 4) {
                return;
            }
            Context context = f.a;
            AlarmManagerCompat.setAlarmClock(alarmManagerA, aVar.g.longValue(), PendingIntent.getActivity(context, notificationModel.c().hashCode(), context.getPackageManager().getLaunchIntentForPackage(context.getPackageName()), 201326592), pendingIntentA);
        }
    }

    public static ListenableFuture a(List list) throws Exception {
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                PendingIntent pendingIntentA = a(((u) it.next()).a);
                AlarmManager alarmManagerA = n.o.t.i.f.e.e.a.a();
                if (pendingIntentA != null) {
                    alarmManagerA.cancel(pendingIntentA);
                }
            }
        }
        return Futures.immediateFuture(null);
    }
}
