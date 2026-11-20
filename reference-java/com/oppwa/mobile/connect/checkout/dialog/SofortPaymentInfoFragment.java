package com.oppwa.mobile.connect.checkout.dialog;

import android.os.Bundle;
import android.view.View;
import com.oppwa.mobile.connect.R;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.PaymentParams;
import com.oppwa.mobile.connect.payment.bankaccount.BankAccountPaymentParams;

public class SofortPaymentInfoFragment extends ListPaymentInfoFragment {
    private PaymentParams j() {
        try {
            return BankAccountPaymentParams.createSofortPaymentParams(this.d.getCheckoutId(), e());
        } catch (PaymentException unused) {
            return null;
        }
    }

    @Override
    protected PaymentParams b() {
        return j();
    }

    @Override
    protected w.b[] d() {
        return new w.b[]{new w.b(getString(R.string.germany), "DE"), new w.b(getString(R.string.netherlands), "NL"), new w.b(getString(R.string.austria), "AT"), new w.b(getString(R.string.belgium), "BE"), new w.b(getString(R.string.switzerland), "CH"), new w.b(getString(R.string.united_kingdom), "GB"), new w.b(getString(R.string.spain), "ES"), new w.b(getString(R.string.italy), "IT"), new w.b(getString(R.string.poland), "PL")};
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        b(R.string.checkout_layout_text_select_country);
        h();
        i();
    }
}
