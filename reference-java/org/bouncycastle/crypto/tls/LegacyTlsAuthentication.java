package org.bouncycastle.crypto.tls;

import java.io.IOException;

public class LegacyTlsAuthentication implements TlsAuthentication {
    protected CertificateVerifyer verifyer;

    public LegacyTlsAuthentication(CertificateVerifyer certificateVerifyer) {
        this.verifyer = certificateVerifyer;
    }

    @Override
    public TlsCredentials getClientCredentials(CertificateRequest certificateRequest) throws IOException {
        return null;
    }

    @Override
    public void notifyServerCertificate(Certificate certificate) throws IOException {
        if (!this.verifyer.isValid(certificate.getCerts())) {
            throw new TlsFatalAlert((short) 90);
        }
    }
}
