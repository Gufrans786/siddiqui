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
import android.widget.ImageView;
import android.widget.TextView;
import com.oppwa.mobile.connect.R;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.PaymentParams;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class KlarnaPaymentInfoFragment extends PaymentInfoFragment implements CompoundButton.OnCheckedChangeListener {
    private String[] o;
    private List<CheckBox> p;

    private void a(String str, v vVar, ViewGroup viewGroup) {
        View viewInflate = ((LayoutInflater) getActivity().getSystemService("layout_inflater")).inflate(R.layout.opp_layout_terms_agreement, viewGroup, false);
        TextView textView = (TextView) viewInflate.findViewById(R.id.agreement_link);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.agreement_text);
        CheckBox checkBox = (CheckBox) viewInflate.findViewById(R.id.agreement_checkbox);
        f0.a(getContext(), textView, f0.a(vVar.b(), b(vVar, str)));
        if (vVar.c() == null) {
            textView2.setVisibility(8);
            checkBox.setVisibility(8);
        } else if (this.d.getKlarnaCountry().equals("NL")) {
            ImageView imageView = (ImageView) viewInflate.findViewById(R.id.agreement_image);
            imageView.setVisibility(0);
            imageView.setImageResource(R.drawable.klarna_credit_warning);
            textView2.setVisibility(8);
            checkBox.setVisibility(8);
        } else {
            f0.a(getContext(), textView2, a(vVar, str));
            checkBox.setOnCheckedChangeListener(this);
            a(checkBox);
        }
        viewGroup.addView(viewInflate);
    }

    private String d() {
        return l.a(getContext(), this.g.equals("KLARNA_INVOICE") ? R.raw.klarna_invoice_settings : R.raw.klarna_installments_settings);
    }

    public void e() {
        this.l.setVisibility(8);
    }

    @Override
    protected PaymentParams b() {
        try {
            return new PaymentParams(this.d.getCheckoutId(), this.g);
        } catch (PaymentException unused) {
            return null;
        }
    }

    @Override
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        List<CheckBox> list = this.p;
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<CheckBox> it = this.p.iterator();
        while (it.hasNext()) {
            if (!it.next().isChecked()) {
                this.l.setEnabled(false);
                this.l.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.opp_hide_button));
                new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        this.f$0.e();
                    }
                }, getResources().getInteger(R.integer.button_anim_time));
                return;
            }
        }
        this.l.setEnabled(true);
        this.l.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.opp_show_button));
        this.l.setVisibility(0);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.o = this.e.getKlarnaMerchantIds();
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.opp_fragment_klarna_payment_info, viewGroup, false);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        v vVarA;
        super.onViewCreated(view, bundle);
        String[] strArr = this.o;
        if (strArr == null || strArr.length == 0 || (vVarA = u.a(d(), this.d.getKlarnaCountry())) == null) {
            return;
        }
        ((TextView) view.findViewById(R.id.klarna_title)).setText(vVarA.d());
        for (String str : this.o) {
            a(str, vVarA, (ViewGroup) view.findViewById(R.id.payment_info));
        }
        List<CheckBox> list = this.p;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.l.setVisibility(8);
    }

    private String b(v vVar, String str) {
        String str2 = vVar.a().replace("{EID}", str) + "?fee=";
        return this.g.equals("KLARNA_INVOICE") ? str2 + this.d.getKlarnaInvoiceFee() : str2 + this.d.getKlarnaInstallmentsFee();
    }

    private String a(v vVar, String str) {
        String strC = vVar.c();
        if (strC != null) {
            return strC.replace("{EID}", str);
        }
        return null;
    }

    private void a(CheckBox checkBox) {
        if (this.p == null) {
            this.p = new ArrayList();
        }
        this.p.add(checkBox);
    }
}
