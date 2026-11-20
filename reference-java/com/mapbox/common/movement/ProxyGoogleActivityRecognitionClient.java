package com.mapbox.common.movement;

import android.app.PendingIntent;
import android.content.Context;
import ch.qos.logback.core.CoreConstants;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.location.ActivityRecognition;
import com.google.android.gms.location.ActivityTransitionRequest;
import com.google.android.gms.tasks.Task;
import com.mapbox.common.location.FailedTask;
import com.mapbox.common.location.GoogleDeviceLocationProviderKt;
import com.mapbox.common.location.IncompatibleGooglePlayServicesActivityRecognitionVersion;
import java.lang.reflect.Method;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0000\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\nJ\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\nJ\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\nJ\u001c\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\nR\u000e\u0010\u0005\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/mapbox/common/movement/ProxyGoogleActivityRecognitionClient;", "", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "(Landroid/content/Context;)V", "googleActivityRecognitionClient", "removeActivityTransitionUpdates", "Lcom/google/android/gms/tasks/Task;", "Ljava/lang/Void;", BaseGmsClient.KEY_PENDING_INTENT, "Landroid/app/PendingIntent;", "removeActivityUpdates", "requestActivityTransitionUpdates", "activityTransitionRequest", "Lcom/google/android/gms/location/ActivityTransitionRequest;", "requestActivityUpdates", "detectionIntervalMillis", "", "callbackIntent", "Companion", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ProxyGoogleActivityRecognitionClient {

    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy<Boolean> available$delegate = LazyKt.lazy(new Function0<Boolean>() {
        @Override
        public final Boolean invoke() {
            return Boolean.valueOf(GoogleDeviceLocationProviderKt.getGooglePlayServicesHelper().isGooglePlayActivityRecognitionAvailable());
        }
    });
    private static Method removeActivityTransitionUpdates;
    private static Method removeActivityUpdates;
    private static Method requestActivityTransitionUpdates;
    private static Method requestActivityUpdates;
    private final Object googleActivityRecognitionClient;

    public ProxyGoogleActivityRecognitionClient(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        com.google.android.gms.location.ActivityRecognitionClient client = ActivityRecognition.getClient(context);
        Intrinsics.checkNotNullExpressionValue(client, "getClient(context)");
        this.googleActivityRecognitionClient = client;
    }

    public final Task<Void> requestActivityTransitionUpdates(ActivityTransitionRequest activityTransitionRequest, PendingIntent pendingIntent) {
        Intrinsics.checkNotNullParameter(activityTransitionRequest, "activityTransitionRequest");
        Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
        try {
            Method method = requestActivityTransitionUpdates;
            if (method == null) {
                Intrinsics.throwUninitializedPropertyAccessException("requestActivityTransitionUpdates");
                method = null;
            }
            Object objInvoke = method.invoke(this.googleActivityRecognitionClient, activityTransitionRequest, pendingIntent);
            Intrinsics.checkNotNull(objInvoke, "null cannot be cast to non-null type com.google.android.gms.tasks.Task<java.lang.Void>");
            return (Task) objInvoke;
        } catch (Exception e) {
            return new FailedTask(e);
        }
    }

    public final Task<Void> requestActivityUpdates(long detectionIntervalMillis, PendingIntent callbackIntent) {
        Intrinsics.checkNotNullParameter(callbackIntent, "callbackIntent");
        try {
            Method method = requestActivityUpdates;
            if (method == null) {
                Intrinsics.throwUninitializedPropertyAccessException("requestActivityUpdates");
                method = null;
            }
            Object objInvoke = method.invoke(this.googleActivityRecognitionClient, Long.valueOf(detectionIntervalMillis), callbackIntent);
            Intrinsics.checkNotNull(objInvoke, "null cannot be cast to non-null type com.google.android.gms.tasks.Task<java.lang.Void>");
            return (Task) objInvoke;
        } catch (Exception e) {
            return new FailedTask(e);
        }
    }

    public final Task<Void> removeActivityTransitionUpdates(PendingIntent pendingIntent) {
        Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
        try {
            Method method = removeActivityTransitionUpdates;
            if (method == null) {
                Intrinsics.throwUninitializedPropertyAccessException("removeActivityTransitionUpdates");
                method = null;
            }
            Object objInvoke = method.invoke(this.googleActivityRecognitionClient, pendingIntent);
            Intrinsics.checkNotNull(objInvoke, "null cannot be cast to non-null type com.google.android.gms.tasks.Task<java.lang.Void>");
            return (Task) objInvoke;
        } catch (Exception e) {
            return new FailedTask(e);
        }
    }

    public final Task<Void> removeActivityUpdates(PendingIntent pendingIntent) {
        Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
        try {
            Method method = removeActivityUpdates;
            if (method == null) {
                Intrinsics.throwUninitializedPropertyAccessException("removeActivityUpdates");
                method = null;
            }
            Object objInvoke = method.invoke(this.googleActivityRecognitionClient, pendingIntent);
            Intrinsics.checkNotNull(objInvoke, "null cannot be cast to non-null type com.google.android.gms.tasks.Task<java.lang.Void>");
            return (Task) objInvoke;
        } catch (Exception e) {
            return new FailedTask(e);
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\r\u0010\u000e\u001a\u00020\u000fH\u0000¢\u0006\u0002\b\u0010R\u001b\u0010\u0003\u001a\u00020\u00048@X\u0080\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/mapbox/common/movement/ProxyGoogleActivityRecognitionClient$Companion;", "", "()V", "available", "", "getAvailable$common_release", "()Z", "available$delegate", "Lkotlin/Lazy;", "removeActivityTransitionUpdates", "Ljava/lang/reflect/Method;", "removeActivityUpdates", "requestActivityTransitionUpdates", "requestActivityUpdates", "verifyAndCacheMethods", "", "verifyAndCacheMethods$common_release", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void verifyAndCacheMethods$common_release() throws IncompatibleGooglePlayServicesActivityRecognitionVersion {
            try {
                Class<?> cls = Class.forName(GoogleActivityRecognition.GOOGLE_ACTIVITY_RECOGNITION_CLIENT);
                Companion companion = ProxyGoogleActivityRecognitionClient.INSTANCE;
                Method method = cls.getMethod("requestActivityTransitionUpdates", ActivityTransitionRequest.class, PendingIntent.class);
                Intrinsics.checkNotNullExpressionValue(method, "getMethod(\n            \"…t::class.java\n          )");
                ProxyGoogleActivityRecognitionClient.requestActivityTransitionUpdates = method;
                Companion companion2 = ProxyGoogleActivityRecognitionClient.INSTANCE;
                Method method2 = cls.getMethod("requestActivityUpdates", Long.TYPE, PendingIntent.class);
                Intrinsics.checkNotNullExpressionValue(method2, "getMethod(\n            \"…::class.java,\n          )");
                ProxyGoogleActivityRecognitionClient.requestActivityUpdates = method2;
                Companion companion3 = ProxyGoogleActivityRecognitionClient.INSTANCE;
                Method method3 = cls.getMethod("removeActivityTransitionUpdates", PendingIntent.class);
                Intrinsics.checkNotNullExpressionValue(method3, "getMethod(\n            \"…::class.java,\n          )");
                ProxyGoogleActivityRecognitionClient.removeActivityTransitionUpdates = method3;
                Companion companion4 = ProxyGoogleActivityRecognitionClient.INSTANCE;
                Method method4 = cls.getMethod("removeActivityUpdates", PendingIntent.class);
                Intrinsics.checkNotNullExpressionValue(method4, "getMethod(\n            \"…t::class.java\n          )");
                ProxyGoogleActivityRecognitionClient.removeActivityUpdates = method4;
            } catch (ClassNotFoundException e) {
                throw new IncompatibleGooglePlayServicesActivityRecognitionVersion(e);
            } catch (NoSuchMethodException e2) {
                throw new IncompatibleGooglePlayServicesActivityRecognitionVersion(e2);
            } catch (SecurityException e3) {
                throw new IncompatibleGooglePlayServicesActivityRecognitionVersion(e3);
            }
        }

        public final boolean getAvailable$common_release() {
            return ((Boolean) ProxyGoogleActivityRecognitionClient.available$delegate.getValue()).booleanValue();
        }
    }
}
