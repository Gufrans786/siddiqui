package com.oppwa.mobile.connect.utils;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class JsonUtils {
    public static String[] getArrayForKey(JSONObject jSONObject, String str) throws JSONException {
        if (!jSONObject.has(str)) {
            return null;
        }
        JSONArray jSONArray = jSONObject.getJSONArray(str);
        if (jSONArray.length() <= 0) {
            return null;
        }
        String[] strArr = new String[jSONArray.length()];
        for (int i = 0; i < jSONArray.length(); i++) {
            strArr[i] = jSONArray.getString(i);
        }
        return strArr;
    }

    public static String getStringForKey(JSONObject jSONObject, String str) throws JSONException {
        if (jSONObject.has(str)) {
            return jSONObject.getString(str);
        }
        return null;
    }

    public static Boolean isTrueForKey(JSONObject jSONObject, String str) throws JSONException {
        return jSONObject.has(str) ? Boolean.valueOf(jSONObject.getBoolean(str)) : Boolean.FALSE;
    }
}
