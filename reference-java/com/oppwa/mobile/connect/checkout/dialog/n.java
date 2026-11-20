package com.oppwa.mobile.connect.checkout.dialog;

import android.content.Context;
import android.text.style.URLSpan;
import android.view.View;

class n extends URLSpan {
    Context a;

    n(Context context, String str) {
        super(str);
        this.a = context;
    }

    @Override
    public void onClick(View view) {
        f0.b(this.a, getURL());
    }
}
