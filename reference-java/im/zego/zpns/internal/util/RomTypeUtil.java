package im.zego.zpns.internal.util;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import im.zego.zpns.util.ZPNsConfig;
import java.lang.reflect.InvocationTargetException;

public class RomTypeUtil {
    private static final String KEY_EMUI_VERSION_NAME = "ro.build.version.emui";
    private static final String KEY_MIUI_VERSION_NAME = "ro.miui.ui.version.name";
    private static final String KEY_VERSION_OPPO = "ro.build.version.opporom";
    private static final String KEY_VERSION_VIVO = "ro.vivo.os.version";
    private static String TAG = "RomTypeUtil";

    public static boolean isVivo() {
        return !TextUtils.isEmpty(getSystemProperty(KEY_VERSION_VIVO, ""));
    }

    public static boolean isOppo(Context context) {
        try {
            Class<?> cls = Class.forName("im.zego.zpns_android_plugin_oppo.OppoPushClient");
            cls.getDeclaredConstructor(ZPNsConfig.class);
            return ((Boolean) cls.getMethod("isSupportPush", Context.class).invoke(null, context)).booleanValue();
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            Log.d(TAG, "An exception has occurred,e:" + e.toString());
            return !TextUtils.isEmpty(getSystemProperty(KEY_VERSION_OPPO, ""));
        }
    }

    public static boolean isMIUI() {
        return !TextUtils.isEmpty(getSystemProperty(KEY_MIUI_VERSION_NAME, ""));
    }

    public static boolean isEMUI() {
        return !TextUtils.isEmpty(getSystemProperty(KEY_EMUI_VERSION_NAME, ""));
    }

    public static boolean isFlyme() {
        return Build.DISPLAY.toLowerCase().contains("flyme");
    }

    public static String getSystemProperty(String str, String str2) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, str2);
        } catch (Exception e) {
            e.printStackTrace();
            return str2;
        }
    }
}
