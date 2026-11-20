package com.oppwa.mobile.connect.provider;

import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.payment.BrandsValidation;
import com.oppwa.mobile.connect.payment.CheckoutInfo;
import com.oppwa.mobile.connect.payment.ImagesRequest;

public interface ITransactionListener {
    default void binRequestFailed() {
    }

    default void binRequestSucceeded(String[] strArr) {
    }

    default void brandsValidationRequestFailed(PaymentError paymentError) {
    }

    default void brandsValidationRequestSucceeded(BrandsValidation brandsValidation) {
    }

    default void imagesRequestFailed() {
    }

    default void imagesRequestSucceeded(ImagesRequest imagesRequest) {
    }

    default void paymentConfigRequestFailed(PaymentError paymentError) {
    }

    default void paymentConfigRequestSucceeded(CheckoutInfo checkoutInfo) {
    }

    void transactionCompleted(Transaction transaction);

    void transactionFailed(Transaction transaction, PaymentError paymentError);
}
