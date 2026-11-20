package geidea.utils;

import android.content.Context;
import android.content.pm.PackageManager;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.modules.core.DeviceEventManagerModule;

public final class GeideaUtils {
    public static final String FETCH_REGISTRATION = "FETCH_REGISTRATION";
    public static final int FETCH_REGISTRATION_DETAILS_CODE = 891;
    public static final String FETCH_REGISTRATION_FAIL = "FETCH_REGISTRATION_FAIL";
    public static final String FETCH_REGISTRATION_SUCCESS = "FETCH_REGISTRATION_SUCCESS";
    public static final int FORMAT_REQUEST_CODE = 200;
    public static final String GEIDEA_FORMAT = "GEIDEA_FORMAT";
    public static final String GEIDEA_FORMAT_FAIL = "GEIDEA_FORMAT_FAIL";
    public static final String GEIDEA_FORMAT_SUCCESS = "GEIDEA_FORMAT_SUCCESS";
    public static final int GEIDEA_PARSER_ERROR = 0;
    public static final String GEIDEA_PURCHASE = "GEIDEA_PURCHASE";
    public static final String GEIDEA_PURCHASE_ABORTED = "GEIDEA_PURCHASE_ABORTED";
    public static final int GEIDEA_PURCHASE_ABORTED_CODE = 3;
    public static final String GEIDEA_PURCHASE_DECLINE = "GEIDEA_PURCHASE_DECLINE";
    public static final int GEIDEA_PURCHASE_DECLINE_CODE = 2;
    public static final String GEIDEA_PURCHASE_DECLINE_MESSAGE = "SoftPos application has process the transaction online to SAMA host and it has been Declined / Rejected by bank.";
    public static final String GEIDEA_PURCHASE_FAIL = "GEIDEA_PURCHASE_FAIL";
    public static final String GEIDEA_PURCHASE_SUCCESS = "GEIDEA_PURCHASE_SUCCESS";
    public static final int GEIDEA_PURCHASE_SUCCESS_CODE = 1;
    public static final String GEIDEA_PURCHASE_SUCCESS_MESSAGE = "SoftPos application has sent the transaction online to SAMA host and it has been Approved by bank.";
    public static final String GEIDEA_REGISTRATION = "GEIDEA_REGISTRATION";
    public static final String GEIDEA_REGISTRATION_FAIL = "GEIDEA_REGISTRATION_FAIL";
    public static final String GEIDEA_REGISTRATION_SUCCESS = "GEIDEA_REGISTRATION_SUCCESS";
    public static final int PAYMENT_REQUEST_CODE = 100;
    public static final int REGISTRATION_REQUEST_CODE = 777;
    public static final String SOFTPOS_PACKAGE_NAME = "geidea.net.softpos";

    public static boolean appInstalledOrNot(Context context, String str) {
        try {
            context.getPackageManager().getPackageInfo(str, 1);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void sendEvent(ReactContext reactContext, String str, WritableMap writableMap) {
        ((DeviceEventManagerModule.RCTDeviceEventEmitter) reactContext.getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)).emit(str, writableMap);
    }
}
