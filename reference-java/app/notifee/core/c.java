package app.notifee.core;

import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.service.notification.StatusBarNotification;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.app.RemoteInput;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.core.text.HtmlCompat;
import androidx.work.Data;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.ExistingWorkPolicy;
import androidx.work.ListenableWorker;
import androidx.work.OneTimeWorkRequest;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkManager;
import app.notifee.core.event.NotificationEvent;
import app.notifee.core.model.NotificationAndroidActionModel;
import app.notifee.core.model.NotificationAndroidModel;
import app.notifee.core.model.NotificationAndroidPressActionModel;
import app.notifee.core.model.NotificationAndroidStyleModel;
import app.notifee.core.model.NotificationModel;
import com.caverock.androidsvg.SVGParser;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.ListeningExecutorService;
import com.google.common.util.concurrent.MoreExecutors;
import com.mapbox.common.HttpHeaders;
import com.nimbusds.jose.HeaderParameterNames;
import com.transistorsoft.locationmanager.config.TSNotification;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import n.o.t.i.f.e.e.f;
import n.o.t.i.f.e.e.g;
import n.o.t.i.f.e.e.h;
import n.o.t.i.f.e.e.j;
import n.o.t.i.f.e.e.k;
import n.o.t.i.f.e.e.n;
import n.o.t.i.f.e.e.p;
import n.o.t.i.f.e.e.r;
import n.o.t.i.f.e.e.u;

public class c {
    public static final ExecutorService a;
    public static final ListeningExecutorService b;

    static {
        ExecutorService executorServiceNewCachedThreadPool = Executors.newCachedThreadPool();
        a = executorServiceNewCachedThreadPool;
        b = MoreExecutors.listeningDecorator(executorServiceNewCachedThreadPool);
    }

    public static void a(Exception exc, Void r1) {
        if (exc == null) {
            app.notifee.core.database.a.a(f.a).a();
        }
    }

    public static Object b(int i) throws Exception {
        NotificationManagerCompat notificationManagerCompatFrom = NotificationManagerCompat.from(f.a);
        if (i == 1 || i == 0) {
            notificationManagerCompatFrom.cancelAll();
        }
        if (i != 2 && i != 0) {
            return null;
        }
        WorkManager workManager = WorkManager.getInstance(f.a);
        workManager.cancelAllWorkByTag("app.notifee.core.NotificationManager.TRIGGER");
        workManager.pruneWork();
        return null;
    }

    public static Object a(List list, int i, String str) throws Exception {
        WorkManager workManager = WorkManager.getInstance(f.a);
        NotificationManagerCompat notificationManagerCompatFrom = NotificationManagerCompat.from(f.a);
        Iterator it = list.iterator();
        while (true) {
            Integer numValueOf = null;
            if (!it.hasNext()) {
                return null;
            }
            String str2 = (String) it.next();
            Logger.i("NotificationManager", "Removing notification with id " + str2);
            if (i != 2) {
                if (str != null && str2.equals("0")) {
                    try {
                        numValueOf = Integer.valueOf(Integer.parseInt(str2));
                    } catch (Exception unused) {
                        Logger.e("NotificationManager", "cancelAllNotificationsWithIds -> Failed to parse id as integer  " + str2);
                    }
                    if (numValueOf != null) {
                        notificationManagerCompatFrom.cancel(str, numValueOf.intValue());
                    }
                }
                notificationManagerCompatFrom.cancel(str, str2.hashCode());
            }
            if (i != 1) {
                Logger.i("NotificationManager", "Removing notification with id " + str2);
                workManager.cancelUniqueWork("trigger:" + str2);
                workManager.pruneWork();
                PendingIntent pendingIntentA = b.a(str2);
                AlarmManager alarmManagerA = n.o.t.i.f.e.e.a.a();
                if (pendingIntentA != null) {
                    alarmManagerA.cancel(pendingIntentA);
                }
            }
        }
    }

