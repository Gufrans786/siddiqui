package com.oppwa.mobile.connect.checkout.dialog;

import android.text.Editable;
import com.oppwa.mobile.connect.utils.StringUtils;

class x extends r {
    private final String d;
    private final String e;
    private boolean f = false;

    x(Character ch2, String str) {
        this.d = String.valueOf(ch2);
        if (str != null) {
            this.e = str;
        } else {
            this.e = "#### #### #### #### ###";
        }
    }

    public String a() {
        return this.d;
    }

    @Override
    protected void a(Editable editable) {
    }

    @Override
    protected Editable b(Editable editable) {
        if (!this.f || !StringUtils.stringHasNonstandardDigits(editable)) {
            int i = 0;
            while (i < editable.length()) {
                if (editable.charAt(i) == this.d.charAt(0)) {
                    this.a = true;
                    editable.replace(i, i + 1, "");
                }
                if (i < this.e.length() && this.e.charAt(i) == this.d.charAt(0)) {
                    this.a = true;
                    editable.insert(i, this.d);
                    i++;
                }
                i++;
            }
        }
        return editable;
    }

    public void a(boolean z) {
        this.f = z;
    }

    String a(String str) {
        return str.replace(this.d, "");
    }
}
