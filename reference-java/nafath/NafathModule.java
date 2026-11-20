package nafath;

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
import java.util.HashMap;
import java.util.Map;

public class NafathModule extends ReactContextBaseJavaModule implements ActivityEventListener, LifecycleEventListener {
    private WritableMap params;
    private ReactContext reactContext;

    @ReactMethod
    public void addListener(String str) {
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

    public NafathModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        this.reactContext = reactApplicationContext;
        reactApplicationContext.addActivityEventListener(this);
        this.reactContext.addLifecycleEventListener(this);
    }

    @Override
    public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
        this.params = Arguments.createMap();
    }

    @Override
    public void onNewIntent(Intent intent) {
        if (intent.getScheme() != null) {
            intent.getScheme().equals(NafathUtils.SCHEMA);
        }
    }

    @Override
    public String getName() {
        return "NafathModule";
    }

    @Override
    public Map<String, Object> getConstants() {
        HashMap map = new HashMap();
        map.put("SCHEMA", NafathUtils.SCHEMA);
        map.put(NafathUtils.EventCompleted, NafathUtils.EventCompleted);
        map.put(NafathUtils.EventError, NafathUtils.EventError);
        return map;
    }
}
