package com.oppwa.mobile.connect.provider;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.oppwa.mobile.connect.checkout.meta.CheckoutThreeDS2Flow;
import com.oppwa.mobile.connect.exception.ErrorCode;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.CheckoutInfo;
import com.oppwa.mobile.connect.payment.PaymentParams;
import com.oppwa.mobile.connect.payment.card.BaseCardPaymentParams;
import com.oppwa.mobile.connect.payment.googlepay.GooglePayPaymentParams;
import com.oppwa.mobile.connect.provider.listener.BinInfoListener;
import com.oppwa.mobile.connect.provider.model.BinInfo;
import com.oppwa.mobile.connect.threeds.OppThreeDSConfig;
import com.oppwa.mobile.connect.utils.LibraryHelper;
import com.oppwa.mobile.connect.utils.Logger;
import com.rnmapbox.rnmbx.components.styles.sources.RNMBXTileSource;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

public class OppPaymentProvider extends f {
    private Map<String, CheckoutInfo> d;
    private c e;
    private ThreeDSWorkflowListener f;
    private PaymentError g;
    private CountDownLatch h;

    public OppPaymentProvider(Context context, Connect.ProviderMode providerMode) {
        super(context, providerMode, Connect.ProviderDomain.DEFAULT);
        this.d = new HashMap();
        this.e = new c();
    }

    public void a(String str, String[] strArr, ITransactionListener iTransactionListener) {
        try {
            iTransactionListener.brandsValidationRequestSucceeded(this.e.a(getContext(), this.a, this.b, str, strArr));
        } catch (PaymentException e) {
            iTransactionListener.brandsValidationRequestFailed(e.getError());
        }
    }

    private boolean b(String str) {
        CheckoutInfo checkoutInfo = this.d.get(str);
        return checkoutInfo != null && checkoutInfo.isBrowserParamsRequired();
    }

    private void c(String str) {
        CheckoutInfo checkoutInfoD;
        if (this.d.containsKey(str) || (checkoutInfoD = d(str)) == null) {
            return;
        }
        this.d.put(str, checkoutInfoD);
    }

    private CheckoutInfo d(String str) {
        try {
            return this.e.a(getContext(), this.a, this.b, str);
        } catch (PaymentException e) {
            if (e.getMessage() == null) {
                return null;
            }
            Logger.error(e.getMessage());
            return null;
        }
    }

    @Override
    public Context getContext() {
        return super.getContext();
    }

    @Override
    public Connect.ProviderDomain getProviderDomain() {
        return super.getProviderDomain();
    }

    @Override
    public Connect.ProviderMode getProviderMode() {
        return super.getProviderMode();
    }

    @Override
    public void registerTransaction(Transaction transaction, ITransactionListener iTransactionListener) throws PaymentException {
        sendTransaction(transaction, "/registration", iTransactionListener);
    }

    @Override
    public void requestBinInfo(final String str, final String str2, final BinInfoListener binInfoListener) {
        new Thread(new Runnable() {
            @Override
            public final void run() throws PaymentException {
                this.f$0.a(str2, str, binInfoListener);
            }
        }).start();
    }

    @Override
    public void requestBrandsValidation(final String str, final String[] strArr, final ITransactionListener iTransactionListener) {
        new Thread(new Runnable() {
            @Override
            public final void run() {
                this.f$0.a(str, strArr, iTransactionListener);
            }
        }).start();
    }

    @Override
    public void requestCheckoutInfo(final String str, final ITransactionListener iTransactionListener) {
        new Thread(new Runnable() {
            @Override
            public final void run() {
                this.f$0.a(str, iTransactionListener);
            }
        }).start();
    }

    @Override
    public void requestIdealBanks(final String str, final IdealBanksListener idealBanksListener) {
        new Thread(new Runnable() {
            @Override
            public final void run() {
                this.f$0.a(str, idealBanksListener);
            }
        }).start();
    }

