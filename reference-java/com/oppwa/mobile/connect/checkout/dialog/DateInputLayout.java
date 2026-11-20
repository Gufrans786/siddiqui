package com.oppwa.mobile.connect.checkout.dialog;

import android.content.Context;
import android.text.InputFilter;
import android.util.AttributeSet;
import com.oppwa.mobile.connect.R;
import com.oppwa.mobile.connect.utils.StringUtils;

public class DateInputLayout extends InputLayout {
    private o i;

    public DateInputLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b();
    }

    private void b() {
        this.i = new o('/', 2);
        getEditText().addTextChangedListener(this.i);
        getEditText().setFilters(new InputFilter[]{new InputFilter.LengthFilter(getResources().getInteger(R.integer.cardExpirationDateMaxLength))});
        getEditText().setInputType(524292);
    }

    public String getMonth() {
        if (isEmpty()) {
            return null;
        }
        return StringUtils.replaceNonstandardDigits(this.i.a());
    }

    public String getYear() {
        if (isEmpty()) {
            return null;
        }
        return StringUtils.replaceNonstandardDigits(this.i.b());
    }

    public void setInputValidator(s.n nVar) {
        setInputValidator(s.a(this.i, nVar));
    }

    public DateInputLayout(Context context) {
        this(context, null);
    }

    public DateInputLayout(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet);
    }

    public DateInputLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, attributeSet);
    }
}
