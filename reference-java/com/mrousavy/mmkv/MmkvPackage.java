package com.mrousavy.mmkv;

import com.facebook.react.TurboReactPackage;
import com.facebook.react.bridge.NativeModule;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.module.model.ReactModuleInfo;
import com.facebook.react.module.model.ReactModuleInfoProvider;
import java.util.HashMap;
import java.util.Map;

public class MmkvPackage extends TurboReactPackage {
    @Override
    public NativeModule getModule(String str, ReactApplicationContext reactApplicationContext) {
        if (str.equals(NativeMmkvPlatformContextSpec.NAME)) {
            return new MmkvPlatformContextModule(reactApplicationContext);
        }
        return null;
    }

    @Override
    public ReactModuleInfoProvider getReactModuleInfoProvider() {
        return new ReactModuleInfoProvider() {
            @Override
            public final Map getReactModuleInfos() {
                return MmkvPackage.lambda$getReactModuleInfoProvider$0();
            }
        };
    }

    static Map lambda$getReactModuleInfoProvider$0() {
        HashMap map = new HashMap();
        map.put(NativeMmkvPlatformContextSpec.NAME, new ReactModuleInfo(NativeMmkvPlatformContextSpec.NAME, NativeMmkvPlatformContextSpec.NAME, false, false, true, false, true));
        return map;
    }
}
