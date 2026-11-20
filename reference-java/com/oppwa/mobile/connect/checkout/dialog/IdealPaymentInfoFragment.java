package com.oppwa.mobile.connect.checkout.dialog;

import android.os.Bundle;
import android.view.View;
import com.oppwa.mobile.connect.R;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.PaymentParams;
import com.oppwa.mobile.connect.payment.bankaccount.BankAccountPaymentParams;
import com.oppwa.mobile.connect.provider.IdealBanksListener;
import com.oppwa.mobile.connect.provider.OppPaymentProvider;
import java.util.Map;

public class IdealPaymentInfoFragment extends ListPaymentInfoFragment implements IdealBanksListener {
    private w.b[] s = null;
    private OppPaymentProvider t;

    public void a(Map map) {
        this.s = b((Map<String, String>) map);
        h();
        i();
    }

    private PaymentParams j() {
        try {
            return BankAccountPaymentParams.createIdealPaymentParams(this.d.getCheckoutId(), e());
        } catch (PaymentException unused) {
            return null;
        }
    }

    public void k() {
        i();
        g();
    }

    @Override
    protected PaymentParams b() {
        return j();
    }

    @Override
    protected w.b[] d() {
        return this.s;
    }

    @Override
    public void idealBanksRequestFailed() {
        getActivity().runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                this.f$0.k();
            }
        });
    }

    @Override
    public void idealBanksRequestSucceeded(final Map<String, String> map) {
        getActivity().runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                this.f$0.a(map);
            }
        });
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        b(R.string.checkout_layout_text_select_bank);
        f();
        OppPaymentProvider oppPaymentProvider = new OppPaymentProvider(getContext(), this.d.getProviderMode());
        this.t = oppPaymentProvider;
        oppPaymentProvider.setProviderDomain(this.d.getProviderDomain());
        this.t.requestIdealBanks(this.d.getCheckoutId(), this);
    }

    private w.b[] b(Map<String, String> map) {
        w.b[] bVarArr = new w.b[map.size()];
        int i = 0;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            bVarArr[i] = new w.b(entry.getKey(), entry.getValue());
            i++;
        }
        return bVarArr;
    }
}
