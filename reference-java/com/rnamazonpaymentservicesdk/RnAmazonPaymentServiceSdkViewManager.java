package com.rnamazonpaymentservicesdk;

import android.graphics.Color;
import android.view.View;
import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;

public class RnAmazonPaymentServiceSdkViewManager extends SimpleViewManager<View> {
    public static final String REACT_CLASS = "ApsView";

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    public View createViewInstance(ThemedReactContext themedReactContext) {
        return new View(themedReactContext);
    }

    @ReactProp(name = "color")
    public void setColor(View view, String str) {
        view.setBackgroundColor(Color.parseColor(str));
    }
}