    @Override
    public void requestImages(final String[] strArr, final ITransactionListener iTransactionListener) {
        new Thread(new Runnable() {
            @Override
            public final void run() {
                this.f$0.a(strArr, iTransactionListener);
            }
        }).start();
    }

    @Override
    @Deprecated
    public void requestPaymentBrandsForBin(final String str, final String str2, final ITransactionListener iTransactionListener) {
        new Thread(new Runnable() {
            @Override
            public final void run() {
                this.f$0.a(str, str2, iTransactionListener);
            }
        }).start();
    }

    @Override
    public void sendThreeDS2AuthParams(final String str, final Transaction transaction, final ThreeDS2AuthResponseListener threeDS2AuthResponseListener) {
        new Thread(new Runnable() {
            @Override
            public final void run() {
                this.f$0.a(threeDS2AuthResponseListener, str, transaction);
            }
        }).start();
    }

    @Override
    public void sendTransaction(final Transaction transaction, final String str, final ITransactionListener iTransactionListener) {
        Logger.checkOutdatedFiles(getContext(), this.b);
        Logger.setCurrentCheckoutId(transaction.getPaymentParams().getCheckoutId());
        new Thread(new Runnable() {
            @Override
            public final void run() throws Throwable {
                this.f$0.a(transaction, str, iTransactionListener);
            }
        }).start();
    }

    @Override
    public void setProviderDomain(Connect.ProviderDomain providerDomain) {
        super.setProviderDomain(providerDomain);
    }

    @Override
    public void setProviderMode(Connect.ProviderMode providerMode) {
        super.setProviderMode(providerMode);
    }

    public void setThreeDSWorkflowListener(ThreeDSWorkflowListener threeDSWorkflowListener) {
        this.f = threeDSWorkflowListener;
    }

    @Override
    public void submitTransaction(Transaction transaction, ITransactionListener iTransactionListener) throws PaymentException {
        sendTransaction(transaction, "/payment", iTransactionListener);
    }

    public OppPaymentProvider(Context context, Connect.ProviderMode providerMode, Connect.ProviderDomain providerDomain) {
        super(context, providerMode, providerDomain);
        this.d = new HashMap();
        this.e = new c();
    }

    private void b(Transaction transaction, String str) throws PaymentException {
        if (str != null) {
            this.e.a(getContext(), str, transaction);
            return;
        }
        throw new PaymentException(PaymentError.getPaymentProviderInternalError("3-D Secure 2 authentication params are not valid."));
    }

    private boolean c(Transaction transaction) {
        PaymentParams paymentParams = transaction.getPaymentParams();
        return (paymentParams instanceof BaseCardPaymentParams) || (paymentParams instanceof GooglePayPaymentParams);
    }

    private void b(String str, String str2, String str3) throws PaymentException {
        Activity activityA = a();
        Intent intent = new Intent(activityA, (Class<?>) AsyncPaymentActivity.class);
        intent.setFlags(268435456);
        intent.putExtra(AsyncPaymentActivity.EXTRA_REDIRECT_URL, str);
        intent.putExtra(AsyncPaymentActivity.EXTRA_THREEDS_METHOD_REDIRECT_URL, str2);
        intent.putExtra(AsyncPaymentActivity.EXTRA_CHECKOUT_ID, str3);
        activityA.startActivity(intent);
    }

    private void c(Transaction transaction, String str) throws PaymentException {
        CheckoutThreeDS2Flow checkoutThreeDS2FlowA = a(transaction.getPaymentParams().getCheckoutId());
        if (checkoutThreeDS2FlowA != null && checkoutThreeDS2FlowA != CheckoutThreeDS2Flow.DISABLED && this.f != null) {
            if (checkoutThreeDS2FlowA == CheckoutThreeDS2Flow.APP) {
                if (LibraryHelper.isThreeDS2Available) {
                    a(transaction, str);
                    return;
                }
                throw new PaymentException(PaymentError.getPaymentProviderInternalError("The ipworks3ds library is required for 3-D Secure 2 card transaction with APP flow."));
            }
            if (checkoutThreeDS2FlowA == CheckoutThreeDS2Flow.WEB) {
                d(transaction, str);
                return;
            }
            return;
        }
        this.e.a(getContext(), this.a, this.b, str, transaction);
    }

