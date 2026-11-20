package com.mapbox.common.movement;

import android.os.Handler;
import android.os.Looper;
import app.notifee.core.event.LogEvent;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.ExpectedFactory;
import com.mapbox.common.MapboxSDKCommon;
import com.mapbox.common.MovementInfo;
import com.mapbox.common.MovementInfoCallback;
import com.mapbox.common.MovementModeObserver;
import com.mapbox.common.MovementModeProvider;
import com.mapbox.common.MovementMonitorInterface;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b\u0001\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\nH\u0002J\u0010\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\nH\u0002J\u0010\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0007H\u0016J\u0010\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\nH\u0016J\u0010\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/mapbox/common/movement/AndroidMovementMonitor;", "Lcom/mapbox/common/MovementMonitorInterface;", "activityRecognition", "Lcom/mapbox/common/movement/ActivityRecognitionClient;", "(Lcom/mapbox/common/movement/ActivityRecognitionClient;)V", "observers", "", "Lcom/mapbox/common/MovementModeObserver;", "Landroid/os/Handler;", "sdkMovementInfo", "Lcom/mapbox/common/MovementInfo;", "systemMovementInfo", "getMovementInfo", "", "callback", "Lcom/mapbox/common/MovementInfoCallback;", "notifyObservers", "movementInfo", "onPlatformMovementInfoAvailable", LogEvent.LEVEL_INFO, "registerObserver", "observer", "setMovementInfo", "unregisterObserver", "Companion", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class AndroidMovementMonitor implements MovementMonitorInterface {

    public static final Companion INSTANCE = new Companion(null);
    private static final String NO_MOVEMENT_INFO_ERROR = "Movement is not available";
    private final ActivityRecognitionClient activityRecognition;
    private final Map<MovementModeObserver, Handler> observers;
    private MovementInfo sdkMovementInfo;
    private MovementInfo systemMovementInfo;

    @JvmStatic
    public static final MovementMonitorInterface create() {
        return INSTANCE.create();
    }

    public AndroidMovementMonitor(ActivityRecognitionClient activityRecognition) {
        Intrinsics.checkNotNullParameter(activityRecognition, "activityRecognition");
        this.activityRecognition = activityRecognition;
        this.observers = new LinkedHashMap();
        activityRecognition.addObserver(new ActivityRecognitionClient.Observer() {
            @Override
            public synchronized void onMovementInfo(MovementInfo info) {
                Intrinsics.checkNotNullParameter(info, "info");
                AndroidMovementMonitor.this.onPlatformMovementInfoAvailable(info);
            }
        });
    }

    @Override
    public synchronized void getMovementInfo(MovementInfoCallback callback) {
        Expected<String, MovementInfo> expectedCreateError;
        Intrinsics.checkNotNullParameter(callback, "callback");
        MovementInfo movementInfo = this.systemMovementInfo;
        if (movementInfo == null) {
            movementInfo = this.sdkMovementInfo;
        }
        if (movementInfo != null) {
            expectedCreateError = ExpectedFactory.createValue(movementInfo);
            Intrinsics.checkNotNullExpressionValue(expectedCreateError, "{\n            ExpectedFa…mentInfo>(info)\n        }");
        } else {
            expectedCreateError = ExpectedFactory.createError(NO_MOVEMENT_INFO_ERROR);
            Intrinsics.checkNotNullExpressionValue(expectedCreateError, "{\n            ExpectedFa…ENT_INFO_ERROR)\n        }");
        }
        callback.run(expectedCreateError);
    }

    @Override
    public synchronized void setMovementInfo(MovementInfo movementInfo) {
        Intrinsics.checkNotNullParameter(movementInfo, "movementInfo");
        if (!this.activityRecognition.isPlatformActivityRecognitionAvailable()) {
            this.sdkMovementInfo = new MovementInfo(movementInfo.getMovementMode(), MovementModeProvider.SDK);
            notifyObservers(movementInfo);
        }
    }

    @Override
    public synchronized void registerObserver(MovementModeObserver observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        Map<MovementModeObserver, Handler> map = this.observers;
        Looper looperMyLooper = Looper.myLooper();
        map.put(observer, looperMyLooper != null ? new Handler(looperMyLooper) : null);
        if (this.observers.size() == 1) {
            this.activityRecognition.start();
        }
    }

    @Override
    public synchronized void unregisterObserver(MovementModeObserver observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        this.observers.remove(observer);
        if (this.observers.isEmpty()) {
            this.activityRecognition.stop();
        }
    }

    public final synchronized void onPlatformMovementInfoAvailable(MovementInfo info) {
        this.systemMovementInfo = info;
        notifyObservers(info);
    }

    private final void notifyObservers(final MovementInfo movementInfo) {
        for (Map.Entry<MovementModeObserver, Handler> entry : this.observers.entrySet()) {
            final MovementModeObserver key = entry.getKey();
            Handler value = entry.getValue();
            if (value != null && !Intrinsics.areEqual(value.getLooper(), Looper.myLooper())) {
                value.post(new Runnable() {
                    @Override
                    public final void run() {
                        AndroidMovementMonitor.notifyObservers$lambda$2$lambda$1(key, movementInfo);
                    }
                });
            } else {
                key.onMovementModeChanged(movementInfo);
            }
        }
    }

    public static final void notifyObservers$lambda$2$lambda$1(MovementModeObserver observer, MovementInfo movementInfo) {
        Intrinsics.checkNotNullParameter(observer, "$observer");
        Intrinsics.checkNotNullParameter(movementInfo, "$movementInfo");
        observer.onMovementModeChanged(movementInfo);
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/mapbox/common/movement/AndroidMovementMonitor$Companion;", "", "()V", "NO_MOVEMENT_INFO_ERROR", "", "create", "Lcom/mapbox/common/MovementMonitorInterface;", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final MovementMonitorInterface create() {
            StubActivityRecognition googleActivityRecognition;
            if (GoogleActivityRecognition.INSTANCE.isAvailable$common_release()) {
                googleActivityRecognition = new GoogleActivityRecognition(MapboxSDKCommon.INSTANCE.getContext(), null, 2, null);
            } else {
                googleActivityRecognition = StubActivityRecognition.INSTANCE;
            }
            return new AndroidMovementMonitor(googleActivityRecognition);
        }
    }
}