    public static NotificationCompat.Builder b(NotificationCompat.Builder builder, NotificationAndroidModel notificationAndroidModel, NotificationModel notificationModel) throws Exception {
        PendingIntent pendingIntentA;
        Bitmap bitmap;
        ArrayList<NotificationAndroidActionModel> actions = notificationAndroidModel.getActions();
        if (actions != null) {
            for (NotificationAndroidActionModel notificationAndroidActionModel : actions) {
                if (f.a.getApplicationInfo().targetSdkVersion >= 31 && Build.VERSION.SDK_INT >= 31) {
                    pendingIntentA = n.a(notificationModel.b().intValue(), notificationAndroidActionModel.getPressAction().toBundle(), 2, new String[]{TSNotification.NAME, "pressAction"}, notificationModel.toBundle(), notificationAndroidActionModel.getPressAction().toBundle());
                } else {
                    pendingIntentA = ReceiverService.a("app.notifee.core.ReceiverService.ACTION_PRESS_INTENT", new String[]{TSNotification.NAME, "pressAction"}, notificationModel.toBundle(), notificationAndroidActionModel.getPressAction().toBundle());
                }
                String icon = notificationAndroidActionModel.getIcon();
                if (icon != null) {
                    try {
                        bitmap = r.a(notificationAndroidActionModel.getIcon()).get(10L, TimeUnit.SECONDS);
                    } catch (TimeoutException e) {
                        Logger.e("NotificationManager", "Timeout occurred whilst trying to retrieve an action icon: " + icon, (Exception) e);
                        bitmap = null;
                    } catch (Exception e2) {
                        Logger.e("NotificationManager", "An error occurred whilst trying to retrieve an action icon: " + icon, e2);
                        bitmap = null;
                    }
                } else {
                    bitmap = null;
                }
                NotificationCompat.Action.Builder builder2 = new NotificationCompat.Action.Builder(bitmap != null ? IconCompat.createWithAdaptiveBitmap(bitmap) : null, HtmlCompat.fromHtml(notificationAndroidActionModel.getTitle(), 0), pendingIntentA);
                RemoteInput remoteInput = notificationAndroidActionModel.getRemoteInput(builder2);
                if (remoteInput != null) {
                    builder2.addRemoteInput(remoteInput);
                }
                builder.addAction(builder2.build());
            }
        }
        return builder;
    }

    public static ListenableFuture a(int i, List list, Object obj) throws Exception {
        if (i != 1) {
            app.notifee.core.database.a.a(f.a).a((List<String>) list);
        }
        return Futures.immediateFuture(null);
    }

    public static ListenableFuture a(u uVar, Data data, CallbackToFutureAdapter.Completer completer) throws Exception {
        byte[] byteArray;
        if (uVar == null || (byteArray = uVar.b) == null) {
            byteArray = data.getByteArray(TSNotification.NAME);
            if (byteArray != null) {
                Logger.w("NotificationManager", "The trigger notification was created using an older version, please consider recreating the notification.");
            } else {
                Logger.w("NotificationManager", "Attempted to handle doScheduledWork but no notification data was found.");
                completer.set(ListenableWorker.Result.success());
                return Futures.immediateFuture(null);
            }
        }
        NotificationModel notificationModel = new NotificationModel(p.a(byteArray));
        byte[] bArr = uVar.c;
        return b(notificationModel, bArr != null ? p.a(bArr) : null);
    }

