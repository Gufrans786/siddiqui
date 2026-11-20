package com.oppwa.mobile.connect.payment;

import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

class a {
    static Map<String, BrandInfo> a(JSONObject jSONObject, String[] strArr) throws JSONException {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str : strArr) {
            linkedHashMap.put(str, a(str, jSONObject.getJSONObject(str)));
        }
        return linkedHashMap;
    }

    private static String b(String str) {
        return str.replace("/", "");
    }

    private static BrandInfo a(String str, JSONObject jSONObject) throws JSONException {
        BrandInfo brandInfo = new BrandInfo(str, jSONObject.getString("render"));
        if (jSONObject.has("label")) {
            brandInfo.setLabel(jSONObject.getString("label"));
        }
        if (jSONObject.has("customView")) {
            brandInfo.setCustomUiRequired(jSONObject.getBoolean("customView"));
        }
        if (brandInfo.isCardBrand()) {
            brandInfo.setCardBrandInfo(a(jSONObject));
        }
        return brandInfo;
    }

    private static CardBrandInfo a(JSONObject jSONObject) throws JSONException {
        CardBrandInfo cardBrandInfo = new CardBrandInfo();
        if (jSONObject.has("number")) {
            cardBrandInfo.setValidation(b(jSONObject.getString("number")));
        }
        if (jSONObject.has("detection")) {
            cardBrandInfo.setDetection(b(jSONObject.getString("detection")));
        }
        if (jSONObject.has("luhn")) {
            cardBrandInfo.setLuhnCheckRequired(jSONObject.getBoolean("luhn"));
        }
        if (jSONObject.has("pattern")) {
            cardBrandInfo.setPattern(a(jSONObject.getString("pattern")));
        }
        if (jSONObject.has("cvvLength")) {
            cardBrandInfo.setCvvLength(jSONObject.getInt("cvvLength"));
        }
        if (jSONObject.has("expiryDate")) {
            cardBrandInfo.setExpiryDateOptional(!jSONObject.getBoolean("expiryDate"));
        }
        if (jSONObject.has("noCvv") && jSONObject.getBoolean("noCvv")) {
            cardBrandInfo.setCvvMode(CVVMode.NONE);
        } else if (jSONObject.has("optionalCvv") && jSONObject.getBoolean("optionalCvv")) {
            cardBrandInfo.setCvvMode(CVVMode.OPTIONAL);
        } else {
            cardBrandInfo.setCvvMode(CVVMode.REQUIRED);
        }
        if (jSONObject.has("mobilePhone")) {
            cardBrandInfo.setMobilePhoneRequired(jSONObject.getBoolean("mobilePhone"));
        }
        return cardBrandInfo;
    }

    private static String a(String str) {
        return str.replace("{", "").replace("}", "").replace("9", "#");
    }
}
