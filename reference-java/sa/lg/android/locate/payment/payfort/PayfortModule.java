package sa.lg.android.locate.payment.payfort;

import android.app.Activity;
import android.content.Intent;
import com.facebook.react.bridge.ActivityEventListener;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.LifecycleEventListener;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.modules.core.DeviceEventManagerModule;
import com.google.android.gms.actions.SearchIntents;
import java.util.HashMap;
import java.util.Map;
import sa.lg.android.locate.payment.PaymentConstants;

public class PayfortModule extends ReactContextBaseJavaModule implements ActivityEventListener, LifecycleEventListener {
    private WritableMap params;
    private ReactContext reactContext;

    @ReactMethod
    public void addListener(String str) {
    }

    @Override
    public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
    }

    @Override
    public void onHostDestroy() {
    }

    @Override
    public void onHostPause() {
    }

    @Override
    public void onHostResume() {
    }

    @ReactMethod
    public void removeListeners(Integer num) {
    }

    public PayfortModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        this.reactContext = reactApplicationContext;
        reactApplicationContext.addActivityEventListener(this);
        this.reactContext.addLifecycleEventListener(this);
    }

    @Override
    public String getName() {
        return "PayfortModule";
    }

    @Override
    public Map<String, Object> getConstants() {
        HashMap map = new HashMap();
        map.put("EventCompleted", PaymentConstants.eventCompleted);
        return map;
    }

    public void sendEvent(ReactContext reactContext, String str, WritableMap writableMap) {
        ((DeviceEventManagerModule.RCTDeviceEventEmitter) reactContext.getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)).emit(str, writableMap);
    }

    @Override
    public void onNewIntent(Intent intent) {
        if (intent.getScheme() == null || !intent.getScheme().equals(PaymentConstants.PAYFORT_DEEP_LINK)) {
            return;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        this.params = writableMapCreateMap;
        writableMapCreateMap.putString("eventProperty", "complete");
        this.params.putString(SearchIntents.EXTRA_QUERY, intent.getData().getQuery());
        sendEvent(this.reactContext, PaymentConstants.eventCompleted, this.params);
    }
}
