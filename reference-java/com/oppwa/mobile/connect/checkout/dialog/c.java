package com.oppwa.mobile.connect.checkout.dialog;

import android.text.InputFilter;
import android.text.Spanned;

class c implements InputFilter {
    private final boolean a;

    c(boolean z) {
        this.a = z;
    }

    @Override
    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        while (i < i2) {
            char cCharAt = charSequence.charAt(i);
            if (!this.a && cCharAt == ' ') {
                return "";
            }
            if (cCharAt != ' ' && !Character.isLetterOrDigit(cCharAt)) {
                return "";
            }
            i++;
        }
        return null;
    }
}
