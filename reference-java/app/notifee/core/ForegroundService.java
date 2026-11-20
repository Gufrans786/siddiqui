package app.notifee.core;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import androidx.core.app.NotificationManagerCompat;
import app.notifee.core.event.ForegroundServiceEvent;
import app.notifee.core.event.NotificationEvent;
import app.notifee.core.interfaces.MethodCallResult;
import app.notifee.core.model.NotificationModel;
import com.transistorsoft.locationmanager.config.TSNotification;
import n.o.t.i.f.e.e.f;
import n.o.t.i.f.e.e.g;

public class ForegroundService extends Service {
    public static String a = null;
    public static int b = -1;

    public void a(Exception exc, Void r2) {
        stopForeground(true);
        a = null;
        b = -1;
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public int onStartCommand(Intent intent, int i, int i2) {
        int foregroundServiceType;
        if (intent == null || "app.notifee.core.ForegroundService.STOP".equals(intent.getAction())) {
            stopSelf();
            a = null;
            b = -1;
            return 0;
        }
        Bundle extras = intent.getExtras();
        if (extras == null) {
            return 2;
        }
        int i3 = extras.getInt("hashCode");
        Notification notification = (Notification) extras.getParcelable(TSNotification.NAME);
        Bundle bundle = extras.getBundle("notificationBundle");
        if (!(bundle != null) || !(notification != null)) {
            return 2;
        }
        NotificationModel notificationModel = new NotificationModel(bundle);
        String str = a;
        if (str == null) {
            a = notificationModel.c();
            if (Build.VERSION.SDK_INT >= 29) {
                int foregroundServiceType2 = notificationModel.a().getForegroundServiceType();
                startForeground(i3, notification, foregroundServiceType2);
                b = foregroundServiceType2;
            } else {
                startForeground(i3, notification);
            }
            g.a(new ForegroundServiceEvent(notificationModel, new MethodCallResult() {
                @Override
                public final void onComplete(Exception exc, Object obj) {
                    this.f$0.a(exc, (Void) obj);
                }
            }));
            return 2;
        }
        if (!str.equals(notificationModel.c())) {
            g.a(new NotificationEvent(8, notificationModel));
            return 2;
        }
        if (Build.VERSION.SDK_INT < 29 || (foregroundServiceType = notificationModel.a().getForegroundServiceType()) == b) {
            NotificationManagerCompat.from(f.a).notify(i3, notification);
            return 2;
        }
        startForeground(i3, notification, foregroundServiceType);
        b = foregroundServiceType;
        return 2;
    }
}
