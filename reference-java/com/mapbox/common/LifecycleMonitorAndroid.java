package com.mapbox.common;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import ch.qos.logback.core.CoreConstants;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.ExpectedFactory;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u000b*\u0002\b\u000b\b\u0000\u0018\u0000 *2\u00020\u0001:\u0002*+B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0015H\u0016J\u0010\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0017H\u0016J\u001a\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0002J\u0010\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020!H\u0002J\u001a\u0010\"\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0002J\u001c\u0010\"\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020!2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010 H\u0002J\u0010\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u0011H\u0016J\u0006\u0010%\u001a\u00020\u0019J\u0006\u0010&\u001a\u00020\u0019J\u0010\u0010'\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u0011H\u0016J\u0010\u0010(\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020!H\u0002J\u001c\u0010)\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u000e2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010 H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\tR\u0010\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\fR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R.\u0010\u000f\u001a\"\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0010j\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u0012`\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R.\u0010\u0014\u001a\"\u0012\u0004\u0012\u00020\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0010j\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u0012`\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R.\u0010\u0016\u001a\"\u0012\u0004\u0012\u00020\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0010j\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u0012`\u0013X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006,"}, d2 = {"Lcom/mapbox/common/LifecycleMonitorAndroid;", "Lcom/mapbox/common/LifecycleMonitorInterface;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "(Landroid/content/Context;)V", "lifecycleService", "Lcom/mapbox/common/LifecycleService;", "lifecycleServiceCallback", "com/mapbox/common/LifecycleMonitorAndroid$lifecycleServiceCallback$1", "Lcom/mapbox/common/LifecycleMonitorAndroid$lifecycleServiceCallback$1;", "lifecycleServiceConnection", "com/mapbox/common/LifecycleMonitorAndroid$lifecycleServiceConnection$1", "Lcom/mapbox/common/LifecycleMonitorAndroid$lifecycleServiceConnection$1;", "monitorState", "Lcom/mapbox/common/LifecycleMonitorAndroid$MonitorState;", "observers", "Ljava/util/HashMap;", "Lcom/mapbox/common/LifecycleObserver;", "Landroid/os/Handler;", "Lkotlin/collections/HashMap;", "pendingLifecycleStateCallbacks", "Lcom/mapbox/common/GetLifecycleStateCallback;", "pendingMonitoringStateCallbacks", "Lcom/mapbox/common/GetLifecycleMonitoringStateCallback;", "getLifecycleState", "", "callback", "getMonitoringState", "notifyObservers", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/mapbox/common/LifecycleMonitoringState;", "error", "", "Lcom/mapbox/common/LifecycleState;", "notifyPendingCallbacks", "registerObserver", "observer", "start", "stop", "unregisterObserver", "updateLifecycleState", "updateMonitorState", "Companion", "MonitorState", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class LifecycleMonitorAndroid implements LifecycleMonitorInterface {

    public static final Companion INSTANCE = new Companion(null);
    public static final String TAG = "LifecycleMonitor";
    private final Context context;
    private LifecycleService lifecycleService;
    private final LifecycleMonitorAndroid$lifecycleServiceCallback$1 lifecycleServiceCallback;
    private final LifecycleMonitorAndroid$lifecycleServiceConnection$1 lifecycleServiceConnection;
    private MonitorState monitorState;
    private HashMap<LifecycleObserver, Handler> observers;
    private HashMap<GetLifecycleStateCallback, Handler> pendingLifecycleStateCallbacks;
    private HashMap<GetLifecycleMonitoringStateCallback, Handler> pendingMonitoringStateCallbacks;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0082\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/mapbox/common/LifecycleMonitorAndroid$MonitorState;", "", "(Ljava/lang/String;I)V", "STARTING", "STARTED", "STOPPING", "STOPPED", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    enum MonitorState {
        STARTING,
        STARTED,
        STOPPING,
        STOPPED
    }

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[MonitorState.values().length];
            try {
                iArr[MonitorState.STOPPING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MonitorState.STOPPED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MonitorState.STARTING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[MonitorState.STARTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public LifecycleMonitorAndroid(Context context, DefaultConstructorMarker defaultConstructorMarker) {
        this(context);
    }

    @JvmStatic
    public static final LifecycleMonitorInterface create() {
        return INSTANCE.create();
    }

    private LifecycleMonitorAndroid(Context context) {
        this.context = context;
        this.monitorState = MonitorState.STOPPED;
        this.observers = new HashMap<>();
        this.pendingLifecycleStateCallbacks = new HashMap<>();
        this.pendingMonitoringStateCallbacks = new HashMap<>();
        this.lifecycleServiceCallback = new LifecycleService.Callback() {
            @Override
            public void onLifecycleStateChanged(LifecycleState state) {
                Intrinsics.checkNotNullParameter(state, "state");
                this.this$0.updateLifecycleState(state);
            }
        };
        this.lifecycleServiceConnection = new LifecycleMonitorAndroid$lifecycleServiceConnection$1(this);
    }

    public final synchronized void start() {
        if (this.monitorState != MonitorState.STARTING && this.monitorState != MonitorState.STARTED) {
            updateMonitorState$default(this, MonitorState.STARTING, null, 2, null);
            if (this.context.bindService(new Intent(this.context, (Class<?>) LifecycleService.class), this.lifecycleServiceConnection, 1)) {
                return;
            }
            Log.error("Failed to bind lifecycle service", TAG);
            updateMonitorState(MonitorState.STOPPED, "Cannot start service");
        }
    }

    public final synchronized void stop() {
        if (this.monitorState != MonitorState.STOPPING && this.monitorState != MonitorState.STOPPED) {
            updateMonitorState$default(this, MonitorState.STOPPING, null, 2, null);
            LifecycleService lifecycleService = this.lifecycleService;
            if (lifecycleService != null) {
                this.context.unbindService(this.lifecycleServiceConnection);
                lifecycleService.stopSelf();
            }
            this.lifecycleServiceConnection.onServiceDisconnected(null);
        }
    }

    @Override
    public synchronized void getLifecycleState(final GetLifecycleStateCallback callback) {
        LifecycleService lifecycleService;
        Intrinsics.checkNotNullParameter(callback, "callback");
        int i = WhenMappings.$EnumSwitchMapping$0[this.monitorState.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            HashMap<GetLifecycleStateCallback, Handler> map = this.pendingLifecycleStateCallbacks;
            Looper looperMyLooper = Looper.myLooper();
            map.put(callback, looperMyLooper != null ? new Handler(looperMyLooper) : null);
            if (this.monitorState != MonitorState.STARTING) {
                start();
            }
        } else if (i == 4 && (lifecycleService = this.lifecycleService) != null) {
            lifecycleService.getLifecycleState(Looper.myLooper(), new Function1<LifecycleState, Unit>() {
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
                    callback.run(ExpectedFactory.createValue(state));
                }
            });
        }
    }

    @Override
    public synchronized void getMonitoringState(GetLifecycleMonitoringStateCallback callback) {
        Looper looperMyLooper;
        Handler handler;
        Intrinsics.checkNotNullParameter(callback, "callback");
        int i = WhenMappings.$EnumSwitchMapping$0[this.monitorState.ordinal()];
        if (i == 1) {
            HashMap<GetLifecycleMonitoringStateCallback, Handler> map = this.pendingMonitoringStateCallbacks;
            looperMyLooper = Looper.myLooper();
            if (looperMyLooper != null) {
                handler = new Handler(looperMyLooper);
            } else {
                handler = null;
            }
            map.put(callback, handler);
        } else if (i == 2) {
            callback.run(ExpectedFactory.createValue(LifecycleMonitoringState.STOPPED));
        } else if (i == 3) {
            HashMap<GetLifecycleMonitoringStateCallback, Handler> map2 = this.pendingMonitoringStateCallbacks;
            looperMyLooper = Looper.myLooper();
            if (looperMyLooper != null) {
                handler = new Handler(looperMyLooper);
            } else {
                handler = null;
            }
            map2.put(callback, handler);
        } else if (i == 4) {
            callback.run(ExpectedFactory.createValue(LifecycleMonitoringState.STARTED));
        }
    }

    @Override
    public synchronized void registerObserver(LifecycleObserver observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        HashMap<LifecycleObserver, Handler> map = this.observers;
        Looper looperMyLooper = Looper.myLooper();
        map.put(observer, looperMyLooper != null ? new Handler(looperMyLooper) : null);
        if (this.monitorState != MonitorState.STARTED) {
            start();
        }
    }

    @Override
    public synchronized void unregisterObserver(LifecycleObserver observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        this.observers.remove(observer);
        if (this.observers.isEmpty()) {
            stop();
        }
    }

    private final synchronized void notifyObservers(final LifecycleMonitoringState state, final String error) {
        for (final Map.Entry<LifecycleObserver, Handler> entry : this.observers.entrySet()) {
            Handler value = entry.getValue();
            if (value != null) {
                value.post(new Runnable() {
                    @Override
                    public final void run() {
                        LifecycleMonitorAndroid.notifyObservers$lambda$4$lambda$2$lambda$1(entry, state, error);
                    }
                });
            } else {
                LifecycleMonitorAndroid lifecycleMonitorAndroid = this;
                entry.getKey().onMonitoringStateChanged(state, error);
            }
        }
    }

    public static final void notifyObservers$lambda$4$lambda$2$lambda$1(Map.Entry observer, LifecycleMonitoringState state, String str) {
        Intrinsics.checkNotNullParameter(observer, "$observer");
        Intrinsics.checkNotNullParameter(state, "$state");
        ((LifecycleObserver) observer.getKey()).onMonitoringStateChanged(state, str);
    }

    private final synchronized void notifyObservers(final LifecycleState state) {
        for (final Map.Entry<LifecycleObserver, Handler> entry : this.observers.entrySet()) {
            Handler value = entry.getValue();
            if (value != null) {
                value.post(new Runnable() {
                    @Override
                    public final void run() {
                        LifecycleMonitorAndroid.notifyObservers$lambda$8$lambda$6$lambda$5(entry, state);
                    }
                });
            } else {
                LifecycleMonitorAndroid lifecycleMonitorAndroid = this;
                entry.getKey().onLifecycleStateChanged(state);
            }
        }
    }

    public static final void notifyObservers$lambda$8$lambda$6$lambda$5(Map.Entry observer, LifecycleState state) {
        Intrinsics.checkNotNullParameter(observer, "$observer");
        Intrinsics.checkNotNullParameter(state, "$state");
        ((LifecycleObserver) observer.getKey()).onLifecycleStateChanged(state);
    }

    private final synchronized void notifyPendingCallbacks(LifecycleMonitoringState state, String error) {
        final Expected<String, LifecycleMonitoringState> expectedCreateError;
        if (error != null) {
            try {
                expectedCreateError = ExpectedFactory.createError(error);
            } catch (Throwable th) {
                throw th;
            }
        } else {
            expectedCreateError = null;
        }
        if (expectedCreateError == null) {
            LifecycleMonitorAndroid lifecycleMonitorAndroid = this;
            expectedCreateError = ExpectedFactory.createValue(state);
            Intrinsics.checkNotNullExpressionValue(expectedCreateError, "run {\n            Expect…ateValue(state)\n        }");
        }
        for (final Map.Entry<GetLifecycleMonitoringStateCallback, Handler> entry : this.pendingMonitoringStateCallbacks.entrySet()) {
            Handler value = entry.getValue();
            if (value != null) {
                value.post(new Runnable() {
                    @Override
                    public final void run() {
                        LifecycleMonitorAndroid.notifyPendingCallbacks$lambda$14$lambda$12$lambda$11(entry, expectedCreateError);
                    }
                });
            } else {
                LifecycleMonitorAndroid lifecycleMonitorAndroid2 = this;
                entry.getKey().run(expectedCreateError);
            }
        }
        this.pendingMonitoringStateCallbacks.clear();
    }

    public static final void notifyPendingCallbacks$lambda$14$lambda$12$lambda$11(Map.Entry callback, Expected result) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(result, "$result");
        ((GetLifecycleMonitoringStateCallback) callback.getKey()).run(result);
    }

    static void notifyPendingCallbacks$default(LifecycleMonitorAndroid lifecycleMonitorAndroid, LifecycleState lifecycleState, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        lifecycleMonitorAndroid.notifyPendingCallbacks(lifecycleState, str);
    }

    private final synchronized void notifyPendingCallbacks(LifecycleState state, String error) {
        final Expected<String, LifecycleState> expectedCreateError;
        if (error != null) {
            try {
                expectedCreateError = ExpectedFactory.createError(error);
            } catch (Throwable th) {
                throw th;
            }
        } else {
            expectedCreateError = null;
        }
        if (expectedCreateError == null) {
            LifecycleMonitorAndroid lifecycleMonitorAndroid = this;
            expectedCreateError = ExpectedFactory.createValue(state);
            Intrinsics.checkNotNullExpressionValue(expectedCreateError, "run {\n            Expect…ateValue(state)\n        }");
        }
        for (final Map.Entry<GetLifecycleStateCallback, Handler> entry : this.pendingLifecycleStateCallbacks.entrySet()) {
            Handler value = entry.getValue();
            if (value != null) {
                value.post(new Runnable() {
                    @Override
                    public final void run() {
                        LifecycleMonitorAndroid.notifyPendingCallbacks$lambda$20$lambda$18$lambda$17(entry, expectedCreateError);
                    }
                });
            } else {
                LifecycleMonitorAndroid lifecycleMonitorAndroid2 = this;
                entry.getKey().run(expectedCreateError);
            }
        }
        this.pendingLifecycleStateCallbacks.clear();
    }

    public static final void notifyPendingCallbacks$lambda$20$lambda$18$lambda$17(Map.Entry callback, Expected result) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(result, "$result");
        ((GetLifecycleStateCallback) callback.getKey()).run(result);
    }

    static void updateMonitorState$default(LifecycleMonitorAndroid lifecycleMonitorAndroid, MonitorState monitorState, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        lifecycleMonitorAndroid.updateMonitorState(monitorState, str);
    }

    private final synchronized void updateMonitorState(MonitorState state, String error) {
        this.monitorState = state;
        if (error != null) {
            notifyPendingCallbacks(LifecycleState.UNKNOWN, error);
        }
        int i = WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
        if (i == 2) {
            notifyPendingCallbacks(LifecycleMonitoringState.STOPPED, error);
            notifyObservers(LifecycleMonitoringState.STOPPED, error);
        } else if (i == 4) {
            notifyPendingCallbacks(LifecycleMonitoringState.STARTED, error);
            notifyObservers(LifecycleMonitoringState.STARTED, error);
            if (this.observers.isEmpty() && this.pendingLifecycleStateCallbacks.isEmpty()) {
                stop();
            }
        }
    }

    public final synchronized void updateLifecycleState(LifecycleState state) {
        notifyPendingCallbacks$default(this, state, null, 2, null);
        notifyObservers(state);
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/mapbox/common/LifecycleMonitorAndroid$Companion;", "", "()V", "TAG", "", "create", "Lcom/mapbox/common/LifecycleMonitorInterface;", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final LifecycleMonitorInterface create() {
            return new LifecycleMonitorAndroid(MapboxSDKCommon.INSTANCE.getContext(), null);
        }
    }
}
