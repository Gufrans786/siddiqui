package com.oppwa.mobile.connect.provider;

import android.content.Context;
import android.text.TextUtils;
import ch.qos.logback.classic.spi.CallerData;
import com.bumptech.glide.load.Key;
import com.google.android.gms.common.internal.ImagesContract;
import com.oppwa.mobile.connect.provider.model.yookassa.YooKassaInfo;
import com.oppwa.mobile.connect.provider.model.yookassa.YooKassaStatus;
import com.oppwa.mobile.connect.utils.Logger;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

class d {
    private final Context a;
    private final String b;
    private final String c;
    private final Connect.ProviderMode d;
    private final Connect.ProviderDomain e;

    d(Context context, String str, String str2, Connect.ProviderMode providerMode, Connect.ProviderDomain providerDomain) {
        this.a = context;
        this.b = str;
        this.c = str2;
        this.d = providerMode;
        this.e = providerDomain;
    }

    private ThreeDS2Info b(JSONObject jSONObject) {
        ThreeDS2Info.AuthStatus authStatusA;
        try {
            String strA = a(jSONObject, "transactionStatus");
            String strA2 = a(jSONObject, "clientAuthResponse");
            String strA3 = a(jSONObject, "threeDSProtocolVersion");
            if (strA != null) {
                authStatusA = ThreeDS2Info.AuthStatus.a(strA);
            } else {
                authStatusA = strA3 != null ? ThreeDS2Info.AuthStatus.AUTH_PARAMS_REQUIRED : null;
            }
            if (authStatusA != null) {
                ThreeDS2Info threeDS2Info = new ThreeDS2Info(authStatusA, strA2);
                threeDS2Info.setProtocolVersion(strA3);
                if (authStatusA.equals(ThreeDS2Info.AuthStatus.DECOUPLED_CONFIRMED)) {
                    threeDS2Info.setCardHolderInfo(a(jSONObject, "cardholderInfo"));
                }
                return threeDS2Info;
            }
        } catch (Exception e) {
            Logger.error(e.getMessage());
        }
        return null;
    }

    private String c(JSONObject jSONObject, String str) throws Exception {
        if (jSONObject.has(str)) {
            return jSONObject.getString(str);
        }
        return null;
    }

    private Map<String, String> d(JSONObject jSONObject, String str) throws Exception {
        HashMap map = new HashMap();
        str.hashCode();
        str.hashCode();
        switch (str) {
            case "KLARNA_PAYMENTS_PAYNOW":
            case "KLARNA_PAYMENTS_PAYLATER":
            case "KLARNA_PAYMENTS_SLICEIT":
                b(jSONObject, map);
                break;
            case "BANCONTACT_LINK":
                a(jSONObject, map);
                break;
            case "ALIPAY":
                map.put(Transaction.ALIPAY_SIGNED_ORDER_INFO_KEY, a.a(jSONObject));
                break;
        }
        return map;
    }

    private String e(JSONObject jSONObject, String str) throws Exception {
        JSONObject jSONObject2 = jSONObject.getJSONObject("redirect");
        if (!str.equals("BOLETO") && !str.equals("MASTERPASS") && !str.equals("VIPPS")) {
            return jSONObject2.getString("shortUrl");
        }
        return jSONObject2.getString(ImagesContract.URL) + CallerData.NA + a(jSONObject2.getJSONArray("parameters"));
    }

    void a(Transaction transaction) throws Exception {
        JSONObject jSONObject = new JSONObject(this.c);
        ThreeDS2Info threeDS2InfoB = b(jSONObject);
        if (threeDS2InfoB != null) {
            if (threeDS2InfoB.getProtocolVersion() != null) {
                threeDS2InfoB.setCallbackUrl(jSONObject.getJSONObject("redirect").getString(ImagesContract.URL));
            }
            transaction.a(threeDS2InfoB);
            transaction.a(TransactionType.SYNC);
            return;
        }
        String paymentBrand = transaction.getPaymentParams().getPaymentBrand();
        if (TextUtils.equals("YANDEX_CHECKOUT", paymentBrand)) {
            transaction.a(a(jSONObject));
        }
        transaction.a(d(jSONObject, paymentBrand));
        if (!"ASYNC".equals(jSONObject.getString("workflow"))) {
            transaction.a(TransactionType.SYNC);
            return;
        }
        transaction.a(TransactionType.ASYNC);
        transaction.a(e(jSONObject, paymentBrand));
        transaction.b(a(jSONObject, this.d, this.e));
    }

