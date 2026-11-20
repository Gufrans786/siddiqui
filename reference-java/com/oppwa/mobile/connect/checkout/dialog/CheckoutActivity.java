package com.oppwa.mobile.connect.checkout.dialog;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.text.TextUtils;
import com.oppwa.mobile.connect.R;
import com.oppwa.mobile.connect.checkout.meta.CheckoutSettings;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.CheckoutInfo;
import com.oppwa.mobile.connect.payment.PaymentParams;
import com.oppwa.mobile.connect.payment.token.Token;
import com.oppwa.mobile.connect.provider.Transaction;
import com.oppwa.mobile.connect.utils.LibraryHelper;
import com.oppwa.mobile.connect.utils.Logger;
import java.util.HashMap;
import java.util.Map;

public final class CheckoutActivity extends BaseServiceActivity {
    public static final String ACTION_ON_BEFORE_SUBMIT = "com.oppwa.mobile.connect.checkout.dialog.action.ACTION_ON_BEFORE_SUBMIT";
    public static final String CHECKOUT_PAYMENT_BUTTON_METHOD = "com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_PAYMENT_BUTTON_METHOD";
    public static final String CHECKOUT_RECEIVER = "com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_RECEIVER";
    public static final String CHECKOUT_RESULT_ERROR = "com.oppwa.mobile.connect.checkout.dialog.CHECKOUT_RESULT_ERROR";
    public static final String CHECKOUT_RESULT_RESOURCE_PATH = "com.oppwa.mobile.connect.checkout.dialog.CHECKOUT_RESULT_RESOURCE_PATH";
    public static final String CHECKOUT_RESULT_SETTINGS = "com.oppwa.mobile.connect.checkout.dialog.CHECKOUT_RESULT_SETTINGS";
    public static final String CHECKOUT_RESULT_TRANSACTION = "com.oppwa.mobile.connect.checkout.dialog.CHECKOUT_RESULT_TRANSACTION";
    public static final String CHECKOUT_SETTINGS = "com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_SETTINGS";
    public static final String EXTRA_CHECKOUT_ID = "com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_ID";
    public static final String EXTRA_GOOGLE_PAY_PAYMENT_DATA = "com.oppwa.mobile.connect.checkout.dialog.EXTRA_GOOGLE_PAY_PAYMENT_DATA";
    public static final String EXTRA_ORDER_SUMMARY = "com.oppwa.mobile.connect.checkout.dialog.EXTRA_ORDER_SUMMARY";
    public static final String EXTRA_PAYMENT_BRAND = "com.oppwa.mobile.connect.checkout.dialog.EXTRA_PAYMENT_BRAND";
    public static final String EXTRA_SENDER_COMPONENT_NAME = "com.oppwa.mobile.connect.checkout.dialog.EXTRA_SENDER_COMPONENT_NAME";
    public static final String EXTRA_TRANSACTION_ABORTED = "com.oppwa.mobile.connect.checkout.dialog.EXTRA_TRANSACTION_ABORTED";
    public static final int REQUEST_CODE_CHECKOUT = 242;
    public static final int RESULT_CANCELED = 101;
    public static final int RESULT_ERROR = 102;
    public static final int RESULT_OK = 100;

    private void b(Intent intent) throws PaymentException {
        if (intent.getBooleanExtra(EXTRA_TRANSACTION_ABORTED, false)) {
            throw new PaymentException(PaymentError.getTransactionAbortedError());
        }
        String stringExtra = intent.getStringExtra(EXTRA_CHECKOUT_ID);
        if (TextUtils.isEmpty(stringExtra)) {
            throw new PaymentException(PaymentError.getPaymentParamsCheckoutIdInvalidError());
        }
        Logger.setCurrentCheckoutId(stringExtra);
        e(stringExtra);
    }

    private void e(String str) {
        String checkoutId = this.m.getCheckoutId();
        String resourcePath = this.j.getResourcePath();
        if (str.equals(checkoutId)) {
            return;
        }
        this.m.setCheckoutId(str);
        this.f.setCheckoutId(str);
        if (resourcePath != null) {
            this.j.setResourcePath(resourcePath.replace(checkoutId, str));
        }
        a(checkoutId, str);
    }

