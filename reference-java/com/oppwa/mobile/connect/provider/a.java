package com.oppwa.mobile.connect.provider;

import androidx.core.app.NotificationCompat;
import com.bumptech.glide.load.Key;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.net.URLEncoder;
import java.util.TreeSet;
import kotlin.text.Typography;
import org.json.JSONArray;
import org.json.JSONObject;

final class a {
    static String a(JSONObject jSONObject) throws Exception {
        JSONArray jSONArray = jSONObject.getJSONObject("redirect").getJSONArray("parameters");
        TreeSet<String> treeSet = new TreeSet();
        StringBuilder sb = new StringBuilder();
        String str = null;
        String str2 = null;
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
            String string = jSONObject2.getString("name");
            String string2 = jSONObject2.getString("value");
            if (a(string)) {
                treeSet.add(string + "=\"" + string2 + "\"");
            } else {
                if (string.equals("sign")) {
                    str = string + "=\"" + URLEncoder.encode(string2, Key.STRING_CHARSET_NAME) + "\"";
                }
                if (string.equals("sign_type")) {
                    str2 = string + "=\"" + string2 + "\"";
                }
            }
        }
        for (String str3 : treeSet) {
            if (sb.length() > 0) {
                sb.append(Typography.amp);
            }
            sb.append(str3);
        }
        sb.append(Typography.amp);
        sb.append(str);
        sb.append(Typography.amp);
        sb.append(str2);
        return sb.toString();
    }

    private static boolean a(String str) {
        return str.equals("_input_charset") || str.equals("auth_token") || str.equals("body") || str.equals("currency") || str.equals("forex_biz") || str.equals("gmt_return") || str.equals("notify_id") || str.equals("notify_url") || str.equals("order_gmt_create") || str.equals("order_valid_time") || str.equals("out_return_no") || str.equals("out_trade_no") || str.equals("partner") || str.equals(FirebaseAnalytics.Param.PAYMENT_TYPE) || str.equals("product_code") || str.equals("reason") || str.equals("return_amount") || str.equals("return_rmb_amount") || str.equals("return_url") || str.equals("rmb_fee") || str.equals("secondary_merchant_id") || str.equals("secondary_merchant_industry") || str.equals("secondary_merchant_name") || str.equals("seller_id") || str.equals("seller_industry") || str.equals("seller_name") || str.equals(NotificationCompat.CATEGORY_SERVICE) || str.equals("specified_pay_channel") || str.equals("subject") || str.equals("supplier") || str.equals("timeout_rule") || str.equals("total_fee");
    }
}
