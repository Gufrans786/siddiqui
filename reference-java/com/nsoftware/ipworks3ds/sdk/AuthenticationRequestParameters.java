package com.nsoftware.ipworks3ds.sdk;

public interface AuthenticationRequestParameters {
    String getAuthRequest();

    String getDeviceData();

    String getMessageVersion();

    String getSDKAppID();

    String getSDKEphemeralPublicKey();

    String getSDKReferenceNumber();

    String getSDKTransactionID();
}
