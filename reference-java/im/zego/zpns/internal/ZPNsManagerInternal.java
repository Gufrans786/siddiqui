package im.zego.zpns.internal;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import im.zego.zim.zpns.BuildConfig;
import im.zego.zpns.ZPNsManager;
import im.zego.zpns.callback.ZPNsPushEventHandler;
import im.zego.zpns.entity.ZPNsMessage;
import im.zego.zpns.entity.ZPNsRegisterMessage;
import im.zego.zpns.enums.ZPNsConstants;
import im.zego.zpns.enums.ZPNsErrorCode;
import im.zego.zpns.internal.basic.PushClient;
import im.zego.zpns.internal.dispatcher.ZPNsBroadcastDispatcher;
import im.zego.zpns.internal.util.RomTypeUtil;
import im.zego.zpns.util.ZPNsConfig;
import im.zego.zpns.util.ZPNsLogUtils;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Base64;

public class ZPNsManagerInternal extends ZPNsManager {
    private static final String PREFS_NAME = "ZPNsPushPrefs";
    private static final String PREF_KEY_PUSH_CONFIG = "PushConfig";
    private static final String TAG = "ZPNsManagerInternal";
    public PushClient client;
    public ZPNsPushEventHandler handler;
    public Context mContext;
    private String mCustomDeviceToken = "";
    public static ZPNsConfig mPushConfig = new ZPNsConfig();
    public static boolean mDebugMode = false;

    @Override
    public String getVersion() {
        return BuildConfig.VERSION_NAME;
    }

    @Override
    public void registerPush(Application application) {
        this.mContext = application;
        ZPNsBridge.zpnsLogInfo(TAG, "registerPush");
        initClient();
        initModule(this.mContext);
        persistPushConfig(mPushConfig);
        PushClient pushApiClient = getPushApiClient();
        this.client = pushApiClient;
        if (pushApiClient != null) {
            ZPNsBridge.zpnsLogInfo(TAG, "get client success. type: " + this.client.getType());
            if (this.mCustomDeviceToken.isEmpty()) {
                if (this.client.register(application) != ZPNsErrorCode.SUCCESS) {
                    onError(this.client.getType(), ZPNsErrorCode.REGISTER_FAILS);
                    ZPNsBridge.zpnsLogError(TAG, "register failed");
                    return;
                }
                return;
            }
            ZPNsBridge.zpnsLogInfo(TAG, "no need to request client, use custom device token: " + this.mCustomDeviceToken);
            ZPNsBroadcastDispatcher.create(application).commandDispatch(ZPNsRegisterMessage.builder().errorCode(ZPNsErrorCode.SUCCESS).pushSource(this.client.getType()).commandResult(this.mCustomDeviceToken).msg("").build());
            return;
        }
        onError(ZPNsConstants.PushSource.ZEGO, ZPNsErrorCode.REGISTER_FAILS);
        ZPNsBridge.zpnsLogError(TAG, "get client failed");
    }

    @Override
    public void unregisterPush() {
        PushClient pushClient = this.client;
        if (pushClient != null) {
            pushClient.unRegister(this.mContext);
        }
        ZPNsBridge.zpnsLogInfo(TAG, "unregisterPush");
    }

    private void onError(ZPNsConstants.PushSource pushSource, ZPNsErrorCode zPNsErrorCode) {
        ZPNsPushEventHandler zPNsPushEventHandler = this.handler;
        if (zPNsPushEventHandler != null) {
            zPNsPushEventHandler.onError(pushSource, zPNsErrorCode);
            ZPNsBridge.zpnsLogError(TAG, "onError  pushSource:" + pushSource + " errorCode :" + (zPNsErrorCode != null ? zPNsErrorCode.name() : " is null"));
        }
    }

    public static void setPushConfig(ZPNsConfig zPNsConfig) {
        mPushConfig = zPNsConfig;
        StringBuilder sb = new StringBuilder("setPushConfig  mPushConfig:");
        ZPNsConfig zPNsConfig2 = mPushConfig;
        ZPNsBridge.zpnsLogInfo(TAG, sb.append(zPNsConfig2 == null ? " is null" : zPNsConfig2.toString()).toString());
    }

    @Override
    public ZPNsConfig getPushConfig() {
        return mPushConfig;
    }

    public void assignMyContext(Context context) {
        this.mContext = context;
        mPushConfig = loadPushConfig();
    }

