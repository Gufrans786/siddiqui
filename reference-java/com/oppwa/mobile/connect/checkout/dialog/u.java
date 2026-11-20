package com.oppwa.mobile.connect.checkout.dialog;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

class u {
    private static final String a = "com.oppwa.mobile.connect.checkout.dialog.u";
    private static final String[] b = {"NL", "DE", "AT", "DK", "FI", "NO", "SE"};

    static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        for (String str2 : b) {
            if (str2.equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    static v a(String str, String str2) {
        if (str != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                v vVar = new v();
                vVar.d(a(jSONObject.getJSONObject("title"), str2));
                vVar.b(a(jSONObject.getJSONObject("linkTitle"), str2));
                vVar.a(a(jSONObject.getJSONObject("link"), str2));
                vVar.c(a(jSONObject.getJSONObject("terms"), str2));
                return vVar;
            } catch (JSONException e) {
                Log.e(a, e.getMessage());
            }
        }
        return null;
    }

    static String a(Context context) {
        String country = context.getResources().getConfiguration().locale.getCountry();
        return a(country) ? country : "DE";
    }

    private static String a(JSONObject jSONObject, String str) throws JSONException {
        if (jSONObject.has(str)) {
            return jSONObject.getString(str);
        }
        return null;
    }
}
