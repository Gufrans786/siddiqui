package im.zego.zpns.util;

import android.content.Context;
import android.content.SharedPreferences;
import im.zego.zpns.enums.ZPNsConstants;
import java.util.Set;

public class ZPNsPreferenceUtils {
    private static final String APP_PUSH_PREFERENCE_NAME = "zpns_app_push";
    private static final String KEY_APP_COMPANY_TOKEN = "zpns_company_token";
    private static final String KEY_APP_PUSH_ID = "zpns_push_id";
    private static final String PUSH_PREFERENCE = "zpns_push_v1";

    private static SharedPreferences getSharePerferenceByName(Context context, String str) {
        return context.getSharedPreferences(str, 0);
    }

    public static void putStringByKey(Context context, String str, String str2, String str3) {
        getSharePerferenceByName(context, str).edit().putString(str2, str3).apply();
    }

    public static String getStringBykey(Context context, String str, String str2) {
        return getSharePerferenceByName(context, str).getString(str2, "");
    }

    public static Set<String> getStringSetBykey(Context context, String str, String str2) {
        return getSharePerferenceByName(context, str).getStringSet(str2, null);
    }

    public static void putStringSetByKey(Context context, String str, String str2, Set<String> set) {
        getSharePerferenceByName(context, str).edit().putStringSet(str2, set).commit();
    }

    public static void putIntBykey(Context context, String str, String str2, int i) {
        getSharePerferenceByName(context, str).edit().putInt(str2, i).apply();
    }

    public static int getIntBykey(Context context, String str, String str2) {
        return getSharePerferenceByName(context, str).getInt(str2, 0);
    }

    public static void putBooleanByKey(Context context, String str, String str2, boolean z) {
        getSharePerferenceByName(context, str).edit().putBoolean(str2, z).apply();
    }

    public static boolean getBooleanByKey(Context context, String str, String str2) {
        return getSharePerferenceByName(context, str).getBoolean(str2, true);
    }

    public static boolean remove(Context context, String str, String str2) {
        return getSharePerferenceByName(context, str).edit().remove(str2).commit();
    }

    public static boolean hasKey(Context context, String str, String str2) {
        return getSharePerferenceByName(context, str).contains(str2);
    }

    public static String getPushId(Context context, String str) {
        return getStringBykey(context, ZPNsConstants.PUSH_ID_PREFERENCE_NAME, str + "_KEY_PUSH_ID");
    }

    public static void putPushId(Context context, String str, String str2) {
        putStringByKey(context, ZPNsConstants.PUSH_ID_PREFERENCE_NAME, str2 + "_KEY_PUSH_ID", str);
    }

    public static void putPushIdExpireTime(Context context, int i, String str) {
        putIntBykey(context, ZPNsConstants.PUSH_ID_PREFERENCE_NAME, str + "_KEY_PUSH_ID_EXPIRE_TIME", i);
    }

    public static int getPushIdExpireTime(Context context, String str) {
        return getIntBykey(context, ZPNsConstants.PUSH_ID_PREFERENCE_NAME, str + "_KEY_PUSH_ID_EXPIRE_TIME");
    }

    public static String getDeviceId(Context context) {
        return getSharePerferenceByName(context, PUSH_PREFERENCE).getString(ZPNsConstants.PUSH_MESSAGE_STATISTICS_IMEI_KEY, null);
    }

    public static void putDeviceId(Context context, String str) {
        putStringByKey(context, PUSH_PREFERENCE, ZPNsConstants.PUSH_MESSAGE_STATISTICS_IMEI_KEY, str);
    }

    public static void putZIMPushId(Context context, String str, String str2) {
        putStringByKey(context, APP_PUSH_PREFERENCE_NAME, str + "." + context.getPackageName() + KEY_APP_PUSH_ID, str2);
    }

    public static String getZIMPushId(Context context, String str) {
        return getStringBykey(context, APP_PUSH_PREFERENCE_NAME, str + "." + context.getPackageName() + KEY_APP_PUSH_ID);
    }
}
