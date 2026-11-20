package com.mapbox.common;

import android.app.Activity;
import android.app.Application;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\r*\u0001\u0006\b\u0007\u0018\u0000 -2\u00020\u0001:\u0004*+,-B\u0005¢\u0006\u0002\u0010\u0002J$\u0010\r\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00150\u0018J\u0012\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\b\u0010\u001d\u001a\u00020\u0015H\u0016J\b\u0010\u001e\u001a\u00020\u0015H\u0016J\u0010\u0010\u001f\u001a\u00020\u00152\u0006\u0010 \u001a\u00020!H\u0016J\u0018\u0010\"\u001a\u00020\u00152\u0006\u0010#\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\u0013H\u0002J\u0010\u0010%\u001a\u00020\u00152\b\u0010&\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010'\u001a\u00020\u00152\u0006\u0010#\u001a\u00020\u0012H\u0002J\u0010\u0010(\u001a\u00020\u00152\u0006\u0010$\u001a\u00020\tH\u0002J\f\u0010)\u001a\u00020\t*\u00020\u0013H\u0002R\u0012\u0010\u0003\u001a\u00060\u0004R\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\f\u001a\u00020\t8G¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR6\u0010\u000f\u001a*\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0004\u0012\u00020\u00130\u0010j\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0004\u0012\u00020\u0013`\u0014X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Lcom/mapbox/common/LifecycleService;", "Landroid/app/Service;", "()V", "binder", "Lcom/mapbox/common/LifecycleService$Binder;", "callback", "com/mapbox/common/LifecycleService$callback$1", "Lcom/mapbox/common/LifecycleService$callback$1;", "currentLifecycleState", "Lcom/mapbox/common/LifecycleState;", "lifecycleCallback", "Lcom/mapbox/common/LifecycleService$Callback;", "lifecycleState", "getLifecycleState", "()Lcom/mapbox/common/LifecycleState;", "registeredActivities", "Ljava/util/HashMap;", "Ljava/lang/ref/WeakReference;", "Landroid/app/Activity;", "Lcom/mapbox/common/LifecycleService$ActivityState;", "Lkotlin/collections/HashMap;", "", "looper", "Landroid/os/Looper;", "Lkotlin/Function1;", "onBind", "Landroid/os/IBinder;", "intent", "Landroid/content/Intent;", "onCreate", "onDestroy", "onTrimMemory", "level", "", "registerActivityWithState", "activity", RemoteConfigConstants.ResponseFieldKey.STATE, "setCallback", "observer", "unregisterActivity", "updateLifecycleState", "toLifecycleState", "ActivityState", "Binder", "Callback", "Companion", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class LifecycleService extends Service {
    public static final String TAG = "LifecycleService";
    private Callback lifecycleCallback;
    private final HashMap<WeakReference<Activity>, ActivityState> registeredActivities = new HashMap<>();
    private final Binder binder = new Binder();
    private LifecycleState currentLifecycleState = LifecycleState.UNKNOWN;
    private final LifecycleService$callback$1 callback = new Application.ActivityLifecycleCallbacks() {
        @Override
        public synchronized void onActivityCreated(Activity activity, Bundle savedInstanceState) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.this$0.registerActivityWithState(activity, LifecycleService.ActivityState.Created);
        }

        @Override
        public synchronized void onActivityStarted(Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.this$0.registerActivityWithState(activity, LifecycleService.ActivityState.Started);
        }

        @Override
        public synchronized void onActivityResumed(Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.this$0.registerActivityWithState(activity, LifecycleService.ActivityState.Resumed);
        }

        @Override
        public synchronized void onActivityPaused(Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.this$0.registerActivityWithState(activity, LifecycleService.ActivityState.Paused);
        }

        @Override
        public synchronized void onActivityStopped(Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.this$0.registerActivityWithState(activity, LifecycleService.ActivityState.Stopped);
        }

        @Override
        public synchronized void onActivitySaveInstanceState(Activity activity, Bundle outState) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(outState, "outState");
            this.this$0.registerActivityWithState(activity, LifecycleService.ActivityState.SaveInstanceState);
        }

        @Override
        public synchronized void onActivityDestroyed(Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.this$0.unregisterActivity(activity);
        }
    };

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\n\b\u0082\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/mapbox/common/LifecycleService$ActivityState;", "", "(Ljava/lang/String;I)V", "Unknown", "Created", "Started", "Resumed", "Paused", "Stopped", "SaveInstanceState", "Destroyed", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    enum ActivityState {
        Unknown,
        Created,
        Started,
        Resumed,
        Paused,
        Stopped,
        SaveInstanceState,
        Destroyed
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/mapbox/common/LifecycleService$Callback;", "", "onLifecycleStateChanged", "", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/mapbox/common/LifecycleState;", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public interface Callback {
        void onLifecycleStateChanged(LifecycleState state);
    }

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ActivityState.values().length];
            try {
                iArr[ActivityState.Unknown.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ActivityState.Created.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ActivityState.Started.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ActivityState.Resumed.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ActivityState.Paused.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ActivityState.Stopped.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ActivityState.SaveInstanceState.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ActivityState.Destroyed.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Deprecated(message = "Use asynchronous methods to get lifecycle state")
    public final LifecycleState getLifecycleState() throws InterruptedException {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        getLifecycleState(null, new Function1<LifecycleState, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(LifecycleState lifecycleState) {
                invoke2(lifecycleState);
                return Unit.INSTANCE;
            }

            public final void invoke2(LifecycleState it) {
                Intrinsics.checkNotNullParameter(it, "it");
                countDownLatch.countDown();
            }
        });
        countDownLatch.await();
        return this.currentLifecycleState;
    }

    public final LifecycleState toLifecycleState(ActivityState activityState) {
        switch (WhenMappings.$EnumSwitchMapping$0[activityState.ordinal()]) {
            case 1:
                return LifecycleState.UNKNOWN;
            case 2:
                return LifecycleState.MOVING_FOREGROUND;
            case 3:
                return LifecycleState.MOVING_FOREGROUND;
            case 4:
                return LifecycleState.FOREGROUND;
            case 5:
                return LifecycleState.INACTIVE;
            case 6:
                return LifecycleState.MOVING_BACKGROUND;
            case 7:
                return LifecycleState.BACKGROUND;
            case 8:
                return LifecycleState.BACKGROUND;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcom/mapbox/common/LifecycleService$Binder;", "Landroid/os/Binder;", "(Lcom/mapbox/common/LifecycleService;)V", "getService", "Lcom/mapbox/common/LifecycleService;", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public final class Binder extends android.os.Binder {
        public Binder() {
        }

        public final LifecycleService getThis$0() {
            return LifecycleService.this;
        }
    }

    @Override
    public IBinder onBind(Intent intent) {
        return this.binder;
    }

    @Override
    public void onCreate() {
        LifecycleUtils.INSTANCE.getLifecycleState(this, null, new Function1<LifecycleState, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(LifecycleState lifecycleState) {
                invoke2(lifecycleState);
                return Unit.INSTANCE;
            }

            public final void invoke2(LifecycleState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                LifecycleService.this.currentLifecycleState = state;
            }
        });
        Application application = getApplication();
        if (application != null) {
            application.registerActivityLifecycleCallbacks(this.callback);
        }
    }

    @Override
    public void onDestroy() {
        this.currentLifecycleState = LifecycleState.UNKNOWN;
        this.registeredActivities.clear();
        Application application = getApplication();
        if (application != null) {
            application.unregisterActivityLifecycleCallbacks(this.callback);
        }
    }

    @Override
    public void onTrimMemory(int level) {
        if (level == 10 || level == 15 || level == 40 || level == 60) {
            Log.debug("Got onTrimMemory in LifecycleService: " + level, TAG);
            MemoryMonitorFactory.getOrCreate().notifySystemMemoryWarningReceived();
        }
    }

    public final synchronized void setCallback(final Callback observer) {
        this.lifecycleCallback = observer;
        getLifecycleState(null, new Function1<LifecycleState, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(LifecycleState lifecycleState) {
                invoke2(lifecycleState);
                return Unit.INSTANCE;
            }

            public final void invoke2(LifecycleState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                Callback callback = observer;
                if (callback != null) {
                    callback.onLifecycleStateChanged(state);
                }
            }
        });
    }

    public final synchronized void registerActivityWithState(Activity activity, ActivityState state) {
        HashMap<WeakReference<Activity>, ActivityState> map = this.registeredActivities;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<WeakReference<Activity>, ActivityState> entry : map.entrySet()) {
            if (Intrinsics.areEqual(entry.getKey().get(), activity)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        LinkedHashMap linkedHashMap2 = linkedHashMap;
        if (linkedHashMap2.isEmpty()) {
            this.registeredActivities.put(new WeakReference<>(activity), state);
        } else {
            Iterator it = linkedHashMap2.entrySet().iterator();
            while (it.hasNext()) {
                this.registeredActivities.put(((Map.Entry) it.next()).getKey(), state);
            }
        }
        getLifecycleState(null, new Function1<LifecycleState, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(LifecycleState lifecycleState) {
                invoke2(lifecycleState);
                return Unit.INSTANCE;
            }

            public final void invoke2(LifecycleState state2) {
                Intrinsics.checkNotNullParameter(state2, "state");
                LifecycleService.this.updateLifecycleState(state2);
            }
        });
    }

    public final synchronized void unregisterActivity(Activity activity) {
        HashMap<WeakReference<Activity>, ActivityState> map = this.registeredActivities;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<WeakReference<Activity>, ActivityState> entry : map.entrySet()) {
            WeakReference<Activity> key = entry.getKey();
            if (key.get() == null || Intrinsics.areEqual(key.get(), activity)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Iterator it = linkedHashMap.entrySet().iterator();
        while (it.hasNext()) {
            this.registeredActivities.remove(((Map.Entry) it.next()).getKey());
        }
        getLifecycleState(null, new Function1<LifecycleState, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(LifecycleState lifecycleState) {
                invoke2(lifecycleState);
                return Unit.INSTANCE;
            }

            public final void invoke2(LifecycleState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                LifecycleService.this.updateLifecycleState(state);
            }
        });
    }

    public final void getLifecycleState(Looper looper, final Function1<? super LifecycleState, Unit> callback) {
        Object objM1463constructorimpl;
        Intrinsics.checkNotNullParameter(callback, "callback");
        Collection<ActivityState> collectionValues = this.registeredActivities.values();
        Intrinsics.checkNotNullExpressionValue(collectionValues, "registeredActivities.values");
        Collection<ActivityState> collection = collectionValues;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(collection, 10));
        for (ActivityState it : collection) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            arrayList.add(toLifecycleState(it));
        }
        ArrayList arrayList2 = arrayList;
        if (arrayList2.contains(LifecycleState.FOREGROUND)) {
            updateLifecycleState(LifecycleState.FOREGROUND);
            if (looper != null) {
                new Handler(looper).post(new Runnable() {
                    @Override
                    public final void run() {
                        LifecycleService.getLifecycleState$lambda$6$lambda$5(callback);
                    }
                });
                return;
            } else {
                callback.invoke(LifecycleState.FOREGROUND);
                return;
            }
        }
        Context appContext = getApplicationContext();
        if (arrayList2.isEmpty()) {
            LifecycleUtils lifecycleUtils = LifecycleUtils.INSTANCE;
            Intrinsics.checkNotNullExpressionValue(appContext, "appContext");
            lifecycleUtils.getLifecycleState(appContext, looper, new Function1<LifecycleState, Unit>() {
                {
                    super(1);
                }

                @Override
                public Unit invoke(LifecycleState lifecycleState) {
                    invoke2(lifecycleState);
                    return Unit.INSTANCE;
                }

                public final void invoke2(LifecycleState state) {
                    Intrinsics.checkNotNullParameter(state, "state");
                    LifecycleService.this.updateLifecycleState(state);
                    callback.invoke(state);
                }
            });
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            LifecycleService lifecycleService = this;
            LifecycleUtils lifecycleUtils2 = LifecycleUtils.INSTANCE;
            Intrinsics.checkNotNullExpressionValue(appContext, "appContext");
            lifecycleUtils2.hasServiceRunningInForeground(appContext, looper, new Function1<Boolean, Unit>() {
                {
                    super(1);
                }

                @Override
                public Unit invoke(Boolean bool) {
                    invoke(bool.booleanValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(boolean z) {
                    if (z) {
                        this.$this_runCatching.updateLifecycleState(LifecycleState.FOREGROUND);
                        callback.invoke(LifecycleState.FOREGROUND);
                        return;
                    }
                    Collection collectionValues2 = this.$this_runCatching.registeredActivities.values();
                    Intrinsics.checkNotNullExpressionValue(collectionValues2, "registeredActivities.values");
                    Collection<LifecycleService.ActivityState> collection2 = collectionValues2;
                    LifecycleService lifecycleService2 = this.$this_runCatching;
                    ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(collection2, 10));
                    for (LifecycleService.ActivityState it2 : collection2) {
                        Intrinsics.checkNotNullExpressionValue(it2, "it");
                        arrayList3.add(lifecycleService2.toLifecycleState(it2));
                    }
                    ArrayList arrayList4 = arrayList3;
                    LifecycleState[] lifecycleStateArr = {LifecycleState.FOREGROUND, LifecycleState.MOVING_FOREGROUND, LifecycleState.INACTIVE, LifecycleState.MOVING_BACKGROUND};
                    for (int i = 0; i < 4; i++) {
                        LifecycleState lifecycleState = lifecycleStateArr[i];
                        if (arrayList4.contains(lifecycleState)) {
                            this.$this_runCatching.updateLifecycleState(lifecycleState);
                            callback.invoke(lifecycleState);
                            return;
                        }
                    }
                    this.$this_runCatching.updateLifecycleState(LifecycleState.BACKGROUND);
                    callback.invoke(LifecycleState.BACKGROUND);
                }
            });
            objM1463constructorimpl = Result.m1463constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM1463constructorimpl = Result.m1463constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM1466exceptionOrNullimpl = Result.m1466exceptionOrNullimpl(objM1463constructorimpl);
        if (thM1466exceptionOrNullimpl != null) {
            Log.error("Failed to get application state: " + thM1466exceptionOrNullimpl, TAG);
            if (looper != null) {
                new Handler(looper).post(new Runnable() {
                    @Override
                    public final void run() {
                        LifecycleService.getLifecycleState$lambda$10$lambda$9$lambda$8(callback);
                    }
                });
            } else {
                callback.invoke(LifecycleState.UNKNOWN);
            }
        }
    }

    public static final void getLifecycleState$lambda$6$lambda$5(Function1 callback) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        callback.invoke(LifecycleState.FOREGROUND);
    }

    public static final void getLifecycleState$lambda$10$lambda$9$lambda$8(Function1 callback) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        callback.invoke(LifecycleState.UNKNOWN);
    }

    public final synchronized void updateLifecycleState(LifecycleState state) {
        if (this.currentLifecycleState == state) {
            return;
        }
        this.currentLifecycleState = state;
        Callback callback = this.lifecycleCallback;
        if (callback != null) {
            callback.onLifecycleStateChanged(state);
        }
    }
}
