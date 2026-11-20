package com.mapbox.common.movement;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.exifinterface.media.ExifInterface;
import ch.qos.logback.core.CoreConstants;
import com.google.android.gms.location.ActivityRecognitionResult;
import com.google.android.gms.location.ActivityTransition;
import com.google.android.gms.location.ActivityTransitionEvent;
import com.google.android.gms.location.ActivityTransitionRequest;
import com.google.android.gms.location.ActivityTransitionResult;
import com.google.android.gms.location.DetectedActivity;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.mapbox.common.MapboxCommonLogger;
import com.mapbox.common.MovementInfo;
import com.mapbox.common.MovementMode;
import com.mapbox.common.MovementModeProvider;
import com.mapbox.common.location.GoogleDeviceLocationProviderKt;
import com.mapbox.common.location.LocationServiceUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000Q\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t*\u0001\u0012\b\u0001\u0018\u0000 #2\u00020\u0001:\u0002#$B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0019\u001a\u00020\u001aH\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0018H\u0016J\b\u0010\u001e\u001a\u00020\u0015H\u0002J\b\u0010\u001f\u001a\u00020\u0015H\u0016J\u0010\u0010 \u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0018H\u0016J\b\u0010!\u001a\u00020\u001cH\u0017J\b\u0010\"\u001a\u00020\u001cH\u0017R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u0010\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/mapbox/common/movement/GoogleActivityRecognition;", "Lcom/mapbox/common/movement/ActivityRecognitionClient;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "mode", "Lcom/mapbox/common/movement/GoogleActivityRecognition$Mode;", "(Landroid/content/Context;Lcom/mapbox/common/movement/GoogleActivityRecognition$Mode;)V", "activityClient", "Lcom/mapbox/common/movement/ProxyGoogleActivityRecognitionClient;", "activityUpdatesIntentFilter", "Landroid/content/IntentFilter;", "activityUpdatesPendingIntent", "Landroid/app/PendingIntent;", "getActivityUpdatesPendingIntent", "()Landroid/app/PendingIntent;", "activityUpdatesPendingIntent$delegate", "Lkotlin/Lazy;", "broadcast", "com/mapbox/common/movement/GoogleActivityRecognition$broadcast$1", "Lcom/mapbox/common/movement/GoogleActivityRecognition$broadcast$1;", "isSubscribed", "", "observers", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Lcom/mapbox/common/movement/ActivityRecognitionClient$Observer;", "activityRecognitionPermissionName", "", "addObserver", "", "observer", "hasActivityRecognitionPermission", "isPlatformActivityRecognitionAvailable", "removeObserver", "start", "stop", "Companion", "Mode", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class GoogleActivityRecognition implements ActivityRecognitionClient {
    private static final long ACTIVITY_DETECTION_INTERVAL_MILLIS = 1000;
    public static final String ACTIVITY_UPDATES_ACTION = "com.mapbox.common.movement.action.ACTIVITY_RECOGNITION_UPDATES";
    private static final int ACTIVITY_UPDATES_CODE = 1000;
    public static final String TAG = "ActivityRecognitionObserver";
    private static final int TRANSITION_API_CONFIDENCE_SCORE = 85;
    private final ProxyGoogleActivityRecognitionClient activityClient;
    private final IntentFilter activityUpdatesIntentFilter;

    private final Lazy activityUpdatesPendingIntent;
    private final GoogleActivityRecognition$broadcast$1 broadcast;
    private final Context context;
    private boolean isSubscribed;
    private final Mode mode;
    private final CopyOnWriteArrayList<ActivityRecognitionClient.Observer> observers;

    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy<List<ActivityTransition>> TRANSITION_API_MONITORING_TYPES$delegate = LazyKt.lazy(new Function0<List<? extends ActivityTransition>>() {
        @Override
        public final List<? extends ActivityTransition> invoke() {
            List listListOf = CollectionsKt.listOf((Object[]) new Integer[]{0, 2, 8, 7, 1, 3});
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listListOf, 10));
            Iterator it = listListOf.iterator();
            while (it.hasNext()) {
                arrayList.add(new ActivityTransition.Builder().setActivityType(((Number) it.next()).intValue()).setActivityTransition(0).build());
            }
            return arrayList;
        }
    });
    public static final String GOOGLE_ACTIVITY_RECOGNITION_CLIENT = "com.google.android.gms.location.ActivityRecognitionClient";
    private static boolean googlePlayActivityRecognitionBundled = LocationServiceUtils.isOnClasspath(GOOGLE_ACTIVITY_RECOGNITION_CLIENT);

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/mapbox/common/movement/GoogleActivityRecognition$Mode;", "", "(Ljava/lang/String;I)V", "TRANSITION_API", "SAMPLING_API", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public enum Mode {
        TRANSITION_API,
        SAMPLING_API
    }

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Mode.values().length];
            try {
                iArr[Mode.TRANSITION_API.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Mode.SAMPLING_API.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public GoogleActivityRecognition(Context context, Mode mode) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mode, "mode");
        this.context = context;
        this.mode = mode;
        this.observers = new CopyOnWriteArrayList<>();
        this.activityClient = new ProxyGoogleActivityRecognitionClient(context);
        this.activityUpdatesIntentFilter = new IntentFilter(ACTIVITY_UPDATES_ACTION);
        this.activityUpdatesPendingIntent = LazyKt.lazy(new Function0<PendingIntent>() {
            {
                super(0);
            }

            @Override
            public final PendingIntent invoke() {
                int i = Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728;
                Intent intent = new Intent(GoogleActivityRecognition.ACTIVITY_UPDATES_ACTION);
                intent.setPackage(this.this$0.context.getPackageName());
                return PendingIntent.getBroadcast(this.this$0.context, 1000, intent, i);
            }
        });
        this.broadcast = new BroadcastReceiver() {

            @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
            public class WhenMappings {
                public static final int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[GoogleActivityRecognition.Mode.values().length];
                    try {
                        iArr[GoogleActivityRecognition.Mode.TRANSITION_API.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[GoogleActivityRecognition.Mode.SAMPLING_API.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            @Override
            public void onReceive(Context context2, Intent intent) {
                MovementInfo movementInfo$default;
                MovementInfo movementInfo$default2;
                Intrinsics.checkNotNullParameter(context2, "context");
                Intrinsics.checkNotNullParameter(intent, "intent");
                int i = WhenMappings.$EnumSwitchMapping$0[this.this$0.mode.ordinal()];
                if (i == 1) {
                    if (ActivityTransitionResult.hasResult(intent)) {
                        MapboxCommonLogger.INSTANCE.logD$common_release(GoogleActivityRecognition.TAG, "Activity transition result received");
                        ActivityTransitionResult activityTransitionResultExtractResult = ActivityTransitionResult.extractResult(intent);
                        if (activityTransitionResultExtractResult == null || (movementInfo$default = GoogleActivityRecognition.Companion.toMovementInfo$default(GoogleActivityRecognition.INSTANCE, activityTransitionResultExtractResult, (MovementModeProvider) null, 1, (Object) null)) == null) {
                            return;
                        }
                        Iterator it = this.this$0.observers.iterator();
                        while (it.hasNext()) {
                            ((ActivityRecognitionClient.Observer) it.next()).onMovementInfo(movementInfo$default);
                        }
                        return;
                    }
                    return;
                }
                if (i == 2 && ActivityRecognitionResult.hasResult(intent)) {
                    MapboxCommonLogger.INSTANCE.logD$common_release(GoogleActivityRecognition.TAG, "Activity recognition result received");
                    ActivityRecognitionResult activityRecognitionResultExtractResult = ActivityRecognitionResult.extractResult(intent);
                    if (activityRecognitionResultExtractResult == null || (movementInfo$default2 = GoogleActivityRecognition.Companion.toMovementInfo$default(GoogleActivityRecognition.INSTANCE, activityRecognitionResultExtractResult, (MovementModeProvider) null, 1, (Object) null)) == null) {
                        return;
                    }
                    Iterator it2 = this.this$0.observers.iterator();
                    while (it2.hasNext()) {
                        ((ActivityRecognitionClient.Observer) it2.next()).onMovementInfo(movementInfo$default2);
                    }
                }
            }
        };
    }

    public GoogleActivityRecognition(Context context, Mode mode, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? Mode.TRANSITION_API : mode);
    }

    private final PendingIntent getActivityUpdatesPendingIntent() {
        Object value = this.activityUpdatesPendingIntent.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-activityUpdatesPendingIntent>(...)");
        return (PendingIntent) value;
    }

    @Override
    public synchronized void start() {
        if (!this.isSubscribed && hasActivityRecognitionPermission()) {
            this.isSubscribed = true;
            ContextCompat.registerReceiver(this.context, this.broadcast, this.activityUpdatesIntentFilter, 2);
            int i = WhenMappings.$EnumSwitchMapping$0[this.mode.ordinal()];
            if (i == 1) {
                Companion companion = INSTANCE;
                companion.withLogs(this.activityClient.requestActivityTransitionUpdates(new ActivityTransitionRequest(companion.getTRANSITION_API_MONITORING_TYPES()), getActivityUpdatesPendingIntent()), "requestActivityTransitionUpdates");
            } else if (i == 2) {
                INSTANCE.withLogs(this.activityClient.requestActivityUpdates(1000L, getActivityUpdatesPendingIntent()), "requestActivityUpdates");
            }
            return;
        }
        MapboxCommonLogger.INSTANCE.logD$common_release(TAG, "start() skipped. isSubscribed: " + this.isSubscribed + ", has permission: " + hasActivityRecognitionPermission());
    }

    @Override
    public synchronized void stop() {
        if (this.isSubscribed && hasActivityRecognitionPermission()) {
            this.isSubscribed = false;
            this.context.unregisterReceiver(this.broadcast);
            int i = WhenMappings.$EnumSwitchMapping$0[this.mode.ordinal()];
            if (i == 1) {
                INSTANCE.withLogs(this.activityClient.removeActivityTransitionUpdates(getActivityUpdatesPendingIntent()), "removeActivityTransitionUpdates");
            } else if (i == 2) {
                INSTANCE.withLogs(this.activityClient.removeActivityUpdates(getActivityUpdatesPendingIntent()), "removeActivityUpdates");
            }
            return;
        }
        MapboxCommonLogger.INSTANCE.logD$common_release(TAG, "stop() skipped. isSubscribed: " + this.isSubscribed + ", has permission: " + hasActivityRecognitionPermission());
    }

    @Override
    public boolean isPlatformActivityRecognitionAvailable() {
        return hasActivityRecognitionPermission();
    }

    @Override
    public void addObserver(ActivityRecognitionClient.Observer observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        this.observers.add(observer);
    }

    @Override
    public void removeObserver(ActivityRecognitionClient.Observer observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        this.observers.remove(observer);
    }

    private final boolean hasActivityRecognitionPermission() {
        return ActivityCompat.checkSelfPermission(this.context, activityRecognitionPermissionName()) == 0;
    }

    private final String activityRecognitionPermissionName() {
        if (Build.VERSION.SDK_INT >= 29) {
            return "android.permission.ACTIVITY_RECOGNITION";
        }
        return "com.google.android.gms.permission.ACTIVITY_RECOGNITION";
    }

    @Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\tH\u0002J\r\u0010\u001e\u001a\u00020\u0015H\u0000¢\u0006\u0002\b\u001fJ\u001a\u0010 \u001a\u0004\u0018\u00010!*\u0004\u0018\u00010\"2\b\b\u0002\u0010#\u001a\u00020$H\u0002J\u001a\u0010 \u001a\u0004\u0018\u00010!*\u0004\u0018\u00010%2\b\b\u0002\u0010#\u001a\u00020$H\u0002J&\u0010&\u001a\b\u0012\u0004\u0012\u0002H(0'\"\u0004\b\u0000\u0010(*\b\u0012\u0004\u0012\u0002H(0'2\u0006\u0010)\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087T¢\u0006\b\n\u0000\u0012\u0004\b\u0007\u0010\u0002R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R!\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0010\u0010\u0011R$\u0010\u0014\u001a\u00020\u00158\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0016\u0010\u0002\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006*"}, d2 = {"Lcom/mapbox/common/movement/GoogleActivityRecognition$Companion;", "", "()V", "ACTIVITY_DETECTION_INTERVAL_MILLIS", "", "ACTIVITY_UPDATES_ACTION", "", "getACTIVITY_UPDATES_ACTION$annotations", "ACTIVITY_UPDATES_CODE", "", "GOOGLE_ACTIVITY_RECOGNITION_CLIENT", "TAG", "TRANSITION_API_CONFIDENCE_SCORE", "TRANSITION_API_MONITORING_TYPES", "", "Lcom/google/android/gms/location/ActivityTransition;", "getTRANSITION_API_MONITORING_TYPES", "()Ljava/util/List;", "TRANSITION_API_MONITORING_TYPES$delegate", "Lkotlin/Lazy;", "googlePlayActivityRecognitionBundled", "", "getGooglePlayActivityRecognitionBundled$common_release$annotations", "getGooglePlayActivityRecognitionBundled$common_release", "()Z", "setGooglePlayActivityRecognitionBundled$common_release", "(Z)V", "fromGmsType", "Lcom/mapbox/common/MovementMode;", "activityType", "isAvailable", "isAvailable$common_release", "toMovementInfo", "Lcom/mapbox/common/MovementInfo;", "Lcom/google/android/gms/location/ActivityRecognitionResult;", "provider", "Lcom/mapbox/common/MovementModeProvider;", "Lcom/google/android/gms/location/ActivityTransitionResult;", "withLogs", "Lcom/google/android/gms/tasks/Task;", ExifInterface.GPS_DIRECTION_TRUE, "name", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void getACTIVITY_UPDATES_ACTION$annotations() {
        }

        public static void getGooglePlayActivityRecognitionBundled$common_release$annotations() {
        }

        private Companion() {
        }

        public final List<ActivityTransition> getTRANSITION_API_MONITORING_TYPES() {
            return (List) GoogleActivityRecognition.TRANSITION_API_MONITORING_TYPES$delegate.getValue();
        }

        public final boolean getGooglePlayActivityRecognitionBundled$common_release() {
            return GoogleActivityRecognition.googlePlayActivityRecognitionBundled;
        }

        public final void setGooglePlayActivityRecognitionBundled$common_release(boolean z) {
            GoogleActivityRecognition.googlePlayActivityRecognitionBundled = z;
        }

        public final boolean isAvailable$common_release() {
            return LocationServiceUtils.getGooglePlayServicesBundled() && getGooglePlayActivityRecognitionBundled$common_release() && ProxyGoogleActivityRecognitionClient.INSTANCE.getAvailable$common_release() && GoogleDeviceLocationProviderKt.getGooglePlayServicesHelper().isGooglePlayServicesReady();
        }

        static MovementInfo toMovementInfo$default(Companion companion, ActivityTransitionResult activityTransitionResult, MovementModeProvider movementModeProvider, int i, Object obj) {
            if ((i & 1) != 0) {
                movementModeProvider = MovementModeProvider.SYSTEM;
            }
            return companion.toMovementInfo(activityTransitionResult, movementModeProvider);
        }

        private final MovementInfo toMovementInfo(ActivityTransitionResult activityTransitionResult, MovementModeProvider movementModeProvider) {
            List<ActivityTransitionEvent> transitionEvents;
            Pair pair;
            if (activityTransitionResult == null || (transitionEvents = activityTransitionResult.getTransitionEvents()) == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (ActivityTransitionEvent activityTransitionEvent : transitionEvents) {
                if (activityTransitionEvent.getTransitionType() != 0) {
                } else {
                    MovementMode movementModeFromGmsType = GoogleActivityRecognition.INSTANCE.fromGmsType(activityTransitionEvent.getActivityType());
                    pair = movementModeFromGmsType != null ? TuplesKt.to(movementModeFromGmsType, 85) : null;
                    if (pair != null) {
                        arrayList.add(pair);
                    }
                }
                if (pair != null) {
                    arrayList.add(pair);
                }
            }
            return new MovementInfo(new HashMap(MapsKt.toMap(arrayList)), movementModeProvider);
        }

        static MovementInfo toMovementInfo$default(Companion companion, ActivityRecognitionResult activityRecognitionResult, MovementModeProvider movementModeProvider, int i, Object obj) {
            if ((i & 1) != 0) {
                movementModeProvider = MovementModeProvider.SYSTEM;
            }
            return companion.toMovementInfo(activityRecognitionResult, movementModeProvider);
        }

        private final MovementInfo toMovementInfo(ActivityRecognitionResult activityRecognitionResult, MovementModeProvider movementModeProvider) {
            List<DetectedActivity> probableActivities;
            if (activityRecognitionResult == null || (probableActivities = activityRecognitionResult.getProbableActivities()) == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (DetectedActivity detectedActivity : probableActivities) {
                MovementMode movementModeFromGmsType = GoogleActivityRecognition.INSTANCE.fromGmsType(detectedActivity.getType());
                Pair pair = movementModeFromGmsType != null ? TuplesKt.to(movementModeFromGmsType, Integer.valueOf(detectedActivity.getConfidence())) : null;
                if (pair != null) {
                    arrayList.add(pair);
                }
            }
            return new MovementInfo(new HashMap(MapsKt.toMap(arrayList)), movementModeProvider);
        }

        private final MovementMode fromGmsType(int activityType) {
            if (activityType == 0) {
                return MovementMode.IN_VEHICLE;
            }
            if (activityType == 1) {
                return MovementMode.CYCLING;
            }
            if (activityType == 2) {
                return MovementMode.ON_FOOT;
            }
            if (activityType == 3) {
                return MovementMode.STATIONARY;
            }
            if (activityType == 7) {
                return MovementMode.WALKING;
            }
            if (activityType != 8) {
                return null;
            }
            return MovementMode.RUNNING;
        }

        public final <T> Task<T> withLogs(Task<T> task, final String str) {
            final Function1<T, Unit> function1 = new Function1<T, Unit>() {
                {
                    super(1);
                }

                @Override
                public Unit invoke(Object obj) {
                    invoke2(obj);
                    return Unit.INSTANCE;
                }

                public final void invoke2(T t) {
                    MapboxCommonLogger.INSTANCE.logD$common_release(GoogleActivityRecognition.TAG, str + " success");
                }
            };
            Task<T> taskAddOnFailureListener = task.addOnSuccessListener(new OnSuccessListener() {
                @Override
                public final void onSuccess(Object obj) {
                    GoogleActivityRecognition.Companion.withLogs$lambda$6(function1, obj);
                }
            }).addOnFailureListener(new OnFailureListener() {
                @Override
                public final void onFailure(Exception exc) {
                    GoogleActivityRecognition.Companion.withLogs$lambda$7(str, exc);
                }
            });
            Intrinsics.checkNotNullExpressionValue(taskAddOnFailureListener, "name: String): Task<T> {…lure: $it\")\n            }");
            return taskAddOnFailureListener;
        }

        public static final void withLogs$lambda$6(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            tmp0.invoke(obj);
        }

        public static final void withLogs$lambda$7(String name, Exception it) {
            Intrinsics.checkNotNullParameter(name, "$name");
            Intrinsics.checkNotNullParameter(it, "it");
            MapboxCommonLogger.INSTANCE.logD$common_release(GoogleActivityRecognition.TAG, name + " failure: " + it);
        }
    }
}