    private boolean d(Transaction transaction) throws PaymentException {
        if (!c(transaction)) {
            return false;
        }
        String checkoutId = transaction.getPaymentParams().getCheckoutId();
        String strB = b(transaction);
        c(checkoutId);
        CheckoutThreeDS2Flow checkoutThreeDS2FlowA = a(checkoutId);
        boolean zA = a(checkoutId, strB);
        if (checkoutThreeDS2FlowA == CheckoutThreeDS2Flow.APP && zA) {
            return true;
        }
        return checkoutThreeDS2FlowA == CheckoutThreeDS2Flow.WEB && (zA || b(checkoutId));
    }

    public void a(String[] strArr, ITransactionListener iTransactionListener) {
        try {
            iTransactionListener.imagesRequestSucceeded(this.e.a(getContext(), this.a, this.b, strArr));
        } catch (PaymentException unused) {
            iTransactionListener.imagesRequestFailed();
        }
    }

    private String b(Transaction transaction) throws PaymentException {
        PaymentParams paymentParams = transaction.getPaymentParams();
        if (paymentParams instanceof GooglePayPaymentParams) {
            String cardBrand = ((GooglePayPaymentParams) paymentParams).getCardBrand();
            if (cardBrand != null) {
                return cardBrand;
            }
            throw new PaymentException(new PaymentError(ErrorCode.ERROR_CODE_GOOGLEPAY, "Google Pay card brand is empty."));
        }
        return paymentParams.getPaymentBrand();
    }

    public void a(String str, String str2, ITransactionListener iTransactionListener) {
        try {
            iTransactionListener.binRequestSucceeded(this.e.a(getContext(), this.a, this.b, str, str2).getBrands());
        } catch (PaymentException unused) {
            iTransactionListener.binRequestFailed();
        }
    }

    private void d(Transaction transaction, String str) throws PaymentException {
        a(transaction);
        this.e.a(getContext(), this.a, this.b, str, transaction);
        if (transaction.getRedirectUrl() == null || transaction.getThreeDS2MethodRedirectUrl() == null) {
            return;
        }
        transaction.a(TransactionType.SYNC);
        a(transaction.getRedirectUrl(), transaction.getThreeDS2MethodRedirectUrl(), transaction.getPaymentParams().getCheckoutId());
    }

    public void a(String str, String str2, BinInfoListener binInfoListener) throws PaymentException {
        PaymentError error;
        BinInfo binInfoA = null;
        try {
            binInfoA = this.e.a(getContext(), this.a, this.b, str, str2);
            error = null;
        } catch (PaymentException e) {
            error = e.getError();
            Logger.error(error.getErrorMessage());
        }
        binInfoListener.onResult(binInfoA, error);
    }

    public void a(String str, IdealBanksListener idealBanksListener) {
        try {
            HashMap<String, String> mapB = this.e.b(getContext(), this.a, this.b, str);
            if (mapB != null) {
                idealBanksListener.idealBanksRequestSucceeded(mapB);
            } else {
                idealBanksListener.idealBanksRequestFailed();
            }
        } catch (PaymentException unused) {
            idealBanksListener.idealBanksRequestFailed();
        }
    }

    public void a(ThreeDS2AuthResponseListener threeDS2AuthResponseListener, String str, Transaction transaction) {
        try {
            threeDS2AuthResponseListener.onResult(this.e.a(getContext(), str, transaction), null);
        } catch (PaymentException e) {
            threeDS2AuthResponseListener.onResult(transaction, e.getError());
        }
    }

