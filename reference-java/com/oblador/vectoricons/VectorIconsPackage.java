package com.oblador.vectoricons;

import com.facebook.react.TurboReactPackage;
import com.facebook.react.bridge.NativeModule;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.module.model.ReactModuleInfo;
import com.facebook.react.module.model.ReactModuleInfoProvider;
import java.util.HashMap;
import java.util.Map;

public class VectorIconsPackage extends TurboReactPackage {
    @Override
    public NativeModule getModule(String str, ReactApplicationContext reactApplicationContext) {
        if (str.equals("RNVectorIcons")) {
            return new VectorIconsModule(reactApplicationContext);
        }
        return null;
    }

    @Override
    public ReactModuleInfoProvider getReactModuleInfoProvider() {
        return new ReactModuleInfoProvider() {
            @Override
            public final Map getReactModuleInfos() {
                return VectorIconsPackage.lambda$getReactModuleInfoProvider$0();
            }
        };
    }

    static Map lambda$getReactModuleInfoProvider$0() {
        HashMap map = new HashMap();
        map.put("RNVectorIcons", new ReactModuleInfo("RNVectorIcons", "RNVectorIcons", false, false, false, false, true));
        return map;
    }
}
