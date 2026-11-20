package com.oppwa.mobile.connect.checkout.dialog;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.wallet.IsReadyToPayRequest;
import com.google.android.gms.wallet.PaymentsClient;
import com.oppwa.mobile.connect.checkout.meta.CheckoutCardBrandsDisplayMode;
import com.oppwa.mobile.connect.checkout.meta.CheckoutSettings;
import com.oppwa.mobile.connect.exception.ErrorCode;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.BrandsValidation;
import com.oppwa.mobile.connect.payment.CheckoutInfo;
import com.oppwa.mobile.connect.payment.ImagesRequest;
import com.oppwa.mobile.connect.provider.Connect;
import com.oppwa.mobile.connect.provider.IPaymentProvider;
import com.oppwa.mobile.connect.provider.Transaction;
import com.oppwa.mobile.connect.provider.TransactionType;
import com.oppwa.mobile.connect.threeds.OppThreeDSConfig;
import com.oppwa.mobile.connect.threeds.OppThreeDSService;
import com.oppwa.mobile.connect.utils.LibraryHelper;
import com.oppwa.mobile.connect.utils.Logger;
import com.oppwa.mobile.connect.utils.TaskRunner;

public abstract class BaseServiceActivity extends BaseActivity implements b {
    protected IPaymentProvider s;

    private void d(Transaction transaction) throws PaymentException {
        String paymentBrand = transaction.getPaymentParams().getPaymentBrand();
        if (paymentBrand.equals("ALIPAY") && LibraryHelper.isAlipayAvailable) {
            g(transaction);
            return;
        }
        if (i.a(paymentBrand) && LibraryHelper.isKlarnaAvailable) {
            c(transaction, (PaymentError) null);
            return;
        }
        if (paymentBrand.equals("BANCONTACT_LINK")) {
            c(transaction);
            return;
        }
        if (transaction.getTransactionType() == TransactionType.ASYNC) {
            k.b(transaction.getRedirectUrl());
            if (f(transaction)) {
                e(transaction);
                return;
            }
            d(transaction.getRedirectUrl());
        }
        a(transaction);
    }

    private void k() throws PaymentException {
        Connect.ProviderMode providerModeC = c();
        this.l = GooglePayHelper.getPaymentsClient(this, providerModeC);
        OnCompleteListener<Boolean> onCompleteListener = new OnCompleteListener() {
            @Override
            public final void onComplete(Task task) {
                this.f$0.a(task);
            }
        };
        if (this.f.getGooglePayPaymentDataRequestJson() == null) {
            if (providerModeC != Connect.ProviderMode.LIVE) {
                throw new PaymentException(new PaymentError(ErrorCode.ERROR_CODE_GOOGLEPAY, "GooglePayPaymentDataRequestJson is not set."));
            }
            this.k.b().remove("GOOGLEPAY");
            n();
            return;
        }
        try {
            a(this.l, this.f.getGooglePayPaymentDataRequestJson(), onCompleteListener);
        } catch (PaymentException e) {
            if (providerModeC != Connect.ProviderMode.LIVE) {
                a((Transaction) null, e);
            } else {
                this.k.b().remove("GOOGLEPAY");
                n();
            }
        }
    }

    private Transaction l() throws PaymentException {
        b0 b0Var = new b0(this.m);
        b0Var.a(this.c);
        b0Var.a(this.f.getShopperResultUrl());
        if (this.j.isCollectRedShieldDeviceId()) {
            b0Var.a(this);
        }
        return new Transaction(b0Var.b());
    }

    private OppThreeDSConfig m() {
        if (!LibraryHelper.isThreeDS2Available) {
            return null;
        }
        OppThreeDSConfig.Builder builder = new OppThreeDSConfig.Builder(OppThreeDSService.getInstance().getConfig());
        if (!TextUtils.isEmpty(this.f.getLocale())) {
            builder.setLocale(this.f.getLocale());
        }
        return builder.build();
    }

