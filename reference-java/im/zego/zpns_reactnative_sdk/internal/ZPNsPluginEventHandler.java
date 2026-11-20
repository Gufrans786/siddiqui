package im.zego.zpns_reactnative_sdk.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.Pair;
import androidx.core.app.NotificationCompat;
import com.facebook.react.HeadlessJsTaskService;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.modules.core.DeviceEventManagerModule;
import com.transistorsoft.locationmanager.geofence.TSGeofence;
import im.zego.zpns.ZPNsMessageReceiver;
import im.zego.zpns.entity.ZPNsMessage;
import im.zego.zpns.entity.ZPNsRegisterMessage;
import im.zego.zpns.enums.ZPNsConstants;
import im.zego.zpns_reactnative_sdk.RCTZegoZPNsModule;
import im.zego.zpns_reactnative_sdk.callback.ZPNsBackgroundMessageHandler;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;

public class ZPNsPluginEventHandler extends ZPNsMessageReceiver {
    private static final String TAG = "ZPNsPluginEventHandler";
    private static ZPNsPluginEventHandler instance;
    public static Boolean isRegisterPushInvoked = false;
    public static RCTZegoZPNsModule plugin_instance;
    String SHOW_IN_FOREGROUND = "show_in_foreground";
    private Handler handler;

    public static ZPNsPluginEventHandler getInstance() {
        if (instance == null) {
            synchronized (ZPNsPluginEventHandler.class) {
                if (instance == null) {
                    instance = new ZPNsPluginEventHandler();
                }
            }
        }
        return instance;
    }