    private void s() {
        HashMap map = new HashMap();
        if (this.f.getCustomLogos() != null) {
            for (Map.Entry<String, Integer> entry : this.f.getCustomLogos().entrySet()) {
                Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getResources(), entry.getValue().intValue());
                if (bitmapDecodeResource != null) {
                    map.put(entry.getKey(), bitmapDecodeResource);
                }
            }
        }
        ImageCache.getInstance().a(map);
    }

    private void t() {
        getWindow().setFlags(8192, 8192);
    }

    private void v() {
        if (this.f.getThemeResId() != 0) {
            setTheme(this.f.getThemeResId());
        }
        if (this.f.getLocale() != null) {
            k.a(getBaseContext(), this.f.getLocale());
        }
    }

    private void w() {
        Token tokenA;
        if (this.k.d() != null) {
            tokenA = k.a(this.h, this.k.d());
            if (tokenA != null) {
                this.h = tokenA.getPaymentBrand();
            }
        } else {
            tokenA = null;
        }
        a(this.h, tokenA);
    }

    private void x() throws PaymentException {
        if (this.b.k()) {
            a(this.k.b().size() == 1 ? this.k.b().iterator().next() : PaymentButtonFragment.OPP_PAYMENT_BRAND_CARD, (Token) null);
        } else {
            if (this.k.b().isEmpty()) {
                throw new PaymentException(PaymentError.getNoAvailablePaymentMethodsError());
            }
            g();
        }
    }

    @Override
    protected Intent a(Transaction transaction, PaymentError paymentError) {
        Intent intent = new Intent();
        intent.putExtra(CHECKOUT_RESULT_SETTINGS, this.f);
        intent.putExtra(CHECKOUT_RESULT_TRANSACTION, transaction);
        intent.putExtra(CHECKOUT_RESULT_ERROR, paymentError);
        CheckoutInfo checkoutInfo = this.j;
        if (checkoutInfo != null) {
            intent.putExtra(CHECKOUT_RESULT_RESOURCE_PATH, checkoutInfo.getResourcePath());
        }
        return intent;
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        CheckoutSettings checkoutSettings = this.f;
        if (checkoutSettings != null) {
            Logger.checkOutdatedFiles(this, checkoutSettings.getProviderDomain());
        }
        this.g = (ComponentName) getIntent().getParcelableExtra(CHECKOUT_RECEIVER);
        String stringExtra = getIntent().getStringExtra(CHECKOUT_PAYMENT_BUTTON_METHOD);
        this.h = stringExtra;
        this.c = stringExtra == null ? t.CHECKOUT_UI : t.PAYMENT_BUTTON;
        CheckoutSettings checkoutSettings2 = this.f;
        if (checkoutSettings2 != null && checkoutSettings2.isWindowSecurityEnabled()) {
            t();
        }
        setContentView(R.layout.opp_activity_checkout);
        this.b = new j(this);
        try {
            a(this.f);
            v();
            k.a(this, this.f.getCheckoutId(), this.f.getProviderMode());
            this.f3726n = new d0(this, this.f);
            s();
            if (bundle != null) {
                a(bundle);
            } else if (this.c == t.CHECKOUT_UI) {
                f();
            }
        } catch (Exception e) {
            a((Transaction) null, e);
        }
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (ACTION_ON_BEFORE_SUBMIT.equals(intent.getAction())) {
            try {
                b(intent);
                OrderSummary orderSummary = (OrderSummary) intent.getParcelableExtra(EXTRA_ORDER_SUMMARY);
                if (orderSummary == null || !this.m.getPaymentBrand().equals("GOOGLEPAY")) {
                    j();
                } else {
                    this.d = true;
                    a(orderSummary);
                }
            } catch (Exception e) {
                a((Transaction) null, e);
            }
        }
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("com.oppwa.mobile.connect.checkout.dialog.STATE_PAYMENT_PARAMS", this.m);
        bundle.putBoolean("com.oppwa.mobile.connect.checkout.dialog.STATE_IS_CHECKOUT_FRAGMENT_INITIATED", this.e);
    }

    @Override
    protected void q() {
        if (this.e || this.i == null) {
            return;
        }
        this.e = true;
        a(this.k);
        try {
            if (this.c == t.CHECKOUT_UI) {
                x();
            } else {
                w();
            }
        } catch (Exception e) {
            a((Transaction) null, e);
        }
    }

    j u() {
        return this.b;
    }

    private void a(CheckoutSettings checkoutSettings) throws PaymentException {
        if (checkoutSettings != null) {
            if (checkoutSettings.getKlarnaCountry() == null) {
                checkoutSettings.setKlarnaCountry(u.a(this));
            }
            a(this, checkoutSettings);
            return;
        }
        throw new PaymentException(PaymentError.getCheckoutSettingsMissedError());
    }

    private void a(Bundle bundle) {
        this.m = (PaymentParams) bundle.getParcelable("com.oppwa.mobile.connect.checkout.dialog.STATE_PAYMENT_PARAMS");
        this.e = bundle.getBoolean("com.oppwa.mobile.connect.checkout.dialog.STATE_IS_CHECKOUT_FRAGMENT_INITIATED");
    }

    private static void a(Activity activity, CheckoutSettings checkoutSettings) {
        Logger.info("Checkout started:\n" + checkoutSettings.toString() + "\n" + LibraryHelper.getLogLibrariesInfo(activity));
    }

    private static void a(a0 a0Var) {
        Logger.info("Configured payment brands: " + a0Var.b().toString());
    }

    private static void a(String str, String str2) {
        Logger.info("Checkout id was changed:\nNew checkout id: " + str2 + "\nOld checkout id: " + str);
    }
}
