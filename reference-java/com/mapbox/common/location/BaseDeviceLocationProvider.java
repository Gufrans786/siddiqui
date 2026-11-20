package com.mapbox.common.location;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Looper;
import ch.qos.logback.core.CoreConstants;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mapbox.common.Cancelable;
import com.mapbox.common.MapboxCommonLogger;
import com.payfort.fortpaymentsdk.views.CardNumberHelper;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\b \u0018\u0000 62\u00020\u00012\u00020\u0002:\u00046789B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016J\u0018\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0016J\b\u0010'\u001a\u00020\"H$J\b\u0010(\u001a\u00020\"H$J\u0016\u0010)\u001a\b\u0012\u0004\u0012\u00020+0*2\u0006\u0010,\u001a\u00020-H&J\u0016\u0010.\u001a\u00020\"2\f\u0010/\u001a\b\u0012\u0004\u0012\u00020+0*H\u0016J\u0010\u00100\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016J\u0010\u00101\u001a\u00020\"2\u0006\u00102\u001a\u00020\u0011H&J\u0010\u00103\u001a\u00020\"2\u0006\u00102\u001a\u00020\u0011H&J\b\u00104\u001a\u00020\"H\u0007J\b\u00105\u001a\u00020\"H\u0007R\u0014\u0010\u0003\u001a\u00020\u0004X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001b\u0010\u0010\u001a\u00020\u00118DX\u0084\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0016\u001a\u00020\u00178&X§\u0004¢\u0006\f\u0012\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0018\u0010\u001e\u001a\u00020\u001f8\u0006@\u0006X\u0087\u000e¢\u0006\b\n\u0000\u0012\u0004\b \u0010\u0019¨\u0006:"}, d2 = {"Lcom/mapbox/common/location/BaseDeviceLocationProvider;", "Lcom/mapbox/common/location/BaseLocationProvider;", "Lcom/mapbox/common/location/DeviceLocationProvider;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "request", "Lcom/mapbox/common/location/LocationProviderRequest;", "(Landroid/content/Context;Lcom/mapbox/common/location/LocationProviderRequest;)V", "getContext", "()Landroid/content/Context;", "currentMode", "Lcom/mapbox/common/location/BaseDeviceLocationProvider$DeviceLocationProviderMode;", "getCurrentMode", "()Lcom/mapbox/common/location/BaseDeviceLocationProvider$DeviceLocationProviderMode;", "setCurrentMode", "(Lcom/mapbox/common/location/BaseDeviceLocationProvider$DeviceLocationProviderMode;)V", "locationUpdatePendingIntent", "Landroid/app/PendingIntent;", "getLocationUpdatePendingIntent", "()Landroid/app/PendingIntent;", "locationUpdatePendingIntent$delegate", "Lkotlin/Lazy;", "persistentId", "", "getPersistentId$annotations", "()V", "getPersistentId", "()I", "getRequest", "()Lcom/mapbox/common/location/LocationProviderRequest;", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/mapbox/common/location/BaseDeviceLocationProvider$DeviceLocationProviderState;", "getState$annotations", "addLocationObserver", "", "observer", "Lcom/mapbox/common/location/LocationObserver;", "looper", "Landroid/os/Looper;", "doStart", "doStop", "extractResult", "", "Lcom/mapbox/common/location/Location;", "intent", "Landroid/content/Intent;", "notifyLocationUpdate", "locations", "removeLocationObserver", "removeLocationUpdates", BaseGmsClient.KEY_PENDING_INTENT, "requestLocationUpdates", "start", "stop", "Companion", "DeviceLocationProviderMode", "DeviceLocationProviderState", "LocationCancelable", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public abstract class BaseDeviceLocationProvider extends BaseLocationProvider implements DeviceLocationProvider {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    private static final String TAG = "DeviceLocationProvider";
    private final Context context;
    private DeviceLocationProviderMode currentMode;

    private final Lazy locationUpdatePendingIntent;
    private final LocationProviderRequest request;
    public DeviceLocationProviderState state;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0084\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/mapbox/common/location/BaseDeviceLocationProvider$DeviceLocationProviderMode;", "", "(Ljava/lang/String;I)V", "NONE", "CALLBACK", "PENDING_INTENT", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    protected enum DeviceLocationProviderMode {
        NONE,
        CALLBACK,
        PENDING_INTENT
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0087\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/mapbox/common/location/BaseDeviceLocationProvider$DeviceLocationProviderState;", "", "(Ljava/lang/String;I)V", "STOPPED", "STOPPING", "STARTED", "STARTING", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public enum DeviceLocationProviderState {
        STOPPED,
        STOPPING,
        STARTED,
        STARTING
    }

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DeviceLocationProviderState.values().length];
            try {
                iArr[DeviceLocationProviderState.STARTING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DeviceLocationProviderState.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DeviceLocationProviderState.STOPPED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DeviceLocationProviderState.STOPPING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static void getPersistentId$annotations() {
    }

    public static void getState$annotations() {
    }

    protected abstract void doStart();

    protected abstract void doStop();

    public abstract List<Location> extractResult(Intent intent);

    public abstract int getPersistentId();

    public abstract void removeLocationUpdates(PendingIntent pendingIntent);

    public abstract void requestLocationUpdates(PendingIntent pendingIntent);

    public String getName() {
        return DeviceLocationProvider.DefaultImpls.getName(this);
    }

    protected final Context getContext() {
        return this.context;
    }

    protected final LocationProviderRequest getRequest() {
        return this.request;
    }

    public BaseDeviceLocationProvider(Context context, LocationProviderRequest locationProviderRequest) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.request = locationProviderRequest;
        this.state = DeviceLocationProviderState.STOPPED;
        this.locationUpdatePendingIntent = LazyKt.lazy(new Function0<PendingIntent>() {
            {
                super(0);
            }

            @Override
            public final PendingIntent invoke() {
                Intent intent = new Intent(this.this$0.getContext(), (Class<?>) LocationUpdatesReceiver.class);
                intent.setAction(LocationUpdatesReceiver.ACTION_PROCESS_LOCATION_UPDATES);
                int i = Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728;
                intent.putExtra(LocationUpdatesReceiver.LOCATION_PROVIDER_ID_KEY, this.this$0.getPersistentId());
                return PendingIntent.getBroadcast(this.this$0.getContext(), this.this$0.getPersistentId(), intent, i);
            }
        });
        this.currentMode = DeviceLocationProviderMode.NONE;
    }

    protected final PendingIntent getLocationUpdatePendingIntent() {
        Object value = this.locationUpdatePendingIntent.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-locationUpdatePendingIntent>(...)");
        return (PendingIntent) value;
    }

    protected final DeviceLocationProviderMode getCurrentMode() {
        return this.currentMode;
    }

    protected final void setCurrentMode(DeviceLocationProviderMode deviceLocationProviderMode) {
        Intrinsics.checkNotNullParameter(deviceLocationProviderMode, "<set-?>");
        this.currentMode = deviceLocationProviderMode;
    }

    public final void start() {
        Object objM1463constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            BaseDeviceLocationProvider baseDeviceLocationProvider = this;
            MapboxCommonLogger.INSTANCE.logD$common_release(TAG, "Start called for " + this + ", state=" + this.state);
            int i = WhenMappings.$EnumSwitchMapping$0[this.state.ordinal()];
            if (i == 1 || i == 2) {
                MapboxCommonLogger.INSTANCE.logW$common_release(TAG, "Skipping request to start: state == " + this.state);
            } else if (i == 3 || i == 4) {
                this.state = DeviceLocationProviderState.STARTING;
                doStart();
            }
            objM1463constructorimpl = Result.m1463constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM1463constructorimpl = Result.m1463constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM1466exceptionOrNullimpl = Result.m1466exceptionOrNullimpl(objM1463constructorimpl);
        if (thM1466exceptionOrNullimpl != null) {
            MapboxCommonLogger.INSTANCE.logE$common_release(TAG, "Failed to start: state=" + this.state + CardNumberHelper.DIVIDER + thM1466exceptionOrNullimpl);
            this.state = DeviceLocationProviderState.STOPPED;
        }
    }

    public final synchronized void stop() {
        Object objM1463constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            BaseDeviceLocationProvider baseDeviceLocationProvider = this;
            MapboxCommonLogger.INSTANCE.logD$common_release(TAG, "Stop called for " + this + " state=" + this.state);
            int i = WhenMappings.$EnumSwitchMapping$0[this.state.ordinal()];
            if (i == 1 || i == 2) {
                this.state = DeviceLocationProviderState.STOPPING;
                doStop();
            } else if (i == 3 || i == 4) {
                MapboxCommonLogger.INSTANCE.logW$common_release(TAG, "Skipping request to stop: state == " + this.state);
            }
            objM1463constructorimpl = Result.m1463constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM1463constructorimpl = Result.m1463constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM1466exceptionOrNullimpl = Result.m1466exceptionOrNullimpl(objM1463constructorimpl);
        if (thM1466exceptionOrNullimpl != null) {
            MapboxCommonLogger.INSTANCE.logE$common_release(TAG, "Failed to stop: state=" + this.state + CardNumberHelper.DIVIDER + thM1466exceptionOrNullimpl);
        }
    }

    @Override
    public synchronized void addLocationObserver(LocationObserver observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        super.addLocationObserver(observer);
        start();
    }

    @Override
    public synchronized void addLocationObserver(LocationObserver observer, Looper looper) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        Intrinsics.checkNotNullParameter(looper, "looper");
        super.addLocationObserver(observer, looper);
        start();
    }

    @Override
    public synchronized void removeLocationObserver(LocationObserver observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        super.removeLocationObserver(observer);
        if (getObservers().isEmpty()) {
            stop();
        }
    }

    @Override
    public synchronized void notifyLocationUpdate(List<? extends Location> locations) {
        Intrinsics.checkNotNullParameter(locations, "locations");
        if (this.state == DeviceLocationProviderState.STARTED) {
            super.notifyLocationUpdate(locations);
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0084\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0014\u0010\u0007\u001a\u00020\u00062\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/mapbox/common/location/BaseDeviceLocationProvider$LocationCancelable;", "Lcom/mapbox/common/Cancelable;", "(Lcom/mapbox/common/location/BaseDeviceLocationProvider;)V", "isCanceled", "Ljava/util/concurrent/atomic/AtomicBoolean;", "cancel", "", "invokeIfNotCanceled", "cb", "Lkotlin/Function0;", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    protected final class LocationCancelable implements Cancelable {
        private final AtomicBoolean isCanceled = new AtomicBoolean(false);

        public LocationCancelable() {
        }

        @Override
        public void cancel() {
            this.isCanceled.set(true);
        }

        public final void invokeIfNotCanceled(Function0<Unit> cb) {
            Intrinsics.checkNotNullParameter(cb, "cb");
            if (this.isCanceled.get()) {
                MapboxCommonLogger.INSTANCE.logW$common_release(LocationServiceImpl.TAG, "Operation to get last location was canceled");
            } else {
                cb.invoke();
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/mapbox/common/location/BaseDeviceLocationProvider$Companion;", "", "()V", "TAG", "", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