    public void a(String str, ITransactionListener iTransactionListener) {
        CheckoutInfo checkoutInfoA;
        CheckoutInfo checkoutInfo = null;
        PaymentError error = null;
        try {
            try {
                checkoutInfoA = this.e.a(getContext(), this.a, this.b, str);
                try {
                    this.d.put(str, checkoutInfoA);
                } catch (PaymentException e) {
                    e = e;
                    checkoutInfo = checkoutInfoA;
                    checkoutInfoA = checkoutInfo;
                    error = e.getError();
                }
            } catch (Throwable th) {
                Logger.sendLogs();
                throw th;
            }
        } catch (PaymentException e2) {
            e = e2;
        }
        Logger.sendLogs();
        if (error != null) {
            iTransactionListener.paymentConfigRequestFailed(error);
        } else {
            iTransactionListener.paymentConfigRequestSucceeded(checkoutInfoA);
        }
    }

    public void a(Transaction transaction, String str, ITransactionListener iTransactionListener) throws Throwable {
        Transaction transaction2;
        Throwable th;
        PaymentException paymentException;
        e.a().a(this);
        this.g = null;
        try {
            try {
                if (d(transaction)) {
                    try {
                        c(transaction, str);
                        transaction2 = transaction;
                    } catch (PaymentException e) {
                        paymentException = e;
                        transaction2 = transaction;
                        this.g = paymentException.getError();
                        e.a().a(null);
                        Logger.info("TS_log: OppwaMobile's payment provider was set null");
                        Logger.sendLogs();
                        this.h = null;
                        transaction2.getPaymentParams().mask();
                        Logger.sendLogs();
                    } catch (Throwable th2) {
                        th = th2;
                        e.a().a(null);
                        Logger.info("TS_log: OppwaMobile's payment provider was set null");
                        Logger.sendLogs();
                        this.h = null;
                        transaction.getPaymentParams().mask();
                        Logger.sendLogs();
                        throw th;
                    }
                } else {
                    transaction2 = transaction;
                    try {
                        this.e.a(getContext(), this.a, this.b, str, transaction2);
                    } catch (PaymentException e2) {
                        e = e2;
                        paymentException = e;
                        this.g = paymentException.getError();
                        e.a().a(null);
                        Logger.info("TS_log: OppwaMobile's payment provider was set null");
                        Logger.sendLogs();
                        this.h = null;
                        transaction2.getPaymentParams().mask();
                        Logger.sendLogs();
                    }
                }
                e.a().a(null);
                Logger.info("TS_log: OppwaMobile's payment provider was set null");
                Logger.sendLogs();
                this.h = null;
                transaction2.getPaymentParams().mask();
                Logger.sendLogs();
            } catch (Throwable th3) {
                th = th3;
                th = th;
                e.a().a(null);
                Logger.info("TS_log: OppwaMobile's payment provider was set null");
                Logger.sendLogs();
                this.h = null;
                transaction.getPaymentParams().mask();
                Logger.sendLogs();
                throw th;
            }
        } catch (PaymentException e3) {
            e = e3;
            transaction2 = transaction;
        } catch (Throwable th4) {
            th = th4;
            th = th;
            e.a().a(null);
            Logger.info("TS_log: OppwaMobile's payment provider was set null");
            Logger.sendLogs();
            this.h = null;
            transaction.getPaymentParams().mask();
            Logger.sendLogs();
            throw th;
        }
        PaymentError paymentError = this.g;
        if (paymentError != null) {
            iTransactionListener.transactionFailed(transaction2, paymentError);
        } else {
            iTransactionListener.transactionCompleted(transaction2);
        }
    }