    public static ListenableFuture<NotificationCompat.Builder> a(final NotificationModel notificationModel) {
        final NotificationAndroidModel notificationAndroidModelA = notificationModel.a();
        Callable callable = new Callable() {
            @Override
            public final Object call() {
                return c.a(notificationAndroidModelA, notificationModel);
            }
        };
        AsyncFunction asyncFunction = new AsyncFunction() {
            @Override
            public final ListenableFuture apply(Object obj) {
                return c.b.submit(new Callable() {
                    @Override
                    public final Object call() {
                        return c.a(builder, notificationAndroidModel);
                    }
                });
            }
        };
        AsyncFunction asyncFunction2 = new AsyncFunction() {
            @Override
            public final ListenableFuture apply(Object obj) {
                return c.b.submit(new Callable() {
                    @Override
                    public final Object call() {
                        return c.a(builder, notificationAndroidModel, notificationModel);
                    }
                });
            }
        };
        AsyncFunction asyncFunction3 = new AsyncFunction() {
            @Override
            public final ListenableFuture apply(Object obj) {
                return c.b.submit(new Callable() {
                    @Override
                    public final Object call() {
                        return c.b(builder, notificationAndroidModel, notificationModel);
                    }
                });
            }
        };
        AsyncFunction asyncFunction4 = new AsyncFunction() {
            @Override
            public final ListenableFuture apply(Object obj) {
                return c.b.submit(new Callable() {
                    @Override
                    public final Object call() {
                        return c.b(notificationAndroidModel, builder);
                    }
                });
            }
        };
        ListeningExecutorService listeningExecutorService = b;
        return new h(listeningExecutorService.submit(callable)).a(asyncFunction, listeningExecutorService).a(asyncFunction3, listeningExecutorService).a(asyncFunction4, listeningExecutorService).a(asyncFunction2, listeningExecutorService);
    }

    public static NotificationCompat.Builder b(NotificationAndroidModel notificationAndroidModel, NotificationCompat.Builder builder) throws Exception {
        ListenableFuture<NotificationCompat.Style> styleTask;
        NotificationCompat.Style style;
        NotificationAndroidStyleModel style2 = notificationAndroidModel.getStyle();
        if (style2 != null && (styleTask = style2.getStyleTask(b)) != null && (style = styleTask.get()) != null) {
            builder.setStyle(style);
        }
        return builder;
    }

    public static ListenableFuture<Void> b(final NotificationModel notificationModel, final Bundle bundle) {
        return new h(a(notificationModel)).a(new AsyncFunction() {
            @Override
            public final ListenableFuture apply(Object obj) {
                return c.a(notificationModel, bundle, (NotificationCompat.Builder) obj);
            }
        }, a);
    }

    public static List b() throws Exception {
        ArrayList arrayList = new ArrayList();
        for (StatusBarNotification statusBarNotification : ((NotificationManager) f.a.getSystemService(TSNotification.NAME)).getActiveNotifications()) {
            Notification notification = statusBarNotification.getNotification();
            Bundle bundle = notification.extras;
            Bundle bundle2 = new Bundle();
            Bundle bundle3 = bundle.getBundle("notifee.notification");
            Bundle bundle4 = bundle.getBundle("notifee.trigger");
            if (bundle3 == null) {
                bundle3 = new Bundle();
                bundle3.putString("id", "" + statusBarNotification.getId());
                Object obj = bundle.get(NotificationCompat.EXTRA_TITLE);
                if (obj != null) {
                    bundle3.putString("title", obj.toString());
                }
                Object obj2 = bundle.get(NotificationCompat.EXTRA_TEXT);
                if (obj2 != null) {
                    bundle3.putString("body", obj2.toString());
                }
                Object obj3 = bundle.get(NotificationCompat.EXTRA_SUB_TEXT);
                if (obj3 != null) {
                    bundle3.putString("subtitle", obj3.toString());
                }
                Bundle bundle5 = new Bundle();
                if (Build.VERSION.SDK_INT >= 26) {
                    bundle5.putString("channelId", notification.getChannelId());
                }
                bundle5.putString(HeaderParameterNames.AUTHENTICATION_TAG, statusBarNotification.getTag());
                bundle5.putString("group", notification.getGroup());
                bundle3.putBundle("android", bundle5);
                bundle2.putString("id", "" + statusBarNotification.getId());
            } else {
                bundle2.putString("id", "" + bundle3.get("id"));
            }
            if (bundle4 != null) {
                bundle2.putBundle("trigger", bundle4);
            }
            bundle2.putBundle(TSNotification.NAME, bundle3);
            bundle2.putString(HttpHeaders.DATE, "" + statusBarNotification.getPostTime());
            arrayList.add(bundle2);
        }
        return arrayList;
    }

