package com.oppwa.mobile.connect.checkout.dialog;

import android.text.TextUtils;
import com.mapbox.maps.plugin.scalebar.LocaleUnitResolver;
import com.oppwa.mobile.connect.payment.BillingAddress;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;

class f {
    static boolean a(BillingAddress billingAddress) {
        return a(billingAddress.isStreet1Required(), billingAddress.getStreet1()) && a(billingAddress.isStreet2Required(), billingAddress.getStreet2()) && a(billingAddress.isCityRequired(), billingAddress.getCity()) && a(billingAddress.isStateRequired(), billingAddress.getState()) && a(billingAddress.isPostCodeRequired(), billingAddress.getPostCode()) && a(billingAddress.isCountryRequired(), billingAddress.getCountry());
    }

    static String b(BillingAddress billingAddress) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(billingAddress.getStreet1());
        arrayList.add(billingAddress.getStreet2());
        arrayList.add(a(billingAddress.getCity(), a(billingAddress.getCountry(), billingAddress.getState()), billingAddress.getPostCode()));
        arrayList.add(a(billingAddress.getCountry()));
        arrayList.removeAll(Arrays.asList(null, ""));
        return TextUtils.join("\n", arrayList);
    }

    static boolean a(boolean z, String str) {
        if (z) {
            return !TextUtils.isEmpty(str);
        }
        return true;
    }

    static String a(String str, String str2, String str3) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        arrayList.add(str2);
        arrayList.add(str3);
        arrayList.removeAll(Arrays.asList(null, ""));
        return TextUtils.join(", ", arrayList);
    }

    private static String a(String str) {
        if (str == null) {
            return null;
        }
        return m.b().get(str);
    }

    private static String a(String str, String str2) {
        Map<String, String> mapA;
        if (str != null) {
            if (LocaleUnitResolver.ImperialCountryCode.US.equalsIgnoreCase(str)) {
                mapA = m.c();
            } else {
                mapA = "CA".equalsIgnoreCase(str) ? m.a() : null;
            }
            if (mapA != null && mapA.containsKey(str2)) {
                return mapA.get(str2);
            }
        }
        return str2;
    }
}
