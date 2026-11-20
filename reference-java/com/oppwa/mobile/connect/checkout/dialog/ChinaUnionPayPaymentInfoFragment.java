package com.oppwa.mobile.connect.checkout.dialog;

import android.os.Bundle;
import android.text.InputFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.oppwa.mobile.connect.R;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.PaymentParams;
import com.oppwa.mobile.connect.payment.chinaunionpay.ChinaUnionPayPaymentParams;

public class ChinaUnionPayPaymentInfoFragment extends PaymentInfoFragment {
    private InputLayout o;

    private PaymentParams d() {
        String checkoutId = this.d.getCheckoutId();
        if (!f()) {
            return null;
        }
        try {
            return new ChinaUnionPayPaymentParams(checkoutId, this.o.getText());
        } catch (PaymentException unused) {
            return null;
        }
    }

    private void e() {
        this.o.getEditText().setFilters(new InputFilter[]{new InputFilter.LengthFilter(getResources().getInteger(R.integer.cardHolderMaxLength))});
        this.o.getEditText().setInputType(528384);
        this.o.getEditText().setImeOptions(6);
        this.o.setHint(getString(R.string.checkout_layout_hint_card_holder));
        this.o.getEditText().setContentDescription(getString(R.string.checkout_layout_hint_card_holder));
        this.o.setHelperText(getString(R.string.checkout_helper_card_holder));
        this.o.setInputValidator(s.d());
        this.o.setOptional(true);
    }

    private boolean f() {
        return this.o.validate();
    }

    @Override
    protected PaymentParams b() {
        return d();
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.opp_fragment_china_union_pay_payment_info, viewGroup, false);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.o = (InputLayout) view.findViewById(R.id.holder_text_input_layout);
        e();
    }
}