    public static NotificationCompat.Builder a(NotificationAndroidModel notificationAndroidModel, NotificationModel notificationModel) throws Exception {
        Bundle bundle;
        Boolean bool = Boolean.FALSE;
        NotificationCompat.Builder builder = new NotificationCompat.Builder(f.a, notificationAndroidModel.getChannelId());
        Bundle bundle2 = notificationModel.a.getBundle("data");
        if (bundle2 != null) {
            bundle = (Bundle) bundle2.clone();
        } else {
            bundle = new Bundle();
        }
        builder.setExtras(bundle);
        builder.setDeleteIntent(ReceiverService.a("app.notifee.core.ReceiverService.DELETE_INTENT", new String[]{TSNotification.NAME}, notificationModel.toBundle()));
        if (f.a.getApplicationInfo().targetSdkVersion >= 31 && Build.VERSION.SDK_INT >= 31) {
            builder.setContentIntent(n.a(notificationModel.b().intValue(), notificationAndroidModel.getPressAction(), 1, new String[]{TSNotification.NAME, "pressAction"}, notificationModel.toBundle(), notificationAndroidModel.getPressAction()));
        } else {
            builder.setContentIntent(ReceiverService.a("app.notifee.core.ReceiverService.PRESS_INTENT", new String[]{TSNotification.NAME, "pressAction"}, notificationModel.toBundle(), notificationAndroidModel.getPressAction()));
        }
        if (notificationModel.a.getString("title") != null) {
            builder.setContentTitle(HtmlCompat.fromHtml(notificationModel.a.getString("title"), 0));
        }
        if (notificationModel.a.getString("subtitle") != null) {
            builder.setSubText(HtmlCompat.fromHtml(notificationModel.a.getString("subtitle"), 0));
        }
        if (notificationModel.a.getString("body") != null) {
            builder.setContentText(HtmlCompat.fromHtml(notificationModel.a.getString("body"), 0));
        }
        if (notificationAndroidModel.getBadgeIconType() != null) {
            builder.setBadgeIconType(notificationAndroidModel.getBadgeIconType().intValue());
        }
        if (notificationAndroidModel.getCategory() != null) {
            builder.setCategory(notificationAndroidModel.getCategory());
        }
        if (notificationAndroidModel.getColor() != null) {
            builder.setColor(notificationAndroidModel.getColor().intValue());
        }
        builder.setColorized(notificationAndroidModel.getColorized().booleanValue());
        builder.setChronometerCountDown(notificationAndroidModel.getChronometerCountDown().booleanValue());
        if (notificationAndroidModel.getGroup() != null) {
            builder.setGroup(notificationAndroidModel.getGroup());
        }
        builder.setGroupAlertBehavior(notificationAndroidModel.getGroupAlertBehaviour());
        builder.setGroupSummary(notificationAndroidModel.getGroupSummary().booleanValue());
        if (notificationAndroidModel.getInputHistory() != null) {
            builder.setRemoteInputHistory(notificationAndroidModel.getInputHistory());
        }
        if (notificationAndroidModel.getLights() != null) {
            ArrayList<Integer> lights = notificationAndroidModel.getLights();
            builder.setLights(lights.get(0).intValue(), lights.get(1).intValue(), lights.get(2).intValue());
        }
        builder.setLocalOnly(notificationAndroidModel.getLocalOnly().booleanValue());
        if (notificationAndroidModel.getNumber() != null) {
            builder.setNumber(notificationAndroidModel.getNumber().intValue());
        }
        if (notificationAndroidModel.getSound() != null) {
            Uri uriC = r.c(notificationAndroidModel.getSound());
            if (uriC != null) {
                bool = Boolean.TRUE;
                builder.setSound(uriC);
            } else {
                Logger.w("NotificationManager", "Unable to retrieve sound for notification, sound was specified as: " + notificationAndroidModel.getSound());
            }
        }
        builder.setDefaults(notificationAndroidModel.getDefaults(bool).intValue());
        builder.setOngoing(notificationAndroidModel.getOngoing().booleanValue());
        builder.setOnlyAlertOnce(notificationAndroidModel.getOnlyAlertOnce().booleanValue());
        builder.setPriority(notificationAndroidModel.getPriority());
        NotificationAndroidModel.a progress = notificationAndroidModel.getProgress();
        if (progress != null) {
            builder.setProgress(progress.a, progress.b, progress.c);
        }
        if (notificationAndroidModel.getShortcutId() != null) {
            builder.setShortcutId(notificationAndroidModel.getShortcutId());
        }
        builder.setShowWhen(notificationAndroidModel.getShowTimestamp().booleanValue());
        Integer smallIcon = notificationAndroidModel.getSmallIcon();
        if (smallIcon != null) {
            Integer smallIconLevel = notificationAndroidModel.getSmallIconLevel();
            if (smallIconLevel != null) {
                builder.setSmallIcon(smallIcon.intValue(), smallIconLevel.intValue());
            } else {
                builder.setSmallIcon(smallIcon.intValue());
            }
        }
        if (notificationAndroidModel.getSortKey() != null) {
            builder.setSortKey(notificationAndroidModel.getSortKey());
        }
        if (notificationAndroidModel.getTicker() != null) {
            builder.setTicker(notificationAndroidModel.getTicker());
        }
        if (notificationAndroidModel.getTimeoutAfter() != null) {
            builder.setTimeoutAfter(notificationAndroidModel.getTimeoutAfter().longValue());
        }
        builder.setUsesChronometer(notificationAndroidModel.getShowChronometer().booleanValue());
        long[] vibrationPattern = notificationAndroidModel.getVibrationPattern();
        if (vibrationPattern.length > 0) {
            builder.setVibrate(vibrationPattern);
        }
        builder.setVisibility(notificationAndroidModel.getVisibility());
        long timestamp = notificationAndroidModel.getTimestamp();
        if (timestamp > -1) {
            builder.setWhen(timestamp);
        }
        builder.setAutoCancel(notificationAndroidModel.getAutoCancel().booleanValue());
        return builder;
    }

