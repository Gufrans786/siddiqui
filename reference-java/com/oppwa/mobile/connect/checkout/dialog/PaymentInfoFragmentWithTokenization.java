package com.oppwa.mobile.connect.checkout.dialog;

import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import com.oppwa.mobile.connect.R;
import com.oppwa.mobile.connect.checkout.meta.CheckoutStorePaymentDetailsMode;

public abstract class PaymentInfoFragmentWithTokenization extends PaymentInfoFragment {
    private CheckBox o;

    private boolean d() {
        return "/registration".equals(this.e.getEndpoint()) || "/omnitoken".equals(this.e.getEndpoint());
    }

    protected boolean e() {
        if (d() || this.d.getStorePaymentDetailsMode() != CheckoutStorePaymentDetailsMode.ALWAYS) {
            return this.o.isChecked();
        }
        return true;
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.o = (CheckBox) view.findViewById(R.id.store_payment_info_checkbox);
        if (d()) {
            this.l.setText(R.string.checkout_layout_text_register);
        } else if (this.d.getStorePaymentDetailsMode() == CheckoutStorePaymentDetailsMode.PROMPT && this.h == null) {
            view.findViewById(R.id.store_payment_info_layout).setVisibility(0);
        }
    }
}
