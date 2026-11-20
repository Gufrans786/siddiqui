package com.oppwa.mobile.connect.checkout.dialog;

import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.provider.Transaction;

class e0 {
    private final Transaction a;
    private final PaymentError b;
    private boolean c;

    public e0(Transaction transaction, PaymentError paymentError) {
        this.a = transaction;
        this.b = paymentError;
    }

    public PaymentError a() {
        return this.b;
    }

    public Transaction b() {
        return this.a;
    }

    public boolean c() {
        return this.c;
    }

    public void a(boolean z) {
        this.c = z;
    }
}
