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
import com.oppwa.mobile.connect.payment.token.TokenPaymentParams;
import com.payfort.fortpaymentsdk.views.CardNumberHelper;

public class DirectDebitSepaPaymentInfoFragment extends PaymentInfoFragmentWithTokenization {
    private InputLayout p;
    private InputLayout q;
    private final x r = new x(Character.valueOf(CardNumberHelper.DIVIDER), "#### #### #### #### #### #### #### ###");
    private int s = 0;

    private PaymentParams f() {
        String checkoutId = this.d.getCheckoutId();
        String text = this.p.getText();
        String text2 = this.q.getText();
        if (!l()) {
            return null;
        }
        try {
            return BankAccountPaymentParams.createDirectDebitSepaPaymentParams(checkoutId, text, this.r.a(text2), e());
        } catch (PaymentException unused) {
            return null;
        }
    }

    private PaymentParams g() {
        try {
            return new TokenPaymentParams(this.d.getCheckoutId(), this.h.getTokenId(), this.g);
        } catch (PaymentException unused) {
            return null;
        }
    }

    private void h() {
        this.p.getEditText().setFilters(new InputFilter[]{new InputFilter.LengthFilter(getResources().getInteger(R.integer.accountHolderMaxLength))});
        this.p.getEditText().setInputType(528384);
        this.p.setHint(getString(R.string.checkout_layout_hint_direct_debit_sepa_account_holder));
        this.p.getEditText().setContentDescription(getString(R.string.checkout_layout_hint_direct_debit_sepa_account_holder));
        this.p.getEditText().setImeOptions(5);
        this.p.setInputValidator(s.b());
    }

    private void i() {
        this.q.getEditText().setFilters(new InputFilter[]{new InputFilter.AllCaps(), new c(false), new InputFilter.LengthFilter(38)});
        this.q.getEditText().setInputType(524432);
        this.q.setHint(getString(R.string.checkout_layout_hint_direct_debit_sepa_iban));
        this.q.getEditText().setContentDescription(getString(R.string.checkout_layout_hint_direct_debit_sepa_iban));
        this.q.setHelperText(getString(R.string.checkout_helper_iban));
        this.q.getEditText().setImeOptions(6);
        this.q.setInputValidator(s.a(this.r, false));
        if (this.s == 1) {
            this.q.setGravityForRTLLanguages();
        }
        this.q.getEditText().addTextChangedListener(this.r);
    }

    private void j() {
        this.p.setNotEditableText(this.h.getBankAccount().getHolder());
        this.p.setHint(getString(R.string.checkout_layout_hint_direct_debit_sepa_account_holder));
    }

    private void k() {
        this.q.getEditText().addTextChangedListener(this.r);
        this.q.setNotEditableText(this.h.getBankAccount().getIban());
        this.q.setHint(getString(R.string.checkout_layout_hint_direct_debit_sepa_iban));
    }

    private boolean l() {
        boolean zValidate = this.p.validate();
        if (this.q.validate()) {
            return zValidate;
        }
        return false;
    }

    @Override
    protected PaymentParams b() {
        return this.h == null ? f() : g();
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.opp_fragment_direct_debit_sepa_payment_info, viewGroup, false);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.s = getResources().getConfiguration().getLayoutDirection();
        this.p = (InputLayout) view.findViewById(R.id.holder_input_layout);
        this.q = (InputLayout) view.findViewById(R.id.iban_input_layout);
        if (this.h == null) {
            h();
            i();
        } else {
            j();
            k();
        }
    }
}
