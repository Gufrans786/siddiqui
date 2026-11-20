package com.oppwa.mobile.connect.checkout.dialog;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.caverock.androidsvg.SVGParser;
import com.oppwa.mobile.connect.R;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.PaymentParams;
import com.oppwa.mobile.connect.payment.ikanooi.IkanoOiPaymentParams;

public class IkanoOiPaymentInfoFragment extends PaymentInfoFragment implements CompoundButton.OnCheckedChangeListener {
    private InputLayout o;
    private CheckBox p;
    private TextView q;

    private String a(String str, String str2) {
        return "https://terms.iklabs.se/" + str + "/" + str2 + "/ikea/openinvoice/toc.pdf";
    }

    private void d(View view) {
        f0.a(getContext(), this.q, g());
        ((TextView) view.findViewById(R.id.agreement_text)).setText(R.string.checkout_layout_text_terms_and_conditions_agreement);
        this.p.setOnCheckedChangeListener(this);
    }

    private void e(View view) {
        this.o = (InputLayout) view.findViewById(R.id.national_id_input_layout);
        this.p = (CheckBox) view.findViewById(R.id.agreement_checkbox);
        this.q = (TextView) view.findViewById(R.id.agreement_link);
        this.l.setVisibility(8);
        e();
        d(view);
    }

    public void f() {
        this.l.setVisibility(8);
    }

    private String g() {
        String string = getString(R.string.checkout_layout_text_terms_and_conditions);
        String str = this.g;
        str.hashCode();
        str.hashCode();
        switch (str) {
            case "IKANOOI_FI":
                return string + " (" + f0.a(getString(R.string.checkout_layout_text_swedish), a("fi", "sv")) + " | " + f0.a(getString(R.string.checkout_layout_text_finnish), a("fi", "fi")) + ")";
            case "IKANOOI_NO":
                return f0.a(string, a(SVGParser.XML_STYLESHEET_ATTR_ALTERNATE_NO, SVGParser.XML_STYLESHEET_ATTR_ALTERNATE_NO));
            case "IKANOOI_SE":
                return f0.a(string, a("se", "sv"));
            default:
                return "";
        }
    }

    @Override
    protected PaymentParams b() {
        return d();
    }

    @Override
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z) {
            this.l.setEnabled(true);
            this.l.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.opp_show_button));
            this.l.setVisibility(0);
        } else {
            this.l.setEnabled(false);
            this.l.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.opp_hide_button));
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.f$0.f();
                }
            }, getResources().getInteger(R.integer.button_anim_time));
        }
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.opp_fragment_ikano_payment_info, viewGroup, false);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        e(view);
    }

    private PaymentParams d() {
        if (!this.o.validate()) {
            return null;
        }
        try {
            return new IkanoOiPaymentParams(this.d.getCheckoutId(), this.g, this.o.getText());
        } catch (PaymentException unused) {
            return null;
        }
    }

    private void e() {
        this.o.getEditText().setInputType(524289);
        this.o.setHint(getString(R.string.checkout_layout_hint_national_identifier));
        this.o.setHelperText(getString(R.string.checkout_helper_national_identifier));
        this.o.setInputValidator(s.a(this.g));
        this.o.getEditText().setImeOptions(6);
    }
}
