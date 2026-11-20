package com.oppwa.mobile.connect.checkout.dialog;

import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;

abstract class r implements TextWatcher {
    boolean a = false;
    private final InputFilter[] b = new InputFilter[0];
    private int c;

    r() {
    }

    protected abstract void a(Editable editable);

    @Override
    public void afterTextChanged(Editable editable) {
        if (this.a) {
            this.a = false;
            this.c = editable.length();
        } else if (editable.length() - this.c == -1) {
            this.c = editable.length();
            a(editable);
        } else {
            this.c = editable.length();
            InputFilter[] filters = editable.getFilters();
            editable.setFilters(this.b);
            b(editable).setFilters(filters);
        }
    }

    protected abstract Editable b(Editable editable);

    @Override
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
