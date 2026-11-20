package com.oppwa.mobile.connect.checkout.dialog;

import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import androidx.fragment.app.Fragment;
import com.google.android.gms.tasks.OnCompleteListener;
import com.oppwa.mobile.connect.checkout.meta.CheckoutSettings;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.provider.Connect;

public class PaymentButtonFragment extends Fragment {
    public static final String OPP_PAYMENT_BRAND_CARD = "CARD";
    private e a;

    public static void isReadyForGooglePay(Context context, Connect.ProviderMode providerMode, String str, OnCompleteListener<Boolean> onCompleteListener) throws PaymentException {
        GooglePayHelper.isReadyToPayWithGoogle(context, providerMode, str, onCompleteListener);
    }

    public String getPaymentBrand() {
        return this.a.e();
    }

    public ImageButton getPaymentButton() {
        return this.a.f();
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
        e eVar = new e(this);
        this.a = eVar;
        eVar.g();
        this.a.h();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.a.a(layoutInflater, viewGroup);
    }

    @Override
    public void onDetach() {
        super.onDetach();
        this.a.i();
    }

    @Override
    public void onStart() throws Throwable {
        super.onStart();
        this.a.j();
    }

    @Override
    public void onStop() {
        super.onStop();
        this.a.k();
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.a.b(view);
    }

    public void setPaymentBrand(String str) throws Throwable {
        this.a.b(str);
    }

    public void setPaymentButtonIntegrationMode(PaymentButtonIntegrationMode paymentButtonIntegrationMode) {
        this.a.a(paymentButtonIntegrationMode);
    }

    public void submitTransaction(CheckoutSettings checkoutSettings) throws PaymentException {
        this.a.d(checkoutSettings);
    }

    public void submitTransaction(CheckoutSettings checkoutSettings, ComponentName componentName) throws PaymentException {
        this.a.a(checkoutSettings, componentName);
    }
}