    public static NotificationCompat.Builder a(NotificationCompat.Builder builder, NotificationAndroidModel notificationAndroidModel) throws Exception {
        Bitmap bitmap;
        Bitmap bitmapCreateBitmap;
        Rect rect;
        float f;
        Rect rect2;
        if (notificationAndroidModel.hasLargeIcon().booleanValue()) {
            String largeIcon = notificationAndroidModel.getLargeIcon();
            try {
                bitmap = r.a(largeIcon).get(10L, TimeUnit.SECONDS);
            } catch (TimeoutException e) {
                Logger.e("NotificationManager", "Timeout occurred whilst trying to retrieve a largeIcon image: " + largeIcon, (Exception) e);
                bitmap = null;
            } catch (Exception e2) {
                Logger.e("NotificationManager", "An error occurred whilst trying to retrieve a largeIcon image: " + largeIcon, e2);
                bitmap = null;
            }
            if (bitmap != null) {
                if (notificationAndroidModel.getCircularLargeIcon().booleanValue()) {
                    int width = bitmap.getWidth();
                    int height = bitmap.getHeight();
                    if (width > height) {
                        bitmapCreateBitmap = Bitmap.createBitmap(height, height, Bitmap.Config.ARGB_8888);
                        int i = (width - height) / 2;
                        rect = new Rect(i, 0, i + height, height);
                        rect2 = new Rect(0, 0, height, height);
                        f = height / 2;
                    } else {
                        bitmapCreateBitmap = Bitmap.createBitmap(width, width, Bitmap.Config.ARGB_8888);
                        int i2 = (height - width) / 2;
                        rect = new Rect(0, i2, width, i2 + width);
                        f = width / 2;
                        rect2 = new Rect(0, 0, width, width);
                    }
                    Canvas canvas = new Canvas(bitmapCreateBitmap);
                    Paint paint = new Paint();
                    paint.setAntiAlias(true);
                    canvas.drawARGB(0, 0, 0, 0);
                    paint.setColor(SupportMenu.CATEGORY_MASK);
                    canvas.drawCircle(f, f, f, paint);
                    paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
                    canvas.drawBitmap(bitmap, rect, rect2, paint);
                    bitmap = bitmapCreateBitmap;
                }
                builder.setLargeIcon(bitmap);
            }
        }
        return builder;
    }

