package im.zego.zim.internal.util;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import java.io.File;

public class ZIMLogUtil {
    static Context mContext;

    private static native String getZIMLogPath();

    private static native long getZIMLogSize();

    private static native void writeCustomLog(String customLog, String moduleName);

    public static String getLogPath() {
        File file;
        File filesDir;
        if (mContext == null) {
            return "";
        }
        if (Environment.getExternalStorageState().equals("mounted")) {
            File externalFilesDir = mContext.getExternalFilesDir(null);
            if (externalFilesDir != null) {
                String str = externalFilesDir.getAbsolutePath() + "/ZIMLogs";
                if (TextUtils.isEmpty(str)) {
                    file = null;
                } else {
                    file = new File(str);
                }
            } else {
                file = null;
            }
        } else {
            file = null;
        }
        if (file == null && (filesDir = mContext.getFilesDir()) != null) {
            String str2 = filesDir.getAbsolutePath() + "/ZIMLogs";
            if (!TextUtils.isEmpty(str2)) {
                file = new File(str2);
            }
        }
        if (file == null) {
            return null;
        }
        if (!file.exists()) {
            file.mkdirs();
            if (!file.exists()) {
                return null;
            }
        }
        return file.getAbsolutePath().toString();
    }

    public static String getCachePath() {
        File file;
        File filesDir;
        if (mContext == null) {
            return "";
        }
        if (Environment.getExternalStorageState().equals("mounted")) {
            File externalFilesDir = mContext.getExternalFilesDir(null);
            if (externalFilesDir != null) {
                String str = externalFilesDir.getAbsolutePath() + "/ZIMCaches";
                if (TextUtils.isEmpty(str)) {
                    file = null;
                } else {
                    file = new File(str);
                }
            } else {
                file = null;
            }
        } else {
            file = null;
        }
        if (file == null && (filesDir = mContext.getFilesDir()) != null) {
            String str2 = filesDir.getAbsolutePath() + "/ZIMCaches";
            if (!TextUtils.isEmpty(str2)) {
                file = new File(str2);
            }
        }
        if (file == null) {
            return null;
        }
        if (!file.exists()) {
            file.mkdirs();
            if (!file.exists()) {
                return null;
            }
        }
        return file.getAbsolutePath().toString();
    }

    public static boolean mkdirFolderPath(String path) {
        return new File(path).mkdirs();
    }

    public static String getTemporaryFolder() {
        File file;
        File cacheDir;
        File externalCacheDir;
        if (mContext == null) {
            return null;
        }
        if (!Environment.getExternalStorageState().equals("mounted") || (externalCacheDir = mContext.getExternalCacheDir()) == null) {
            file = null;
        } else {
            String absolutePath = externalCacheDir.getAbsolutePath();
            if (TextUtils.isEmpty(absolutePath)) {
                file = null;
            } else {
                file = new File(absolutePath);
            }
        }
        if (file == null && (cacheDir = mContext.getCacheDir()) != null) {
            String absolutePath2 = cacheDir.getAbsolutePath();
            if (!TextUtils.isEmpty(absolutePath2)) {
                file = new File(absolutePath2);
            }
        }
        if (file == null) {
            return null;
        }
        if (!file.exists()) {
            file.mkdirs();
            if (!file.exists()) {
                return null;
            }
        }
        return file.getAbsolutePath().toString();
    }

    public static void setContext(Context context) {
        mContext = context;
    }
}
