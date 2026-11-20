package com.oppwa.mobile.connect.checkout.dialog;

import android.os.Bundle;
import android.text.InputFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.oppwa.mobile.connect.R;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.PaymentParams;
import com.oppwa.mobile.connect.payment.bankaccount.BankAccountPaymentParams;
import com.payfort.fortpaymentsdk.views.CardNumberHelper;

public class GiropayPaymentInfoFragment extends PaymentInfoFragment {
    private InputLayout o;
    private InputLayout p;
    private final x q = new x(Character.valueOf(CardNumberHelper.DIVIDER), "#### #### #### #### #### #### #### ###");
    private int r = 0;

    private void a(InputLayout inputLayout) {
        inputLayout.setHint(getString(R.string.checkout_helper_bic_bank_code));
        inputLayout.setHelperText(getString(R.string.checkout_helper_bic_bank_code));
        inputLayout.setInputValidator(s.c());
        inputLayout.getEditText().setInputType(528384);
        inputLayout.getEditText().setImeOptions(6);
        inputLayout.getEditText().setContentDescription(getString(R.string.checkout_helper_bic_bank_code));
        inputLayout.getEditText().setFilters(new InputFilter[]{new c(false), new InputFilter.LengthFilter(12)});
        if (this.r == 1) {
            inputLayout.setGravityForRTLLanguages();
        }
    }

    private void b(InputLayout inputLayout) {
        if (!this.d.isIBANRequired()) {
            inputLayout.setVisibility(8);
            return;
        }
        inputLayout.setHint(getString(R.string.checkout_helper_iban_account_number));
        inputLayout.setHelperText(getString(R.string.checkout_helper_iban_account_number));
        inputLayout.setInputValidator(s.a(this.q, true));
        inputLayout.getEditText().setInputType(528384);
        inputLayout.getEditText().setImeOptions(5);
        inputLayout.getEditText().setContentDescription(getString(R.string.checkout_helper_iban_account_number));
        inputLayout.getEditText().addTextChangedListener(this.q);
        inputLayout.getEditText().setFilters(new InputFilter[]{new c(false), new InputFilter.LengthFilter(38)});
        if (this.r == 1) {
            inputLayout.setGravityForRTLLanguages();
        }
    }

    private PaymentParams d() {
        String strA;
        String str;
        String str2;
        String checkoutId = this.d.getCheckoutId();
        String text = this.o.getText();
        String text2 = this.p.getText();
        if (!e()) {
            return null;
        }
        if (this.d.isIBANRequired()) {
            strA = this.q.a(text);
            if (b(strA)) {
                str = null;
            } else {
                str = strA;
                strA = null;
            }
        } else {
            strA = null;
            str = null;
        }
        if (a(text2)) {
            str2 = text2;
            text2 = null;
        } else {
            str2 = null;
        }
        try {
            return BankAccountPaymentParams.createGiroPayPaymentParams(checkoutId, strA, str, text2, str2);
        } catch (PaymentException unused) {
            return null;
        }
    }

    private boolean e() {
        boolean z = !this.d.isIBANRequired() || this.o.validate();
        if (this.p.validate()) {
            return z;
        }
        return false;
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.opp_fragment_giropay_payment_info, viewGroup, false);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.r = getResources().getConfiguration().getLayoutDirection();
        this.o = (InputLayout) view.findViewById(R.id.iban_input_layout);
        this.p = (InputLayout) view.findViewById(R.id.bic_or_bank_code_input_layout);
        b(this.o);
        a(this.p);
    }

    private boolean a(String str) {
        if (BankAccountPaymentParams.isBankCodeValid(str)) {
            return true;
        }
        BankAccountPaymentParams.isBicValid(str);
        return false;
    }

    @Override
    protected PaymentParams b() {
        return d();
    }

    private boolean b(String str) {
        if (BankAccountPaymentParams.isIbanValid(str)) {
            return true;
        }
        BankAccountPaymentParams.isAccountNumberValid(str);
        return false;
    }
}
