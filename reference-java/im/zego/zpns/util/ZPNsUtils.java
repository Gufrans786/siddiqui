package im.zego.zpns.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;

public class ZPNsUtils {
    public static boolean isOnMainThread(Context context) {
        return Thread.currentThread() == context.getMainLooper().getThread();
    }

    public static String getMetaStringValueByName(Context context, String str) {
        try {
            ApplicationInfo applicationInfo = context.getApplicationContext().getPackageManager().getApplicationInfo(context.getApplicationContext().getPackageName(), 128);
            String string = applicationInfo.metaData.getString(str);
            if (string == null) {
                string = String.valueOf(applicationInfo.metaData.getLong(str));
                if ("0".equals(string)) {
                    return String.valueOf(applicationInfo.metaData.getInt(str));
                }
            }
            return string;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getMetaIntValueByName(Context context, String str) {
        try {
            return String.valueOf(context.getApplicationContext().getPackageManager().getApplicationInfo(context.getApplicationContext().getPackageName(), 128).metaData.getInt(str));
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static String getMetaFloatValueByName(Context context, String str) {
        try {
            return String.valueOf(context.getApplicationContext().getPackageManager().getApplicationInfo(context.getApplicationContext().getPackageName(), 128).metaData.getFloat(str));
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }
}