    public void sendEvent(Context context, WritableMap writableMap, String str) {
        ZPNsLogWriter.writeLog("sendEvent: " + str + ", ctx is null: " + String.valueOf(RCTZegoZPNsModule.reactContext == null), "");
        if (RCTZegoZPNsModule.reactContext != null) {
            ((DeviceEventManagerModule.RCTDeviceEventEmitter) RCTZegoZPNsModule.reactContext.getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)).emit(RCTZegoZPNsModule.Prefix + str, writableMap);
        }
    }

    private Handler getHandler() {
        if (this.handler == null) {
            this.handler = new Handler(Looper.getMainLooper());
        }
        return this.handler;
    }

    private boolean getUseWakeFulService(ZPNsMessage zPNsMessage) {
        if (zPNsMessage.getPushSource() == ZPNsConstants.PushSource.FCM) {
            try {
                Object pushMessage = zPNsMessage.getPushMessage();
                Method declaredMethod = pushMessage.getClass().getDeclaredMethod("getPriority", new Class[0]);
                declaredMethod.setAccessible(true);
                int iIntValue = ((Integer) declaredMethod.invoke(pushMessage, new Object[0])).intValue();
                ZPNsLogWriter.writeLog("FCM message priority: " + iIntValue, "");
                if (iIntValue == 1) {
                    return true;
                }
            } catch (Error | Exception unused) {
            }
        }
        return false;
    }

    private void runBackgroundMessageHandler(Context context, ZPNsMessage zPNsMessage) {
        try {
            String string = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getString("ZPNsBackgroundMessageHandlerClassPath");
            ZPNsLogWriter.writeLog("ZPNsBackgroundMessageHandlerClassPath: " + string, "");
            if (string != null) {
                try {
                    ((ZPNsBackgroundMessageHandler) Class.forName(string).newInstance()).onThroughMessageReceived(context, zPNsMessage);
                } catch (Error | Exception unused) {
                    ZPNsLogWriter.writeLog("ZPNsBackgroundMessageHandlerClassPath: Find class failure", "");
                }
            }
        } catch (Error | Exception unused2) {
            ZPNsLogWriter.writeLog("ZPNsBackgroundMessageHandlerClassPath: Find ApplicationInfo failure", "");
        }
    }

    public void onThroughForegroundMessage(final Context context, ZPNsMessage zPNsMessage) {
        final WritableMap writableMapCreateMap = Arguments.createMap();
        WritableMap writableMapCreateMap2 = Arguments.createMap();
        writableMapCreateMap2.putString(NotificationCompat.CATEGORY_EVENT, "throughMessageReceived");
        writableMapCreateMap2.putString("title", zPNsMessage.getTitle());
        writableMapCreateMap2.putString("content", zPNsMessage.getContent());
        writableMapCreateMap2.putString(TSGeofence.FIELD_EXTRAS, zPNsMessage.getExtras());
        writableMapCreateMap2.putInt("pushSourceType", ZPNsConverter.convertPushSourceType(zPNsMessage.getPushSource()));
        writableMapCreateMap.putMap("message", writableMapCreateMap2);
        getHandler().post(new Runnable() {
            @Override
            public void run() {
                ZPNsPluginEventHandler.this.sendEvent(context, writableMapCreateMap, "throughMessageReceived");
            }
        });
        ZPNsLogWriter.writeLog("onThroughForegroundMessage. title: " + zPNsMessage.getTitle() + ", content: " + zPNsMessage.getContent() + ", extras: " + zPNsMessage.getExtras(), "");
    }

    public void onThroughBackgroundMessage(Context context, ZPNsMessage zPNsMessage) {
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putString(NotificationCompat.CATEGORY_EVENT, "throughMessageReceived");
        writableMapCreateMap.putString("title", zPNsMessage.getTitle());
        writableMapCreateMap.putString("content", zPNsMessage.getContent());
        writableMapCreateMap.putString(TSGeofence.FIELD_EXTRAS, zPNsMessage.getExtras());
        writableMapCreateMap.putInt("pushSourceType", ZPNsConverter.convertPushSourceType(zPNsMessage.getPushSource()));
        if (!RCTZegoZPNsModule.isBackgroundMessageHandleSet.booleanValue()) {
            RCTZegoZPNsModule.backgroundEventList.add(new Pair<>(writableMapCreateMap, zPNsMessage));
            return;
        }
        boolean useWakeFulService = getUseWakeFulService(zPNsMessage);
        Intent intent = new Intent(context, (Class<?>) ZPNsService.class);
        intent.putExtras(Arguments.toBundle(writableMapCreateMap));
        HeadlessJsTaskService.acquireWakeLockNow(context);
        ZPNsService.enqueueWork(context, ZPNsService.class, 10000, intent, useWakeFulService);
        ZPNsLogWriter.writeLog("onThroughBackgroundMessage. title: " + zPNsMessage.getTitle() + ", content: " + zPNsMessage.getContent() + ", extras: " + zPNsMessage.getExtras(), "");
    }

    @Override
    protected void onThroughMessageReceived(Context context, ZPNsMessage zPNsMessage) {
        if (zPNsMessage.getPushSource() == ZPNsConstants.PushSource.FCM) {
            Log.i(TAG, "Receive FCM ZPNsMessage. waiting for FCMReceiver to callback event");
            return;
        }
        if (ZPNsPluginUtils.isApplicationForeground(context)) {
            onThroughForegroundMessage(context, zPNsMessage);
        } else {
            onThroughBackgroundMessage(context, zPNsMessage);
        }
        runBackgroundMessageHandler(context, zPNsMessage);
    }

    @Override
    protected void onNotificationClicked(final Context context, ZPNsMessage zPNsMessage) {
        Log.d("510", "onNotificationClicked. title: " + zPNsMessage.getTitle() + ", content: " + zPNsMessage.getContent() + ", extras: " + zPNsMessage.getExtras());
        final WritableMap writableMapCreateMap = Arguments.createMap();
        WritableMap writableMapCreateMap2 = Arguments.createMap();
        writableMapCreateMap2.putString(NotificationCompat.CATEGORY_EVENT, "notificationClicked");
        writableMapCreateMap2.putString("title", zPNsMessage.getTitle());
        writableMapCreateMap2.putString("content", zPNsMessage.getContent());
        writableMapCreateMap2.putString(TSGeofence.FIELD_EXTRAS, zPNsMessage.getExtras());
        writableMapCreateMap2.putString("payload", zPNsMessage.getPayload());
        writableMapCreateMap2.putInt("pushSourceType", ZPNsConverter.convertPushSourceType(zPNsMessage.getPushSource()));
        writableMapCreateMap.putMap("message", writableMapCreateMap2);
        if (plugin_instance != null) {
            if (isRegisterPushInvoked.booleanValue()) {
                getHandler().post(new Runnable() {
                    @Override
                    public void run() {
                        ZPNsPluginEventHandler.this.sendEvent(context, writableMapCreateMap, "notificationClicked");
                    }
                });
            } else {
                RCTZegoZPNsModule.clickedResultMap = writableMapCreateMap;
            }
        } else {
            RCTZegoZPNsModule.clickedResultMap = writableMapCreateMap;
            launchMainActivity(context);
            Log.d("510", "launchMainActivity,click map:" + writableMapCreateMap.toString());
        }
        ZPNsLogWriter.writeLog("onNotificationClicked. title: " + zPNsMessage.getTitle() + ", content: " + zPNsMessage.getContent() + ", extras: " + zPNsMessage.getExtras(), "");
    }

    private void launchMainActivity(Context context) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
        if (launchIntentForPackage != null) {
            launchIntentForPackage.putExtra(this.SHOW_IN_FOREGROUND, true);
            context.startActivity(launchIntentForPackage);
        } else {
            Log.e(TAG, "Failed to get launch intent for package: " + context.getPackageName());
        }
    }

    @Override
    protected void onNotificationArrived(final Context context, ZPNsMessage zPNsMessage) {
        final WritableMap writableMapCreateMap = Arguments.createMap();
        WritableMap writableMapCreateMap2 = Arguments.createMap();
        writableMapCreateMap2.putString(NotificationCompat.CATEGORY_EVENT, "notificationArrived");
        writableMapCreateMap2.putString("title", zPNsMessage.getTitle());
        writableMapCreateMap2.putString("content", zPNsMessage.getContent());
        writableMapCreateMap2.putString(TSGeofence.FIELD_EXTRAS, zPNsMessage.getExtras());
        writableMapCreateMap2.putInt("pushSourceType", ZPNsConverter.convertPushSourceType(zPNsMessage.getPushSource()));
        writableMapCreateMap.putMap("message", writableMapCreateMap2);
        getHandler().post(new Runnable() {
            @Override
            public void run() {
                ZPNsPluginEventHandler.this.sendEvent(context, writableMapCreateMap, "notificationArrived");
            }
        });
        ZPNsLogWriter.writeLog("onNotificationArrived. title: " + zPNsMessage.getTitle() + ", content: " + zPNsMessage.getContent() + ", extras: " + zPNsMessage.getExtras(), "");
    }

    @Override
    protected void onRegistered(final Context context, ZPNsRegisterMessage zPNsRegisterMessage) {
        int code = zPNsRegisterMessage.getErrorCode().getCode();
        String msg = zPNsRegisterMessage.getMsg();
        final WritableMap writableMapCreateMap = Arguments.createMap();
        WritableMap writableMapCreateMap2 = Arguments.createMap();
        writableMapCreateMap2.putString("pushID", zPNsRegisterMessage.getCommandResult());
        writableMapCreateMap2.putInt("errorCode", code);
        writableMapCreateMap2.putString(NotificationCompat.CATEGORY_MESSAGE, msg);
        writableMapCreateMap.putMap("message", writableMapCreateMap2);
        if (code != 0) {
            ZPNsLogWriter.writeLog("registered failed. code=" + code + ", msg=" + msg, "");
        } else {
            ZPNsLogWriter.writeLog("registered success. pushID: " + zPNsRegisterMessage.getCommandResult(), "");
        }
        getHandler().post(new Runnable() {
            @Override
            public void run() {
                ZPNsPluginEventHandler.this.sendEvent(context, writableMapCreateMap, "registered");
            }
        });
    }

    public static HashMap<String, Object> getObjectToMap(Object obj) throws IllegalAccessException {
        HashMap<String, Object> map = new HashMap<>();
        for (Field field : obj.getClass().getDeclaredFields()) {
            field.setAccessible(true);
            String name = field.getName();
            Object obj2 = field.get(obj);
            if (obj2 == null) {
                obj2 = "";
            }
            map.put(name, obj2);
            field.setAccessible(false);
        }
        return map;
    }
}
