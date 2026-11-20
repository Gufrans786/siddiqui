package com.oppwa.mobile.connect.checkout.dialog;

import com.oppwa.mobile.connect.provider.Transaction;

interface b {
    void onAlipayCanceled();

    void onAlipayCompleted(Transaction transaction);
}
