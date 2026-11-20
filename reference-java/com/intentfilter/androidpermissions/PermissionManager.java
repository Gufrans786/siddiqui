package com.intentfilter.androidpermissions;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.core.content.ContextCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.intentfilter.androidpermissions.helpers.Logger;
import com.intentfilter.androidpermissions.helpers.VersionOrchestrator;
import com.intentfilter.androidpermissions.models.DeniedPermissions;
import com.intentfilter.androidpermissions.services.NotificationService;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import org.parceler.Parcels;

public class PermissionManager extends BroadcastReceiver {
    private static PermissionManager permissionManager;
    private final Context context;
    private final Logger logger = Logger.loggerFor(PermissionManager.class);
    private NotificationSettings notificationSettings = NotificationSettings.getDefault();
    private final PermissionHandler permissionHandler;

    public interface PermissionRequestListener {
        void onPermissionDenied(DeniedPermissions deniedPermissions);

        void onPermissionGranted();
    }

    private PermissionManager(Context context) {
        this.context = context;
        this.permissionHandler = new PermissionHandler(this, context);
    }

    public static PermissionManager getInstance(Context context) {
        if (permissionManager == null) {
            permissionManager = new PermissionManager(context.getApplicationContext());
        }
        return permissionManager;
    }

    public void checkPermissions(Collection<String> collection, PermissionRequestListener permissionRequestListener) {
        this.permissionHandler.checkPermissions(collection, permissionRequestListener);
    }

    public void setNotificationSettings(NotificationSettings notificationSettings) {
        this.notificationSettings = notificationSettings;
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        String[] stringArrayExtra = intent.getStringArrayExtra(PermissionsActivity.EXTRA_PERMISSIONS_GRANTED);
        DeniedPermissions deniedPermissions = (DeniedPermissions) Parcels.unwrap(intent.getParcelableExtra(PermissionsActivity.EXTRA_PERMISSIONS_DENIED));
        logPermissionsResponse(stringArrayExtra, deniedPermissions);
        this.permissionHandler.onPermissionsResult(stringArrayExtra, deniedPermissions);
    }

    void startPermissionActivity(Set<String> set) {
        this.context.startActivity(permissionActivityIntent(set));
    }

    void showPermissionNotification(Set<String> set) {
        NotificationService notificationService = new NotificationService(this.context);
        int titleResId = this.notificationSettings.getTitleResId();
        int messageResId = this.notificationSettings.getMessageResId();
        notificationService.notify(set.toString(), set.hashCode(), notificationService.buildNotification(this.context.getString(titleResId), this.context.getString(messageResId), this.notificationSettings.getSmallIconResId(), permissionActivityIntent(set), notificationDismissIntent(set)));
    }

    private Intent permissionActivityIntent(Set<String> set) {
        return new Intent(this.context, (Class<?>) PermissionsActivity.class).putExtra("com.intentfilter.androidpermissions.PERMISSIONS", (String[]) set.toArray(new String[0])).setAction(set.toString()).setFlags(268435456);
    }

    boolean permissionAlreadyGranted(String str) {
        return ContextCompat.checkSelfPermission(this.context, str) == 0;
    }

    void registerBroadcastReceiver(String str) {
        this.logger.i("Registering for PERMISSIONS_REQUEST broadcast");
        LocalBroadcastManager.getInstance(this.context).registerReceiver(this, new IntentFilter(str));
    }

    void unregisterBroadcastReceiver() {
        this.logger.i("Un-registering for PERMISSIONS_REQUEST broadcast");
        LocalBroadcastManager.getInstance(this.context).unregisterReceiver(this);
    }

    void removePendingPermissionRequests(List<String> list) {
        this.permissionHandler.invalidatePendingPermissionRequests(list);
    }

    private PendingIntent notificationDismissIntent(Set<String> set) {
        Intent intent = new Intent(this.context, (Class<?>) NotificationDismissReceiver.class);
        intent.putExtra("com.intentfilter.androidpermissions.PERMISSIONS", (String[]) set.toArray(new String[0]));
        return PendingIntent.getBroadcast(this.context, 100, intent, VersionOrchestrator.getImmutablePendingIntentFlags(1073741824));
    }

    private void logPermissionsResponse(String[] strArr, DeniedPermissions deniedPermissions) {
        this.logger.i(String.format("Received broadcast response for permission(s). \nGranted: %s\nDenied: %s", Arrays.toString(strArr), deniedPermissions));
    }
}
