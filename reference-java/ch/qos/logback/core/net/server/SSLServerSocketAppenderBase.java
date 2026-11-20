package ch.qos.logback.core.net.server;

import ch.qos.logback.core.net.ssl.ConfigurableSSLServerSocketFactory;
import ch.qos.logback.core.net.ssl.SSLComponent;
import ch.qos.logback.core.net.ssl.SSLConfiguration;
import ch.qos.logback.core.net.ssl.SSLParametersConfiguration;
import javax.net.ServerSocketFactory;
import javax.net.ssl.SSLContext;

public abstract class SSLServerSocketAppenderBase<E> extends AbstractServerSocketAppender<E> implements SSLComponent {
    private ServerSocketFactory socketFactory;
    private SSLConfiguration ssl;

    @Override
    protected ServerSocketFactory getServerSocketFactory() {
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
    public void start() {
        try {
            SSLContext sSLContextCreateContext = getSsl().createContext(this);
            SSLParametersConfiguration parameters = getSsl().getParameters();
            parameters.setContext(getContext());
            this.socketFactory = new ConfigurableSSLServerSocketFactory(parameters, sSLContextCreateContext.getServerSocketFactory());
            super.start();
        } catch (Exception e) {
            addError(e.getMessage(), e);
        }
    }
}
