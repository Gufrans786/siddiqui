package com.oppwa.mobile.connect.checkout.dialog;

import android.util.Log;
import java.util.HashMap;

class z {
    private static final String a = "com.oppwa.mobile.connect.checkout.dialog.z";
    private static HashMap<String, Class<?>> b;

    class a extends HashMap<String, Class<?>> {
        a() {
            put("DIRECTDEBIT_SEPA", DirectDebitSepaPaymentInfoFragment.class);
            put("CHINAUNIONPAY", ChinaUnionPayPaymentInfoFragment.class);
            put("SOFORTUEBERWEISUNG", SofortPaymentInfoFragment.class);
            put("IDEAL", IdealPaymentInfoFragment.class);
            put("GIROPAY", GiropayPaymentInfoFragment.class);
            put("KLARNA_INVOICE", KlarnaPaymentInfoFragment.class);
            put("KLARNA_INSTALLMENTS", KlarnaPaymentInfoFragment.class);
            put("KLARNA_PAYMENTS_PAYLATER", KlarnaInlinePaymentInfoFragment.class);
            put("KLARNA_PAYMENTS_PAYNOW", KlarnaInlinePaymentInfoFragment.class);
            put("KLARNA_PAYMENTS_SLICEIT", KlarnaInlinePaymentInfoFragment.class);
            put("MBWAY", MBWayPaymentInfoFragment.class);
            put("IKANOOI_FI", IkanoOiPaymentInfoFragment.class);
            put("IKANOOI_NO", IkanoOiPaymentInfoFragment.class);
            put("IKANOOI_SE", IkanoOiPaymentInfoFragment.class);
            put("IK_PRIVATE_LABEL_VA", IkanoPrivateLabelVAPaymentInfoFragment.class);
            put("STC_PAY", STCPayPaymentInfoFragment.class);
        }
    }

    static PaymentInfoFragment a(String str, boolean z) {
        if (z) {
            return new CardPaymentInfoFragment();
        }
        Class<?> cls = a().get(str);
        if (cls == null) {
            return null;
        }
        try {
            return (PaymentInfoFragment) cls.newInstance();
        } catch (Exception e) {
            Log.e(a, e.getMessage());
            return null;
        }
    }

    static boolean a(String str) {
        return (a().get(str) == null || i.a(str)) ? false : true;
    }

    private static HashMap<String, Class<?>> a() {
        if (b == null) {
            b = new a();
        }
        return b;
    }
}
