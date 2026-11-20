package com.oppwa.mobile.connect.exception;

public class PaymentException extends Exception {
    private final PaymentError a;

    public PaymentException(PaymentError paymentError) {
        super(paymentError.getErrorCode() + ": " + paymentError.getErrorMessage());
        this.a = paymentError;
    }

    public PaymentError getError() {
        return this.a;
    }

    public PaymentException(PaymentError paymentError, Throwable th) {
        super(paymentError.getErrorCode() + ": " + paymentError.getErrorMessage(), th);
        this.a = paymentError;
    }
}
