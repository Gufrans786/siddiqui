package com.nimbusds.jose.jwk.source;

public class JWKSetRetrievalException extends JWKSetUnavailableException {
    private static final long serialVersionUID = 1;

    public JWKSetRetrievalException(String str, Throwable th) {
        super(str, th);
    }
}
