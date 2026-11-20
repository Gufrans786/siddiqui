package com.mapbox.common.location;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.HandlerThread;
import android.os.Looper;
import ch.qos.logback.core.CoreConstants;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.mapbox.bindgen.Expected;
import com.mapbox.common.Cancelable;
import com.mapbox.common.FeatureTelemetryCounter;
import com.mapbox.common.MapboxCommonLogger;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

@Metadata(d1 = {"\u0000o\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0012\b\u0000\u0018\u0000 .2\u00020\u0001:\u0001.B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\n\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0002J\b\u0010\u001a\u001a\u00020\u001bH\u0015J\b\u0010\u001c\u001a\u00020\u001bH\u0014J\u0016\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001e2\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0016J\n\u0010&\u001a\u0004\u0018\u00010'H\u0016J\b\u0010(\u001a\u00020\u001bH\u0002J\u0010\u0010)\u001a\u00020\u001b2\u0006\u0010*\u001a\u00020+H\u0016J\u0010\u0010,\u001a\u00020\u001b2\u0006\u0010*\u001a\u00020+H\u0016J\b\u0010-\u001a\u00020'H\u0016R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0010\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u0015X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006/"}, d2 = {"Lcom/mapbox/common/location/GoogleDeviceLocationProvider;", "Lcom/mapbox/common/location/BaseDeviceLocationProvider;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "request", "Lcom/mapbox/common/location/LocationProviderRequest;", "(Landroid/content/Context;Lcom/mapbox/common/location/LocationProviderRequest;)V", "fusedLocationClientHandlerThread", "Landroid/os/HandlerThread;", "fusedLocationProviderClient", "Lcom/mapbox/common/location/ProxyGoogleFusedLocationProviderClient;", "getFusedLocationProviderClient$annotations", "()V", "getFusedLocationProviderClient", "()Lcom/mapbox/common/location/ProxyGoogleFusedLocationProviderClient;", "setFusedLocationProviderClient", "(Lcom/mapbox/common/location/ProxyGoogleFusedLocationProviderClient;)V", "locationCallback", "com/mapbox/common/location/GoogleDeviceLocationProvider$locationCallback$1", "Lcom/mapbox/common/location/GoogleDeviceLocationProvider$locationCallback$1;", "persistentId", "", "getPersistentId", "()I", "createFusedLocationClientHandler", "Landroid/os/Looper;", "doStart", "", "doStop", "extractResult", "", "Lcom/mapbox/common/location/Location;", "intent", "Landroid/content/Intent;", "getLastLocation", "Lcom/mapbox/common/Cancelable;", "callback", "Lcom/mapbox/common/location/GetLocationCallback;", "getName", "", "quitFusedLocationClientHandler", "removeLocationUpdates", BaseGmsClient.KEY_PENDING_INTENT, "Landroid/app/PendingIntent;", "requestLocationUpdates", "toString", "Companion", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class GoogleDeviceLocationProvider extends BaseDeviceLocationProvider {

    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "GoogleDeviceLocationProvider";
    private HandlerThread fusedLocationClientHandlerThread;
    private ProxyGoogleFusedLocationProviderClient fusedLocationProviderClient;
    private final GoogleDeviceLocationProvider$locationCallback$1 locationCallback;
    private final int persistentId;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;
        public static final int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[PermissionStatus.values().length];
            try {
                iArr[PermissionStatus.FOREGROUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PermissionStatus.GRANTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PermissionStatus.BACKGROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PermissionStatus.DENIED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[BaseDeviceLocationProvider.DeviceLocationProviderMode.values().length];
            try {
                iArr2[BaseDeviceLocationProvider.DeviceLocationProviderMode.CALLBACK.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[BaseDeviceLocationProvider.DeviceLocationProviderMode.PENDING_INTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[BaseDeviceLocationProvider.DeviceLocationProviderMode.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public static void getFusedLocationProviderClient$annotations() {
    }

    public GoogleDeviceLocationProvider(Context context, LocationProviderRequest locationProviderRequest) {
        super(context, locationProviderRequest);
        Intrinsics.checkNotNullParameter(context, "context");
        this.fusedLocationProviderClient = new ProxyGoogleFusedLocationProviderClient(context);
        this.locationCallback = new LocationCallback() {
            @Override
            public void onLocationResult(LocationResult result) {
                Intrinsics.checkNotNullParameter(result, "result");
                GoogleDeviceLocationProvider googleDeviceLocationProvider = this.this$0;
                List<android.location.Location> locations = result.getLocations();
                Intrinsics.checkNotNullExpressionValue(locations, "result.locations");
                List<android.location.Location> list = locations;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                for (android.location.Location it : list) {
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    arrayList.add(LocationServiceUtils.toCommonLocation(it));
                }
                googleDeviceLocationProvider.notifyLocationUpdate(arrayList);
            }
        };
        this.persistentId = Objects.hash(DeviceLocationProviderType.GOOGLE_PLAY_SERVICES.name(), String.valueOf(locationProviderRequest));
    }

    public final ProxyGoogleFusedLocationProviderClient getFusedLocationProviderClient() {
        return this.fusedLocationProviderClient;
    }

    public final void setFusedLocationProviderClient(ProxyGoogleFusedLocationProviderClient proxyGoogleFusedLocationProviderClient) {
        Intrinsics.checkNotNullParameter(proxyGoogleFusedLocationProviderClient, "<set-?>");
        this.fusedLocationProviderClient = proxyGoogleFusedLocationProviderClient;
    }

    @Override
    public int getPersistentId() {
        return this.persistentId;
    }

    private final Looper createFusedLocationClientHandler() {
        HandlerThread handlerThread = new HandlerThread("fusedLocationClientHandlerThread");
        this.fusedLocationClientHandlerThread = handlerThread;
        handlerThread.start();
        HandlerThread handlerThread2 = this.fusedLocationClientHandlerThread;
        if (handlerThread2 != null) {
            return handlerThread2.getLooper();
        }
        return null;
    }

    public final void quitFusedLocationClientHandler() {
        HandlerThread handlerThread = this.fusedLocationClientHandlerThread;
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
    }

    @Override
    protected synchronized void doStart() {
        LocationRequest locationRequest;
        FailedTask failedTaskRequestLocationUpdates;
        Expected<LocationError, LocationRequest> locationRequest2;
        LocationProviderRequest request = getRequest();
        if (request == null || (locationRequest2 = LocationProviderSettingsExtKt.toLocationRequest(request)) == null || (locationRequest = locationRequest2.getValue()) == null) {
            locationRequest = LocationRequest.create();
        }
        final PermissionStatus permissionStatus = LocationServiceUtils.getPermissionStatus(getContext());
        MapboxCommonLogger.INSTANCE.logD$common_release(TAG, "Permission status: " + permissionStatus);
        int i = WhenMappings.$EnumSwitchMapping$0[permissionStatus.ordinal()];
        if (i == 1 || i == 2) {
            setCurrentMode(BaseDeviceLocationProvider.DeviceLocationProviderMode.CALLBACK);
            ProxyGoogleFusedLocationProviderClient proxyGoogleFusedLocationProviderClient = this.fusedLocationProviderClient;
            Intrinsics.checkNotNullExpressionValue(locationRequest, "locationRequest");
            failedTaskRequestLocationUpdates = proxyGoogleFusedLocationProviderClient.requestLocationUpdates(locationRequest, this.locationCallback, createFusedLocationClientHandler());
        } else if (i == 3) {
            setCurrentMode(BaseDeviceLocationProvider.DeviceLocationProviderMode.PENDING_INTENT);
            ProxyGoogleFusedLocationProviderClient proxyGoogleFusedLocationProviderClient2 = this.fusedLocationProviderClient;
            Intrinsics.checkNotNullExpressionValue(locationRequest, "locationRequest");
            failedTaskRequestLocationUpdates = proxyGoogleFusedLocationProviderClient2.requestLocationUpdates(locationRequest, getLocationUpdatePendingIntent());
        } else {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            failedTaskRequestLocationUpdates = new FailedTask(new Exception("Cannot start Google device location provider: permission denied"));
        }
        if (failedTaskRequestLocationUpdates != null) {
            final Function1<Void, Unit> function1 = new Function1<Void, Unit>() {
                {
                    super(1);
                }

                @Override
                public Unit invoke(Void r1) {
                    invoke2(r1);
                    return Unit.INSTANCE;
                }

                public final void invoke2(Void r4) {
                    FeatureTelemetryCounter.create("common/location/googleProviderStarted").increment();
                    MapboxCommonLogger.INSTANCE.logD$common_release(GoogleDeviceLocationProvider.TAG, "Location request succeeded state=" + GoogleDeviceLocationProvider.this.state + " currentMode=" + GoogleDeviceLocationProvider.this.getCurrentMode());
                    if (GoogleDeviceLocationProvider.this.state == BaseDeviceLocationProvider.DeviceLocationProviderState.STARTING) {
                        GoogleDeviceLocationProvider.this.state = BaseDeviceLocationProvider.DeviceLocationProviderState.STARTED;
                        MapboxCommonLogger.INSTANCE.logD$common_release(GoogleDeviceLocationProvider.TAG, "Started location updates with mode " + GoogleDeviceLocationProvider.this.getCurrentMode());
                    } else {
                        MapboxCommonLogger.INSTANCE.logW$common_release(GoogleDeviceLocationProvider.TAG, "Skipped start state change: current state is " + GoogleDeviceLocationProvider.this.state);
                    }
                    LocationUpdatesReceiver.INSTANCE.addDeviceLocationProvider$common_release(GoogleDeviceLocationProvider.this.getPersistentId(), GoogleDeviceLocationProvider.this);
                }
            };
            Task<Void> taskAddOnSuccessListener = failedTaskRequestLocationUpdates.addOnSuccessListener(new OnSuccessListener() {
                @Override
                public final void onSuccess(Object obj) {
                    GoogleDeviceLocationProvider.doStart$lambda$0(function1, obj);
                }
            });
            if (taskAddOnSuccessListener != null) {
                taskAddOnSuccessListener.addOnFailureListener(new OnFailureListener() {
                    @Override
                    public final void onFailure(Exception exc) {
                        GoogleDeviceLocationProvider.doStart$lambda$1(permissionStatus, this, exc);
                    }
                });
            }
        }
    }

    public static final void doStart$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public static final void doStart$lambda$1(PermissionStatus permission, GoogleDeviceLocationProvider this$0, Exception exception) {
        Intrinsics.checkNotNullParameter(permission, "$permission");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(exception, "exception");
        MapboxCommonLogger.INSTANCE.logE$common_release(TAG, "Failed to start: " + exception);
        if (permission == PermissionStatus.DENIED) {
            FeatureTelemetryCounter.create("common/location/googleProviderNoPermissions").increment();
        } else {
            FeatureTelemetryCounter.create("common/location/googleProviderFailed").increment();
        }
        this$0.state = BaseDeviceLocationProvider.DeviceLocationProviderState.STOPPED;
        this$0.setCurrentMode(BaseDeviceLocationProvider.DeviceLocationProviderMode.NONE);
        if (this$0.getCurrentMode() == BaseDeviceLocationProvider.DeviceLocationProviderMode.CALLBACK) {
            this$0.quitFusedLocationClientHandler();
        }
    }

    @Override
    protected synchronized void doStop() {
        FailedTask failedTaskRemoveLocationUpdates;
        MapboxCommonLogger.INSTANCE.logD$common_release(TAG, "doStop() called with currentMode=" + getCurrentMode() + " currentState=" + this.state);
        int i = WhenMappings.$EnumSwitchMapping$1[getCurrentMode().ordinal()];
        if (i == 1) {
            failedTaskRemoveLocationUpdates = this.fusedLocationProviderClient.removeLocationUpdates(this.locationCallback);
        } else if (i == 2) {
            failedTaskRemoveLocationUpdates = this.fusedLocationProviderClient.removeLocationUpdates(getLocationUpdatePendingIntent());
        } else {
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            failedTaskRemoveLocationUpdates = new FailedTask(new Exception("Cannot stop Google device location provider. Invalid mode: " + getCurrentMode()));
        }
        if (failedTaskRemoveLocationUpdates != null) {
            final Function1<Void, Unit> function1 = new Function1<Void, Unit>() {
                {
                    super(1);
                }

                @Override
                public Unit invoke(Void r1) {
                    invoke2(r1);
                    return Unit.INSTANCE;
                }

                public final void invoke2(Void r4) {
                    MapboxCommonLogger.INSTANCE.logD$common_release(GoogleDeviceLocationProvider.TAG, "Location cancellation succeeded state=" + GoogleDeviceLocationProvider.this.state + " currentMode=" + GoogleDeviceLocationProvider.this.getCurrentMode());
                    if (GoogleDeviceLocationProvider.this.state == BaseDeviceLocationProvider.DeviceLocationProviderState.STOPPING) {
                        GoogleDeviceLocationProvider.this.quitFusedLocationClientHandler();
                        GoogleDeviceLocationProvider.this.setCurrentMode(BaseDeviceLocationProvider.DeviceLocationProviderMode.NONE);
                        GoogleDeviceLocationProvider.this.state = BaseDeviceLocationProvider.DeviceLocationProviderState.STOPPED;
                    } else {
                        MapboxCommonLogger.INSTANCE.logD$common_release(GoogleDeviceLocationProvider.TAG, "Skipped stop state change: current state is " + GoogleDeviceLocationProvider.this.state);
                    }
                    LocationUpdatesReceiver.INSTANCE.removeDeviceLocationProvider$common_release(GoogleDeviceLocationProvider.this.getPersistentId());
                }
            };
            Task<Void> taskAddOnSuccessListener = failedTaskRemoveLocationUpdates.addOnSuccessListener(new OnSuccessListener() {
                @Override
                public final void onSuccess(Object obj) {
                    GoogleDeviceLocationProvider.doStop$lambda$2(function1, obj);
                }
            });
            if (taskAddOnSuccessListener != null) {
                taskAddOnSuccessListener.addOnFailureListener(new OnFailureListener() {
                    @Override
                    public final void onFailure(Exception exc) {
                        GoogleDeviceLocationProvider.doStop$lambda$3(this.f$0, exc);
                    }
                });
            }
        }
    }

    public static final void doStop$lambda$2(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public static final void doStop$lambda$3(GoogleDeviceLocationProvider this$0, Exception exception) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(exception, "exception");
        MapboxCommonLogger.INSTANCE.logE$common_release(TAG, "Failed to stop: " + exception);
        this$0.quitFusedLocationClientHandler();
    }

    @Override
    public List<Location> extractResult(Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        LocationResult locationResultExtractResult = LocationResult.extractResult(intent);
        if (locationResultExtractResult != null) {
            List<android.location.Location> locations = locationResultExtractResult.getLocations();
            Intrinsics.checkNotNullExpressionValue(locations, "locationResult.locations");
            List<android.location.Location> list = locations;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            for (android.location.Location location : list) {
                Intrinsics.checkNotNullExpressionValue(location, "location");
                arrayList.add(LocationServiceUtils.toCommonLocation(location));
            }
            return arrayList;
        }
        return CollectionsKt.emptyList();
    }

    @Override
    public Cancelable getLastLocation(final GetLocationCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        final BaseDeviceLocationProvider.LocationCancelable locationCancelable = new BaseDeviceLocationProvider.LocationCancelable();
        Task<android.location.Location> lastLocation = this.fusedLocationProviderClient.getLastLocation();
        if (lastLocation != null) {
            lastLocation.addOnCompleteListener(new OnCompleteListener() {
                @Override
                public final void onComplete(Task task) {
                    GoogleDeviceLocationProvider.getLastLocation$lambda$6(locationCancelable, callback, task);
                }
            });
        }
        return locationCancelable;
    }

    public static final void getLastLocation$lambda$6(BaseDeviceLocationProvider.LocationCancelable cancelable, GetLocationCallback callback, Task it) {
        Intrinsics.checkNotNullParameter(cancelable, "$cancelable");
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(it, "it");
        cancelable.invokeIfNotCanceled(new GoogleDeviceLocationProvider$getLastLocation$1$1(it, cancelable, callback));
    }

    @Override
    public void requestLocationUpdates(PendingIntent pendingIntent) {
        LocationRequest locationRequest;
        Expected<LocationError, LocationRequest> locationRequest2;
        Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
        LocationProviderRequest request = getRequest();
        if (request == null || (locationRequest2 = LocationProviderSettingsExtKt.toLocationRequest(request)) == null || (locationRequest = locationRequest2.getValue()) == null) {
            locationRequest = LocationRequest.create();
        }
        ProxyGoogleFusedLocationProviderClient proxyGoogleFusedLocationProviderClient = this.fusedLocationProviderClient;
        Intrinsics.checkNotNullExpressionValue(locationRequest, "locationRequest");
        Task<Void> taskRequestLocationUpdates = proxyGoogleFusedLocationProviderClient.requestLocationUpdates(locationRequest, pendingIntent);
        if (taskRequestLocationUpdates != null) {
            final C07781 c07781 = new Function1<Void, Unit>() {
                @Override
                public Unit invoke(Void r1) {
                    invoke2(r1);
                    return Unit.INSTANCE;
                }

                public final void invoke2(Void r3) {
                    MapboxCommonLogger.INSTANCE.logD$common_release(GoogleDeviceLocationProvider.TAG, "Location update requested");
                }
            };
            Task<Void> taskAddOnSuccessListener = taskRequestLocationUpdates.addOnSuccessListener(new OnSuccessListener() {
                @Override
                public final void onSuccess(Object obj) {
                    GoogleDeviceLocationProvider.requestLocationUpdates$lambda$7(c07781, obj);
                }
            });
            if (taskAddOnSuccessListener != null) {
                taskAddOnSuccessListener.addOnFailureListener(new OnFailureListener() {
                    @Override
                    public final void onFailure(Exception exc) {
                        GoogleDeviceLocationProvider.requestLocationUpdates$lambda$8(exc);
                    }
                });
            }
        }
    }

    public static final void requestLocationUpdates$lambda$7(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public static final void requestLocationUpdates$lambda$8(Exception exception) {
        Intrinsics.checkNotNullParameter(exception, "exception");
        MapboxCommonLogger.INSTANCE.logE$common_release(TAG, "Failed to request location updates: " + exception);
    }

    @Override
    public void removeLocationUpdates(PendingIntent pendingIntent) {
        Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
        Task<Void> taskRemoveLocationUpdates = this.fusedLocationProviderClient.removeLocationUpdates(pendingIntent);
        if (taskRemoveLocationUpdates != null) {
            final C07771 c07771 = new Function1<Void, Unit>() {
                @Override
                public Unit invoke(Void r1) {
                    invoke2(r1);
                    return Unit.INSTANCE;
                }

                public final void invoke2(Void r3) {
                    MapboxCommonLogger.INSTANCE.logD$common_release(GoogleDeviceLocationProvider.TAG, "Location update removed");
                }
            };
            Task<Void> taskAddOnSuccessListener = taskRemoveLocationUpdates.addOnSuccessListener(new OnSuccessListener() {
                @Override
                public final void onSuccess(Object obj) {
                    GoogleDeviceLocationProvider.removeLocationUpdates$lambda$9(c07771, obj);
                }
            });
            if (taskAddOnSuccessListener != null) {
                taskAddOnSuccessListener.addOnFailureListener(new OnFailureListener() {
                    @Override
                    public final void onFailure(Exception exc) {
                        GoogleDeviceLocationProvider.removeLocationUpdates$lambda$10(exc);
                    }
                });
            }
        }
    }

    public static final void removeLocationUpdates$lambda$9(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public static final void removeLocationUpdates$lambda$10(Exception exception) {
        Intrinsics.checkNotNullParameter(exception, "exception");
        MapboxCommonLogger.INSTANCE.logE$common_release(TAG, "Failed to remove location updates: " + exception);
    }

    @Override
    public String getName() {
        return "mapbox-google";
    }

    public String toString() {
        return "GoogleDeviceLocationProvider(" + getPersistentId() + "): [request: " + getRequest() + AbstractJsonLexerKt.END_LIST;
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/mapbox/common/location/GoogleDeviceLocationProvider$Companion;", "", "()V", "TAG", "", "isAvailable", "", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isAvailable() throws IncompatibleGooglePlayServicesLocationVersion {
            return LocationServiceUtils.getGooglePlayServicesBundled() && ProxyGoogleFusedLocationProviderClient.INSTANCE.getAvailable$common_release() && GoogleDeviceLocationProviderKt.getGooglePlayServicesHelper().isGooglePlayServicesReady();
        }
    }
}
