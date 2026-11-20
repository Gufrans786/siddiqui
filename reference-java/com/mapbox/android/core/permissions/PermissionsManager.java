package com.mapbox.android.core.permissions;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import ch.qos.logback.core.CoreConstants;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mapbox.common.MapboxCommonLogger;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u0000 \u00192\u00020\u0001:\u0002\u0018\u0019B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J)\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\u000e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011J(\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013H\u0002J#\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00112\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002¢\u0006\u0002\u0010\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/mapbox/android/core/permissions/PermissionsManager;", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/mapbox/android/core/permissions/PermissionsListener;", "(Lcom/mapbox/android/core/permissions/PermissionsListener;)V", "onRequestPermissionsResult", "", "requestCode", "", "permissions", "", "", "grantResults", "", "(I[Ljava/lang/String;[I)V", "requestLocationPermissions", "activity", "Landroid/app/Activity;", "requestFineLocation", "", "requestCoarseLocation", "requestBackgroundLocation", "requestPermissions", "(Landroid/app/Activity;[Ljava/lang/String;)V", "AccuracyAuthorization", "Companion", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class PermissionsManager {
    private static final String BACKGROUND_LOCATION_PERMISSION = "android.permission.ACCESS_BACKGROUND_LOCATION";
    private static final String COARSE_LOCATION_PERMISSION = "android.permission.ACCESS_COARSE_LOCATION";

    public static final Companion INSTANCE = new Companion(null);
    private static final String FINE_LOCATION_PERMISSION = "android.permission.ACCESS_FINE_LOCATION";
    private static final int REQUEST_PERMISSIONS_CODE = 0;
    private static final String TAG = "PermissionsManager";
    private final PermissionsListener listener;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/mapbox/android/core/permissions/PermissionsManager$AccuracyAuthorization;", "", "(Ljava/lang/String;I)V", "NONE", "PRECISE", "APPROXIMATE", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public enum AccuracyAuthorization {
        NONE,
        PRECISE,
        APPROXIMATE
    }

    @JvmStatic
    public static final AccuracyAuthorization accuracyAuthorization(Context context) {
        return INSTANCE.accuracyAuthorization(context);
    }

    @JvmStatic
    public static final boolean areLocationPermissionsGranted(Context context) {
        return INSTANCE.areLocationPermissionsGranted(context);
    }

    @JvmStatic
    public static final boolean isBackgroundLocationPermissionGranted(Context context) {
        return INSTANCE.isBackgroundLocationPermissionGranted(context);
    }

    public PermissionsManager(PermissionsListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    public final void requestLocationPermissions(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        try {
            String[] strArr = activity.getPackageManager().getPackageInfo(activity.getPackageName(), 4096).requestedPermissions;
            if (strArr != null) {
                boolean zContains = ArraysKt.contains(strArr, "android.permission.ACCESS_BACKGROUND_LOCATION");
                boolean zContains2 = ArraysKt.contains(strArr, "android.permission.ACCESS_FINE_LOCATION");
                boolean zContains3 = ArraysKt.contains(strArr, "android.permission.ACCESS_COARSE_LOCATION");
                if (!zContains2 && !zContains3) {
                    MapboxCommonLogger.INSTANCE.logW$common_release(TAG, "Location permissions are missing");
                    return;
                }
                requestLocationPermissions(activity, zContains2, zContains3, zContains);
            }
        } catch (Exception e) {
            MapboxCommonLogger mapboxCommonLogger = MapboxCommonLogger.INSTANCE;
            String message = e.getMessage();
            Intrinsics.checkNotNull(message);
            mapboxCommonLogger.logW$common_release(TAG, message);
        }
    }

    private final void requestLocationPermissions(Activity activity, boolean requestFineLocation, boolean requestCoarseLocation, boolean requestBackgroundLocation) {
        ArrayList arrayList = new ArrayList();
        if (requestFineLocation) {
            arrayList.add("android.permission.ACCESS_FINE_LOCATION");
        }
        if (requestCoarseLocation) {
            arrayList.add("android.permission.ACCESS_COARSE_LOCATION");
        }
        if (Build.VERSION.SDK_INT >= 29 && requestBackgroundLocation) {
            arrayList.add("android.permission.ACCESS_BACKGROUND_LOCATION");
        }
        Object[] array = arrayList.toArray(new String[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        requestPermissions(activity, (String[]) array);
    }

    public final void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        if (requestCode == 0) {
            int length = permissions.length;
            boolean z = false;
            for (int i = 0; i < length; i++) {
                String str = permissions[i];
                if (Intrinsics.areEqual(str, "android.permission.ACCESS_FINE_LOCATION") || Intrinsics.areEqual(str, "android.permission.ACCESS_COARSE_LOCATION")) {
                    z = z || grantResults[i] == 0;
                }
            }
            this.listener.onPermissionResult(z);
        }
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0007J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\rH\u0007J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\rH\u0007J\u0010\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\rH\u0002J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\rH\u0002J\u0018\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/mapbox/android/core/permissions/PermissionsManager$Companion;", "", "()V", "BACKGROUND_LOCATION_PERMISSION", "", "COARSE_LOCATION_PERMISSION", "FINE_LOCATION_PERMISSION", "REQUEST_PERMISSIONS_CODE", "", "TAG", "accuracyAuthorization", "Lcom/mapbox/android/core/permissions/PermissionsManager$AccuracyAuthorization;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "areLocationPermissionsGranted", "", "isBackgroundLocationPermissionGranted", "isCoarseLocationPermissionGranted", "isFineLocationPermissionGranted", "isPermissionGranted", "permission", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private final boolean isPermissionGranted(Context context, String permission) {
            return ContextCompat.checkSelfPermission(context, permission) == 0;
        }

        private final boolean isCoarseLocationPermissionGranted(Context context) {
            return isPermissionGranted(context, "android.permission.ACCESS_COARSE_LOCATION");
        }

        private final boolean isFineLocationPermissionGranted(Context context) {
            return isPermissionGranted(context, "android.permission.ACCESS_FINE_LOCATION");
        }

        @JvmStatic
        public final boolean isBackgroundLocationPermissionGranted(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (Build.VERSION.SDK_INT >= 29) {
                return isPermissionGranted(context, "android.permission.ACCESS_BACKGROUND_LOCATION");
            }
            return areLocationPermissionsGranted(context);
        }

        @JvmStatic
        public final boolean areLocationPermissionsGranted(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return isCoarseLocationPermissionGranted(context) || isFineLocationPermissionGranted(context);
        }

        @JvmStatic
        public final AccuracyAuthorization accuracyAuthorization(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (isFineLocationPermissionGranted(context)) {
                return AccuracyAuthorization.PRECISE;
            }
            if (isCoarseLocationPermissionGranted(context)) {
                return AccuracyAuthorization.APPROXIMATE;
            }
            return AccuracyAuthorization.NONE;
        }
    }

    private final void requestPermissions(Activity activity, String[] permissions) {
        ArrayList arrayList = new ArrayList();
        for (String str : permissions) {
            if (ActivityCompat.shouldShowRequestPermissionRationale(activity, str)) {
                arrayList.add(str);
            }
        }
        ArrayList arrayList2 = arrayList;
        if (!arrayList2.isEmpty()) {
            this.listener.onExplanationNeeded(arrayList2);
        }
        ActivityCompat.requestPermissions(activity, permissions, 0);
    }
}
