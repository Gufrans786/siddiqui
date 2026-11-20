package com.oppwa.mobile.connect.threeds;

import android.content.Context;
import android.util.Base64;
import com.oppwa.mobile.connect.threeds.constant.TransactionMode;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

class h {
    private Map<String, SchemeConfig> a;

    h() {
    }

    private SchemeConfig b(JSONObject jSONObject) throws JSONException {
        return new SchemeConfig(jSONObject.getString("dsRefId"), a(jSONObject.getString("dsCert")), a(jSONObject.getString("dsRootCa")));
    }

    void a(Map<String, SchemeConfig> map) {
        this.a = map;
    }

    boolean a(Context context, List<String> list) throws Throwable {
        Set<String> setA = a(list);
        if (!setA.isEmpty()) {
            for (int i = 0; i < 3; i++) {
                try {
                    InputStream inputStreamA = d.a(context, setA);
                    a(a(inputStreamA));
                    inputStreamA.close();
                    return true;
                } catch (Exception e) {
                    e.a(context, "Error while downloading scheme configs: " + e);
                }
            }
        }
        e.a(context, "Error while downloading scheme configs: max retry reached");
        return false;
    }

    private boolean b(TransactionMode transactionMode, String str) {
        Map<String, SchemeConfig> map;
        return transactionMode == TransactionMode.TEST && (map = this.a) != null && map.containsKey(str) && this.a.get(str) != null;
    }

    List<SchemeConfig> a(TransactionMode transactionMode, List<String> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = a(list).iterator();
        while (it.hasNext()) {
            SchemeConfig schemeConfigA = a(transactionMode, it.next());
            if (schemeConfigA != null) {
                arrayList.add(schemeConfigA);
            }
        }
        return arrayList;
    }

    SchemeConfig a(TransactionMode transactionMode, String str) {
        String threeDSBrand = ThreeDSBrandsUtils.getThreeDSBrand(str);
        if (b(transactionMode, threeDSBrand)) {
            return this.a.get(threeDSBrand);
        }
        return f.a().a(transactionMode, threeDSBrand);
    }

    private Set<String> a(List<String> list) {
        HashSet hashSet = new HashSet();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            hashSet.add(ThreeDSBrandsUtils.getThreeDSBrand(it.next()));
        }
        return hashSet;
    }

    private void a(JSONObject jSONObject) throws JSONException {
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            f.a().a(TransactionMode.LIVE, next, b(jSONObject.getJSONObject(next)));
        }
    }

    private static String a(String str) {
        return new String(Base64.decode(str, 0)).trim();
    }

    private JSONObject a(InputStream inputStream) throws JSONException, IOException {
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        while (true) {
            try {
                String line = bufferedReader.readLine();
                if (line != null) {
                    sb.append(line);
                } else {
                    bufferedReader.close();
                    return new JSONObject(sb.toString());
                }
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }
}
