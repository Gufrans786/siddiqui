package com.oppwa.mobile.connect.checkout.dialog;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import com.oppwa.mobile.connect.R;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.PaymentParams;
import com.oppwa.mobile.connect.payment.stcpay.STCPayPaymentParams;
import com.oppwa.mobile.connect.payment.stcpay.STCPayVerificationOption;
import com.oppwa.mobile.connect.utils.StringUtils;

public class STCPayPaymentInfoFragment extends PaymentInfoFragment {
    private RadioGroup o;
    private RadioButton p;
    private RadioButton q;
    private InputLayout r;
    private RelativeLayout s;
    private int t = 0;

    public void a(RadioGroup radioGroup, int i) {
        if (!this.p.isChecked()) {
            this.r.setVisibility(8);
        } else {
            this.r.clearError();
            this.r.setVisibility(0);
        }
    }

    private void d() {
        this.r.getEditText().setInputType(2);
        this.r.getEditText().setImeOptions(6);
        this.r.setHint(getString(R.string.checkout_layout_hint_phone_number));
        this.r.setInputValidator(s.g());
        if (this.t == 1) {
            this.r.setGravityForRTLLanguages();
        }
    }

    private void e() {
        this.o.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {
            @Override
            public final void onCheckedChanged(RadioGroup radioGroup, int i) {
                this.f$0.a(radioGroup, i);
            }
        });
    }

    private void f() {
        this.t = getResources().getConfiguration().getLayoutDirection();
        if (this.d.isSTCPayQrCodeRequired()) {
            e();
        } else {
            this.s.setVisibility(8);
        }
        d();
    }

    @Override
    protected PaymentParams b() {
        try {
            if (this.p.isChecked() && this.r.validate()) {
                STCPayPaymentParams sTCPayPaymentParams = new STCPayPaymentParams(this.d.getCheckoutId(), STCPayVerificationOption.MOBILE_PHONE);
                sTCPayPaymentParams.setMobilePhoneNumber(StringUtils.replaceNonstandardDigits(this.r.getText()));
                return sTCPayPaymentParams;
            }
            if (this.q.isChecked()) {
                return new STCPayPaymentParams(this.d.getCheckoutId(), STCPayVerificationOption.QR_CODE);
            }
            return null;
        } catch (PaymentException unused) {
        }
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.opp_fragment_stcpay_payment_info, viewGroup, false);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.o = (RadioGroup) view.findViewById(R.id.form_type_radio_group);
        this.p = (RadioButton) view.findViewById(R.id.mobile_phone_radio_button);
        this.r = (InputLayout) view.findViewById(R.id.mobile_phone_input_layout);
        this.q = (RadioButton) view.findViewById(R.id.qrcode_radio_button);
        this.s = (RelativeLayout) view.findViewById(R.id.form_type_method_group);
        f();
    }
}
