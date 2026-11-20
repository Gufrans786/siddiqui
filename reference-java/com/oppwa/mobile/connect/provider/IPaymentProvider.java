package com.oppwa.mobile.connect.provider;

import android.content.Context;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.provider.listener.BinInfoListener;

public interface IPaymentProvider {
    Context getContext();

    default Connect.ProviderDomain getProviderDomain() {
        return Connect.ProviderDomain.DEFAULT;
    }

    Connect.ProviderMode getProviderMode();

    void registerTransaction(Transaction transaction, ITransactionListener iTransactionListener) throws PaymentException;

    default void requestBinInfo(String str, String str2, BinInfoListener binInfoListener) {
    }

    void requestBrandsValidation(String str, String[] strArr, ITransactionListener iTransactionListener) throws PaymentException;

    void requestCheckoutInfo(String str, ITransactionListener iTransactionListener) throws PaymentException;

    void requestIdealBanks(String str, IdealBanksListener idealBanksListener) throws PaymentException;

    void requestImages(String[] strArr, ITransactionListener iTransactionListener) throws PaymentException;

    void requestPaymentBrandsForBin(String str, String str2, ITransactionListener iTransactionListener) throws PaymentException;

    void sendThreeDS2AuthParams(String str, Transaction transaction, ThreeDS2AuthResponseListener threeDS2AuthResponseListener) throws PaymentException;

    void sendTransaction(Transaction transaction, String str, ITransactionListener iTransactionListener) throws PaymentException;

    default void setProviderDomain(Connect.ProviderDomain providerDomain) {
    }

    void setProviderMode(Connect.ProviderMode providerMode);

    void submitTransaction(Transaction transaction, ITransactionListener iTransactionListener) throws PaymentException;
}
