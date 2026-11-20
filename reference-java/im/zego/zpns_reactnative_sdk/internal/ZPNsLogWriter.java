package im.zego.zpns_reactnative_sdk.internal;

import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class ZPNsLogWriter {
    public static String TAG = "ZPNsLogWriter";

    public static void writeLog(String str, String str2) {
        try {
            System.loadLibrary("ZPNs");
            try {
                Method declaredMethod = Class.forName("im.zego.zpns.util.ZPNsLogUtils").getDeclaredMethod("writeCustomLog", String.class, String.class);
                declaredMethod.setAccessible(true);
                if (!str2.isEmpty()) {
                    str = "[" + str2 + "] " + str;
                }
                declaredMethod.invoke(null, str, "RN");
                declaredMethod.setAccessible(false);
            } catch (IllegalAccessException e) {
                Log.e(TAG, "IllegalAccessException: " + e.getMessage(), null);
            } catch (NoSuchMethodException e2) {
                e2.printStackTrace();
                Log.e(TAG, "NoSuchMethodException: " + e2.getMessage());
            } catch (InvocationTargetException e3) {
                Log.e(TAG, "new InvocationTargetException: " + e3.getTargetException().getMessage());
            } catch (Exception unused) {
                Log.d(TAG, "onMethodCall: ");
            }
        } catch (UnsatisfiedLinkError e4) {
            e4.printStackTrace();
            Log.w(TAG, "ZPNs so is not loaded, ignore");
        }
    }

    public static void printSystemProperty() {
        Log.d(TAG, "ZPNsSystemProperty: hw:" + getSystemProperty("ro.build.version.emui") + ", mi:" + getSystemProperty("ro.miui.ui.version.name") + ", oppo:" + getSystemProperty("ro.build.version.opporom") + ", vivo:" + getSystemProperty("ro.vivo.os.version"));
    }

    public static String getSystemProperty(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "");
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}
