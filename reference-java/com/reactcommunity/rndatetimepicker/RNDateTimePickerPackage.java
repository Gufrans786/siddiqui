package com.reactcommunity.rndatetimepicker;

import com.facebook.react.BaseReactPackage;
import com.facebook.react.bridge.NativeModule;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.module.model.ReactModuleInfo;
import com.facebook.react.module.model.ReactModuleInfoProvider;
import java.util.HashMap;
import java.util.Map;

public class RNDateTimePickerPackage extends BaseReactPackage {
    @Override
    public NativeModule getModule(String str, ReactApplicationContext reactApplicationContext) {
        if (str.equals("RNCDatePicker")) {
            return new DatePickerModule(reactApplicationContext);
        }
        if (str.equals("RNCTimePicker")) {
            return new TimePickerModule(reactApplicationContext);
        }
        if (str.equals("RNCMaterialDatePicker")) {
            return new MaterialDatePickerModule(reactApplicationContext);
        }
        if (str.equals("RNCMaterialTimePicker")) {
            return new MaterialTimePickerModule(reactApplicationContext);
        }
        return null;
    }

    @Override
    public ReactModuleInfoProvider getReactModuleInfoProvider() {
        return new ReactModuleInfoProvider() {
            @Override
            public final Map getReactModuleInfos() {
                return RNDateTimePickerPackage.lambda$getReactModuleInfoProvider$0();
            }
        };
    }

    static Map lambda$getReactModuleInfoProvider$0() {
        HashMap map = new HashMap();
        map.put("RNCDatePicker", new ReactModuleInfo("RNCDatePicker", "RNCDatePicker", false, false, false, true));
        map.put("RNCTimePicker", new ReactModuleInfo("RNCTimePicker", "RNCTimePicker", false, false, false, true));
        map.put("RNCMaterialDatePicker", new ReactModuleInfo("RNCMaterialDatePicker", "RNCMaterialDatePicker", false, false, false, false, true));
        map.put("RNCMaterialTimePicker", new ReactModuleInfo("RNCMaterialTimePicker", "RNCMaterialTimePicker", false, false, false, false, true));
        return map;
    }
}
