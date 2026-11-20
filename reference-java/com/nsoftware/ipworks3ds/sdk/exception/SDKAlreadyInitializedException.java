package com.nsoftware.ipworks3ds.sdk.exception;

public class SDKAlreadyInitializedException extends RuntimeException {
    public SDKAlreadyInitializedException() {
    }

    public SDKAlreadyInitializedException(RuntimeException runtimeException) {
        super(runtimeException.getMessage(), runtimeException.getCause());
    }
}
