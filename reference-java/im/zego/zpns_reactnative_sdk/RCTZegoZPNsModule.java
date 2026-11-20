package im.zego.zpns_reactnative_sdk;

import android.app.Application;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import com.facebook.react.HeadlessJsTaskService;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.modules.core.DeviceEventManagerModule;
import com.transistorsoft.locationmanager.geofence.TSGeofence;
import im.zego.zpns.ZPNsManager;
import im.zego.zpns.entity.ZPNsMessage;
import im.zego.zpns.enums.ZPNsConstants;
import im.zego.zpns.util.ZPNsConfig;
import im.zego.zpns_reactnative_sdk.internal.ZPNsConverter;
import im.zego.zpns_reactnative_sdk.internal.ZPNsLogWriter;
import im.zego.zpns_reactnative_sdk.internal.ZPNsPluginEventHandler;
import im.zego.zpns_reactnative_sdk.internal.ZPNsService;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class RCTZegoZPNsModule extends ReactContextBaseJavaModule {
    public static final String Prefix = "im.zego.zpns.reactnative.";
    public static WritableMap clickedResultMap;
    public static ReactApplicationContext reactContext;
    public static Boolean isBackgroundMessageHandleSet = false;
    public static List<Pair<WritableMap, ZPNsMessage>> backgroundEventList = Collections.synchronizedList(new ArrayList());

    @ReactMethod
    public void addListener(String str) {
    }

    @ReactMethod
    public void removeListeners(Integer num) {
    }

    public RCTZegoZPNsModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        reactContext = reactApplicationContext;
        ZPNsPluginEventHandler.plugin_instance = this;
    }

    @Override
    public void onCatalystInstanceDestroy() {
        super.onCatalystInstanceDestroy();
        ZPNsPluginEventHandler.plugin_instance = null;
        ZPNsPluginEventHandler.isRegisterPushInvoked = false;
    }

    @Override
    public String getName() {
        return "ZPNsNativeModule";
    }

    @Override
    public Map<String, Object> getConstants() {
        HashMap map = new HashMap();
        map.put("prefix", Prefix);
        return map;
    }

    @ReactMethod
    public void writeCustomLog(String str, String str2) {
        ZPNsLogWriter.writeLog(str, str2);
    }

    @ReactMethod
    public void getVersion(Promise promise) {
        promise.resolve(ZPNsManager.getInstance().getVersion());
    }

    @ReactMethod
    public void enableDebug(Boolean bool, Promise promise) {
        ZPNsManager.enableDebug(bool.booleanValue());
        promise.resolve(null);
    }

    @ReactMethod
    public void setPushConfig(ReadableMap readableMap, Promise promise) {
        ZPNsConfig zPNsConfigConvertPushConfig = ZPNsConverter.convertPushConfig(readableMap);
        ZPNsManager.setPushConfig(zPNsConfigConvertPushConfig);
        if (!zPNsConfigConvertPushConfig.enableFCMPush) {
            ZPNsLogWriter.printSystemProperty();
        }
        promise.resolve(null);
    }

    @ReactMethod
    public void registerPush(Boolean bool, Integer num, ReadableMap readableMap, Promise promise) {
        ZPNsPluginEventHandler.isRegisterPushInvoked = true;
        if (clickedResultMap != null && reactContext != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() {
                @Override
                public final void run() {
                    RCTZegoZPNsModule.lambda$registerPush$0();
                }
            });
        }
        ZPNsManager.getInstance().registerPush((Application) reactContext.getApplicationContext());
        promise.resolve(null);
    }

    static void lambda$registerPush$0() {
        ReactApplicationContext reactApplicationContext;
        if (clickedResultMap == null || (reactApplicationContext = reactContext) == null) {
            return;
        }
        ((DeviceEventManagerModule.RCTDeviceEventEmitter) reactApplicationContext.getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)).emit("im.zego.zpns.reactnative.notificationClicked", clickedResultMap);
        clickedResultMap = null;
    }

    @ReactMethod
    public void unregisterPush(Promise promise) {
        ZPNsManager.getInstance().unregisterPush();
        promise.resolve(null);
    }

    @ReactMethod
    public void createNotificationChannel(ReadableMap readableMap) {
        if (Build.VERSION.SDK_INT >= 26) {
            Application application = (Application) reactContext.getApplicationContext();
            NotificationManager notificationManager = (NotificationManager) application.getSystemService(NotificationManager.class);
            String string = readableMap.hasKey("channelID") ? readableMap.getString("channelID") : "";
            String string2 = readableMap.hasKey("channelName") ? readableMap.getString("channelName") : "";
            Uri uri = Uri.parse("android.resource://" + application.getPackageName() + (readableMap.hasKey("androidSound") ? readableMap.getString("androidSound") : ""));
            NotificationChannel notificationChannel = new NotificationChannel(string, string2, 4);
            notificationChannel.setSound(uri, null);
            notificationManager.createNotificationChannel(notificationChannel);
        }
    }

    @ReactMethod
    public void addLocalNotification(ReadableMap readableMap) {
        Application application = (Application) reactContext.getApplicationContext();
        NotificationManager notificationManager = (NotificationManager) application.getSystemService(NotificationManager.class);
        String string = readableMap.hasKey("title") ? readableMap.getString("title") : "";
        String string2 = readableMap.hasKey("content") ? readableMap.getString("content") : "";
        String string3 = readableMap.hasKey("payload") ? readableMap.getString("payload") : "";
        String string4 = readableMap.hasKey("channelID") ? readableMap.getString("channelID") : "";
        String string5 = readableMap.hasKey("androidSound") ? readableMap.getString("androidSound") : "";
        int identifier = application.getResources().getIdentifier("ic_launcher", "mipmap", application.getPackageName());
        Notification.Builder builder = new Notification.Builder(application);
        builder.setContentTitle(string);
        builder.setContentText(string2);
        builder.setSmallIcon(identifier);
        if (!string4.equals("") && Build.VERSION.SDK_INT >= 26) {
            builder.setChannelId(string4);
        }
        if (!string5.equals("")) {
            builder.setSound(Uri.parse("android.resource://" + application.getPackageName() + string5));
        }
        Intent intent = new Intent();
        if (!string3.equals("")) {
            intent.putExtra("payload", string3);
        }
        builder.setContentIntent(PendingIntent.getActivity(application, 0, intent, AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL));
        builder.setAutoCancel(true);
        notificationManager.notify(1, builder.build());
    }

    @ReactMethod
    public void setLocalBadge(int i) {
        ZPNsManager.getInstance().setApplicationIconBadgeNumber(reactContext.getApplicationContext(), i);
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

    @ReactMethod
    public void setBackgroundMessageHandler() {
        isBackgroundMessageHandleSet = true;
        synchronized (backgroundEventList) {
            for (Pair<WritableMap, ZPNsMessage> pair : backgroundEventList) {
                WritableMap writableMap = (WritableMap) pair.first;
                boolean useWakeFulService = getUseWakeFulService((ZPNsMessage) pair.second);
                Intent intent = new Intent(reactContext, (Class<?>) ZPNsService.class);
                intent.putExtras(Arguments.toBundle(writableMap));
                HeadlessJsTaskService.acquireWakeLockNow(reactContext);
                ZPNsService.enqueueWork(reactContext, ZPNsService.class, 10000, intent, useWakeFulService);
                ZPNsLogWriter.writeLog("onThroughBackgroundMessage. title: " + writableMap.getString("title") + ", content: " + writableMap.getString("content") + ", extras: " + writableMap.getString(TSGeofence.FIELD_EXTRAS), "");
            }
            backgroundEventList.clear();
        }
    }
}
