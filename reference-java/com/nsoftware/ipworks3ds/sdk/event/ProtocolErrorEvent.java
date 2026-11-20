package com.nsoftware.ipworks3ds.sdk.event;

public interface ProtocolErrorEvent {
    ErrorMessage getErrorMessage();

    String getSDKTransactionID();
}
