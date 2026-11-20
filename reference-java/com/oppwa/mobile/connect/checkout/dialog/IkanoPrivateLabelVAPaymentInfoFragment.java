package com.oppwa.mobile.connect.checkout.dialog;

import android.os.Bundle;
import android.text.InputFilter;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.oppwa.mobile.connect.R;
import com.oppwa.mobile.connect.checkout.meta.CheckoutSkipCVVMode;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.CardBrandInfo;
import com.oppwa.mobile.connect.payment.PaymentParams;
import com.oppwa.mobile.connect.payment.card.IkanoPrivateLabelVAPaymentParams;
import com.oppwa.mobile.connect.utils.StringUtils;
import java.util.regex.Pattern;

public class IkanoPrivateLabelVAPaymentInfoFragment extends PaymentInfoFragment {
    private CardNumberInputLayout o;
    private DateInputLayout p;
    private InputLayout q;
    private int r = 0;

    private void d(View view) {
        this.r = getResources().getConfiguration().getLayoutDirection();
        this.o = (CardNumberInputLayout) view.findViewById(R.id.number_input_layout);
        this.p = (DateInputLayout) view.findViewById(R.id.expiry_date_input_layout);
        this.q = (InputLayout) view.findViewById(R.id.verification_input_layout);
        g();
        h();
        i();
    }

    private String e() {
        StringBuilder sb = new StringBuilder(this.o.getEditText().getText());
        StringUtils.replaceNonstandardDigits(sb);
        StringUtils.removeSubstring(sb, " ");
        return sb.toString();
    }

    private String f() {
        String text = this.q.getText();
        if (TextUtils.isEmpty(text)) {
            return null;
        }
        return StringUtils.replaceNonstandardDigits(text);
    }

    private void g() {
        this.o.setHint(getString(R.string.checkout_layout_hint_account_number));
        this.o.setHelperText(getString(R.string.checkout_helper_account_number));
        this.o.getEditText().setContentDescription(getString(R.string.checkout_layout_hint_account_number));
        this.o.getEditText().setImeOptions(5);
        CardBrandInfo cardBrandInfo = new CardBrandInfo();
        s.m mVar = new s.m(Pattern.compile(cardBrandInfo.getValidation()), false, R.string.checkout_error_account_number_invalid);
        this.o.setCardBrand("IK_PRIVATE_LABEL_VA");
        this.o.setNumberPatternAndValidator(cardBrandInfo.getPattern(), mVar);
        if (this.r == 1) {
            this.o.setGravityForRTLLanguages();
        }
    }

    private void h() {
        this.p.setHint(getString(R.string.checkout_layout_hint_card_expiration_date));
        this.p.getEditText().setContentDescription(getString(R.string.checkout_layout_hint_card_expiration_date));
        this.p.setHelperText(getString(R.string.checkout_helper_expiration_date));
        this.p.getEditText().setImeOptions(5);
        this.p.setInputValidator(new s.n(R.string.checkout_error_account_expiration_date_invalid, R.string.checkout_error_account_expired));
        if (this.r == 1) {
            this.p.setGravityForRTLLanguages();
        }
    }

    private void i() {
        if (this.d.getSkipCVVMode() == CheckoutSkipCVVMode.ALWAYS) {
            this.q.setVisibility(8);
            this.p.getEditText().setImeOptions(6);
            return;
        }
        this.q.getEditText().setInputType(524290);
        this.q.getEditText().setImeOptions(6);
        this.q.setHint(getString(R.string.checkout_layout_hint_account_verification));
        this.q.setHelperText(getString(R.string.checkout_helper_account_verification));
        this.q.getEditText().setContentDescription(getString(R.string.checkout_layout_hint_account_verification));
        this.q.getEditText().setFilters(new InputFilter[]{new InputFilter.LengthFilter(getResources().getInteger(R.integer.accountVerificationMaxLength))});
        if (this.r == 1) {
            this.q.setGravityForRTLLanguages();
        }
    }

    private boolean j() {
        boolean zValidate = this.o.validate();
        if (this.p.validate()) {
            return zValidate;
        }
        return false;
    }

    @Override
    protected PaymentParams b() {
        return d();
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.opp_fragment_ikano_private_label_va_payment_info, viewGroup, false);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        d(view);
    }

    private PaymentParams d() {
        if (!j()) {
            return null;
        }
        try {
            return new IkanoPrivateLabelVAPaymentParams(this.d.getCheckoutId(), e(), this.p.getMonth(), this.p.getYear(), f());
        } catch (PaymentException unused) {
            return null;
        }
    }
}
