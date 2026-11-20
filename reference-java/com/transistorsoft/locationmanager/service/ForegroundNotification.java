package com.transistorsoft.locationmanager.service;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.os.Build;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import com.transistorsoft.locationmanager.adapter.TSConfig;
import com.transistorsoft.locationmanager.config.TSNotification;
import com.transistorsoft.locationmanager.logger.TSLog;
import com.transistorsoft.locationmanager.notification.TSLocalNotification;
import com.transistorsoft.locationmanager.util.Util;
import com.transistorsoft.tslocationmanager.R;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

public class ForegroundNotification {
    public static final String NOTIFICATION_ACTION = "notificationaction";
    public static final int NOTIFICATION_ID = 9942585;
    static final String a = "default";
    static final String b = "notificationButtonPause";
    private static final AtomicLong c = new AtomicLong(0);

    static void a(long j) {
        c.set(j);
    }

    private static void b(Context context, NotificationCompat.Builder builder) {
        TSConfig tSConfig = TSConfig.getInstance(context);
        TSNotification notification = tSConfig.getNotification();
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        TSNotification notification2 = tSConfig.getNotification();
        String title = notification2.getTitle();
        if (title.isEmpty()) {
            int i = applicationInfo.labelRes;
            title = i == 0 ? applicationInfo.nonLocalizedLabel.toString() : context.getString(i);
        }
        builder.setContentTitle(title);
        builder.setContentText(notification2.getText());
        builder.setStyle(new NotificationCompat.BigTextStyle().bigText(notification2.getText()));
        builder.setSmallIcon(TSLocalNotification.getSmallIcon(context));
        String largeIcon = notification2.getLargeIcon();
        if (!largeIcon.isEmpty()) {
            Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(context.getResources(), context.getResources().getIdentifier(largeIcon, null, context.getPackageName()));
            if (bitmapDecodeResource != null) {
                builder.setLargeIcon(bitmapDecodeResource);
            } else {
                TSLog.logger.warn("Failed to find notificationLargeIcon: " + largeIcon);
            }
        }
        String color = notification.getColor();
        if (color.isEmpty()) {
            return;
        }
        builder.setColor(Color.parseColor(color));
    }

    public static Notification build(Context context) {
        NotificationCompat.Builder builderBuild = TSLocalNotification.build(context);
        builderBuild.setOnlyAlertOnce(true);
        builderBuild.setSound(null);
        AtomicLong atomicLong = c;
        if (atomicLong.get() > 0) {
            builderBuild.setWhen(atomicLong.get());
        }
        if (TSConfig.isLoaded()) {
            TSConfig tSConfig = TSConfig.getInstance(context);
            builderBuild.setPriority(tSConfig.getNotification().getPriority().intValue());
            b(context, builderBuild);
            if (!tSConfig.getNotification().getLayout().isEmpty()) {
                a(context, builderBuild);
            }
        } else {
            c(context, builderBuild);
        }
        Notification notificationBuild = builderBuild.build();
        notificationBuild.flags |= 98;
        return notificationBuild;
    }