    private void r() throws PaymentException {
        a0 a0Var = this.k;
        if (a0Var == null || a0Var.b().isEmpty()) {
            throw new PaymentException(this.c == t.CHECKOUT_UI ? PaymentError.getNoAvailablePaymentMethodsError() : PaymentError.getPaymentMethodNotAvailableError());
        }
    }

    protected void a(PaymentError paymentError) {
        b((Transaction) null, paymentError);
    }

    @Override
    protected Connect.ProviderMode c() {
        IPaymentProvider iPaymentProvider = this.s;
        if (iPaymentProvider != null) {
            return iPaymentProvider.getProviderMode();
        }
        return null;
    }

    protected void e(Transaction transaction) {
        this.d = true;
        b(transaction);
    }

    protected boolean f(Transaction transaction) {
        return transaction.getThreeDS2MethodRedirectUrl() != null;
    }

    protected void g(Transaction transaction) {
        new TaskRunner().executeAsync(new a(this, transaction, this, transaction.getBrandSpecificInfo().get(Transaction.ALIPAY_SIGNED_ORDER_INFO_KEY)));
    }

    @Override
    protected void j() throws PaymentException {
        this.d = false;
        this.a.sendTransaction(this, m(), l(), this.j.getEndpoint(), this.s);
        this.m = null;
    }

