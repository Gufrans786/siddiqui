package com.oppwa.mobile.connect.checkout.dialog;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.oppwa.mobile.connect.R;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.PaymentParams;
import com.oppwa.mobile.connect.payment.mbway.MBWayPaymentParams;

public class MBWayPaymentInfoFragment extends PaymentInfoFragment {
    private RadioGroup o;
    private RadioButton p;
    private InputLayout q;
    private InputLayout r;
    private InputLayout s;

    public void a(RadioGroup radioGroup, int i) {
        if (this.p.isChecked()) {
            h();
        } else {
            i();
        }
    }

    private void d() {
        this.q.getEditText().setInputType(524320);
        this.q.getEditText().setImeOptions(6);
        this.q.setInputValidator(s.f());
        this.q.setHint(getString(R.string.checkout_layout_hint_email));
    }

    private void e() {
        this.r.setHint(getString(R.string.checkout_layout_hint_country_code));
        this.r.setNotEditableText("Portugal 351");
        this.r.setVisibility(8);
        this.s.getEditText().setInputType(2);
        this.s.getEditText().setImeOptions(6);
        this.s.setHint(getString(R.string.checkout_layout_hint_phone_number));
        this.s.setInputValidator(s.g());
        this.s.setVisibility(8);
    }

    private void f() {
        this.o.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {
            @Override
            public final void onCheckedChanged(RadioGroup radioGroup, int i) {
                this.f$0.a(radioGroup, i);
            }
        });
    }

    private void g() {
        d();
        e();
        f();
    }

    private void h() {
        this.q.clearError();
        if (this.s.hasFocus()) {
            this.q.requestFocus();
        }
        this.q.setVisibility(0);
        this.r.setVisibility(8);
        this.s.setVisibility(8);
    }

    private void i() {
        this.s.clearError();
        if (this.q.hasFocus()) {
            this.s.requestFocus();
        }
        this.q.setVisibility(8);
        this.r.setVisibility(0);
        this.s.setVisibility(0);
    }

    @Override
    protected PaymentParams b() {
        try {
            if (this.p.isChecked() && this.q.validate()) {
                return new MBWayPaymentParams(this.d.getCheckoutId(), this.q.getText());
            }
            if (!this.p.isChecked() && this.s.validate()) {
                return new MBWayPaymentParams(this.d.getCheckoutId(), "351", this.s.getText());
            }
            return null;
        } catch (PaymentException unused) {
        }
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.opp_fragment_mbway_payment_info, viewGroup, false);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.o = (RadioGroup) view.findViewById(R.id.form_type_radio_group);
        this.p = (RadioButton) view.findViewById(R.id.email_radio_button);
        this.q = (InputLayout) view.findViewById(R.id.email_input_layout);
        this.r = (InputLayout) view.findViewById(R.id.country_code_input_layout);
        this.s = (InputLayout) view.findViewById(R.id.mobile_phone_input_layout);
        g();
    }
}
