package com.reactnative.ivpusic.imagepicker;

import com.facebook.react.TurboReactPackage;
import com.facebook.react.bridge.NativeModule;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.module.model.ReactModuleInfo;
import com.facebook.react.module.model.ReactModuleInfoProvider;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Nonnull;

public class PickerPackage extends TurboReactPackage {
    @Override
    @Nonnull
    public List<NativeModule> createNativeModules(@Nonnull ReactApplicationContext reactApplicationContext) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new PickerModule(reactApplicationContext));
        return arrayList;
    }

    @Override
    public NativeModule getModule(String str, ReactApplicationContext reactApplicationContext) {
        if (str.equals(NativeImageCropPickerSpec.NAME)) {
            return new PickerModule(reactApplicationContext);
        }
        return null;
    }

    @Override
    public ReactModuleInfoProvider getReactModuleInfoProvider() {
        return new ReactModuleInfoProvider() {
            @Override
            public final Map getReactModuleInfos() {
                return PickerPackage.lambda$getReactModuleInfoProvider$0();
            }
        };
    }

    static Map lambda$getReactModuleInfoProvider$0() {
        HashMap map = new HashMap();
        map.put(NativeImageCropPickerSpec.NAME, new ReactModuleInfo(NativeImageCropPickerSpec.NAME, NativeImageCropPickerSpec.NAME, false, false, false, true));
        return map;
    }
}