    private void persistPushConfig(ZPNsConfig zPNsConfig) {
        String strEncodeToString;
        SharedPreferences.Editor editorEdit = this.mContext.getSharedPreferences(PREFS_NAME, 0).edit();
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(zPNsConfig);
            objectOutputStream.flush();
            if (Build.VERSION.SDK_INT >= 26) {
                strEncodeToString = Base64.getEncoder().encodeToString(byteArrayOutputStream.toByteArray());
            } else {
                strEncodeToString = android.util.Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
            }
            editorEdit.putString(PREF_KEY_PUSH_CONFIG, strEncodeToString);
            editorEdit.apply();
        } catch (IOException e) {
            Log.e(TAG, "Failed to persist push config", e);
        }
    }

    public ZPNsConfig loadPushConfig() {
        byte[] bArrDecode;
        Context context = this.mContext;
        if (context == null) {
            Log.d("ZPNs", "context is null");
            return null;
        }
        String string = context.getSharedPreferences(PREFS_NAME, 0).getString(PREF_KEY_PUSH_CONFIG, null);
        if (string != null) {
            try {
                if (Build.VERSION.SDK_INT >= 26) {
                    bArrDecode = Base64.getDecoder().decode(string);
                } else {
                    bArrDecode = android.util.Base64.decode(string, 0);
                }
                return (ZPNsConfig) new ObjectInputStream(new ByteArrayInputStream(bArrDecode)).readObject();
            } catch (IOException | ClassNotFoundException e) {
                Log.e(TAG, "Failed to load push config", e);
                return null;
            }
        }
        Log.d("ZPNs", "decoded config is null");
        return null;
    }

    @Override
    public void setApplicationIconBadgeNumber(Context context, int i) {
        this.mContext = context;
        initClient();
        if (this.client != null) {
            ZPNsBridge.zpnsLogInfo(TAG, "setApplicationIconBadgeNumber  badgeNumber:" + i + " pushSource :" + this.client.getType());
            this.client.setApplicationIconBadgeNumber(context, i);
        } else {
            ZPNsBridge.zpnsLogError(TAG, "setApplicationIconBadgeNumber client is null");
        }
    }

    @Override
    public void setDeviceToken(String str) {
        this.mCustomDeviceToken = str;
        ZPNsBridge.zpnsLogInfo(TAG, "setDeviceToken: " + this.mCustomDeviceToken);
    }

    @Override
    public ZPNsMessage getZPNsMessage(Application application, Intent intent) {
        ZPNsMessage zPNsMessage;
        this.mContext = application;
        initClient();
        PushClient pushClient = this.client;
        if (pushClient != null) {
            zPNsMessage = pushClient.getZPNsMessage(intent);
        } else {
            ZPNsBridge.zpnsLogError(TAG, "getZPNsInfo client is null");
            zPNsMessage = null;
        }
        Bundle extras = intent.getExtras();
        ZPNsBridge.zpnsLogInfo(TAG, "get zpns intent bundle: " + (extras == null ? " is null" : extras.toString()));
        ZPNsBridge.zpnsLogInfo(TAG, "get zpns message: " + (zPNsMessage != null ? zPNsMessage.toString() : " is null"));
        return zPNsMessage;
    }

    private void initClient() {
        if (this.client == null) {
            this.client = getPushApiClient();
        }
        StringBuilder sb = new StringBuilder("init client: ");
        PushClient pushClient = this.client;
        ZPNsBridge.zpnsLogInfo(TAG, sb.append(pushClient == null ? "is null" : pushClient.getType()).toString());
    }

    @Override
    public void setEventHandler(ZPNsPushEventHandler zPNsPushEventHandler) {
        this.handler = zPNsPushEventHandler;
    }

    private ZPNsConstants.PushSource getType() {
        PushClient pushClient = this.client;
        if (pushClient != null) {
            return pushClient.getType();
        }
        return null;
    }

    private PushClient getPushApiClient() {
        try {
            if (getPushConfig().enableFCMPush) {
                return (PushClient) Class.forName("im.zego.zpns_android_plugin_fcm.FCMPushClient").getDeclaredConstructor(ZPNsConfig.class).newInstance(mPushConfig);
            }
            if (getPushConfig().enableHWPush && RomTypeUtil.isEMUI()) {
                return (PushClient) Class.forName("im.zego.zpns_android_plugin_huawei.HuaWeiPushClient").getDeclaredConstructor(ZPNsConfig.class).newInstance(mPushConfig);
            }
            if (getPushConfig().enableMiPush && RomTypeUtil.isMIUI()) {
                return (PushClient) Class.forName("im.zego.zpns_android_plugin_xiaomi.XiaoMiPushClient").getDeclaredConstructor(ZPNsConfig.class).newInstance(mPushConfig);
            }
            if (getPushConfig().enableVivoPush && RomTypeUtil.isVivo()) {
                return (PushClient) Class.forName("im.zego.zpns_android_plugin_vivo.VivoPushClient").getDeclaredConstructor(ZPNsConfig.class).newInstance(mPushConfig);
            }
            if (getPushConfig().enableOppoPush && RomTypeUtil.isOppo(this.mContext)) {
                return (PushClient) Class.forName("im.zego.zpns_android_plugin_oppo.OppoPushClient").getDeclaredConstructor(ZPNsConfig.class).newInstance(mPushConfig);
            }
            if (getPushConfig().enableMiPush) {
                return (PushClient) Class.forName("im.zego.zpns_android_plugin_xiaomi.XiaoMiPushClient").getDeclaredConstructor(ZPNsConfig.class).newInstance(mPushConfig);
            }
            return null;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return null;
        } catch (InstantiationException e3) {
            e3.printStackTrace();
            return null;
        } catch (NoSuchMethodException e4) {
            e4.printStackTrace();
            return null;
        } catch (InvocationTargetException e5) {
            e5.printStackTrace();
            return null;
        }
    }

    private void initModule(Context context) {
        ZPNsLogUtils.setContext(context);
        String defaultLogPath = "";
        try {
            Method declaredMethod = Class.forName("im.zego.zim.internal.util.ZIMLogUtil").getDeclaredMethod("getZIMLogPath", new Class[0]);
            declaredMethod.setAccessible(true);
            String str = (String) declaredMethod.invoke(null, new Object[0]);
            if (str != null && !str.isEmpty()) {
                defaultLogPath = str;
            }
            declaredMethod.setAccessible(false);
        } catch (Exception e) {
            e.printStackTrace();
        }
        long j = 5242880;
        try {
            Method declaredMethod2 = Class.forName("im.zego.zim.internal.util.ZIMLogUtil").getDeclaredMethod("getZIMLogSize", new Class[0]);
            declaredMethod2.setAccessible(true);
            long jLongValue = ((Long) declaredMethod2.invoke(null, new Object[0])).longValue();
            j = jLongValue != 0 ? jLongValue : 5242880L;
            declaredMethod2.setAccessible(false);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (defaultLogPath.isEmpty()) {
            defaultLogPath = ZPNsLogUtils.getDefaultLogPath();
        }
        ZPNsBridge.initLogModule(defaultLogPath, j);
    }
}