    public static NotificationCompat.Builder a(NotificationCompat.Builder builder, NotificationAndroidModel notificationAndroidModel, NotificationModel notificationModel) throws Exception {
        if (notificationAndroidModel.hasFullScreenAction().booleanValue()) {
            NotificationAndroidPressActionModel fullScreenAction = notificationAndroidModel.getFullScreenAction();
            String launchActivity = fullScreenAction.getLaunchActivity();
            Class<?> clsA = j.a(launchActivity);
            if (clsA == null) {
                Logger.e("NotificationManager", String.format("Launch Activity for full-screen action does not exist ('%s').", launchActivity));
                return builder;
            }
            Intent intent = new Intent(f.a, clsA);
            if (fullScreenAction.getLaunchActivityFlags() != -1) {
                intent.addFlags(fullScreenAction.getLaunchActivityFlags());
            }
            if (fullScreenAction.getMainComponent() != null) {
                intent.putExtra("mainComponent", fullScreenAction.getMainComponent());
                intent.putExtra(TSNotification.NAME, notificationModel.toBundle());
                g.b(new k(fullScreenAction.getMainComponent()));
            }
            builder.setFullScreenIntent(PendingIntent.getActivity(f.a, notificationModel.b().intValue(), intent, 167772160), true);
        }
        return builder;
    }

    public static ListenableFuture<Void> a(final int i) {
        ListeningExecutorService listeningExecutorService = b;
        return new h(listeningExecutorService.submit(new Callable() {
            @Override
            public final Object call() {
                return c.b(i);
            }
        })).a(new AsyncFunction() {
            @Override
            public final ListenableFuture apply(Object obj) {
                return c.a(i, obj);
            }
        }, listeningExecutorService);
    }

    public static ListenableFuture a(int i, Object obj) throws Exception {
        if (i != 2 && i != 0) {
            return Futures.immediateFuture(null);
        }
        return new h(b.a()).a(new n.o.t.i.f.e.e.b() {
            @Override
            public final void a(Exception exc, Object obj2) {
                c.a(exc, (Void) obj2);
            }
        }, b);
    }

    public static ListenableFuture<Void> a(final int i, final List<String> list, final String str) {
        ListeningExecutorService listeningExecutorService = b;
        return new h(listeningExecutorService.submit(new Callable() {
            @Override
            public final Object call() {
                return c.a(list, i, str);
            }
        })).a(new AsyncFunction() {
            @Override
            public final ListenableFuture apply(Object obj) {
                return c.a(i, list, obj);
            }
        }, listeningExecutorService);
    }

    public static ListenableFuture a(NotificationModel notificationModel, Bundle bundle, NotificationCompat.Builder builder) throws Exception {
        Bundle bundle2 = new Bundle();
        bundle2.putBundle("notifee.notification", notificationModel.toBundle());
        if (bundle != null) {
            bundle2.putBundle("notifee.trigger", bundle);
        }
        builder.addExtras(bundle2);
        Notification notificationBuild = builder.build();
        int iIntValue = notificationModel.b().intValue();
        NotificationAndroidModel notificationAndroidModelA = notificationModel.a();
        if (notificationAndroidModelA.getLoopSound().booleanValue()) {
            notificationBuild.flags |= 4;
        }
        if (notificationAndroidModelA.getFlags() != null && notificationAndroidModelA.getFlags().length > 0) {
            for (int i : notificationAndroidModelA.getFlags()) {
                notificationBuild.flags = i | notificationBuild.flags;
            }
        }
        if (notificationAndroidModelA.getLightUpScreen().booleanValue()) {
            PowerManager powerManager = (PowerManager) f.a.getSystemService("power");
            if (!Boolean.valueOf(powerManager.isInteractive()).booleanValue()) {
                powerManager.newWakeLock(805306394, "Notifee:lock").acquire();
                powerManager.newWakeLock(1, "Notifee:cpuLock").acquire();
            }
        }
        if (notificationAndroidModelA.getAsForegroundService().booleanValue()) {
            Bundle bundle3 = notificationModel.toBundle();
            String str = ForegroundService.a;
            Intent intent = new Intent(f.a, (Class<?>) ForegroundService.class);
            intent.setAction("app.notifee.core.ForegroundService.START");
            intent.putExtra("hashCode", iIntValue);
            intent.putExtra(TSNotification.NAME, notificationBuild);
            intent.putExtra("notificationBundle", bundle3);
            if (Build.VERSION.SDK_INT >= 26) {
                f.a.startForegroundService(intent);
            } else {
                f.a.startService(intent);
            }
        } else {
            NotificationManagerCompat.from(f.a).notify(notificationAndroidModelA.getTag(), iIntValue, notificationBuild);
        }
        g.a(new NotificationEvent(3, notificationModel));
        return Futures.immediateFuture(null);
    }

