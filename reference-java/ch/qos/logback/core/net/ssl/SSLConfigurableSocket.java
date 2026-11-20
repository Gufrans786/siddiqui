package ch.qos.logback.core.net.ssl;

import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;

public class SSLConfigurableSocket implements SSLConfigurable {
    private final SSLSocket delegate;

    public SSLConfigurableSocket(SSLSocket sSLSocket) {
        this.delegate = sSLSocket;
    }

    @Override
    public String[] getDefaultCipherSuites() {
        return this.delegate.getEnabledCipherSuites();
    }

    @Override
    public String[] getDefaultProtocols() {
        return this.delegate.getEnabledProtocols();
    }

    @Override
    public String[] getSupportedCipherSuites() {
        return this.delegate.getSupportedCipherSuites();
    }

    @Override
    public String[] getSupportedProtocols() {
        return this.delegate.getSupportedProtocols();
    }

    @Override
    public void setEnabledCipherSuites(String[] strArr) {
        this.delegate.setEnabledCipherSuites(strArr);
    }

    @Override
    public void setEnabledProtocols(String[] strArr) {
        this.delegate.setEnabledProtocols(strArr);
    }

    @Override
    public void setHostnameVerification(boolean z) {
        if (z) {
            SSLParameters sSLParameters = this.delegate.getSSLParameters();
            sSLParameters.setEndpointIdentificationAlgorithm("HTTPS");
            this.delegate.setSSLParameters(sSLParameters);
        }
    }

    @Override
    public void setNeedClientAuth(boolean z) {
        this.delegate.setNeedClientAuth(z);
    }

    @Override
    public void setWantClientAuth(boolean z) {
        this.delegate.setWantClientAuth(z);
    }
}
