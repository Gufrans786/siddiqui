package app.notifee.core;

import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.TypedValue;
import androidx.core.app.NotificationManagerCompat;
import com.facebook.common.util.UriUtil;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import n.o.t.i.f.e.e.d;
import n.o.t.i.f.e.e.e;
import n.o.t.i.f.e.e.f;
import n.o.t.i.f.e.e.p;
import n.o.t.i.f.e.e.r;

public class a {
    public static ListenableFuture<Void> a(final d dVar) {
        return Notifee.getListeningExecutorService().submit(new Callable() {
            @Override
            public final Object call() {
                return a.b(dVar);
            }
        });
    }

    public static Void b(d dVar) throws Exception {
        long[] jArr;
        if (Build.VERSION.SDK_INT < 26) {
            return null;
        }
        NotificationChannel notificationChannel = new NotificationChannel((String) Objects.requireNonNull(dVar.a.getString("id")), (String) Objects.requireNonNull(dVar.a.getString("name")), (dVar.a.containsKey("importance") ? Integer.valueOf(p.a(dVar.a.get("importance"))) : 3).intValue());
        notificationChannel.setShowBadge(Boolean.valueOf(dVar.a.getBoolean("badge", true)).booleanValue());
        notificationChannel.setBypassDnd(Boolean.valueOf(dVar.a.getBoolean("bypassDnd", false)).booleanValue());
        notificationChannel.setDescription(dVar.a.getString("description"));
        notificationChannel.setGroup(dVar.a.getString("groupId"));
        notificationChannel.enableLights(Boolean.valueOf(dVar.a.getBoolean("lights", true)).booleanValue());
        if (dVar.a() != null) {
            notificationChannel.setLightColor(dVar.a().intValue());
        }
        notificationChannel.setLockscreenVisibility(dVar.a.containsKey("visibility") ? p.a(dVar.a.get("visibility")) : 0);
        notificationChannel.enableVibration(Boolean.valueOf(dVar.a.getBoolean("vibration", true)).booleanValue());
        if (dVar.a.containsKey("vibrationPattern")) {
            ArrayList arrayList = (ArrayList) Objects.requireNonNull(dVar.a.getParcelableArrayList("vibrationPattern"));
            long[] jArr2 = new long[arrayList.size()];
            for (int i = 0; i < arrayList.size(); i++) {
                jArr2[i] = ((Integer) arrayList.get(i)).longValue();
            }
            jArr = jArr2;
        } else {
            jArr = new long[0];
        }
        if (jArr.length > 0) {
            notificationChannel.setVibrationPattern(jArr);
        }
        if ((!dVar.a.containsKey("sound") ? null : dVar.a.getString("sound")) != null) {
            Uri uriC = r.c(!dVar.a.containsKey("sound") ? null : dVar.a.getString("sound"));
            if (uriC != null) {
                notificationChannel.setSound(uriC, new AudioAttributes.Builder().setUsage(5).setContentType(4).build());
            } else {
                Logger.w("ChannelManager", "Unable to retrieve sound for channel, sound was specified as: " + notificationChannel.getSound());
            }
        } else {
            notificationChannel.setSound(null, null);
        }
        NotificationManagerCompat.from(f.a).createNotificationChannel(notificationChannel);
        return null;
    }

    public static List c() throws Exception {
        List<NotificationChannelGroup> notificationChannelGroups = NotificationManagerCompat.from(f.a).getNotificationChannelGroups();
        if (notificationChannelGroups.size() == 0 || Build.VERSION.SDK_INT < 26) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(notificationChannelGroups.size());
        Iterator<NotificationChannelGroup> it = notificationChannelGroups.iterator();
        while (it.hasNext()) {
            arrayList.add(a(it.next()));
        }
        return arrayList;
    }

    public static List d() throws Exception {
        List<NotificationChannel> notificationChannels = NotificationManagerCompat.from(f.a).getNotificationChannels();
        if (notificationChannels.size() == 0 || Build.VERSION.SDK_INT < 26) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(notificationChannels.size());
        Iterator<NotificationChannel> it = notificationChannels.iterator();
        while (it.hasNext()) {
            arrayList.add(a(it.next()));
        }
        return arrayList;
    }