    public static ListenableFuture<Void> a(final NotificationModel notificationModel, final Bundle bundle) {
        return b.submit(new Callable() {
            @Override
            public final Object call() {
                return c.a(bundle, notificationModel);
            }
        });
    }

    public static Void a(Bundle bundle, NotificationModel notificationModel) throws Exception {
        int iA = p.a(bundle.get(SVGParser.XML_STYLESHEET_ATTR_TYPE));
        if (iA == 0) {
            app.notifee.core.model.a aVar = new app.notifee.core.model.a(bundle);
            String str = "trigger:" + notificationModel.c();
            long jRound = 0;
            if (aVar.a.containsKey("timestamp")) {
                long jB = p.b(aVar.a.get("timestamp"));
                if (jB > 0) {
                    jRound = Math.round((jB - System.currentTimeMillis()) / 1000);
                }
            }
            int i = aVar.b;
            Data.Builder builderPutString = new Data.Builder().putString("workType", "app.notifee.core.NotificationManager.TRIGGER").putString("id", notificationModel.c());
            Boolean bool = aVar.d;
            app.notifee.core.database.a.a(f.a);
            app.notifee.core.database.a.b.a(new u(notificationModel.c(), p.a(notificationModel.toBundle()), p.a(bundle), bool));
            if (bool.booleanValue()) {
                b.a(notificationModel, aVar);
            } else {
                WorkManager workManager = WorkManager.getInstance(f.a);
                if (i == -1) {
                    OneTimeWorkRequest.Builder builder = new OneTimeWorkRequest.Builder(Worker.class);
                    builder.addTag("app.notifee.core.NotificationManager.TRIGGER");
                    builder.addTag(str);
                    builderPutString.putString("workRequestType", "OneTime");
                    builder.setInputData(builderPutString.build());
                    builder.setInitialDelay(jRound, TimeUnit.SECONDS);
                    workManager.enqueueUniqueWork(str, ExistingWorkPolicy.REPLACE, builder.build());
                } else {
                    PeriodicWorkRequest.Builder builder2 = new PeriodicWorkRequest.Builder((Class<? extends ListenableWorker>) Worker.class, aVar.b, aVar.c);
                    builder2.addTag("app.notifee.core.NotificationManager.TRIGGER");
                    builder2.addTag(str);
                    builder2.setInitialDelay(jRound, TimeUnit.SECONDS);
                    builderPutString.putString("workRequestType", "Periodic");
                    builder2.setInputData(builderPutString.build());
                    workManager.enqueueUniquePeriodicWork(str, ExistingPeriodicWorkPolicy.UPDATE, builder2.build());
                }
            }
        } else if (iA == 1) {
            String str2 = "trigger:" + notificationModel.c();
            WorkManager workManager2 = WorkManager.getInstance(f.a);
            Data.Builder builderPutString2 = new Data.Builder().putString("workType", "app.notifee.core.NotificationManager.TRIGGER").putString("workRequestType", "Periodic").putString("id", notificationModel.c());
            app.notifee.core.database.a.a(f.a);
            app.notifee.core.database.a.b.a(new u(notificationModel.c(), p.a(notificationModel.toBundle()), p.a(bundle), Boolean.FALSE));
            long jA = bundle.containsKey("interval") ? p.a(bundle.get("interval")) : -1;
            TimeUnit timeUnitValueOf = TimeUnit.SECONDS;
            if (bundle.containsKey("timeUnit")) {
                String string = bundle.getString("timeUnit");
                try {
                    timeUnitValueOf = TimeUnit.valueOf(string);
                } catch (IllegalArgumentException e) {
                    Logger.e("IntervalTriggerModel", "An error occurred whilst trying to convert interval time unit: " + string, (Exception) e);
                }
            }
            PeriodicWorkRequest.Builder builder3 = new PeriodicWorkRequest.Builder((Class<? extends ListenableWorker>) Worker.class, jA, timeUnitValueOf);
            TimeUnit timeUnitValueOf2 = TimeUnit.SECONDS;
            if (bundle.containsKey("timeUnit")) {
                String string2 = bundle.getString("timeUnit");
                try {
                    timeUnitValueOf2 = TimeUnit.valueOf(string2);
                } catch (IllegalArgumentException e2) {
                    Logger.e("IntervalTriggerModel", "An error occurred whilst trying to convert interval time unit: " + string2, (Exception) e2);
                }
            }
            PeriodicWorkRequest.Builder initialDelay = builder3.setInitialDelay(jA, timeUnitValueOf2);
            initialDelay.addTag("app.notifee.core.NotificationManager.TRIGGER");
            initialDelay.addTag(str2);
            initialDelay.setInputData(builderPutString2.build());
            workManager2.enqueueUniquePeriodicWork(str2, ExistingPeriodicWorkPolicy.UPDATE, initialDelay.build());
        }
        g.a(new NotificationEvent(7, notificationModel));
        return null;
    }

