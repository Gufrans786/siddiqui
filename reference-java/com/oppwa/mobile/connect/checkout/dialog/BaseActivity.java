package com.oppwa.mobile.connect.checkout.dialog;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import androidx.activity.OnBackPressedCallback;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentResultListener;
import app.notifee.core.event.LogEvent;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wallet.AutoResolveHelper;
import com.google.android.gms.wallet.PaymentData;
import com.google.android.gms.wallet.PaymentDataRequest;
import com.google.android.gms.wallet.PaymentsClient;
import com.oppwa.mobile.connect.checkout.meta.CheckoutSettings;
import com.oppwa.mobile.connect.exception.ErrorCode;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.BrandsValidation;
import com.oppwa.mobile.connect.payment.CheckoutInfo;
import com.oppwa.mobile.connect.payment.PaymentParams;
import com.oppwa.mobile.connect.payment.bankaccount.BankAccountPaymentParams;
import com.oppwa.mobile.connect.payment.inicis.InicisPaymentParams;
import com.oppwa.mobile.connect.payment.klarna.KlarnaInlinePaymentParams;
import com.oppwa.mobile.connect.payment.token.Token;
import com.oppwa.mobile.connect.payment.token.TokenPaymentParams;
import com.oppwa.mobile.connect.provider.Connect;
import com.oppwa.mobile.connect.provider.Transaction;
import com.oppwa.mobile.connect.utils.LibraryHelper;
import com.oppwa.mobile.connect.utils.Logger;
import com.payfort.fortpaymentsdk.constants.Constants;
import geidea.utils.GeideaUtils;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class BaseActivity extends AppCompatActivity {
    protected CheckoutViewModel a;
    protected j b;
    protected t c;
    protected CheckoutSettings f;
    protected ComponentName g;
    protected String h;
    protected BrandsValidation i;
    protected CheckoutInfo j;
    protected a0 k;
    protected PaymentsClient l;
    protected PaymentParams m;

    protected d0 f3726n;
    protected PaymentError p;
    protected int q;
    private OnBackPressedCallback r;
    protected boolean d = true;
    protected boolean e = false;
    protected GooglePayHelper o = new GooglePayHelper();

    class a extends OnBackPressedCallback {
        a(boolean z) {
            super(z);
        }

        @Override
        public void handleOnBackPressed() throws Throwable {
            BaseActivity baseActivity = BaseActivity.this;
            if (baseActivity.d) {
                if (!baseActivity.b.j()) {
                    BaseActivity baseActivity2 = BaseActivity.this;
                    if (baseActivity2.e) {
                        baseActivity2.b.f();
                        return;
                    }
                }
                BaseActivity.this.d();
            }
        }
    }

    private void a() {
        getSupportFragmentManager().setFragmentResultListener(BaseFragment.class.getName(), this, new FragmentResultListener() {
            @Override
            public final void onFragmentResult(String str, Bundle bundle) throws Throwable {
                this.f$0.a(str, bundle);
            }
        });
        getSupportFragmentManager().setFragmentResultListener(PaymentMethodSelectionFragment.class.getName(), this, new FragmentResultListener() {
            @Override
            public final void onFragmentResult(String str, Bundle bundle) {
                this.f$0.d(str, bundle);
            }
        });
        getSupportFragmentManager().setFragmentResultListener(OrderSummaryFragment.class.getName(), this, new FragmentResultListener() {
            @Override
            public final void onFragmentResult(String str, Bundle bundle) {
                this.f$0.b(str, bundle);
            }
        });
        getSupportFragmentManager().setFragmentResultListener(PaymentInfoFragment.class.getName(), this, new FragmentResultListener() {
            @Override
            public final void onFragmentResult(String str, Bundle bundle) {
                this.f$0.c(str, bundle);
            }
        });
    }

    public void b(String str, Bundle bundle) {
        e();
        try {
            j();
        } catch (Exception e) {
            a((Transaction) null, e);
        }
    }

    public void c(String str, Bundle bundle) {
        a((PaymentParams) bundle.getParcelable("PAYMENT_PARAMS_RESULT_KEY"), bundle.getBoolean("TOKENIZED_RESULT_KEY", false));
    }

    public void d(String str, Bundle bundle) {
        a(bundle.getString("PAYMENT_METHOD_RESULT_KEY"), (Token) bundle.getParcelable("TOKEN_RESULT_KEY"));
    }

    private void h() {
        this.b.a(new ProcessingFragment());
    }

    protected abstract Intent a(Transaction transaction, PaymentError paymentError);

    protected abstract Connect.ProviderMode c();

    protected void e() {
        h();
    }

    protected void f() {
        h();
    }

    protected void g() {
        this.b.a(PaymentMethodSelectionFragment.newInstance(this.k, this.f, this.j, this.i));
    }

    protected void i() throws PaymentException {
        if (this.l == null) {
            this.l = GooglePayHelper.getPaymentsClient(this, c());
        }
        PaymentDataRequest paymentDataRequestFromJson = this.f.getGooglePayPaymentDataRequestJson() != null ? PaymentDataRequest.fromJson(this.f.getGooglePayPaymentDataRequestJson()) : null;
        if (paymentDataRequestFromJson == null) {
            throw new PaymentException(new PaymentError(ErrorCode.ERROR_CODE_GOOGLEPAY, "Payment data request is invalid."));
        }
        AutoResolveHelper.resolveTask(this.l.loadPaymentData(paymentDataRequestFromJson), this, GeideaUtils.REGISTRATION_REQUEST_CODE);
    }

    protected abstract void j() throws PaymentException;

    @Override
    protected void onActivityResult(int i, int i2, Intent intent) throws Throwable {
        super.onActivityResult(i, i2, intent);
        if (i == 700) {
            a(i2 == -1);
        } else {
            if (i != 777) {
                return;
            }
            try {
                a(i2, intent);
            } catch (Exception e) {
                a((Transaction) null, e);
            }
        }
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        a();
    }

    @Override
    protected void onStart() {
        super.onStart();
        this.r = new a(true);
        getOnBackPressedDispatcher().addCallback(this, this.r);
    }

    @Override
    protected void onStop() {
        super.onStop();
        this.r.remove();
    }

    private PaymentParams c(String str) throws PaymentException {
        String checkoutId = this.f.getCheckoutId();
        if ("PAYTRAIL".equals(str)) {
            return BankAccountPaymentParams.createPaytrailPaymentParams(checkoutId);
        }
        if (i.a(str) && LibraryHelper.isKlarnaAvailable) {
            return new KlarnaInlinePaymentParams(checkoutId, str);
        }
        if ("INICIS".equals(str)) {
            return new InicisPaymentParams(checkoutId, str);
        }
        return new PaymentParams(checkoutId, str);
    }

    protected void d() throws Throwable {
        if (this.f != null) {
            Logger.warning("Checkout was canceled");
            Logger.sendLogs();
        }
        a(101, null, null);
    }

    protected void b(Transaction transaction, PaymentError paymentError) {
        this.p = paymentError;
        if (this.f != null && paymentError != null) {
            Logger.error(paymentError.getErrorCode() + " - " + paymentError.getErrorMessage());
            Logger.sendLogs();
        }
        a(102, transaction, paymentError);
    }

    protected void d(String str) {
        f0.b(this, str);
    }

    private PaymentError b() {
        return new PaymentError(ErrorCode.ERROR_CODE_GOOGLEPAY, "Google Pay payment data is empty.");
    }

    private void b(PaymentData paymentData) {
        String strOptString;
        JSONObject jSONObjectOptJSONObject;
        String json = paymentData.toJson();
        if (json == null) {
            strOptString = paymentData.getCardInfo().getCardNetwork();
        } else {
            try {
                JSONObject jSONObjectOptJSONObject2 = new JSONObject(json).optJSONObject("paymentMethodData");
                strOptString = (jSONObjectOptJSONObject2 == null || (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject(LogEvent.LEVEL_INFO)) == null) ? null : jSONObjectOptJSONObject.optString("cardNetwork");
            } catch (JSONException e) {
                Logger.error(e.getMessage());
            }
        }
        if (Constants.CREDIT_CARDS_TYPES.MASTERCARD.equals(strOptString)) {
            strOptString = "MASTER";
        }
        this.a.a(strOptString);
    }

    public void a(String str, Bundle bundle) throws Throwable {
        Transaction transaction = (Transaction) bundle.getParcelable("TRANSACTION_RESULT_KEY");
        PaymentError paymentError = (PaymentError) bundle.getParcelable("PAYMENT_ERROR_RESULT_KEY");
        if (paymentError != null) {
            b(transaction, paymentError);
        } else if (transaction != null) {
            a(transaction);
        } else {
            d();
        }
    }

    protected void a(Transaction transaction) {
        a(100, transaction, null);
    }

    protected void b(String str, Token token, Transaction transaction, Connect.ProviderMode providerMode) {
        PaymentInfoFragment paymentInfoFragmentA = z.a(str, b(str));
        paymentInfoFragmentA.setArguments(a(str, token, transaction, providerMode));
        Fragment fragmentB = this.b.b();
        if (this.c == t.PAYMENT_BUTTON && !(fragmentB instanceof PaymentMethodSelectionFragment)) {
            g();
        }
        this.b.a(paymentInfoFragmentA);
    }

    protected void a(PaymentParams paymentParams, boolean z) {
        this.m = paymentParams;
        String paymentBrand = paymentParams.getPaymentBrand();
        if (this.b.b() instanceof KlarnaInlinePaymentInfoFragment) {
            try {
                j();
                return;
            } catch (Exception e) {
                a((Transaction) null, e);
                return;
            }
        }
        if (this.f3726n.a(paymentBrand, z)) {
            this.f3726n.a(this, new d0.a() {
                @Override
                public final void a(boolean z2) throws Throwable {
                    this.f$0.a(z2);
                }
            });
            return;
        }
        if (this.b.g()) {
            e();
        }
        a((PaymentData) null);
    }

    protected void b(Transaction transaction) {
        this.b.a(CheckoutThreeDS2WebViewFragment.newInstance(transaction));
    }

    protected boolean b(String str) {
        return this.i.isCardBrand(str);
    }

    private void b(String str, Token token) throws PaymentException {
        PaymentParams paymentParamsC;
        String checkoutId = this.f.getCheckoutId();
        if (token != null) {
            paymentParamsC = new TokenPaymentParams(checkoutId, token.getTokenId(), str);
        } else {
            paymentParamsC = c(str);
        }
        a(paymentParamsC, token != null);
    }

    protected void a(String str, Token token) {
        try {
            if ("GOOGLEPAY".equals(str)) {
                i();
            } else if (a(str)) {
                b(str, token, null, c());
            } else {
                b(str, token);
            }
        } catch (Exception e) {
            a((Transaction) null, e);
        }
    }

    protected void a(boolean z) throws Throwable {
        if (z) {
            b0 b0Var = new b0(this.m);
            b0Var.a();
            this.m = b0Var.b();
            e();
            a((PaymentData) null);
            return;
        }
        if (this.b.g()) {
            return;
        }
        d();
    }

    protected void a(PaymentData paymentData) {
        this.d = false;
        ComponentName componentName = this.g;
        if (componentName != null) {
            sendBroadcast(k.a(this, componentName, this.m, paymentData));
            return;
        }
        try {
            j();
        } catch (Exception e) {
            a((Transaction) null, e);
        }
    }

    private void a(int i, Intent intent) throws Throwable {
        if (i != -1) {
            if (i == 0) {
                d();
                return;
            } else {
                if (i == 1) {
                    throw new PaymentException(new PaymentError(ErrorCode.ERROR_CODE_GOOGLEPAY, a(intent)));
                }
                return;
            }
        }
        if (intent != null) {
            PaymentData fromIntent = PaymentData.getFromIntent(intent);
            if (fromIntent != null) {
                e();
                b(fromIntent);
                this.m = k.a(this.f.getCheckoutId(), fromIntent, this.a.a());
                a(fromIntent);
                return;
            }
            throw new PaymentException(b());
        }
        throw new PaymentException(b());
    }

    private String a(Intent intent) {
        Status statusFromIntent = AutoResolveHelper.getStatusFromIntent(intent);
        if (statusFromIntent != null && statusFromIntent.getStatusMessage() != null) {
            return statusFromIntent.getStatusMessage();
        }
        return "Google Pay error with no status message";
    }

    protected void a(OrderSummary orderSummary) {
        this.b.a(OrderSummaryFragment.newInstance(orderSummary, this.j.getCurrencyCode()));
    }

    protected boolean a(String str) {
        return b(str) || z.a(str);
    }

    protected void a(Transaction transaction, Exception exc) {
        PaymentError unexpectedExceptionError;
        if (exc instanceof PaymentException) {
            unexpectedExceptionError = ((PaymentException) exc).getError();
        } else {
            unexpectedExceptionError = PaymentError.getUnexpectedExceptionError(exc);
        }
        b(transaction, unexpectedExceptionError);
    }

    private Bundle a(String str, Token token, Transaction transaction, Connect.ProviderMode providerMode) {
        Bundle bundle = new Bundle();
        bundle.putParcelable(CheckoutActivity.CHECKOUT_SETTINGS, this.f);
        bundle.putParcelable("com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_INFO", this.j);
        bundle.putParcelable("com.oppwa.mobile.connect.checkout.dialog.EXTRA_BRANDS_VALIDATION", this.i);
        bundle.putString(CheckoutActivity.EXTRA_PAYMENT_BRAND, str);
        bundle.putParcelable("com.oppwa.mobile.connect.checkout.dialog.EXTRA_TOKEN", token);
        bundle.putBoolean("com.oppwa.mobile.connect.checkout.dialog.EXTRA_SKIP_PAYMENT_METHOD_SELECTION_SCREEN", this.b.k());
        if (providerMode != null) {
            bundle.putString("com.oppwa.mobile.connect.checkout.dialog.EXTRA_PROVIDER_MODE", providerMode.name());
        }
        if (transaction != null) {
            bundle.putParcelable("com.oppwa.mobile.connect.checkout.dialog.EXTRA_TRANSACTION", transaction);
        }
        return bundle;
    }

    private void a(int i, Transaction transaction, PaymentError paymentError) {
        this.q = i;
        setResult(i, a(transaction, paymentError));
        this.b.a();
    }
}