    public static Bundle e(String str) throws Exception {
        return a(NotificationManagerCompat.from(f.a).getNotificationChannel(str));
    }

    public static Bundle f(String str) throws Exception {
        return a(NotificationManagerCompat.from(f.a).getNotificationChannelGroup(str));
    }

    public static Boolean g(String str) throws Exception {
        if (Build.VERSION.SDK_INT < 26) {
            return Boolean.FALSE;
        }
        NotificationChannel notificationChannel = NotificationManagerCompat.from(f.a).getNotificationChannel(str);
        if (notificationChannel == null) {
            return Boolean.FALSE;
        }
        return Boolean.valueOf(notificationChannel.getImportance() == 0);
    }

    public static Boolean h(String str) throws Exception {
        if (Build.VERSION.SDK_INT < 26) {
            return Boolean.FALSE;
        }
        return Boolean.valueOf(NotificationManagerCompat.from(f.a).getNotificationChannel(str) != null);
    }

    public static ListenableFuture<Void> a(final n.o.t.i.f.e.e.c cVar) {
        return Notifee.getListeningExecutorService().submit(new Callable() {
            @Override
            public final Object call() {
                return a.b(cVar);
            }
        });
    }

    public static ListenableFuture<Void> a(final List<n.o.t.i.f.e.e.c> list) {
        return Notifee.getListeningExecutorService().submit(new Callable() {
            @Override
            public final Object call() {
                return a.c(list);
            }
        });
    }

    public static ListenableFuture<Bundle> a(final String str) {
        return Notifee.getListeningExecutorService().submit(new Callable() {
            @Override
            public final Object call() {
                return a.e(str);
            }
        });
    }

    public static ListenableFuture<List<Bundle>> a() {
        return Notifee.getListeningExecutorService().submit(new Callable() {
            @Override
            public final Object call() {
                return a.c();
            }
        });
    }

    public static Bundle a(NotificationChannel notificationChannel) {
        String strReplace = null;
        if (notificationChannel == null || Build.VERSION.SDK_INT < 26) {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString("id", notificationChannel.getId());
        bundle.putString("name", notificationChannel.getName().toString());
        bundle.putBoolean("badge", notificationChannel.canShowBadge());
        bundle.putBoolean("bypassDnd", notificationChannel.canBypassDnd());
        if (notificationChannel.getDescription() != null) {
            bundle.putString("description", notificationChannel.getDescription());
        }
        if (notificationChannel.getGroup() != null) {
            bundle.putString("groupId", notificationChannel.getGroup());
        }
        bundle.putInt("importance", notificationChannel.getImportance());
        bundle.putBoolean("lights", notificationChannel.shouldShowLights());
        bundle.putBoolean("vibration", notificationChannel.shouldVibrate());
        bundle.putBoolean("blocked", notificationChannel.getImportance() == 0);
        if (notificationChannel.getSound() != null) {
            bundle.putString("soundURI", notificationChannel.getSound().toString());
            Uri sound = notificationChannel.getSound();
            if (sound != null && sound.toString().contains(UriUtil.QUALIFIED_RESOURCE_SCHEME)) {
                String lastPathSegment = sound.getLastPathSegment();
                try {
                    int iIntValue = Integer.valueOf(lastPathSegment).intValue();
                    Logger.e("ResourceUtils", "Loaded sound by resource id. New app builds will fail to play sound. Create a new channel to resolve. Issue #341");
                    if (iIntValue != 0) {
                        TypedValue typedValue = new TypedValue();
                        f.a.getResources().getValue(iIntValue, typedValue, true);
                        CharSequence charSequence = typedValue.string;
                        if (charSequence != null || charSequence.length() > 0) {
                            strReplace = charSequence.toString().replace("res/raw/", "");
                        }
                    }
                } catch (NumberFormatException unused) {
                    strReplace = lastPathSegment;
                }
            }
            if (strReplace != null) {
                bundle.putString("sound", strReplace);
            }
        }
        if (notificationChannel.getLightColor() != 0) {
            int lightColor = notificationChannel.getLightColor();
            String str = e.a.get(Integer.valueOf(lightColor));
            if (str == null) {
                str = "#" + Integer.toHexString(lightColor).substring(2);
            }
            bundle.putString("lightColor", str);
        }
        long[] vibrationPattern = notificationChannel.getVibrationPattern();
        if (vibrationPattern != null && vibrationPattern.length > 0) {
            try {
                int[] iArr = new int[vibrationPattern.length];
                for (int i = 0; i < vibrationPattern.length; i++) {
                    iArr[i] = (int) vibrationPattern[i];
                }
                bundle.putIntArray("vibrationPattern", iArr);
            } catch (Exception e) {
                Logger.e("ChannelManager", "Unable to convert Vibration Pattern to Channel Bundle", e);
            }
        }
        int lockscreenVisibility = notificationChannel.getLockscreenVisibility();
        if (lockscreenVisibility != -1000) {
            bundle.putInt("visibility", lockscreenVisibility);
        }
        return bundle;
    }

    public static Void c(List list) throws Exception {
        if (Build.VERSION.SDK_INT < 26) {
            return null;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            a((n.o.t.i.f.e.e.c) it.next()).get();
        }
        return null;
    }

    public static Void d(List list) throws Exception {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            a((d) it.next()).get();
        }
        return null;
    }

