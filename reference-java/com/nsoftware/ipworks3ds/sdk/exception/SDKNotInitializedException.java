package com.nsoftware.ipworks3ds.sdk.exception;

public class SDKNotInitializedException extends RuntimeException {
    public SDKNotInitializedException(String str) {
        super(str);
    }

    public SDKNotInitializedException(RuntimeException runtimeException) {
        super(runtimeException.getMessage(), runtimeException.getCause());
    }
}
