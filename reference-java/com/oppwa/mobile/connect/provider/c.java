package com.oppwa.mobile.connect.provider;

import android.content.Context;
import com.caverock.androidsvg.SVGParser;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.BrandsValidation;
import com.oppwa.mobile.connect.payment.CheckoutInfo;
import com.oppwa.mobile.connect.payment.ImagesRequest;
import com.oppwa.mobile.connect.payment.PaymentParams;
import com.oppwa.mobile.connect.provider.model.BinInfo;
import com.oppwa.mobile.connect.utils.Logger;
import com.oppwa.mobile.connect.utils.StringUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class c {
    c() {
    }

    Transaction a(Context context, Connect.ProviderMode providerMode, Connect.ProviderDomain providerDomain, String str, Transaction transaction) throws PaymentException {
        PaymentParams paymentParams = transaction.getPaymentParams();
        String str2 = String.format("/v1/checkouts/%s%s", paymentParams.getCheckoutId(), str);
        try {
            Map<String, String> paramsForRequest = paymentParams.getParamsForRequest();
            a(context, providerMode, paymentParams, str2);
            new d(context, transaction.getPaymentParams().getCheckoutId(), StringUtils.inputStreamToString(HttpUtils.makeRequest(context, providerMode, providerDomain, str2, paramsForRequest, paymentParams.getCheckoutId())), providerMode, providerDomain).a(transaction);
            return transaction;
        } catch (Exception e) {
            Logger.error(e.getMessage());
            throw new PaymentException(PaymentError.getPaymentProviderConnectionMalformedResponseError(e.getMessage()));
        }
    }

    HashMap<String, String> b(Context context, Connect.ProviderMode providerMode, Connect.ProviderDomain providerDomain, String str) throws PaymentException {
        try {
            String strInputStreamToString = StringUtils.inputStreamToString(HttpUtils.makeRequest(context, providerMode, providerDomain, String.format("/v1/checkouts/%1$s/configuration/IDEAL_BANKS", str), null, str));
            if ("".equals(strInputStreamToString)) {
                return null;
            }
            return a(new JSONArray(strInputStreamToString));
        } catch (Exception e) {
            throw new PaymentException(PaymentError.getPaymentProviderConnectionMalformedResponseError(e.getMessage()));
        }
    }

    private String[] b(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArray = jSONObject.getJSONArray("brands");
        if (jSONArray.length() > 0) {
            String[] strArr = new String[jSONArray.length()];
            for (int i = 0; i < jSONArray.length(); i++) {
                strArr[i] = jSONArray.getString(i);
            }
            return strArr;
        }
        return new String[0];
    }

    CheckoutInfo a(Context context, Connect.ProviderMode providerMode, Connect.ProviderDomain providerDomain, String str) throws PaymentException {
        String str2 = String.format("/v1/checkouts/%1$s", str);
        Logger.info("Request: [GET] " + str2);
        try {
            return CheckoutInfo.createCheckoutInfoFromJSON(new JSONObject(StringUtils.inputStreamToString(HttpUtils.makeRequest(context, providerMode, providerDomain, str2, null, str))));
        } catch (Exception e) {
            Logger.error(e.getMessage());
            throw new PaymentException(PaymentError.getPaymentProviderConnectionMalformedResponseError(e.getMessage()));
        }
    }

    BrandsValidation a(Context context, Connect.ProviderMode providerMode, Connect.ProviderDomain providerDomain, String str, String[] strArr) throws PaymentException {
        String str2 = String.format("/v1/checkouts/%1$s/brand?names=", str) + a(strArr);
        Logger.info("Request: [GET] " + str2);
        try {
            return BrandsValidation.createFromJson(new JSONObject(StringUtils.inputStreamToString(HttpUtils.makeRequest(context, providerMode, providerDomain, str2, null, str))), strArr);
        } catch (Exception e) {
            Logger.error(e.getMessage());
            throw new PaymentException(PaymentError.getPaymentProviderConnectionMalformedResponseError(e.getMessage()));
        }
    }

    ImagesRequest a(Context context, Connect.ProviderMode providerMode, Connect.ProviderDomain providerDomain, String[] strArr) throws PaymentException {
        try {
            return ImagesRequest.createFromJson(new JSONObject(StringUtils.inputStreamToString(HttpUtils.makeRequest(context, providerMode, providerDomain, "/v1/images?brands=" + a(strArr), null, null))));
        } catch (Exception e) {
            throw new PaymentException(PaymentError.getPaymentProviderConnectionMalformedResponseError(e.getMessage()));
        }
    }

    BinInfo a(Context context, Connect.ProviderMode providerMode, Connect.ProviderDomain providerDomain, String str, String str2) throws PaymentException {
        try {
            return a(new JSONObject(StringUtils.inputStreamToString(HttpUtils.makeRequest(context, providerMode, providerDomain, "/v1/checkouts/" + str2 + "/bins", Collections.singletonMap("bin", str), null))));
        } catch (Exception e) {
            throw new PaymentException(PaymentError.getPaymentProviderConnectionMalformedResponseError(e.getMessage()));
        }
    }

    Transaction a(Context context, String str, Transaction transaction) throws PaymentException {
        ThreeDS2Info threeDS2Info = transaction.getThreeDS2Info();
        if (threeDS2Info != null) {
            if (threeDS2Info.getCallbackUrl() != null) {
                try {
                    ThreeDS2Info threeDS2InfoA = a(StringUtils.inputStreamToString(HttpUtils.a(context, threeDS2Info.getCallbackUrl(), Collections.singletonMap("clientAuthRequest", str))));
                    if (threeDS2InfoA != null) {
                        threeDS2InfoA.setProtocolVersion(threeDS2Info.getProtocolVersion());
                        transaction.a(threeDS2InfoA);
                    }
                    return transaction;
                } catch (Exception e) {
                    throw new PaymentException(PaymentError.getPaymentProviderConnectionMalformedResponseError(e.getMessage()));
                }
            }
            throw new PaymentException(PaymentError.getPaymentProviderInternalError("ThreeDS2Info callback url is missing."));
        }
        throw new PaymentException(PaymentError.getPaymentProviderInternalError("ThreeDS2Info is missing."));
    }

    private static ThreeDS2Info a(String str) throws Exception {
        JSONObject jSONObject = new JSONObject(str);
        String string = jSONObject.getString("transactionStatus");
        String string2 = jSONObject.getString("clientAuthResponse");
        ThreeDS2Info.AuthStatus authStatusA = ThreeDS2Info.AuthStatus.a(string);
        if (authStatusA == null) {
            return null;
        }
        ThreeDS2Info threeDS2Info = new ThreeDS2Info(authStatusA, string2);
        if (authStatusA.equals(ThreeDS2Info.AuthStatus.DECOUPLED_CONFIRMED)) {
            threeDS2Info.setCardHolderInfo(jSONObject.getString("cardholderInfo"));
        }
        return threeDS2Info;
    }

    private static String a(String[] strArr) {
        StringBuilder sb = new StringBuilder();
        for (String str : strArr) {
            if (sb.length() > 0) {
                sb.append(',');
            }
            sb.append(str);
        }
        return sb.toString();
    }

    private String a(JSONObject jSONObject, String str) throws JSONException {
        if (jSONObject.has(str)) {
            return jSONObject.getString(str);
        }
        return null;
    }

    private BinInfo a(JSONObject jSONObject) throws JSONException {
        return new BinInfo(b(jSONObject), a(jSONObject, "binType"), a(jSONObject, SVGParser.XML_STYLESHEET_ATTR_TYPE));
    }

    private HashMap<String, String> a(JSONArray jSONArray) throws JSONException {
        HashMap<String, String> map = new HashMap<>();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            map.put(jSONObject.getString("name"), jSONObject.getString("id"));
        }
        return map;
    }

    void a(Context context, Connect.ProviderMode providerMode, PaymentParams paymentParams, String str) {
        StringBuilder sb = new StringBuilder("Request: [POST] " + str + "\n");
        paymentParams.mask();
        Logger.info(sb.toString());
        StringUtils.wipeString(sb);
    }
}
