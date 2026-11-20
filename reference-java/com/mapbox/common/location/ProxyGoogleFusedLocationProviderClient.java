package com.mapbox.common.location;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Looper;
import ch.qos.logback.core.CoreConstants;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.tasks.Task;
import com.mapbox.common.FeatureTelemetryCounter;
import com.mapbox.common.MapboxCommonLogger;
import com.mapbox.common.movement.GoogleActivityRecognition;
import java.lang.reflect.Method;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rJ\u0016\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\r2\u0006\u0010\u0011\u001a\u00020\u0012J\u0016\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\r2\u0006\u0010\u0013\u001a\u00020\u0014J\u001e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\r2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u0012J(\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\r2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019R$\u0010\u0005\u001a\u00020\u00018\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u001b"}, d2 = {"Lcom/mapbox/common/location/ProxyGoogleFusedLocationProviderClient;", "", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "(Landroid/content/Context;)V", "googleFusedLocationProviderClient", "getGoogleFusedLocationProviderClient$annotations", "()V", "getGoogleFusedLocationProviderClient", "()Ljava/lang/Object;", "setGoogleFusedLocationProviderClient", "(Ljava/lang/Object;)V", "getLastLocation", "Lcom/google/android/gms/tasks/Task;", "Landroid/location/Location;", "removeLocationUpdates", "Ljava/lang/Void;", BaseGmsClient.KEY_PENDING_INTENT, "Landroid/app/PendingIntent;", "callback", "Lcom/google/android/gms/location/LocationCallback;", "requestLocationUpdates", "request", "Lcom/google/android/gms/location/LocationRequest;", "looper", "Landroid/os/Looper;", "Companion", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ProxyGoogleFusedLocationProviderClient {
    private static final String GOOGLE_FUSED_LOCATION_PROVIDER_CLIENT = "com.google.android.gms.location.FusedLocationProviderClient";
    private static Method getLastLocation;
    public static Method removeLocationUpdatesCallback;
    public static Method removeLocationUpdatesPendingIntent;
    public static Method requestLocationUpdatesCallback;
    public static Method requestLocationUpdatesPendingIntent;
    private Object googleFusedLocationProviderClient;

    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy<Boolean> available$delegate = LazyKt.lazy(new Function0<Boolean>() {
        @Override
        public final Boolean invoke() {
            return Boolean.valueOf(GoogleDeviceLocationProviderKt.getGooglePlayServicesHelper().isGooglePlayServicesLocationAvailable());
        }
    });

    public static void getGoogleFusedLocationProviderClient$annotations() {
    }

    public ProxyGoogleFusedLocationProviderClient(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        FusedLocationProviderClient fusedLocationProviderClient = LocationServices.getFusedLocationProviderClient(context);
        Intrinsics.checkNotNullExpressionValue(fusedLocationProviderClient, "getFusedLocationProviderClient(context)");
        this.googleFusedLocationProviderClient = fusedLocationProviderClient;
    }

    public final Object getGoogleFusedLocationProviderClient() {
        return this.googleFusedLocationProviderClient;
    }

    public final void setGoogleFusedLocationProviderClient(Object obj) {
        Intrinsics.checkNotNullParameter(obj, "<set-?>");
        this.googleFusedLocationProviderClient = obj;
    }

    public final Task<Void> requestLocationUpdates(LocationRequest request, LocationCallback callback, Looper looper) throws IllegalStateException {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(callback, "callback");
        try {
            return (Task) INSTANCE.getRequestLocationUpdatesCallback().invoke(this.googleFusedLocationProviderClient, request, callback, looper);
        } catch (Exception e) {
            return new FailedTask(e);
        }
    }

    public final Task<Void> requestLocationUpdates(LocationRequest request, PendingIntent pendingIntent) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
        try {
            return (Task) INSTANCE.getRequestLocationUpdatesPendingIntent().invoke(this.googleFusedLocationProviderClient, request, pendingIntent);
        } catch (Exception e) {
            return new FailedTask(e);
        }
    }

    public final Task<Void> removeLocationUpdates(LocationCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        try {
            return (Task) INSTANCE.getRemoveLocationUpdatesCallback().invoke(this.googleFusedLocationProviderClient, callback);
        } catch (Exception e) {
            return new FailedTask(e);
        }
    }

    public final Task<Void> removeLocationUpdates(PendingIntent pendingIntent) {
        Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
        try {
            return (Task) INSTANCE.getRemoveLocationUpdatesPendingIntent().invoke(this.googleFusedLocationProviderClient, pendingIntent);
        } catch (Exception e) {
            return new FailedTask(e);
        }
    }

    public final Task<android.location.Location> getLastLocation() {
        try {
            Method method = getLastLocation;
            if (method == null) {
                Intrinsics.throwUninitializedPropertyAccessException("getLastLocation");
                method = null;
            }
            return (Task) method.invoke(this.googleFusedLocationProviderClient, new Object[0]);
        } catch (Exception e) {
            return new FailedTask(e);
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0015\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\r\u0010\u001f\u001a\u00020\u0006H\u0000¢\u0006\u0002\b R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068@X\u0080\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R$\u0010\r\u001a\u00020\f8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u000e\u0010\u0002\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R$\u0010\u0013\u001a\u00020\f8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0014\u0010\u0002\u001a\u0004\b\u0015\u0010\u0010\"\u0004\b\u0016\u0010\u0012R$\u0010\u0017\u001a\u00020\f8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0018\u0010\u0002\u001a\u0004\b\u0019\u0010\u0010\"\u0004\b\u001a\u0010\u0012R$\u0010\u001b\u001a\u00020\f8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u001c\u0010\u0002\u001a\u0004\b\u001d\u0010\u0010\"\u0004\b\u001e\u0010\u0012¨\u0006!"}, d2 = {"Lcom/mapbox/common/location/ProxyGoogleFusedLocationProviderClient$Companion;", "", "()V", "GOOGLE_FUSED_LOCATION_PROVIDER_CLIENT", "", "available", "", "getAvailable$common_release", "()Z", "available$delegate", "Lkotlin/Lazy;", "getLastLocation", "Ljava/lang/reflect/Method;", "removeLocationUpdatesCallback", "getRemoveLocationUpdatesCallback$annotations", "getRemoveLocationUpdatesCallback", "()Ljava/lang/reflect/Method;", "setRemoveLocationUpdatesCallback", "(Ljava/lang/reflect/Method;)V", "removeLocationUpdatesPendingIntent", "getRemoveLocationUpdatesPendingIntent$annotations", "getRemoveLocationUpdatesPendingIntent", "setRemoveLocationUpdatesPendingIntent", "requestLocationUpdatesCallback", "getRequestLocationUpdatesCallback$annotations", "getRequestLocationUpdatesCallback", "setRequestLocationUpdatesCallback", "requestLocationUpdatesPendingIntent", "getRequestLocationUpdatesPendingIntent$annotations", "getRequestLocationUpdatesPendingIntent", "setRequestLocationUpdatesPendingIntent", "verifyAndCacheMethods", "verifyAndCacheMethods$common_release", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void getRemoveLocationUpdatesCallback$annotations() {
        }

        public static void getRemoveLocationUpdatesPendingIntent$annotations() {
        }

        public static void getRequestLocationUpdatesCallback$annotations() {
        }

        public static void getRequestLocationUpdatesPendingIntent$annotations() {
        }

        private Companion() {
        }

        public final Method getRequestLocationUpdatesCallback() {
            Method method = ProxyGoogleFusedLocationProviderClient.requestLocationUpdatesCallback;
            if (method != null) {
                return method;
            }
            Intrinsics.throwUninitializedPropertyAccessException("requestLocationUpdatesCallback");
            return null;
        }

        public final void setRequestLocationUpdatesCallback(Method method) {
            Intrinsics.checkNotNullParameter(method, "<set-?>");
            ProxyGoogleFusedLocationProviderClient.requestLocationUpdatesCallback = method;
        }

        public final Method getRequestLocationUpdatesPendingIntent() {
            Method method = ProxyGoogleFusedLocationProviderClient.requestLocationUpdatesPendingIntent;
            if (method != null) {
                return method;
            }
            Intrinsics.throwUninitializedPropertyAccessException("requestLocationUpdatesPendingIntent");
            return null;
        }

        public final void setRequestLocationUpdatesPendingIntent(Method method) {
            Intrinsics.checkNotNullParameter(method, "<set-?>");
            ProxyGoogleFusedLocationProviderClient.requestLocationUpdatesPendingIntent = method;
        }

        public final Method getRemoveLocationUpdatesCallback() {
            Method method = ProxyGoogleFusedLocationProviderClient.removeLocationUpdatesCallback;
            if (method != null) {
                return method;
            }
            Intrinsics.throwUninitializedPropertyAccessException("removeLocationUpdatesCallback");
            return null;
        }

        public final void setRemoveLocationUpdatesCallback(Method method) {
            Intrinsics.checkNotNullParameter(method, "<set-?>");
            ProxyGoogleFusedLocationProviderClient.removeLocationUpdatesCallback = method;
        }

        public final Method getRemoveLocationUpdatesPendingIntent() {
            Method method = ProxyGoogleFusedLocationProviderClient.removeLocationUpdatesPendingIntent;
            if (method != null) {
                return method;
            }
            Intrinsics.throwUninitializedPropertyAccessException("removeLocationUpdatesPendingIntent");
            return null;
        }

        public final void setRemoveLocationUpdatesPendingIntent(Method method) {
            Intrinsics.checkNotNullParameter(method, "<set-?>");
            ProxyGoogleFusedLocationProviderClient.removeLocationUpdatesPendingIntent = method;
        }

        public final boolean verifyAndCacheMethods$common_release() throws IncompatibleGooglePlayServicesLocationVersion {
            try {
                Class<?> cls = Class.forName(ProxyGoogleFusedLocationProviderClient.GOOGLE_FUSED_LOCATION_PROVIDER_CLIENT);
                if (cls.isInterface()) {
                    FeatureTelemetryCounter.create("common/location/googlePlay21").increment();
                } else {
                    FeatureTelemetryCounter.create("common/location/googlePlay18to20").increment();
                }
                Companion companion = ProxyGoogleFusedLocationProviderClient.INSTANCE;
                Method method = cls.getMethod("requestLocationUpdates", LocationRequest.class, LocationCallback.class, Looper.class);
                Intrinsics.checkNotNullExpressionValue(method, "getMethod(\n             …ss.java\n                )");
                companion.setRequestLocationUpdatesCallback(method);
                Companion companion2 = ProxyGoogleFusedLocationProviderClient.INSTANCE;
                Method method2 = cls.getMethod("requestLocationUpdates", LocationRequest.class, PendingIntent.class);
                Intrinsics.checkNotNullExpressionValue(method2, "getMethod(\n             …s.java,\n                )");
                companion2.setRequestLocationUpdatesPendingIntent(method2);
                Companion companion3 = ProxyGoogleFusedLocationProviderClient.INSTANCE;
                Method method3 = cls.getMethod("removeLocationUpdates", LocationCallback.class);
                Intrinsics.checkNotNullExpressionValue(method3, "getMethod(\n             …s.java,\n                )");
                companion3.setRemoveLocationUpdatesCallback(method3);
                Companion companion4 = ProxyGoogleFusedLocationProviderClient.INSTANCE;
                Method method4 = cls.getMethod("removeLocationUpdates", PendingIntent.class);
                Intrinsics.checkNotNullExpressionValue(method4, "getMethod(\n             …ss.java\n                )");
                companion4.setRemoveLocationUpdatesPendingIntent(method4);
                Companion companion5 = ProxyGoogleFusedLocationProviderClient.INSTANCE;
                Method method5 = cls.getMethod("getLastLocation", new Class[0]);
                Intrinsics.checkNotNullExpressionValue(method5, "getMethod(\"getLastLocation\")");
                ProxyGoogleFusedLocationProviderClient.getLastLocation = method5;
                return true;
            } catch (ClassNotFoundException e) {
                MapboxCommonLogger.INSTANCE.logW$common_release(GoogleActivityRecognition.TAG, "Required class not found: " + e.getMessage());
                return false;
            } catch (NoSuchMethodException e2) {
                MapboxCommonLogger.INSTANCE.logW$common_release(GoogleActivityRecognition.TAG, "Required method not found: " + e2.getMessage());
                throw new IncompatibleGooglePlayServicesLocationVersion();
            } catch (SecurityException e3) {
                MapboxCommonLogger.INSTANCE.logW$common_release(GoogleActivityRecognition.TAG, "Required method not accessible: " + e3.getMessage());
                throw new IncompatibleGooglePlayServicesLocationVersion();
            }
        }

        public final boolean getAvailable$common_release() {
            return ((Boolean) ProxyGoogleFusedLocationProviderClient.available$delegate.getValue()).booleanValue();
        }
    }
}
