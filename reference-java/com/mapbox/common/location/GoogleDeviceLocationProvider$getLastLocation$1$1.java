package com.mapbox.common.location;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.tasks.Task;
import com.mapbox.common.MapboxCommonLogger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
final class GoogleDeviceLocationProvider$getLastLocation$1$1 extends Lambda implements Function0<Unit> {
    final GetLocationCallback $callback;
    final BaseDeviceLocationProvider.LocationCancelable $cancelable;
    final Task<android.location.Location> $it;

    GoogleDeviceLocationProvider$getLastLocation$1$1(Task<android.location.Location> task, BaseDeviceLocationProvider.LocationCancelable locationCancelable, GetLocationCallback getLocationCallback) {
        super(0);
        this.$it = task;
        this.$cancelable = locationCancelable;
        this.$callback = getLocationCallback;
    }

    @Override
    public Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    public final void invoke2() {
        final android.location.Location result;
        if (this.$it.isCanceled()) {
            MapboxCommonLogger.INSTANCE.logW$common_release("GoogleDeviceLocationProvider", "The operation to get last location from GoogleFusedLocationProvider was cancelled.");
            return;
        }
        if (this.$it.isSuccessful() && (result = this.$it.getResult()) != null) {
            Handler handler = new Handler(Looper.getMainLooper());
            final BaseDeviceLocationProvider.LocationCancelable locationCancelable = this.$cancelable;
            final GetLocationCallback getLocationCallback = this.$callback;
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    GoogleDeviceLocationProvider$getLastLocation$1$1.invoke$lambda$0(locationCancelable, getLocationCallback, result);
                }
            });
            return;
        }
        Handler handler2 = new Handler(Looper.getMainLooper());
        final BaseDeviceLocationProvider.LocationCancelable locationCancelable2 = this.$cancelable;
        final GetLocationCallback getLocationCallback2 = this.$callback;
        handler2.post(new Runnable() {
            @Override
            public final void run() {
                GoogleDeviceLocationProvider$getLastLocation$1$1.invoke$lambda$1(locationCancelable2, getLocationCallback2);
            }
        });
    }

    public static final void invoke$lambda$0(BaseDeviceLocationProvider.LocationCancelable cancelable, final GetLocationCallback callback, final android.location.Location location) {
        Intrinsics.checkNotNullParameter(cancelable, "$cancelable");
        Intrinsics.checkNotNullParameter(callback, "$callback");
        cancelable.invokeIfNotCanceled(new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                GetLocationCallback getLocationCallback = callback;
                android.location.Location location2 = location;
                Intrinsics.checkNotNullExpressionValue(location2, "location");
                getLocationCallback.run(LocationServiceUtils.toCommonLocation(location2));
            }
        });
    }

    public static final void invoke$lambda$1(BaseDeviceLocationProvider.LocationCancelable cancelable, final GetLocationCallback callback) {
        Intrinsics.checkNotNullParameter(cancelable, "$cancelable");
        Intrinsics.checkNotNullParameter(callback, "$callback");
        cancelable.invokeIfNotCanceled(new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                callback.run(null);
            }
        });
    }
}
