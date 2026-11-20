package im.zego.zim.internal.util;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import im.zego.zim.ZIMSDKInfo;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

public final class ZIMSysUtil {
    private static final int BUFFER_SIZE = 65536;

    public static String getOsInfo() {
        return (Build.MANUFACTURER + ":" + Build.VERSION.RELEASE + ":" + Build.MODEL + ":" + Build.VERSION.SDK_INT).replaceAll(",", ".");
    }

    public static String getVersion() {
        return Build.VERSION.RELEASE.replaceAll(",", ".");
    }

    public static boolean loadSpecialLibrary(String customizeSoPath, Context context) throws Throwable {
        File file = new File(customizeSoPath);
        if (!file.exists()) {
            Log.e(ZIMSDKInfo.LIBRARY_NAME, "failed to load the external so. ");
            return false;
        }
        try {
            System.load(customizeSoPath);
            return true;
        } catch (UnsatisfiedLinkError unused) {
            File file2 = new File(getCustomizeLibDir(context, "ext"), file.getName());
            if (!file2.exists() || file2.length() != file.length()) {
                try {
                    copyFile(file, file2);
                } catch (Exception e) {
                    Log.e(ZIMSDKInfo.LIBRARY_NAME, String.format("copyFile from %s to %s failed", file, file2), e);
                }
            }
            System.load(file2.getAbsolutePath());
            return true;
        }
    }

    private static boolean copyFile(File srcFile, File targetFile) throws Throwable {
        BufferedOutputStream bufferedOutputStream;
        File parentFile = targetFile.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        BufferedInputStream bufferedInputStream = null;
        try {
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(srcFile));
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(targetFile, false));
                try {
                    byte[] bArr = new byte[65536];
                    int i = 0;
                    while (true) {
                        int i2 = bufferedInputStream2.read(bArr, 0, 65536);
                        if (i2 != -1) {
                            bufferedOutputStream.write(bArr, 0, i2);
                            i++;
                            if (i % 10 == 0) {
                                bufferedOutputStream.flush();
                            }
                        } else {
                            bufferedOutputStream.flush();
                            bufferedInputStream2.close();
                            bufferedOutputStream.close();
                            return true;
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    bufferedInputStream = bufferedInputStream2;
                    if (bufferedInputStream != null) {
                        bufferedInputStream.close();
                    }
                    if (bufferedOutputStream != null) {
                        bufferedOutputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedOutputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedOutputStream = null;
        }
    }

    private static File getCustomizeLibDir(Context context, String subDirName) {
        return new File(context.getDir("libs", 0), subDirName);
    }
}
