package com.microsoft.codepush.react;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

public class TLSSocketFactory extends SSLSocketFactory {
    private SSLSocketFactory delegate;

    public TLSSocketFactory() throws NoSuchAlgorithmException, KeyManagementException {
        SSLContext sSLContext = SSLContext.getInstance("TLS");
        sSLContext.init(null, null, null);
        this.delegate = sSLContext.getSocketFactory();
    }

    @Override
    public String[] getDefaultCipherSuites() {
        return this.delegate.getDefaultCipherSuites();
    }

    @Override
    public String[] getSupportedCipherSuites() {
        return this.delegate.getSupportedCipherSuites();
    }

    @Override
    public Socket createSocket() throws IOException {
        return enableTLSOnSocket(this.delegate.createSocket());
    }

    @Override
    public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        return enableTLSOnSocket(this.delegate.createSocket(socket, str, i, z));
    }

    @Override
    public Socket createSocket(String str, int i) throws IOException {
        return enableTLSOnSocket(this.delegate.createSocket(str, i));
    }

    @Override
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        return enableTLSOnSocket(this.delegate.createSocket(str, i, inetAddress, i2));
    }

    @Override
    public Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        return enableTLSOnSocket(this.delegate.createSocket(inetAddress, i));
    }

    @Override
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        return enableTLSOnSocket(this.delegate.createSocket(inetAddress, i, inetAddress2, i2));
    }

    private Socket enableTLSOnSocket(Socket socket) {
        if (socket != null && (socket instanceof SSLSocket)) {
            ((SSLSocket) socket).setEnabledProtocols(new String[]{"TLSv1.1", "TLSv1.2"});
        }
        return socket;
    }
}
