package sa.lg.android.locate.payment.hyperpay;

import android.app.Activity;
import android.content.Intent;
import com.caverock.androidsvg.SVGParser;
import com.facebook.react.bridge.ActivityEventListener;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.LifecycleEventListener;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableType;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.modules.core.DeviceEventManagerModule;
import com.oppwa.mobile.connect.checkout.dialog.CheckoutActivity;
import com.oppwa.mobile.connect.checkout.meta.CheckoutSettings;
import com.oppwa.mobile.connect.checkout.meta.CheckoutStorePaymentDetailsMode;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.provider.Connect;
import com.oppwa.mobile.connect.provider.Transaction;
import com.oppwa.mobile.connect.provider.TransactionType;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import sa.lg.android.locate.payment.PaymentConstants;

public class HyperPayModule extends ReactContextBaseJavaModule implements ActivityEventListener, LifecycleEventListener {
    private static final String resultUrl = "sa.lgandroidlocate://result";
    ReactApplicationContext appContext;
    private ReadableMap paymentRequestFromApp;
    private WritableMap result;
    private PaymentConstants.TransactionState transactionState;

    @ReactMethod
    public void addListener(String str) {
    }

    @Override
    public void onHostDestroy() {
    }

    @Override
    public void onHostPause() {
    }

    @ReactMethod
    public void removeListeners(Integer num) {
    }

    public HyperPayModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        this.appContext = reactApplicationContext;
        reactApplicationContext.addActivityEventListener(this);
        this.appContext.addLifecycleEventListener(this);
    }

    @Override
    public String getName() {
        return "HyperPayModule";
    }

    @Override
    public Map<String, Object> getConstants() {
        HashMap map = new HashMap();
        map.put("EventCompleted", PaymentConstants.eventCompleted);
        return map;
    }

    private void sendEvent(ReactContext reactContext, String str, WritableMap writableMap) {
        ((DeviceEventManagerModule.RCTDeviceEventEmitter) reactContext.getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)).emit(str, writableMap);
    }

    @ReactMethod
    public void openHyperPay(ReadableMap readableMap) {
        CheckoutSettings checkoutSettings;
        this.paymentRequestFromApp = readableMap;
        this.transactionState = PaymentConstants.TransactionState.NEW;
        boolean z = readableMap.getBoolean("isSandbox");
        String string = readableMap.getString("checkoutId");
        String string2 = readableMap.getString("shopperResultURL");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ReadableArray array = readableMap.getArray("paymentBrands");
        if (array != null) {
            for (int i = 0; i < array.size(); i++) {
                if (array.getType(i) == ReadableType.String) {
                    linkedHashSet.add(array.getString(i));
                }
            }
        }
        if (z) {
            checkoutSettings = new CheckoutSettings(string, linkedHashSet, Connect.ProviderMode.TEST);
        } else {
            checkoutSettings = new CheckoutSettings(string, linkedHashSet, Connect.ProviderMode.LIVE);
        }
        if (string2 == null) {
            string2 = resultUrl;
        }
        checkoutSettings.setShopperResultUrl(string2);
        checkoutSettings.setStorePaymentDetailsMode(CheckoutStorePaymentDetailsMode.PROMPT);
        checkoutSettings.setTotalAmountRequired(true);
        getCurrentActivity().startActivityForResult(checkoutSettings.createCheckoutActivityIntent(this.appContext), CheckoutActivity.REQUEST_CODE_CHECKOUT);
    }

    @Override
    public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
        WritableMap writableMapCreateMap = Arguments.createMap();
        this.result = writableMapCreateMap;
        switch (i2) {
            case 100:
                Transaction transaction = (Transaction) intent.getParcelableExtra(CheckoutActivity.CHECKOUT_RESULT_TRANSACTION);
                this.result.putString("eventProperty", String.valueOf(PaymentConstants.EventProperty.complete));
                if (transaction != null && transaction.getTransactionType() == TransactionType.SYNC) {
                    this.transactionState = PaymentConstants.TransactionState.COMPLETED;
                    this.result.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, "OPPTransactionTypeSynchronous");
                    this.result.putMap("paymentRequestFromApp", this.paymentRequestFromApp);
                    sendEvent(this.appContext, PaymentConstants.eventCompleted, this.result);
                    break;
                }
                break;
            case 101:
                writableMapCreateMap.putString("eventProperty", String.valueOf(PaymentConstants.EventProperty.canceled));
                this.result.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, String.valueOf(PaymentConstants.EventProperty.canceled));
                this.result.putMap("paymentRequestFromApp", this.paymentRequestFromApp);
                sendEvent(this.appContext, PaymentConstants.eventCompleted, this.result);
                break;
            case 102:
                PaymentError paymentError = (PaymentError) intent.getParcelableExtra(CheckoutActivity.CHECKOUT_RESULT_ERROR);
                this.result.putMap("error", (ReadableMap) paymentError);
                this.result.putString("eventProperty", String.valueOf(PaymentConstants.EventProperty.error));
                this.result.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, String.valueOf(PaymentConstants.EventProperty.error));
                this.result.putMap("paymentRequestFromApp", this.paymentRequestFromApp);
                this.result.putString("errorMessage", paymentError.getErrorMessage());
                this.result.putString("errorCode", String.valueOf(paymentError.getErrorCode().getErrorCode()));
                sendEvent(this.appContext, PaymentConstants.eventCompleted, this.result);
                break;
        }
    }

    @Override
    public void onNewIntent(Intent intent) {
        if (intent.getScheme() == null || !intent.getScheme().equals(PaymentConstants.HYPER_PAY_DEEP_LINK)) {
            return;
        }
        this.transactionState = PaymentConstants.TransactionState.COMPLETED;
        WritableMap writableMapCreateMap = Arguments.createMap();
        this.result = writableMapCreateMap;
        writableMapCreateMap.putString("eventProperty", String.valueOf(PaymentConstants.EventProperty.complete));
        this.result.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, "onNewIntent");
        this.result.putMap("paymentRequestFromApp", this.paymentRequestFromApp);
        sendEvent(this.appContext, PaymentConstants.eventCompleted, this.result);
    }

    @Override
    public void onHostResume() {
        if (this.transactionState == PaymentConstants.TransactionState.COMPLETED) {
            WritableMap writableMapCreateMap = Arguments.createMap();
            this.result = writableMapCreateMap;
            writableMapCreateMap.putString("eventProperty", String.valueOf(PaymentConstants.EventProperty.complete));
            this.result.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, "onHostResume");
            sendEvent(this.appContext, PaymentConstants.eventCompleted, this.result);
        }
    }
}
