package com.oppwa.mobile.connect.payment;

import com.oppwa.mobile.connect.checkout.meta.CheckoutThreeDS2Flow;
import com.oppwa.mobile.connect.payment.token.Token;
import com.oppwa.mobile.connect.utils.JsonUtils;
import com.payfort.fortpaymentsdk.constants.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class b {
    static Token[] a(JSONObject jSONObject, String str) throws JSONException {
        ArrayList arrayList = new ArrayList();
        if (jSONObject.has(str)) {
            JSONArray jSONArray = jSONObject.getJSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                Token tokenCreateTokenFromJSON = Token.createTokenFromJSON(jSONArray.getJSONObject(i));
                if (tokenCreateTokenFromJSON != null) {
                    arrayList.add(tokenCreateTokenFromJSON);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return (Token[]) arrayList.toArray(new Token[0]);
    }

    static CheckoutThreeDS2Flow b(JSONObject jSONObject) throws JSONException {
        if (jSONObject.has("msdkFlow")) {
            if (jSONObject.getString("msdkFlow").equals("web")) {
                return CheckoutThreeDS2Flow.WEB;
            }
            if (jSONObject.getString("msdkFlow").equals("disabled")) {
                return CheckoutThreeDS2Flow.DISABLED;
            }
        }
        return CheckoutThreeDS2Flow.APP;
    }

    private static boolean c(String str) {
        return str.equals("MASTER") || str.equals(Constants.CREDIT_CARDS_TYPES.MAESTRO) || str.equals("MASTERDEBIT");
    }

    private static boolean d(String str) {
        return str.equals(Constants.CREDIT_CARDS_TYPES.VISA) || str.equals("VISADEBIT") || str.equals("VISAELECTRON") || str.equals("VPAY");
    }

    private static boolean b(String str) {
        return str.equals("DINERS") || str.equals("DISCOVER");
    }

    static String[] a(JSONObject jSONObject) throws JSONException {
        ArrayList arrayList = new ArrayList();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (next.contains("ThreeDV2") && JsonUtils.isTrueForKey(jSONObject, next).booleanValue()) {
                arrayList.addAll(a(next.substring(0, next.indexOf("ThreeDV2")).toUpperCase()));
            }
        }
        Collections.sort(arrayList);
        return (String[]) arrayList.toArray(new String[0]);
    }

    static Token[] a(Token[] tokenArr) {
        if (tokenArr == null) {
            return null;
        }
        int length = tokenArr.length;
        Token[] tokenArr2 = new Token[length];
        for (int i = 0; i < length; i++) {
            Token token = tokenArr[i];
            tokenArr2[i] = token.copyToken(token);
        }
        return tokenArr2;
    }

    private static List<String> a(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        if (c(str)) {
            arrayList.addAll(Arrays.asList(Constants.CREDIT_CARDS_TYPES.MAESTRO, "MASTERDEBIT"));
            return arrayList;
        }
        if (d(str)) {
            arrayList.addAll(Arrays.asList("VISADEBIT", "VISAELECTRON", "VPAY"));
            return arrayList;
        }
        if (b(str)) {
            arrayList.add("DISCOVER");
        }
        return arrayList;
    }
}