    protected void n() throws PaymentException {
        r();
        this.a.getBrandsValidationLiveData(this.f.getCheckoutId(), this.k.c(), this.s).observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.f$0.a((BrandsValidation) obj);
            }
        });
    }

    protected void o() throws PaymentException {
        this.a.getCheckoutInfoLiveData(this.f.getCheckoutId(), this.s).observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.f$0.a((CheckoutInfo) obj);
            }
        });
    }

    @Override
    public void onAlipayCanceled() throws Throwable {
        d();
    }

    @Override
    public void onAlipayCompleted(Transaction transaction) {
        a(transaction);
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a = (CheckoutViewModel) new ViewModelProvider(this).get(CheckoutViewModel.class);
        CheckoutSettings checkoutSettings = (CheckoutSettings) getIntent().getParcelableExtra(CheckoutActivity.CHECKOUT_SETTINGS);
        this.f = checkoutSettings;
        if (checkoutSettings != null) {
            Logger.setCurrentCheckoutId(checkoutSettings.getCheckoutId());
            Logger.setProviderMode(this.f.getProviderMode());
            this.s = this.a.a(getApplicationContext(), this.f.getProviderMode(), this.f.getProviderDomain());
        }
    }

    @Override
    protected void onStart() {
        super.onStart();
        this.a.getTransactionResultLiveData().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) throws Throwable {
                this.f$0.a((e0) obj);
            }
        });
        this.a.getPaymentErrorLiveData().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.f$0.a((PaymentError) obj);
            }
        });
        if (this.f != null) {
            try {
                o();
            } catch (Exception e) {
                a((Transaction) null, e);
            }
        }
    }

    protected void p() throws PaymentException {
        this.a.getImagesRequestLiveData(this.k.c(), this.s).observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.f$0.a((ImagesRequest) obj);
            }
        });
    }

    protected abstract void q();

    protected void a(CheckoutInfo checkoutInfo) {
        try {
            if (checkoutInfo == null) {
                throw new PaymentException(new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PROVIDER_INTERNAL_ERROR, "CheckoutInfo is null"));
            }
            this.j = checkoutInfo;
            a0 a0Var = new a0(this.f.getPaymentBrands(), checkoutInfo.getTokens());
            this.k = a0Var;
            a0Var.a(checkoutInfo, this.f.isPaymentBrandsOrderUsedForTokens());
            this.k.a(this.f, this.f3726n.d());
            this.k.a(this.f.getKlarnaCountry(), c());
            this.k.a(c(), this.f.getShopperResultUrl());
            if (this.h != null) {
                this.k.b().add(this.h);
            }
            if (this.k.b().contains("GOOGLEPAY") && LibraryHelper.isPlayServicesWalletAvailable) {
                k();
            } else {
                n();
            }
        } catch (Exception e) {
            a((Transaction) null, e);
        }
    }

    protected void c(Transaction transaction, PaymentError paymentError) throws PaymentException {
        if (this.b.b() instanceof KlarnaInlinePaymentInfoFragment) {
            ((KlarnaInlinePaymentInfoFragment) this.b.b()).continueWithPayment(transaction, paymentError);
            return;
        }
        if (TextUtils.isEmpty(transaction.getBrandSpecificInfo().get(Transaction.KLARNA_INLINE_CLIENT_TOKEN_KEY)) || TextUtils.isEmpty(transaction.getBrandSpecificInfo().get(Transaction.KLARNA_INLINE_CALLBACK_URL_KEY)) || TextUtils.isEmpty(transaction.getBrandSpecificInfo().get(Transaction.KLARNA_INLINE_FAILURE_CALLBACK_URL_KEY)) || TextUtils.isEmpty(transaction.getBrandSpecificInfo().get(Transaction.KLARNA_INLINE_INITIAL_TRANSACTION_ID))) {
            throw new PaymentException(PaymentError.getPaymentProviderInternalError("Klarna inline payments params are invalid."));
        }
        this.d = true;
        b(transaction.getPaymentParams().getPaymentBrand(), null, transaction, c());
    }

    private void c(Transaction transaction) {
        String str = transaction.getBrandSpecificInfo().get(Transaction.BANCONTACT_LINK_APP_SCHEME_URL_KEY);
        if (TextUtils.isEmpty(str)) {
            b(transaction, PaymentError.getBancontactLinkAppSchemeUrlMissingError());
            return;
        }
        try {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            a(transaction);
        } catch (ActivityNotFoundException unused) {
            b(transaction, PaymentError.getBancontactLinkAppNotInstalledError());
        }
    }

    private void d(Transaction transaction, PaymentError paymentError) throws PaymentException {
        if (i.a(transaction.getPaymentParams().getPaymentBrand()) && LibraryHelper.isKlarnaAvailable) {
            c(transaction, paymentError);
        } else {
            b(transaction, paymentError);
        }
    }

    protected void a(BrandsValidation brandsValidation) {
        try {
            if (brandsValidation != null) {
                this.i = brandsValidation;
                brandsValidation.setBrandDetectionPriority(this.f.getBrandDetectionPriority());
                this.k.a(brandsValidation);
                r();
                this.b.a(a(this.k, brandsValidation));
                p();
                return;
            }
            throw new PaymentException(new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PROVIDER_INTERNAL_ERROR, "BrandsValidation is null"));
        } catch (Exception e) {
            a((Transaction) null, e);
        }
    }

    protected boolean a(a0 a0Var, BrandsValidation brandsValidation) {
        if (a0Var.d() == null || a0Var.d().length <= 0) {
            return (a0Var.b().size() == 1 && this.h != null) || (this.f.getCardBrandsDisplayMode() == CheckoutCardBrandsDisplayMode.GROUPED && a0Var.b(brandsValidation));
        }
        return false;
    }

    protected void a(ImagesRequest imagesRequest) {
        ImageLoader.a(this).a(imagesRequest);
        q();
    }

    protected void a(e0 e0Var) throws Throwable {
        if (e0Var.c()) {
            return;
        }
        e0Var.a(true);
        Transaction transactionB = e0Var.b();
        PaymentError paymentErrorA = e0Var.a();
        try {
            if (paymentErrorA == null) {
                d(transactionB);
            } else if (paymentErrorA.getErrorCode() == ErrorCode.ERROR_CODE_THREEDS2_CANCELED) {
                d();
            } else {
                d(transactionB, paymentErrorA);
            }
        } catch (Exception e) {
            a(transactionB, e);
        }
    }

    public void a(Task task) {
        try {
            this.k.a((Task<Boolean>) task, c());
            n();
        } catch (Exception e) {
            a((Transaction) null, e);
        }
    }

    private void a(PaymentsClient paymentsClient, String str, OnCompleteListener<Boolean> onCompleteListener) throws PaymentException {
        GooglePayHelper.a(paymentsClient, IsReadyToPayRequest.fromJson(GooglePayHelper.a(str).toString()), onCompleteListener);
    }
}
