package com.nsoftware.ipworks3ds.sdk.exception;

public class SDKRuntimeException extends RuntimeException {
    public SDKRuntimeException(String str) {
        super(str);
    }

    public SDKRuntimeException(RuntimeException runtimeException) {
        super(runtimeException.getMessage(), runtimeException.getCause());
    }
}
