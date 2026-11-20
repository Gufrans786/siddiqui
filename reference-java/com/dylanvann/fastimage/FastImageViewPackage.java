package com.dylanvann.fastimage;

import com.facebook.react.TurboReactPackage;
import com.facebook.react.bridge.NativeModule;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.module.model.ReactModuleInfo;
import com.facebook.react.module.model.ReactModuleInfoProvider;
import com.facebook.react.uimanager.ViewManager;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FastImageViewPackage extends TurboReactPackage {
    @Override
    public NativeModule getModule(String str, ReactApplicationContext reactApplicationContext) {
        if (str.equals("FastImageViewModule")) {
            return new FastImageViewModule(reactApplicationContext);
        }
        return null;
    }

    @Override
    public ReactModuleInfoProvider getReactModuleInfoProvider() {
        return new ReactModuleInfoProvider() {
            @Override
            public final Map getReactModuleInfos() {
                return FastImageViewPackage.lambda$getReactModuleInfoProvider$0();
            }
        };
    }

    static Map lambda$getReactModuleInfoProvider$0() {
        HashMap map = new HashMap();
        map.put("FastImageViewModule", new ReactModuleInfo("FastImageViewModule", "FastImageViewModule", false, false, true, false, true));
        return map;
    }

    @Override
    public List<ViewManager> createViewManagers(ReactApplicationContext reactApplicationContext) {
        return Collections.singletonList(new FastImageViewManager());
    }
}
