package com.intentfilter.androidpermissions;

import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import com.intentfilter.androidpermissions.helpers.Logger;
import com.intentfilter.androidpermissions.models.DeniedPermission;
import com.intentfilter.androidpermissions.models.DeniedPermissions;
import com.intentfilter.androidpermissions.services.BroadcastService;
import java.util.Arrays;
import java.util.HashSet;

public class PermissionsActivity extends AppCompatActivity {
    static final String EXTRA_PERMISSIONS = "com.intentfilter.androidpermissions.PERMISSIONS";
    public static final String EXTRA_PERMISSIONS_DENIED = "com.intentfilter.androidpermissions.PERMISSIONS_DENIED";
    public static final String EXTRA_PERMISSIONS_GRANTED = "com.intentfilter.androidpermissions.PERMISSIONS_GRANTED";
    static final int PERMISSIONS_REQUEST_CODE = 100;
    static final Logger logger = Logger.loggerFor(PermissionsActivity.class);

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ActivityCompat.requestPermissions(this, getIntent().getStringArrayExtra(EXTRA_PERMISSIONS), 100);
    }

    @Override
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (iArr.length == 0 || strArr.length == 0) {
            logger.e("Permission request interrupted. Aborting.");
            PermissionManager.getInstance(this).removePendingPermissionRequests(Arrays.asList(getIntent().getStringArrayExtra(EXTRA_PERMISSIONS)));
            finish();
        } else {
            logger.i("RequestPermissionsResult, sending broadcast for permissions " + Arrays.toString(strArr));
            sendPermissionResponse(strArr, iArr);
            finish();
        }
    }

    private void sendPermissionResponse(String[] strArr, int[] iArr) {
        HashSet hashSet = new HashSet();
        DeniedPermissions deniedPermissions = new DeniedPermissions();
        for (int i = 0; i < strArr.length; i++) {
            if (iArr[i] == 0) {
                hashSet.add(strArr[i]);
            } else {
                deniedPermissions.add(new DeniedPermission(strArr[i], ActivityCompat.shouldShowRequestPermissionRationale(this, strArr[i])));
            }
        }
        new BroadcastService(this).broadcastPermissionRequestResult(hashSet, deniedPermissions);
    }
}
