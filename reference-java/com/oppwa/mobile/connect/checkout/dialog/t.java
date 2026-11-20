package com.oppwa.mobile.connect.checkout.dialog;

enum t {
    CHECKOUT_UI("Checkout UI"),
    PAYMENT_BUTTON("Drop-In Button");

    final String a;

    t(String str) {
        this.a = str;
    }

    String a() {
        return this.a;
    }
}
