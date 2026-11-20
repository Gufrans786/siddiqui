package com.oppwa.mobile.connect.checkout.dialog;

import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.payment.BrandsValidation;
import com.oppwa.mobile.connect.provider.OppPaymentProvider;
import com.oppwa.mobile.connect.provider.listener.BinInfoListener;
import com.oppwa.mobile.connect.provider.model.BinInfo;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class g {
    private static g e;
    private BrandsValidation b;
    private String d;
    private Map<String, String[]> c = new HashMap();
    private Set<a> a = new HashSet();

    interface a {
        void onBrandsLoaded(String str, String[] strArr);
    }

    private g() {
    }

    static synchronized g b() {
        if (e == null) {
            e = new g();
        }
        return e;
    }

    void a(OppPaymentProvider oppPaymentProvider, String str, String str2, BrandsValidation brandsValidation) {
        this.b = brandsValidation;
        this.d = str2;
        oppPaymentProvider.requestBinInfo(str, str2, new BinInfoListener() {
            @Override
            public final void onResult(BinInfo binInfo, PaymentError paymentError) {
                this.f$0.a(binInfo, paymentError);
            }
        });
    }

    boolean c(String str) {
        return this.c.get(str) != null;
    }

    public void a(BinInfo binInfo, PaymentError paymentError) {
        if (binInfo != null) {
            String[] strArrFilterOutUnconfiguredBrands = this.b.filterOutUnconfiguredBrands(binInfo.getBrands());
            b().a(this.d, strArrFilterOutUnconfiguredBrands);
            b(this.d, strArrFilterOutUnconfiguredBrands);
        }
    }

    void b(a aVar) {
        this.a.remove(aVar);
    }

    private String[] b(String str) {
        return this.c.get(str);
    }

    private void b(String str, String[] strArr) {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().onBrandsLoaded(str, strArr);
        }
    }

    String[] a(String str) {
        String str2 = "";
        for (String str3 : this.c.keySet()) {
            if (str.startsWith(str3) && str3.length() > str2.length()) {
                str2 = str3;
            }
        }
        if (str2.length() > 0) {
            return this.c.get(str2);
        }
        return null;
    }

    void a() {
        this.c = new HashMap();
        this.b = null;
        this.d = null;
    }

    void a(a aVar) {
        this.a.add(aVar);
    }

    private void a(String str, String[] strArr) {
        if (b(str) == null) {
            this.c.put(str, strArr);
        }
    }
}