    public static ListenableFuture<Boolean> d(final String str) {
        return Notifee.getListeningExecutorService().submit(new Callable() {
            @Override
            public final Object call() {
                return a.h(str);
            }
        });
    }

    public static ListenableFuture<Boolean> c(final String str) {
        return Notifee.getListeningExecutorService().submit(new Callable() {
            @Override
            public final Object call() {
                return a.g(str);
            }
        });
    }

    public static ListenableFuture<Void> b(final List<d> list) {
        return Notifee.getListeningExecutorService().submit(new Callable() {
            @Override
            public final Object call() {
                return a.d(list);
            }
        });
    }

    public static Void b(n.o.t.i.f.e.e.c cVar) throws Exception {
        int i = Build.VERSION.SDK_INT;
        if (i < 26) {
            return null;
        }
        NotificationChannelGroup notificationChannelGroup = new NotificationChannelGroup((String) Objects.requireNonNull(cVar.a.getString("id")), (String) Objects.requireNonNull(cVar.a.getString("name")));
        if (i >= 28 && cVar.a.getString("description") != null) {
            notificationChannelGroup.setDescription(cVar.a.getString("description"));
        }
        NotificationManagerCompat.from(f.a).createNotificationChannelGroup(notificationChannelGroup);
        return null;
    }

    public static Bundle a(NotificationChannelGroup notificationChannelGroup) {
        if (notificationChannelGroup == null || Build.VERSION.SDK_INT < 26) {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString("id", notificationChannelGroup.getId());
        bundle.putString("name", notificationChannelGroup.getName().toString());
        List<NotificationChannel> channels = notificationChannelGroup.getChannels();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(channels.size());
        Iterator<NotificationChannel> it = channels.iterator();
        while (it.hasNext()) {
            arrayList.add(a(it.next()));
        }
        bundle.putParcelableArrayList("channels", arrayList);
        if (Build.VERSION.SDK_INT >= 28) {
            bundle.putBoolean("blocked", notificationChannelGroup.isBlocked());
            bundle.putString("description", notificationChannelGroup.getDescription());
            return bundle;
        }
        bundle.putBoolean("blocked", false);
        return bundle;
    }

    public static ListenableFuture<List<Bundle>> b() {
        return Notifee.getListeningExecutorService().submit(new Callable() {
            @Override
            public final Object call() {
                return a.d();
            }
        });
    }

    public static ListenableFuture<Bundle> b(final String str) {
        return Notifee.getListeningExecutorService().submit(new Callable() {
            @Override
            public final Object call() {
                return a.f(str);
            }
        });
    }
}
