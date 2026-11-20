package com.oppwa.mobile.connect.checkout.dialog;

import android.text.Editable;
import java.util.Calendar;

class o extends r {
    private final String d;
    private String e = "";
    private String f = "";
    private final int g;

    o(Character ch2, int i) {
        this.d = String.valueOf(ch2);
        this.g = i;
    }

    private void c(Editable editable) {
        int length = editable.length();
        for (int i = 0; i < length; i++) {
            if (editable.charAt(i) == this.d.charAt(0)) {
                this.a = true;
                editable.replace(i, i + 1, "");
                return;
            }
        }
    }

    String a() {
        return this.e;
    }

    String b() {
        return this.f;
    }

    @Override
    protected void a(Editable editable) {
        b(editable.toString());
    }

    @Override
    protected Editable b(Editable editable) {
        c(editable);
        if (editable.length() < this.g) {
            return editable;
        }
        int length = editable.length();
        int i = this.g;
        if (length == i) {
            this.a = true;
            editable.append((CharSequence) this.d);
        } else {
            this.a = true;
            editable.insert(i, this.d);
        }
        b(editable.toString());
        return editable;
    }

    private String a(String str) {
        if (str.length() != 2) {
            return str;
        }
        return (Calendar.getInstance().get(1) / 100) + str;
    }

    private void b(String str) {
        if (str.contains(this.d)) {
            String[] strArrSplit = str.split(this.d);
            if (strArrSplit.length > 0) {
                this.e = strArrSplit[0];
            }
            if (strArrSplit.length > 1) {
                this.f = a(strArrSplit[1]);
            }
        }
    }
}