    public static ListenableFuture<List<Bundle>> a() {
        return b.submit(new Callable() {
            @Override
            public final Object call() {
                return c.b();
            }
        });
    }

    public static void a(final Data data, final CallbackToFutureAdapter.Completer<ListenableWorker.Result> completer) {
        final String string = data.getString("id");
        app.notifee.core.database.a aVar = new app.notifee.core.database.a(f.a);
        AsyncFunction asyncFunction = new AsyncFunction() {
            @Override
            public final ListenableFuture apply(Object obj) {
                return c.b.submit(new Callable() {
                    @Override
                    public final Object call() {
                        return c.a(uVar, data, completer);
                    }
                });
            }
        };
        h hVar = new h(aVar.b(string));
        ListeningExecutorService listeningExecutorService = b;
        hVar.a(asyncFunction, listeningExecutorService).a(new n.o.t.i.f.e.e.b() {
            @Override
            public final void a(Exception exc, Object obj) {
                c.a(completer, data, string, exc, (ListenableFuture) obj);
            }
        }, listeningExecutorService);
    }

    public static void a(final CallbackToFutureAdapter.Completer completer, final Data data, final String str, Exception exc, ListenableFuture listenableFuture) {
        if (exc == null) {
            new h(listenableFuture).a(new n.o.t.i.f.e.e.b() {
                @Override
                public final void a(Exception exc2, Object obj) {
                    c.a(completer, data, str, exc2, (Void) obj);
                }
            }, b);
        } else {
            completer.set(ListenableWorker.Result.success());
            Logger.e("NotificationManager", "Failed to display notification", exc);
        }
    }

    public static void a(CallbackToFutureAdapter.Completer completer, Data data, String str, Exception exc, Void r4) {
        completer.set(ListenableWorker.Result.success());
        if (exc != null) {
            Logger.e("NotificationManager", "Failed to display notification", exc);
            return;
        }
        String string = data.getString("workRequestType");
        if (string == null || !string.equals("OneTime")) {
            return;
        }
        app.notifee.core.database.a.a(f.a).a(str);
    }
}
