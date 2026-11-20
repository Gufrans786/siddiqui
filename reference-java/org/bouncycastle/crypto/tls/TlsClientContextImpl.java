package org.bouncycastle.crypto.tls;

import java.security.SecureRandom;

class TlsClientContextImpl implements TlsClientContext {
    private SecureRandom secureRandom;
    private SecurityParameters securityParameters;
    private Object userObject = null;

    TlsClientContextImpl(SecureRandom secureRandom, SecurityParameters securityParameters) {
        this.secureRandom = secureRandom;
        this.securityParameters = securityParameters;
    }

    @Override
    public SecureRandom getSecureRandom() {
        return this.secureRandom;
    }

    @Override
    public SecurityParameters getSecurityParameters() {
        return this.securityParameters;
    }

    @Override
    public Object getUserObject() {
        return this.userObject;
    }

    @Override
    public void setUserObject(Object obj) {
        this.userObject = obj;
    }
}
