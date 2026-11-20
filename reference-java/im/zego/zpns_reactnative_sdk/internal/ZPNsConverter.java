package im.zego.zpns_reactnative_sdk.internal;

import android.text.TextUtils;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.WritableMap;
import im.zego.zpns.enums.ZPNsConstants;
import im.zego.zpns.util.ZPNsConfig;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

public class ZPNsConverter {
    public static ZPNsConfig convertPushConfig(ReadableMap readableMap) {
        ZPNsConfig zPNsConfig = new ZPNsConfig();
        zPNsConfig.enableHWPush = readableMap.hasKey("enableHWPush") ? readableMap.getBoolean("enableHWPush") : false;
        zPNsConfig.enableMiPush = readableMap.hasKey("enableMiPush") ? readableMap.getBoolean("enableMiPush") : false;
        zPNsConfig.enableOppoPush = readableMap.hasKey("enableOppoPush") ? readableMap.getBoolean("enableOppoPush") : false;
        zPNsConfig.enableVivoPush = readableMap.hasKey("enableVivoPush") ? readableMap.getBoolean("enableVivoPush") : false;
        zPNsConfig.enableFCMPush = readableMap.hasKey("enableFCMPush") ? readableMap.getBoolean("enableFCMPush") : false;
        zPNsConfig.enableHwBadge(readableMap.hasKey("enableHwBadge") ? readableMap.getBoolean("enableHwBadge") : false);
        zPNsConfig.miAppID = readableMap.hasKey("miAppID") ? readableMap.getString("miAppID") : "";
        zPNsConfig.miAppKey = readableMap.hasKey("miAppKey") ? readableMap.getString("miAppKey") : "";
        zPNsConfig.oppoAppID = readableMap.hasKey("oppoAppID") ? readableMap.getString("oppoAppID") : "";
        zPNsConfig.oppoAppSecret = readableMap.hasKey("oppoAppSecret") ? readableMap.getString("oppoAppSecret") : "";
        zPNsConfig.oppoAppKey = readableMap.hasKey("oppoAppKey") ? readableMap.getString("oppoAppKey") : "";
        zPNsConfig.vivoAppID = readableMap.hasKey("vivoAppID") ? readableMap.getString("vivoAppID") : "";
        zPNsConfig.vivoAppKey = readableMap.hasKey("vivoAppKey") ? readableMap.getString("vivoAppKey") : "";
        zPNsConfig.hwAppID = readableMap.hasKey("hwAppID") ? readableMap.getString("hwAppID") : "";
        if (readableMap.hasKey("appType")) {
            zPNsConfig.setAppType(readableMap.getInt("appType"));
        }
        return zPNsConfig;
    }

    public static HashMap<String, Object> cnvZPNsConfigObjectToMap(ZPNsConfig zPNsConfig) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("enableHWPush", Boolean.valueOf(zPNsConfig.enableHWPush));
        map.put("enableMiPush", Boolean.valueOf(zPNsConfig.enableMiPush));
        map.put("enableVivoPush", Boolean.valueOf(zPNsConfig.enableVivoPush));
        map.put("enableOppoPush", Boolean.valueOf(zPNsConfig.enableOppoPush));
        map.put("enableFCMPush", Boolean.valueOf(zPNsConfig.enableFCMPush));
        map.put("miAppID", zPNsConfig.miAppID);
        map.put("miAppKey", zPNsConfig.miAppKey);
        map.put("oppoAppID", zPNsConfig.oppoAppID);
        map.put("oppoAppSecret", zPNsConfig.oppoAppSecret);
        map.put("oppoAppKey", zPNsConfig.oppoAppKey);
        map.put("vivoAppID", zPNsConfig.vivoAppID);
        map.put("vivoAppKey", zPNsConfig.vivoAppKey);
        map.put("hwAppID", zPNsConfig.hwAppID);
        map.put("appType", Integer.valueOf(zPNsConfig.getAppType()));
        return map;
    }

    public static WritableMap convertExtras(String str) {
        WritableMap writableMapCreateMap = Arguments.createMap();
        if (!TextUtils.isEmpty(str) && !str.equals("{}")) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    Object obj = jSONObject.get(next);
                    if (obj instanceof Integer) {
                        writableMapCreateMap.putInt(next, ((Integer) obj).intValue());
                    } else if (obj instanceof String) {
                        writableMapCreateMap.putString(next, (String) obj);
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return writableMapCreateMap;
    }

    static class AnonymousClass1 {
        static final int[] $SwitchMap$im$zego$zpns$enums$ZPNsConstants$PushSource;

        static {
            int[] iArr = new int[ZPNsConstants.PushSource.values().length];
            $SwitchMap$im$zego$zpns$enums$ZPNsConstants$PushSource = iArr;
            try {
                iArr[ZPNsConstants.PushSource.FCM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$im$zego$zpns$enums$ZPNsConstants$PushSource[ZPNsConstants.PushSource.HUAWEI.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$im$zego$zpns$enums$ZPNsConstants$PushSource[ZPNsConstants.PushSource.XIAOMI.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$im$zego$zpns$enums$ZPNsConstants$PushSource[ZPNsConstants.PushSource.OPPO.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$im$zego$zpns$enums$ZPNsConstants$PushSource[ZPNsConstants.PushSource.VIVO.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$im$zego$zpns$enums$ZPNsConstants$PushSource[ZPNsConstants.PushSource.ZEGO.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static int convertPushSourceType(ZPNsConstants.PushSource pushSource) {
        int i = AnonymousClass1.$SwitchMap$im$zego$zpns$enums$ZPNsConstants$PushSource[pushSource.ordinal()];
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                i2 = 3;
                if (i != 3) {
                    i2 = 4;
                    if (i != 4) {
                        i2 = 5;
                        if (i != 5) {
                            return 0;
                        }
                    }
                }
            }
        }
        return i2;
    }
}
