package im.zego.zpns.internal;

import android.util.Log;

public final class ZPNsBridge {
    public static native void getPayload(int i, byte[] bArr, boolean z);

    public static native int getPayloadSize(int i, boolean z);

    public static native void initLogModule(String str, long j);

    public static native void zpnsLogDebug(String str, String str2);

    public static native void zpnsLogError(String str, String str2);

    public static native void zpnsLogInfo(String str, String str2);

    public static native void zpnsLogWarning(String str, String str2);

    static {
        try {
            System.loadLibrary("ZPNs");
        } catch (UnsatisfiedLinkError e) {
            Log.e("ZPNs", "Load ZPNs native library failed!", e);
        }
    }
}
