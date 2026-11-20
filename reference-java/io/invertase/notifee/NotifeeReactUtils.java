package io.invertase.notifee;

import android.os.Bundle;
import android.util.Log;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ProcessLifecycleOwner;
import app.notifee.core.EventSubscriber;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.WritableArray;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.modules.core.DeviceEventManagerModule;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;

class NotifeeReactUtils {
    public static final HeadlessTask headlessTaskManager = new HeadlessTask();

    NotifeeReactUtils() {
    }

    public static void promiseResolver(Promise promise, Exception exc, Bundle bundle) {
        if (exc != null) {
            promise.reject(exc);
        } else if (bundle != null) {
            promise.resolve(Arguments.fromBundle(bundle));
        } else {
            promise.resolve(null);
        }
    }

    public static void promiseResolver(Promise promise, Exception exc, List<Bundle> list) {
        if (exc != null) {
            promise.reject(exc);
            return;
        }
        WritableArray writableArrayCreateArray = Arguments.createArray();
        Iterator<Bundle> it = list.iterator();
        while (it.hasNext()) {
            writableArrayCreateArray.pushMap(Arguments.fromBundle(it.next()));
        }
        promise.resolve(writableArrayCreateArray);
    }

    public static void promiseBooleanResolver(Promise promise, Exception exc, Boolean bool) {
        if (exc != null) {
            promise.reject(exc);
        } else {
            promise.resolve(bool);
        }
    }

    public static void promiseStringListResolver(Promise promise, Exception exc, List<String> list) {
        if (exc != null) {
            promise.reject(exc);
            return;
        }
        WritableArray writableArrayCreateArray = Arguments.createArray();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            writableArrayCreateArray.pushString(it.next());
        }
        promise.resolve(writableArrayCreateArray);
    }

    public static void promiseResolver(Promise promise, Exception exc) {
        if (exc != null) {
            promise.reject(exc);
        } else {
            promise.resolve(null);
        }
    }

    static void startHeadlessTask(String str, WritableMap writableMap, long j, HeadlessTask.GenericCallback genericCallback) {
        headlessTaskManager.startTask(EventSubscriber.getContext(), new HeadlessTask.TaskConfig(str, j, writableMap, genericCallback));
    }

    static void sendEvent(String str, WritableMap writableMap) {
        try {
            ReactContext reactContext = HeadlessTask.getReactContext(EventSubscriber.getContext());
            if (reactContext != null && reactContext.hasActiveCatalystInstance()) {
                ((DeviceEventManagerModule.RCTDeviceEventEmitter) reactContext.getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)).emit(str, writableMap);
            }
        } catch (Exception e) {
            Log.e("SEND_EVENT", "", e);
        }
    }

    static boolean isAppInForeground() {
        return ProcessLifecycleOwner.get().getViewLifecycleRegistry().getState().isAtLeast(Lifecycle.State.RESUMED);
    }

    static void hideNotificationDrawer() {
        try {
            Object systemService = EventSubscriber.getContext().getSystemService("statusbar");
            Method method = Class.forName("android.app.StatusBarManager").getMethod("collapsePanels", new Class[0]);
            method.setAccessible(true);
            method.invoke(systemService, new Object[0]);
        } catch (Exception e) {
            Log.e("HIDE_NOTIF_DRAWER", "", e);
        }
    }
}
