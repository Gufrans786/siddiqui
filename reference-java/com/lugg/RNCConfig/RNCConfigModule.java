package com.lugg.RNCConfig;

import android.content.res.Resources;
import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

public class RNCConfigModule extends ReactContextBaseJavaModule {
    public RNCConfigModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
    }

    @Override
    public String getName() {
        return "RNCConfigModule";
    }

    @Override
    public Map<String, Object> getConstants() {
        String packageName;
        HashMap map = new HashMap();
        try {
            ReactApplicationContext reactApplicationContext = getReactApplicationContext();
            try {
                packageName = reactApplicationContext.getString(reactApplicationContext.getResources().getIdentifier("build_config_package", TypedValues.Custom.S_STRING, reactApplicationContext.getPackageName()));
            } catch (Resources.NotFoundException unused) {
                packageName = getReactApplicationContext().getApplicationContext().getPackageName();
            }
            for (Field field : Class.forName(packageName + ".BuildConfig").getDeclaredFields()) {
                try {
                    map.put(field.getName(), field.get(null));
                } catch (IllegalAccessException unused2) {
                    Log.d("ReactNative", "ReactConfig: Could not access BuildConfig field " + field.getName());
                }
            }
        } catch (ClassNotFoundException unused3) {
            Log.d("ReactNative", "ReactConfig: Could not find BuildConfig class");
        }
        return map;
    }
}
