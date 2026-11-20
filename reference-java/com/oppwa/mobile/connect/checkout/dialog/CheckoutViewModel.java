package com.oppwa.mobile.connect.checkout.dialog;

import android.app.Activity;
import android.content.Context;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.BrandsValidation;
import com.oppwa.mobile.connect.payment.CheckoutInfo;
import com.oppwa.mobile.connect.payment.ImagesRequest;
import com.oppwa.mobile.connect.provider.Connect;
import com.oppwa.mobile.connect.provider.IPaymentProvider;
import com.oppwa.mobile.connect.provider.ITransactionListener;
import com.oppwa.mobile.connect.provider.OppPaymentProvider;
import com.oppwa.mobile.connect.provider.ThreeDSWorkflowListener;
import com.oppwa.mobile.connect.provider.Transaction;
import com.oppwa.mobile.connect.threeds.OppThreeDSConfig;

public class CheckoutViewModel extends ViewModel implements ITransactionListener {
    private OppPaymentProvider a;
    private MutableLiveData<CheckoutInfo> b;
    private MutableLiveData<BrandsValidation> c;
    private MutableLiveData<ImagesRequest> d;
    private MutableLiveData<e0> e;
    private MutableLiveData<PaymentError> f;
    private boolean g;
    private String h;

    class a implements ThreeDSWorkflowListener {
        final Activity a;
        final OppThreeDSConfig b;

        a(Activity activity, OppThreeDSConfig oppThreeDSConfig) {
            this.a = activity;
            this.b = oppThreeDSConfig;
        }

        @Override
        public Activity onThreeDSChallengeRequired() {
            return this.a;
        }

        @Override
        public OppThreeDSConfig onThreeDSConfigRequired() {
            return this.b;
        }
    }

    String a() {
        return this.h;
    }

    @Override
    public void brandsValidationRequestFailed(PaymentError paymentError) {
        this.f.postValue(paymentError);
    }

    @Override
    public void brandsValidationRequestSucceeded(BrandsValidation brandsValidation) {
        this.c.postValue(brandsValidation);
    }

    public LiveData<BrandsValidation> getBrandsValidationLiveData(String str, String[] strArr, IPaymentProvider iPaymentProvider) throws PaymentException {
        if (this.c == null) {
            this.c = new MutableLiveData<>();
            iPaymentProvider.requestBrandsValidation(str, strArr, this);
        }
        return this.c;
    }

    public LiveData<CheckoutInfo> getCheckoutInfoLiveData(String str, IPaymentProvider iPaymentProvider) throws PaymentException {
        if (this.b == null) {
            this.b = new MutableLiveData<>();
            iPaymentProvider.requestCheckoutInfo(str, this);
        }
        return this.b;
    }

    public LiveData<ImagesRequest> getImagesRequestLiveData(String[] strArr, IPaymentProvider iPaymentProvider) throws PaymentException {
        if (this.d == null) {
            this.d = new MutableLiveData<>();
            iPaymentProvider.requestImages(strArr, this);
        }
        return this.d;
    }

    public LiveData<PaymentError> getPaymentErrorLiveData() {
        if (this.f == null) {
            this.f = new MutableLiveData<>();
        }
        return this.f;
    }

    public LiveData<e0> getTransactionResultLiveData() {
        if (this.e == null) {
            this.e = new MutableLiveData<>();
        }
        return this.e;
    }

    @Override
    public void imagesRequestFailed() {
        this.d.postValue(null);
    }

    @Override
    public void imagesRequestSucceeded(ImagesRequest imagesRequest) {
        this.d.postValue(imagesRequest);
    }

    @Override
    protected void onCleared() {
        super.onCleared();
        this.a = null;
    }

    @Override
    public void paymentConfigRequestFailed(PaymentError paymentError) {
        this.f.postValue(paymentError);
    }

    @Override
    public void paymentConfigRequestSucceeded(CheckoutInfo checkoutInfo) {
        this.b.postValue(checkoutInfo);
    }

    public void sendTransaction(Activity activity, OppThreeDSConfig oppThreeDSConfig, Transaction transaction, String str, IPaymentProvider iPaymentProvider) throws PaymentException {
        if (this.g) {
            return;
        }
        this.g = true;
        ((OppPaymentProvider) iPaymentProvider).setThreeDSWorkflowListener(new a(activity, oppThreeDSConfig));
        iPaymentProvider.sendTransaction(transaction, str, this);
    }

    @Override
    public void transactionCompleted(Transaction transaction) {
        this.g = false;
        this.e.postValue(new e0(transaction, null));
    }

    @Override
    public void transactionFailed(Transaction transaction, PaymentError paymentError) {
        this.g = false;
        this.e.postValue(new e0(transaction, paymentError));
    }

    void a(String str) {
        this.h = str;
    }

    OppPaymentProvider a(Context context, Connect.ProviderMode providerMode, Connect.ProviderDomain providerDomain) {
        if (this.a == null) {
            OppPaymentProvider oppPaymentProvider = new OppPaymentProvider(context, providerMode);
            this.a = oppPaymentProvider;
            oppPaymentProvider.setProviderDomain(providerDomain);
        }
        return this.a;
    }
}
