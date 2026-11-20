package com.oppwa.mobile.connect.provider;

class e {
    private static e b;
    private OppPaymentProvider a;

    private e() {
    }

    static e a() {
        if (b == null) {
            b = new e();
        }
        return b;
    }

    OppPaymentProvider b() {
        return this.a;
    }

    void a(OppPaymentProvider oppPaymentProvider) {
        this.a = oppPaymentProvider;
    }
}