    private void b(JSONObject jSONObject, Map<String, String> map) {
        try {
            String strC = c(jSONObject, Transaction.KLARNA_INLINE_CLIENT_TOKEN_KEY);
            String strC2 = c(jSONObject, Transaction.KLARNA_INLINE_CALLBACK_URL_KEY);
            String strC3 = c(jSONObject, Transaction.KLARNA_INLINE_FAILURE_CALLBACK_URL_KEY);
            String strA = a(jSONObject, Transaction.KLARNA_INLINE_INITIAL_TRANSACTION_ID);
            if (TextUtils.isEmpty(strC) || TextUtils.isEmpty(strC2) || TextUtils.isEmpty(strC3)) {
                return;
            }
            map.put(Transaction.KLARNA_INLINE_CLIENT_TOKEN_KEY, strC);
            map.put(Transaction.KLARNA_INLINE_CALLBACK_URL_KEY, strC2);
            map.put(Transaction.KLARNA_INLINE_FAILURE_CALLBACK_URL_KEY, strC3);
            if (strA == null) {
                strA = "";
            }
            map.put(Transaction.KLARNA_INLINE_INITIAL_TRANSACTION_ID, strA);
        } catch (Exception e) {
            Logger.error(e.getMessage());
        }
    }

    private String a(JSONObject jSONObject, Connect.ProviderMode providerMode, Connect.ProviderDomain providerDomain) {
        try {
            if (!jSONObject.has("redirect")) {
                return null;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("redirect");
            if (!jSONObject2.has("preconditions")) {
                return null;
            }
            JSONArray jSONArray = jSONObject2.getJSONArray("preconditions");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                if ("iframe#hidden".equals(jSONObject3.get("origin")) && !TextUtils.isEmpty(jSONObject3.getString(ImagesContract.URL))) {
                    return HttpUtils.a(providerMode, providerDomain) + jSONObject3.getString(ImagesContract.URL);
                }
            }
            return null;
        } catch (Exception e) {
            Logger.error(e.getMessage());
            return null;
        }
    }

    private void a(JSONObject jSONObject, Map<String, String> map) {
        String strB = b(jSONObject, Transaction.BANCONTACT_LINK_APP_SCHEME_URL_KEY);
        if (TextUtils.isEmpty(strB)) {
            return;
        }
        map.put(Transaction.BANCONTACT_LINK_APP_SCHEME_URL_KEY, strB);
    }

    private YooKassaInfo a(JSONObject jSONObject) {
        return new YooKassaInfo(a(jSONObject, "confirmation_url"), a(jSONObject, Transaction.KLARNA_INLINE_CALLBACK_URL_KEY), YooKassaStatus.forName(a(jSONObject, "status")));
    }

    private String b(JSONObject jSONObject, String str) {
        try {
            if (!jSONObject.has("redirect")) {
                return null;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("redirect");
            if (!jSONObject2.has("parameters")) {
                return null;
            }
            JSONArray jSONArray = jSONObject2.getJSONArray("parameters");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                if (jSONObject3.getString("name").equals(str)) {
                    return jSONObject3.getString("value");
                }
            }
            return null;
        } catch (Exception e) {
            Logger.error(e.getMessage());
            return null;
        }
    }

    private String a(JSONArray jSONArray) throws Exception {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < jSONArray.length(); i++) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            String string = jSONObject.getString("name");
            String string2 = jSONObject.getString("value");
            sb.append(string);
            sb.append('=');
            sb.append(URLEncoder.encode(string2, Key.STRING_CHARSET_NAME));
        }
        return sb.toString();
    }

    private String a(JSONObject jSONObject, String str) {
        try {
            if (!jSONObject.has("additionalAttributes")) {
                return null;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("additionalAttributes");
            if (jSONObject2.has(str)) {
                return jSONObject2.getString(str);
            }
            return null;
        } catch (Exception e) {
            Logger.error(e.getMessage());
            return null;
        }
    }
}
