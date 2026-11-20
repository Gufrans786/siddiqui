package com.oppwa.mobile.connect.checkout.dialog;

import android.content.Context;
import com.iovation.mobile.android.FraudForceConfiguration;
import com.iovation.mobile.android.FraudForceManager;
import com.oppwa.mobile.connect.payment.PaymentParams;
import com.oppwa.mobile.connect.utils.LibraryHelper;
import com.payfort.fortpaymentsdk.presentation.threeds.ThreeDsActivity;

class b0 {
    private final PaymentParams a;

    b0(PaymentParams paymentParams) {
        this.a = paymentParams;
    }

    void a(String str) {
        this.a.setShopperResultUrl(str);
    }

    PaymentParams b() {
        return this.a;
    }

    private static String b(Context context) {
        FraudForceManager fraudForceManager = FraudForceManager.getInstance();
        fraudForceManager.initialize(new FraudForceConfiguration(), context.getApplicationContext());
        return fraudForceManager.getBlackbox(context.getApplicationContext());
    }

    void a(t tVar) {
        this.a.addParam("customParameters[SHOPPER_MSDKIntegrationType]", tVar.a());
    }

    void a(Context context) {
        if (LibraryHelper.isIovationAvailable) {
            String strB = b(context);
            if (strB.isEmpty()) {
                return;
            }
            this.a.addParam("customer.browserFingerprint.value", strB);
        }
    }

    void a() {
        this.a.addParam("customParameters[SHOPPER_TOUCHID]", ThreeDsActivity.KEY_SUCCESS);
    }
}
