package com.rnamazonpaymentservicesdk;

import com.facebook.react.ReactPackage;
import com.facebook.react.bridge.NativeModule;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.uimanager.ViewManager;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class RnAmazonPaymentServiceSdkPackage implements ReactPackage {
    @Override
    public List<NativeModule> createNativeModules(ReactApplicationContext reactApplicationContext) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new RnAmazonPaymentServiceSdkModule(reactApplicationContext));
        return arrayList;
    }

    @Override
    public List<ViewManager> createViewManagers(ReactApplicationContext reactApplicationContext) {
        return Arrays.asList(new RnAmazonPaymentServiceSdkViewManager(), new DirectPayManager(reactApplicationContext), new CustomCheckoutViewManager(reactApplicationContext));
    }
}
