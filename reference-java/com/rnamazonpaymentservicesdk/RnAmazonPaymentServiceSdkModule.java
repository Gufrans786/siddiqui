package com.rnamazonpaymentservicesdk;

import android.app.Activity;
import android.content.Intent;
import com.facebook.react.bridge.ActivityEventListener;
import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.module.annotations.ReactModule;
import com.payfort.fortpaymentsdk.FortSdk;
import com.payfort.fortpaymentsdk.callbacks.FortCallBackManager;
import com.payfort.fortpaymentsdk.callbacks.FortInterfaces;
import com.payfort.fortpaymentsdk.domain.model.FortRequest;
import java.util.Map;
import org.json.JSONObject;

@ReactModule(name = RnAmazonPaymentServiceSdkModule.NAME)
public class RnAmazonPaymentServiceSdkModule extends ReactContextBaseJavaModule implements ActivityEventListener {
    public static final String NAME = "RnAmazonPaymentServiceSdk";
    private static final int PAYFORT_REQUEST_CODE = 1166;
    private FortCallBackManager fortCallback;

    public static native int nativeMultiply(int i, int i2);

    @Override
    public void onNewIntent(Intent intent) {
    }

    public RnAmazonPaymentServiceSdkModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        this.fortCallback = null;
        reactApplicationContext.addActivityEventListener(this);
    }

    @Override
    public String getName() {
        return NAME;
    }

    @ReactMethod
    public void multiply(int i, int i2, Promise promise) {
        promise.resolve(Integer.valueOf(i * i2));
    }

    @ReactMethod
    public void getDeviceID(Promise promise) {
        try {
            promise.resolve(FortSdk.getDeviceId(getReactApplicationContext()));
        } catch (Exception e) {
            promise.reject("Create Event Error", e);
        }
    }

    @ReactMethod
    public void callFortRequest(ReadableMap readableMap, String str, Double d, Boolean bool, Boolean bool2, Callback callback, Callback callback2) {
        if (this.fortCallback == null) {
            this.fortCallback = FortCallBackManager.Factory.create();
        }
        FortRequest fortRequest = new FortRequest();
        fortRequest.setRequestMap(readableMap.toHashMap());
        fortRequest.setShowResponsePage(bool2.booleanValue());
        callSdk(fortRequest, str, d, bool, callback, callback2);
    }

    private void callSdk(FortRequest fortRequest, String str, Double d, Boolean bool, final Callback callback, final Callback callback2) {
        String str2;
        if (str.equals("TEST")) {
            str2 = "https://sbcheckout.payfort.com";
        } else if (!str.equals(sa.lg.android.locate.BuildConfig.PAYFORT_ENV)) {
            str2 = "";
        } else {
            str2 = "https://checkout.payfort.com";
        }
        String str3 = str2;
        Integer.valueOf(d.intValue());
        try {
            FortSdk.getInstance().registerCallback(getReactApplicationContext().getCurrentActivity(), fortRequest, str3, PAYFORT_REQUEST_CODE, this.fortCallback, bool.booleanValue(), new FortInterfaces.OnTnxProcessed() {
                @Override
                public void onCancel(Map map, Map map2) {
                    callback2.invoke(new JSONObject(map2).toString());
                }

                @Override
                public void onSuccess(Map map, Map map2) {
                    callback.invoke(new JSONObject(map2).toString());
                }

                @Override
                public void onFailure(Map map, Map map2) {
                    callback2.invoke(new JSONObject(map2).toString());
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
        if (i == PAYFORT_REQUEST_CODE) {
            this.fortCallback.onActivityResult(i, i2, intent);
        }
    }

    @ReactMethod
    public void callDirectPayFortRequest(ReadableMap readableMap, ReadableMap readableMap2, String str, Callback callback, Callback callback2) {
        DirectPayFragment.setRequestObject(readableMap);
        DirectPayFragment.setPayButtonProps(readableMap2);
        DirectPayFragment.setEnvironment(str);
        DirectPayFragment.setCallbackOnSuccess(callback);
        DirectPayFragment.setCallbackOnFailure(callback2);
    }

    @ReactMethod
    public void callCustomFortRequest(ReadableMap readableMap, ReadableMap readableMap2, String str, Callback callback, Callback callback2) {
        CustomCheckoutFragment.setRequestObject(readableMap);
        CustomCheckoutFragment.setPayButtonProps(readableMap2);
        CustomCheckoutFragment.setEnvironment(str);
        CustomCheckoutFragment.setCallbackOnSuccess(callback);
        CustomCheckoutFragment.setCallbackOnFailure(callback2);
    }
}
