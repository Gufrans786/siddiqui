package com.nsoftware.ipworks3ds.sdk.event;

public interface CompletionEvent {
    String getSDKTransactionID();

    String getTransactionStatus();
}
