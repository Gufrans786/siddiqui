package im.zego.zpns.internal.util;

import android.util.Log;
import im.zego.zpns.enums.ZPNsConstants;
import im.zego.zpns.internal.ZPNsBridge;
import im.zego.zpns.internal.ZPNsManagerInternal;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Locale;

public class PushIDGenerateTools {
    private static final String TAG = "PushIDGenerateTools";

    public static String getPushID(String str, boolean z, ZPNsConstants.PushSource pushSource, String str2) {
        Log.d(TAG, "device token:" + str);
        if (str == null || str.length() <= 0) {
            return "";
        }
        byte[] bArr = new byte[0];
        if (ZPNsManagerInternal.getInstance().getPushConfig() != null) {
            int appType = ZPNsManagerInternal.getInstance().getPushConfig().getAppType();
            boolean zIsEnableHWBadge = ZPNsManagerInternal.getInstance().getPushConfig().isEnableHWBadge();
            int payloadSize = ZPNsBridge.getPayloadSize(appType, zIsEnableHWBadge);
            if (payloadSize > 0) {
                bArr = new byte[payloadSize];
                ZPNsBridge.getPayload(appType, bArr, zIsEnableHWBadge);
            }
            Log.d(TAG, "payload:" + bArr.length);
        }
        byte b = 2;
        byte b2 = (byte) (z ? 1 : 2);
        if (pushSource == ZPNsConstants.PushSource.HUAWEI) {
            b = 1;
        } else if (pushSource != ZPNsConstants.PushSource.XIAOMI) {
            if (pushSource == ZPNsConstants.PushSource.VIVO) {
                b = 3;
            } else if (pushSource == ZPNsConstants.PushSource.OPPO) {
                b = 4;
            } else {
                b = pushSource == ZPNsConstants.PushSource.FCM ? (byte) 6 : (byte) 0;
            }
        }
        int length = str2.length();
        String country = Locale.getDefault().getCountry();
        int length2 = country.length();
        ArrayList arrayList = new ArrayList();
        arrayList.add((byte) -81);
        arrayList.add((byte) 0);
        arrayList.add((byte) 1);
        arrayList.add(Byte.valueOf(b2));
        arrayList.add(Byte.valueOf(b));
        byte[] hh = toHH((short) length2);
        for (byte b3 : hh) {
            arrayList.add(Byte.valueOf(b3));
        }
        for (byte b4 : toHH((short) length)) {
            arrayList.add(Byte.valueOf(b4));
        }
        for (byte b5 : toHH2((short) str.length())) {
            arrayList.add(Byte.valueOf(b5));
        }
        for (byte b6 : country.getBytes(StandardCharsets.UTF_8)) {
            arrayList.add(Byte.valueOf(b6));
        }
        byte[] bytes = str2.getBytes(StandardCharsets.UTF_8);
        for (byte b7 : bytes) {
            arrayList.add(Byte.valueOf(b7));
        }
        for (byte b8 : str.getBytes(StandardCharsets.UTF_8)) {
            arrayList.add(Byte.valueOf(b8));
        }
        for (byte b9 : toHH2((short) bArr.length)) {
            arrayList.add(Byte.valueOf(b9));
        }
        for (byte b10 : bArr) {
            arrayList.add(Byte.valueOf(b10));
        }
        byte[] bArr2 = new byte[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            bArr2[i] = ((Byte) arrayList.get(i)).byteValue();
        }
        try {
            Class<?> cls = Class.forName("im.zego.zim.internal.ZIMImpl");
            cls.getMethod("setPushID", String.class).invoke(cls, Base64.getEncoder().encodeToString(bArr2));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Base64.getEncoder().encodeToString(bArr2);
    }

    public static byte[] toHH(short s) {
        return new byte[]{(byte) (s & 255)};
    }

    public static byte[] toHH2(short s) {
        return new byte[]{(byte) ((s >> 8) & 255), (byte) (s & 255)};
    }
}