    private static void c(Context context, NotificationCompat.Builder builder) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        int i = applicationInfo.labelRes;
        builder.setContentTitle(i == 0 ? applicationInfo.nonLocalizedLabel.toString() : context.getString(i));
        builder.setSmallIcon(TSLocalNotification.getSmallIcon(context));
    }

    public static void createNotificationChannel(Context context, boolean z) {
        NotificationManager notificationManager;
        if (Build.VERSION.SDK_INT >= 26 && (notificationManager = (NotificationManager) context.getSystemService(TSNotification.NAME)) != null) {
            String strA = a(context);
            String string = context.getApplicationInfo().labelRes != 0 ? context.getString(context.getApplicationInfo().labelRes) : "TSLocationManager";
            if (TSConfig.isLoaded()) {
                TSNotification notification = TSConfig.getInstance(context).getNotification();
                if (!notification.getChannelName().isEmpty()) {
                    string = notification.getChannelName();
                }
                if (!notification.getChannelId().isEmpty()) {
                    strA = notification.getChannelId();
                }
            }
            if (notificationManager.getNotificationChannel(strA) == null || z) {
                NotificationChannel notificationChannel = new NotificationChannel(strA, string, 1);
                notificationChannel.setShowBadge(false);
                notificationChannel.enableLights(false);
                notificationChannel.setSound(null, null);
                notificationChannel.enableVibration(false);
                notificationChannel.setLockscreenVisibility(-1);
                TSLog.logger.debug(notificationChannel.toString());
                notificationManager.createNotificationChannel(notificationChannel);
            }
        }
    }

    public static void onUpdateChannelId(Context context) {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        Map<String, Object> previousValues = TSConfig.getInstance(context).getNotification().getPreviousValues();
        NotificationManager notificationManager = (NotificationManager) context.getSystemService(TSNotification.NAME);
        createNotificationChannel(context, false);
        if (AbstractService.a()) {
            notificationManager.notify(NOTIFICATION_ID, build(context));
        }
        if (previousValues != null) {
            String strA = (String) previousValues.get("channelId");
            if (strA.isEmpty()) {
                strA = a(context);
            }
            if (notificationManager.getNotificationChannel(strA) != null) {
                try {
                    notificationManager.deleteNotificationChannel(strA);
                } catch (SecurityException e) {
                    TSLog.logger.error(TSLog.error(e.getMessage()));
                }
            }
        }
    }

    public static void onUpdateChannelName(Context context) {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        TSConfig tSConfig = TSConfig.getInstance(context);
        NotificationManager notificationManager = (NotificationManager) context.getSystemService(TSNotification.NAME);
        TSNotification notification = tSConfig.getNotification();
        String channelId = notification.getChannelId();
        if (channelId.isEmpty()) {
            channelId = a(context);
        }
        NotificationChannel notificationChannel = notificationManager.getNotificationChannel(channelId);
        if (notificationChannel != null) {
            notificationChannel.setName(notification.getChannelName());
        }
    }

    private static void a(Context context, NotificationCompat.Builder builder) {
        TSConfig tSConfig = TSConfig.getInstance(context);
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        TSNotification notification = tSConfig.getNotification();
        String layout = notification.getLayout();
        int identifier = layout.equalsIgnoreCase("default") ? R.layout.tslocationmanager_notification_layout : context.getResources().getIdentifier(layout, "layout", context.getPackageName());
        if (identifier == 0) {
            TSLog.logger.error(TSLog.error("Could not find custom notification layout '" + notification.getLayout() + "' in app/src/main/res/layout"));
            b(context, builder);
            return;
        }
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), identifier);
        if (identifier == R.layout.tslocationmanager_notification_layout) {
            a(context, remoteViews, b);
        }
        int identifier2 = context.getResources().getIdentifier("applicationName", "id", context.getPackageName());
        if (identifier2 != 0) {
            int i = applicationInfo.labelRes;
            remoteViews.setTextViewText(identifier2, i == 0 ? applicationInfo.nonLocalizedLabel.toString() : context.getString(i));
        }
        int identifier3 = context.getResources().getIdentifier("notificationSmallIcon", "id", context.getPackageName());
        if (identifier3 != 0) {
            remoteViews.setImageViewResource(identifier3, TSLocalNotification.getSmallIcon(context));
        }
        String largeIcon = notification.getLargeIcon();
        if (!largeIcon.isEmpty()) {
            Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(context.getResources(), context.getResources().getIdentifier(largeIcon, null, context.getPackageName()));
            if (bitmapDecodeResource != null) {
                int identifier4 = context.getResources().getIdentifier("notificationLargeIcon", "id", context.getPackageName());
                if (identifier4 != 0) {
                    remoteViews.setImageViewBitmap(identifier4, bitmapDecodeResource);
                }
            } else {
                TSLog.logger.warn("Failed to find notificationLargeIcon: " + largeIcon);
            }
        }
        if (context.getResources().getIdentifier("notificationTitle", "id", context.getPackageName()) != 0) {
            String title = notification.getTitle();
            if (title.isEmpty()) {
                int i2 = applicationInfo.labelRes;
                title = i2 == 0 ? applicationInfo.nonLocalizedLabel.toString() : context.getString(i2);
            }
            a(context, remoteViews, "notificationTitle", title);
        }
        if (context.getResources().getIdentifier("notificationText", "id", context.getPackageName()) != 0) {
            a(context, remoteViews, "notificationText", notification.getText());
        }
        Map<String, String> strings = notification.getStrings();
        if (!strings.isEmpty()) {
            for (Map.Entry<String, String> entry : strings.entrySet()) {
                a(context, remoteViews, entry.getKey().toString(), entry.getValue().toString());
            }
        }
        List<String> actions = notification.getActions();
        if (!actions.isEmpty()) {
            Iterator<String> it = actions.iterator();
            while (it.hasNext()) {
                a(context, remoteViews, it.next());
            }
        }
        builder.setSmallIcon(TSLocalNotification.getSmallIcon(context));
        builder.setCustomBigContentView(remoteViews);
        if (Build.VERSION.SDK_INT >= 26) {
            builder.setContent(remoteViews);
        }
    }

    private static void a(Context context, RemoteViews remoteViews, String str, String str2) {
        int identifier = context.getResources().getIdentifier(str, "id", context.getPackageName());
        if (identifier != 0) {
            remoteViews.setTextViewText(identifier, str2);
        } else {
            TSLog.logger.warn(TSLog.warn("Failed to find TextView resource: " + str));
        }
    }

    private static void a(Context context, RemoteViews remoteViews, String str) {
        PendingIntent service;
        int identifier = context.getResources().getIdentifier(str, "id", context.getPackageName());
        if (identifier != 0) {
            Intent intent = new Intent(context, (Class<?>) TrackingService.class);
            intent.setAction("notificationaction");
            intent.putExtra("id", str);
            if (Build.VERSION.SDK_INT >= 26) {
                service = PendingIntent.getForegroundService(context, identifier, intent, Util.getPendingIntentFlags(134217728));
            } else {
                service = PendingIntent.getService(context, identifier, intent, 134217728);
            }
            remoteViews.setOnClickPendingIntent(identifier, service);
            return;
        }
        TSLog.logger.warn(TSLog.warn("Failed to find Button resource in notification_layout for notification-action: " + str));
    }

    static String a(Context context) {
        return context.getPackageName() + "TSLocationManager";
    }
}
