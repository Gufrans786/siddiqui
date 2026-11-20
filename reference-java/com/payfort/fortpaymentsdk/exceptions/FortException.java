package com.payfort.fortpaymentsdk.exceptions;

public class FortException extends Exception {
    private static final long serialVersionUID = 1;
    protected String msg;

    public FortException(String str) {
        super(str);
        this.msg = str;
    }

    public FortException(String str, Throwable th) {
        super(th);
        this.msg = str;
    }

    public String getCode() {
        return this.msg;
    }
}
