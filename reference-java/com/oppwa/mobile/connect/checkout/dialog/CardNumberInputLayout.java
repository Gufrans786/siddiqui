package com.oppwa.mobile.connect.checkout.dialog;

import android.content.Context;
import android.text.InputFilter;
import android.util.AttributeSet;
import com.oppwa.mobile.connect.R;
import com.payfort.fortpaymentsdk.views.CardNumberHelper;

public class CardNumberInputLayout extends InputLayout {
    private String i;
    private x j;
    private boolean k;

    public CardNumberInputLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.k = true;
        b();
    }

    private x a(String str) {
        x xVar = new x(Character.valueOf(CardNumberHelper.DIVIDER), str);
        xVar.a(true);
        return xVar;
    }

    private void b() {
        getEditText().setInputType(524292);
    }

    private void setLengthFilter(String str) {
        getEditText().setFilters(new InputFilter[]{a(str == null ? getResources().getInteger(R.integer.cardNumberMaxLength) : str.length())});
    }

    private void setNumberInputFormatter(String str) {
        if (this.j != null) {
            getEditText().removeTextChangedListener(this.j);
        }
        this.j = a(str);
        getEditText().addTextChangedListener(this.j);
        getEditText().setText(getEditText().getText().toString());
        setSelectionAtTheEnd();
    }

    private void setNumberPattern(String str) {
        String strA = a(getEditText().getText(), str);
        setLengthFilter(strA);
        setNumberInputFormatter(strA);
    }

    private void setNumberValidator(s.m mVar) {
        setInputValidator(s.a(this.j, mVar));
    }

    public void setBrandDetected(boolean z) {
        this.k = z;
    }

    public void setCardBrand(String str) {
        this.i = str;
    }

    public void setNumberPatternAndValidator(String str, s.m mVar) {
        setNumberPattern(str);
        setNumberValidator(mVar);
    }

    @Override
    public boolean validate() {
        String str = this.i;
        if (str != null && !PaymentButtonFragment.OPP_PAYMENT_BRAND_CARD.equals(str) && this.k) {
            return super.validate();
        }
        showError(getContext().getString(R.string.checkout_error_card_number_invalid));
        return false;
    }

    private String a(CharSequence charSequence, String str) {
        if (charSequence.length() <= str.length()) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < charSequence.length() - str.length(); i++) {
            sb.append("#");
        }
        return str + sb.toString();
    }

    public CardNumberInputLayout(Context context) {
        this(context, null);
    }

    public CardNumberInputLayout(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet);
    }

    private InputFilter a(int i) {
        return new InputFilter.LengthFilter(i);
    }

    public CardNumberInputLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, attributeSet);
    }
}
