package com.payfort.fortpaymentsdk.domain.model;

import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0014\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016¨\u0006\u0017"}, d2 = {"Lcom/payfort/fortpaymentsdk/domain/model/FortError;", "", "errorMessage", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getErrorMessage", "()Ljava/lang/String;", "INVALID_CARD_NUMBER", "INVALID_CARD_LENGTH", "INVALID_CARD_LENGTH_AMEX", "INVALID_CVC_LENGTH_AMEX", "INVALID_CVC_LENGTH_OTHERS", "INVALID_CVC_FORMAT", "INVALID_CARD_EXPIRY_MONTH", "INVALID_CARD_EXPIRY_FORMAT", "INVALID_CARD_EXPIRY_YEAR", "INVALID_CARD_EXPIRY_DATE", "INVALID_CARD_HOLDER_NAME", "CARD_UNSUPPORTED", "INVALID_PAYMENT_OPTION", "EMPTY_CARD_NUMBER", "EMPTY_CARD_DATE", "EMPTY_CARD_CVC", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public enum FortError {
    INVALID_CARD_NUMBER("Invalid card number"),
    INVALID_CARD_LENGTH("Invalid card length"),
    INVALID_CARD_LENGTH_AMEX("Invalid Card length"),
    INVALID_CVC_LENGTH_AMEX("Invalid CVV length"),
    INVALID_CVC_LENGTH_OTHERS("Invalid CVV length"),
    INVALID_CVC_FORMAT("Invalid CVV Format"),
    INVALID_CARD_EXPIRY_MONTH("Invalid Expiry Month"),
    INVALID_CARD_EXPIRY_FORMAT("Invalid Expiry Format"),
    INVALID_CARD_EXPIRY_YEAR("Invalid Expiry Year"),
    INVALID_CARD_EXPIRY_DATE("Invalid Expiry Date"),
    INVALID_CARD_HOLDER_NAME("Invalid Card Holder Name"),
    CARD_UNSUPPORTED("UnSupported Card"),
    INVALID_PAYMENT_OPTION("INVALID_PAYMENT_OPTION Card"),
    EMPTY_CARD_NUMBER("This Field is Required"),
    EMPTY_CARD_DATE("This Field is Required"),
    EMPTY_CARD_CVC("This Field is Required");

    private final String errorMessage;

    FortError(String str) {
        this.errorMessage = str;
    }

    public final String getErrorMessage() {
        return this.errorMessage;
    }
}
