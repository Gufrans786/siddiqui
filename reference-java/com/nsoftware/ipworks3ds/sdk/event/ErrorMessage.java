package com.nsoftware.ipworks3ds.sdk.event;

public interface ErrorMessage {
    String getErrorCode();

    String getErrorDescription();

    String getErrorDetails();

    String getTransactionID();
}