    private boolean a(String str, String str2) {
        CheckoutInfo checkoutInfo = this.d.get(str);
        if (checkoutInfo != null && checkoutInfo.getThreeDS2Brands() != null) {
            for (String str3 : checkoutInfo.getThreeDS2Brands()) {
                if (TextUtils.equals(str3, str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    private CheckoutThreeDS2Flow a(String str) {
        CheckoutInfo checkoutInfo = this.d.get(str);
        if (checkoutInfo != null) {
            return checkoutInfo.getThreeDS2Flow();
        }
        return null;
    }

    private void a(Transaction transaction, String str) throws PaymentException {
        String protocolVersion;
        g gVar = null;
        try {
            String strB = b(transaction);
            ThreeDSWorkflowListener threeDSWorkflowListener = this.f;
            g gVarA = a(transaction.getPaymentParams().getCheckoutId(), strB, threeDSWorkflowListener != null ? threeDSWorkflowListener.onThreeDSConfigRequired() : null);
            if (gVarA.d()) {
                transaction.getPaymentParams().addParam("threeDSecure.mobileFlow", "app");
                this.e.a(getContext(), this.a, this.b, str, transaction);
                ThreeDS2Info threeDS2Info = transaction.getThreeDS2Info();
                if (threeDS2Info != null) {
                    if (threeDS2Info.getProtocolVersion() != null) {
                        protocolVersion = threeDS2Info.getProtocolVersion();
                    } else {
                        protocolVersion = RNMBXTileSource.TILE_SPEC_VERSION;
                    }
                    gVarA.a(strB, protocolVersion);
                    if (threeDS2Info.isAuthParamsRequired()) {
                        b(transaction, gVarA.b());
                        threeDS2Info = transaction.getThreeDS2Info();
                    }
                    if (threeDS2Info != null && threeDS2Info.isChallengeRequired()) {
                        if (threeDS2Info.getAuthResponse() != null) {
                            a(gVarA, threeDS2Info.getAuthResponse());
                        } else {
                            throw new PaymentException(PaymentError.getPaymentProviderInternalError("3-D Secure 2 authentication response is not valid."));
                        }
                    }
                }
                gVarA.a();
                return;
            }
            throw new PaymentException(PaymentError.getThreeDS2Error("OppThreeDSService is not initialized."));
        } catch (PaymentException e) {
            if (0 != 0) {
                gVar.a();
                throw e;
            }
            throw e;
        } catch (Throwable th) {
            if (0 != 0) {
                gVar.a();
                throw th;
            }
            throw th;
        }
    }

    void a(g gVar, String str) throws PaymentException {
        this.h = new CountDownLatch(1);
        gVar.a(this, a(), str);
        a(this.h);
    }

    void a(Transaction transaction) throws PaymentException {
        h.a(a(), transaction.getPaymentParams());
    }

    void a(String str, String str2, String str3) throws PaymentException {
        this.h = new CountDownLatch(1);
        b(str, str2, str3);
        a(this.h);
    }

    g a(String str, String str2, OppThreeDSConfig oppThreeDSConfig) throws PaymentException {
        g gVar = new g();
        gVar.a(getContext(), str, getProviderMode(), Collections.singletonList(str2), oppThreeDSConfig);
        return gVar;
    }

    void a(PaymentError paymentError) {
        this.g = paymentError;
        CountDownLatch countDownLatch = this.h;
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
    }

    private void a(CountDownLatch countDownLatch) throws PaymentException {
        try {
            try {
                countDownLatch.await();
                countDownLatch.countDown();
            } catch (InterruptedException e) {
                throw new PaymentException(PaymentError.getUnexpectedExceptionError(e));
            }
        } catch (Throwable th) {
            countDownLatch.countDown();
            throw th;
        }
    }

    private Activity a() throws PaymentException {
        ThreeDSWorkflowListener threeDSWorkflowListener = this.f;
        if (threeDSWorkflowListener != null) {
            if (threeDSWorkflowListener.onThreeDSChallengeRequired() != null) {
                return this.f.onThreeDSChallengeRequired();
            }
            throw new PaymentException(PaymentError.getThreeDS2Error("ThreeDSWorkflowListener.onActivityRequired() returns null."));
        }
        throw new PaymentException(PaymentError.getThreeDS2Error("ThreeDSWorkflowListener is not set."));
    }
}
