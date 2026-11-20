package im.zego.zpns.util;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import java.io.File;

public class ZPNsLogUtils {
    static Context mContext;

    public static native void writeCustomLog(String str, String str2);

    public static void setContext(Context context) {
        mContext = context;
    }

    public static String getDefaultLogPath() {
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

    public static boolean mkdirFolderPath(String str) {
        return new File(str).mkdirs();
    }
}
