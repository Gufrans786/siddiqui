package com.nsoftware.ipworks3ds.sdk.exception;

public class InvalidInputException extends RuntimeException {
    public InvalidInputException(String str) {
        super(str);
    }

    public InvalidInputException(String str, Throwable th) {
        super(str, th);
    }
}
