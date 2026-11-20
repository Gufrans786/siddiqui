package geidea.utils;

import android.app.Activity;
import android.content.Intent;
import android.widget.Toast;
import androidx.webkit.internal.AssetHelper;
import com.caverock.androidsvg.SVGParser;
import com.facebook.react.bridge.ActivityEventListener;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.LifecycleEventListener;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.WritableMap;
import com.google.android.gms.auth.api.identity.SaveAccountLinkingTokenRequest;
import com.payfort.fortpaymentsdk.constants.Constants;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class GeideaModule extends ReactContextBaseJavaModule implements ActivityEventListener, LifecycleEventListener {
    private WritableMap params;
    private ReactContext reactContext;

    @ReactMethod
    public void addListener(String str) {
    }

    @Override
    public void onHostDestroy() {
    }

    @Override
    public void onHostPause() {
    }

    @Override
    public void onHostResume() {
    }

    @ReactMethod
    public void removeListeners() {
    }

    public GeideaModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        this.reactContext = reactApplicationContext;
        reactApplicationContext.addActivityEventListener(this);
        this.reactContext.addLifecycleEventListener(this);
    }

    @Override
    public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
        String str;
        String str2;
        WritableMap writableMapCreateMap = Arguments.createMap();
        this.params = writableMapCreateMap;
        if (i != 100) {
            if (i == 200) {
                if (intent == null) {
                    return;
                }
                String stringExtra = intent.getStringExtra("status");
                String stringExtra2 = intent.getStringExtra("result");
                try {
                    JSONObject jSONObject = new JSONObject(stringExtra2);
                    int iOptInt = jSONObject.optInt("code");
                    String strOptString = jSONObject.optString("message");
                    this.params.putString("status", stringExtra);
                    this.params.putString("result", stringExtra2);
                    this.params.putString("message", strOptString);
                    this.params.putString("code", String.valueOf(iOptInt));
                    if (stringExtra.equals("Success")) {
                        this.params.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, GeideaUtils.GEIDEA_FORMAT_SUCCESS);
                    } else {
                        this.params.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, GeideaUtils.GEIDEA_FORMAT_FAIL);
                    }
                } catch (JSONException e) {
                    this.params.putString("status", e.getMessage());
                    this.params.putString("message", e.getMessage());
                    this.params.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, GeideaUtils.GEIDEA_FORMAT_FAIL);
                    this.params.putString("code", String.valueOf(0));
                }
                GeideaUtils.sendEvent(this.reactContext, GeideaUtils.GEIDEA_FORMAT, this.params);
                return;
            }
            if (i == 777) {
                if (intent == null) {
                    return;
                }
                String stringExtra3 = intent.getStringExtra("status");
                String stringExtra4 = intent.getStringExtra("result");
                try {
                    JSONObject jSONObject2 = new JSONObject(stringExtra4);
                    int iOptInt2 = jSONObject2.optInt("code");
                    String strOptString2 = jSONObject2.optString("message");
                    this.params.putString("status", stringExtra3);
                    this.params.putString("result", stringExtra4);
                    this.params.putString("message", strOptString2);
                    this.params.putString("code", String.valueOf(iOptInt2));
                    if (stringExtra3.equals("Success")) {
                        this.params.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, GeideaUtils.GEIDEA_REGISTRATION_SUCCESS);
                    } else {
                        this.params.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, GeideaUtils.GEIDEA_REGISTRATION_FAIL);
                    }
                } catch (JSONException e2) {
                    this.params.putString("status", e2.getMessage());
                    this.params.putString("message", e2.getMessage());
                    this.params.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, GeideaUtils.GEIDEA_REGISTRATION_FAIL);
                    this.params.putString("code", String.valueOf(0));
                }
                GeideaUtils.sendEvent(this.reactContext, GeideaUtils.GEIDEA_REGISTRATION, this.params);
                return;
            }
            if (i == 891 && intent != null) {
                String stringExtra5 = intent.getStringExtra("status");
                String stringExtra6 = intent.getStringExtra("data");
                if (stringExtra5.equals("Success")) {
                    try {
                        JSONObject jSONObject3 = new JSONObject(stringExtra6);
                        WritableMap writableMapCreateMap2 = Arguments.createMap();
                        writableMapCreateMap2.putBoolean("registrationStatus", jSONObject3.optBoolean("registration_status"));
                        writableMapCreateMap2.putString("terminalID", jSONObject3.optString("terminal_id"));
                        writableMapCreateMap2.putString("merchantNameInEn", jSONObject3.optString("merchant_name_en"));
                        writableMapCreateMap2.putString("merchantNameInAr", jSONObject3.optString("merchant_name_ar"));
                        writableMapCreateMap2.putString("merchantAddressOneInEn", jSONObject3.optString("merchant_address_one_en"));
                        writableMapCreateMap2.putString("merchantAddressOneInAr", jSONObject3.optString("merchant_address_one_ar"));
                        writableMapCreateMap2.putString("merchantAddressTwoInEn", jSONObject3.optString("merchant_address_two_en"));
                        writableMapCreateMap2.putString("merchantAddressTwoInAr", jSONObject3.optString("merchant_address_two_ar"));
                        writableMapCreateMap2.putString("merchantID", jSONObject3.optString("merchant_id"));
                        writableMapCreateMap2.putString("merchantCategoryCode", jSONObject3.optString("merchant_category_code"));
                        writableMapCreateMap2.putString("acqBankId", jSONObject3.optString("acq_bank_id"));
                        this.params.putString("status", stringExtra5);
                        this.params.putMap("result", writableMapCreateMap2);
                        this.params.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, GeideaUtils.FETCH_REGISTRATION_SUCCESS);
                        this.params.putString("message", GeideaUtils.FETCH_REGISTRATION_SUCCESS);
                        this.params.putString("code", String.valueOf(GeideaUtils.FETCH_REGISTRATION_DETAILS_CODE));
                        GeideaUtils.sendEvent(this.reactContext, GeideaUtils.FETCH_REGISTRATION, this.params);
                    } catch (JSONException e3) {
                        this.params.putString("result", stringExtra6);
                        this.params.putString("status", stringExtra5);
                        this.params.putString("message", e3.getMessage());
                        this.params.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, GeideaUtils.FETCH_REGISTRATION_FAIL);
                        this.params.putString("code", String.valueOf(0));
                        GeideaUtils.sendEvent(this.reactContext, GeideaUtils.FETCH_REGISTRATION, this.params);
                    }
                } else {
                    String stringExtra7 = intent.getStringExtra("result");
                    try {
                        JSONObject jSONObject4 = new JSONObject(stringExtra7);
                        this.params.putString("status", stringExtra5);
                        this.params.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, GeideaUtils.FETCH_REGISTRATION_FAIL);
                        this.params.putInt("code", jSONObject4.optInt("code"));
                        this.params.putString("message", jSONObject4.optString("message"));
                        GeideaUtils.sendEvent(this.reactContext, GeideaUtils.FETCH_REGISTRATION, this.params);
                    } catch (JSONException e4) {
                        this.params.putString("result", stringExtra7);
                        this.params.putString("status", stringExtra5);
                        this.params.putString("message", e4.getMessage());
                        this.params.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, GeideaUtils.FETCH_REGISTRATION_FAIL);
                        this.params.putString("code", String.valueOf(0));
                        GeideaUtils.sendEvent(this.reactContext, GeideaUtils.FETCH_REGISTRATION, this.params);
                    }
                }
                GeideaUtils.sendEvent(this.reactContext, GeideaUtils.FETCH_REGISTRATION, this.params);
                return;
            }
            return;
        }
        if (i2 != -1 || intent == null) {
            writableMapCreateMap.putString("status", String.valueOf(i2));
            this.params.putString("message", "Result code not ok or is null");
            this.params.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, GeideaUtils.GEIDEA_PURCHASE_FAIL);
            this.params.putString("code", String.valueOf(0));
            GeideaUtils.sendEvent(this.reactContext, GeideaUtils.GEIDEA_PURCHASE, this.params);
            return;
        }
        String stringExtra8 = intent.getStringExtra("status");
        if (stringExtra8.equals("Approved")) {
            try {
                JSONObject jSONObject5 = new JSONObject(intent.getStringExtra("result"));
                WritableMap writableMapCreateMap3 = Arguments.createMap();
                str = GeideaUtils.GEIDEA_PURCHASE_FAIL;
                try {
                    writableMapCreateMap3.putString("orderID", jSONObject5.optString("ORDER_ID"));
                    writableMapCreateMap3.putString("rrn", jSONObject5.optString("rrn"));
                    writableMapCreateMap3.putString("card_scheme", jSONObject5.optString("card_scheme"));
                    writableMapCreateMap3.putString("pan", jSONObject5.optString("pan"));
                    writableMapCreateMap3.putString("stan", jSONObject5.optString("stan"));
                    writableMapCreateMap3.putString("entry_mode", jSONObject5.optString("entry_mode"));
                    writableMapCreateMap3.putString("app_version", jSONObject5.optString("app_version"));
                    writableMapCreateMap3.putString("resp_code", jSONObject5.optString("resp_code"));
                    writableMapCreateMap3.putString("acq_id", jSONObject5.optString("acq_id"));
                    writableMapCreateMap3.putString("terminal_id", jSONObject5.optString("terminal_id"));
                    writableMapCreateMap3.putString(Constants.FORT_PARAMS.AMOUNT, jSONObject5.optString(Constants.FORT_PARAMS.AMOUNT));
                    writableMapCreateMap3.putString(SaveAccountLinkingTokenRequest.TOKEN_TYPE_AUTH_CODE, jSONObject5.optString(SaveAccountLinkingTokenRequest.TOKEN_TYPE_AUTH_CODE));
                    writableMapCreateMap3.putString("res_desc", jSONObject5.optString("res_desc"));
                    this.params.putString("status", stringExtra8);
                    this.params.putMap("result", writableMapCreateMap3);
                    this.params.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, GeideaUtils.GEIDEA_PURCHASE_SUCCESS);
                    this.params.putString("message", GeideaUtils.GEIDEA_PURCHASE_SUCCESS_MESSAGE);
                    this.params.putString("code", String.valueOf(1));
                    ReactContext reactContext = this.reactContext;
                    WritableMap writableMap = this.params;
                    str2 = GeideaUtils.GEIDEA_PURCHASE;
                    try {
                        GeideaUtils.sendEvent(reactContext, str2, writableMap);
                    } catch (JSONException e5) {
                        e = e5;
                        this.params.putString("status", e.getMessage());
                        this.params.putString("message", e.getMessage());
                        this.params.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, str);
                        this.params.putString("code", String.valueOf(0));
                        GeideaUtils.sendEvent(this.reactContext, str2, this.params);
                    }
                } catch (JSONException e6) {
                    e = e6;
                    str2 = GeideaUtils.GEIDEA_PURCHASE;
                }
            } catch (JSONException e7) {
                e = e7;
                str = GeideaUtils.GEIDEA_PURCHASE_FAIL;
                str2 = GeideaUtils.GEIDEA_PURCHASE;
            }
        } else {
            if (stringExtra8.equals("Declined")) {
                this.params.putString("status", stringExtra8);
                this.params.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, GeideaUtils.GEIDEA_PURCHASE_DECLINE);
                this.params.putString("message", GeideaUtils.GEIDEA_PURCHASE_DECLINE_MESSAGE);
                this.params.putString("code", String.valueOf(2));
                GeideaUtils.sendEvent(this.reactContext, GeideaUtils.GEIDEA_PURCHASE, this.params);
                return;
            }
            if (stringExtra8.equals("Aborted")) {
                String stringExtra9 = intent.getStringExtra("reason");
                this.params.putString("status", stringExtra8);
                this.params.putString("message", stringExtra9);
                this.params.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, GeideaUtils.GEIDEA_PURCHASE_ABORTED);
                this.params.putString("code", String.valueOf(3));
                GeideaUtils.sendEvent(this.reactContext, GeideaUtils.GEIDEA_PURCHASE, this.params);
            }
        }
    }

    @Override
    public void onNewIntent(Intent intent) {
        if (intent.getScheme() != null) {
            intent.getScheme().equals("sa.lgandroidlocate");
        }
    }

    @Override
    public String getName() {
        return "GeideaModule";
    }

    @Override
    public Map<String, Object> getConstants() {
        HashMap map = new HashMap();
        map.put(GeideaUtils.GEIDEA_PURCHASE, GeideaUtils.GEIDEA_PURCHASE);
        map.put(GeideaUtils.GEIDEA_PURCHASE_FAIL, GeideaUtils.GEIDEA_PURCHASE_FAIL);
        map.put(GeideaUtils.GEIDEA_PURCHASE_SUCCESS, GeideaUtils.GEIDEA_PURCHASE_SUCCESS);
        map.put(GeideaUtils.GEIDEA_PURCHASE_ABORTED, GeideaUtils.GEIDEA_PURCHASE_ABORTED);
        map.put(GeideaUtils.GEIDEA_PURCHASE_DECLINE, GeideaUtils.GEIDEA_PURCHASE_DECLINE);
        map.put(GeideaUtils.GEIDEA_REGISTRATION, GeideaUtils.GEIDEA_REGISTRATION);
        map.put(GeideaUtils.GEIDEA_REGISTRATION_FAIL, GeideaUtils.GEIDEA_REGISTRATION_FAIL);
        map.put(GeideaUtils.GEIDEA_REGISTRATION_SUCCESS, GeideaUtils.GEIDEA_REGISTRATION_SUCCESS);
        map.put(GeideaUtils.GEIDEA_FORMAT, GeideaUtils.GEIDEA_FORMAT);
        map.put(GeideaUtils.GEIDEA_FORMAT_SUCCESS, GeideaUtils.GEIDEA_FORMAT_SUCCESS);
        map.put(GeideaUtils.GEIDEA_FORMAT_FAIL, GeideaUtils.GEIDEA_FORMAT_FAIL);
        map.put(GeideaUtils.FETCH_REGISTRATION, GeideaUtils.FETCH_REGISTRATION);
        map.put(GeideaUtils.FETCH_REGISTRATION_SUCCESS, GeideaUtils.FETCH_REGISTRATION_SUCCESS);
        map.put(GeideaUtils.FETCH_REGISTRATION_FAIL, GeideaUtils.FETCH_REGISTRATION_FAIL);
        return map;
    }

    @ReactMethod
    public void geideaRegistration(ReadableMap readableMap) {
        if (getCurrentActivity() == null) {
            return;
        }
        boolean z = readableMap.getBoolean("isSandbox");
        String string = readableMap.getString("terminalId");
        if (GeideaUtils.appInstalledOrNot(getCurrentActivity(), GeideaUtils.SOFTPOS_PACKAGE_NAME)) {
            Intent intent = new Intent();
            intent.setAction("geidea.net.softpos.REGISTRATION");
            intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
            intent.putExtra("TRSM_ID", string);
            if (z) {
                intent.putExtra("TMS_PLATFORM", "Ascert");
            }
            getCurrentActivity().startActivityForResult(Intent.createChooser(intent, null), GeideaUtils.REGISTRATION_REQUEST_CODE);
            return;
        }
        Toast.makeText(getCurrentActivity(), "Geidea SoftPos app is not installed", 0).show();
    }

    @ReactMethod
    public void geideaPurchase(ReadableMap readableMap) {
        if (getCurrentActivity() == null) {
            return;
        }
        readableMap.getBoolean("isSandbox");
        int i = readableMap.getInt(Constants.FORT_PARAMS.AMOUNT);
        String string = readableMap.getString("orderId");
        if (GeideaUtils.appInstalledOrNot(getCurrentActivity(), GeideaUtils.SOFTPOS_PACKAGE_NAME)) {
            Intent intent = new Intent();
            intent.setAction("geidea.net.softpos.PURCHASE");
            intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
            intent.putExtra("android.intent.extra.TEXT", String.valueOf(i));
            intent.putExtra("ORDER_ID", string);
            getCurrentActivity().startActivityForResult(Intent.createChooser(intent, null), 100);
            return;
        }
        Toast.makeText(getCurrentActivity(), "Geidea SoftPos app is not installed", 0).show();
    }

    @ReactMethod
    public void formatSoftPOSApp() {
        if (getCurrentActivity() == null) {
            return;
        }
        if (GeideaUtils.appInstalledOrNot(getCurrentActivity(), GeideaUtils.SOFTPOS_PACKAGE_NAME)) {
            Intent intent = new Intent();
            intent.setAction("geidea.net.softpos.FORMAT");
            intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
            getCurrentActivity().startActivityForResult(Intent.createChooser(intent, null), 200);
            return;
        }
        Toast.makeText(getCurrentActivity(), "Geidea SoftPos app is not installed", 0).show();
    }

    @ReactMethod
    public void fetchRegistrationDetails() {
        if (getCurrentActivity() == null) {
            return;
        }
        if (GeideaUtils.appInstalledOrNot(getCurrentActivity(), GeideaUtils.SOFTPOS_PACKAGE_NAME)) {
            Intent intent = new Intent();
            intent.setAction("geidea.net.softpos.REGISTRATION_STATUS");
            intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
            getCurrentActivity().startActivityForResult(Intent.createChooser(intent, null), GeideaUtils.FETCH_REGISTRATION_DETAILS_CODE);
            return;
        }
        Toast.makeText(getCurrentActivity(), "Geidea SoftPos app is not installed", 0).show();
    }
}
