package ch.qos.logback.classic.net;

import ch.qos.logback.core.net.ssl.ConfigurableSSLSocketFactory;
import ch.qos.logback.core.net.ssl.SSLComponent;
import ch.qos.logback.core.net.ssl.SSLConfiguration;
import ch.qos.logback.core.net.ssl.SSLParametersConfiguration;
import javax.net.SocketFactory;
import javax.net.ssl.SSLContext;

public class SSLSocketReceiver extends SocketReceiver implements SSLComponent {
    private SocketFactory socketFactory;
    private SSLConfiguration ssl;

    @Override
    protected SocketFactory getSocketFactory() {
        return this.socketFactory;
    }

    @Override
    public SSLConfiguration getSsl() {
        if (this.ssl == null) {
            this.ssl = new SSLConfiguration();
        }
        return this.ssl;
    }

    @Override
    public void setSsl(SSLConfiguration sSLConfiguration) {
        this.ssl = sSLConfiguration;
    }

    @Override
    protected boolean shouldStart() {
        try {
            SSLContext sSLContextCreateContext = getSsl().createContext(this);
            SSLParametersConfiguration parameters = getSsl().getParameters();
            parameters.setContext(getContext());
            this.socketFactory = new ConfigurableSSLSocketFactory(parameters, sSLContextCreateContext.getSocketFactory());
            return super.shouldStart();
        } catch (Exception e) {
            addError(e.getMessage(), e);
            return false;
        }
    }
}
