package io.grpc.android;

import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import java.io.FilterInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.nio.channels.SocketChannel;

class UdsSocket extends Socket {
    private final LocalSocketAddress localSocketAddress;
    private boolean closed = false;
    private boolean inputShutdown = false;
    private boolean outputShutdown = false;
    private final LocalSocket localSocket = new LocalSocket();

    @Override
    public void bind(SocketAddress socketAddress) {
    }

    @Override
    public int getSoLinger() {
        return -1;
    }

    @Override
    public boolean getTcpNoDelay() {
        return true;
    }

    @Override
    public void setTcpNoDelay(boolean z) {
    }

    public UdsSocket(LocalSocketAddress localSocketAddress) {
        this.localSocketAddress = localSocketAddress;
    }

    @Override
    public synchronized void close() throws IOException {
        if (this.closed) {
            return;
        }
        if (!this.inputShutdown) {
            shutdownInput();
        }
        if (!this.outputShutdown) {
            shutdownOutput();
        }
        this.localSocket.close();
        this.closed = true;
    }

    @Override
    public void connect(SocketAddress socketAddress) throws IOException {
        this.localSocket.connect(this.localSocketAddress);
    }

    @Override
    public void connect(SocketAddress socketAddress, int i) throws IOException {
        this.localSocket.connect(this.localSocketAddress, i);
    }

    @Override
    public SocketChannel getChannel() {
        throw new UnsupportedOperationException("getChannel() not supported");
    }

    @Override
    public InetAddress getInetAddress() {
        throw new UnsupportedOperationException("getInetAddress() not supported");
    }

    @Override
    public InputStream getInputStream() throws IOException {
        return new FilterInputStream(this.localSocket.getInputStream()) {
            @Override
            public void close() throws IOException {
                UdsSocket.this.close();
            }
        };
    }

    @Override
    public boolean getKeepAlive() {
        throw new UnsupportedOperationException("Unsupported operation getKeepAlive()");
    }

    @Override
    public InetAddress getLocalAddress() {
        throw new UnsupportedOperationException("Unsupported operation getLocalAddress()");
    }

    @Override
    public int getLocalPort() {
        throw new UnsupportedOperationException("Unsupported operation getLocalPort()");
    }

    @Override
    public SocketAddress getLocalSocketAddress() {
        return new SocketAddress() {
        };
    }

    @Override
    public boolean getOOBInline() {
        throw new UnsupportedOperationException("Unsupported operation getOOBInline()");
    }

    @Override
    public OutputStream getOutputStream() throws IOException {
        return new FilterOutputStream(this.localSocket.getOutputStream()) {
            @Override
            public void close() throws IOException {
                UdsSocket.this.close();
            }
        };
    }

    @Override
    public int getPort() {
        throw new UnsupportedOperationException("Unsupported operation getPort()");
    }

    @Override
    public int getReceiveBufferSize() throws SocketException {
        try {
            return this.localSocket.getReceiveBufferSize();
        } catch (IOException e) {
            throw toSocketException(e);
        }
    }

    @Override
    public SocketAddress getRemoteSocketAddress() {
        return new SocketAddress() {
        };
    }

    @Override
    public boolean getReuseAddress() {
        throw new UnsupportedOperationException("Unsupported operation getReuseAddress()");
    }

    @Override
    public int getSendBufferSize() throws SocketException {
        try {
            return this.localSocket.getSendBufferSize();
        } catch (IOException e) {
            throw toSocketException(e);
        }
    }

    @Override
    public int getSoTimeout() throws SocketException {
        try {
            return this.localSocket.getSoTimeout();
        } catch (IOException e) {
            throw toSocketException(e);
        }
    }

    @Override
    public int getTrafficClass() {
        throw new UnsupportedOperationException("Unsupported operation getTrafficClass()");
    }

    @Override
    public boolean isBound() {
        return this.localSocket.isBound();
    }

    @Override
    public synchronized boolean isClosed() {
        return this.closed;
    }

    @Override
    public boolean isConnected() {
        return this.localSocket.isConnected();
    }

    @Override
    public synchronized boolean isInputShutdown() {
        return this.inputShutdown;
    }

    @Override
    public synchronized boolean isOutputShutdown() {
        return this.outputShutdown;
    }

    @Override
    public void sendUrgentData(int i) {
        throw new UnsupportedOperationException("Unsupported operation sendUrgentData()");
    }

    @Override
    public void setKeepAlive(boolean z) {
        throw new UnsupportedOperationException("Unsupported operation setKeepAlive()");
    }

    @Override
    public void setOOBInline(boolean z) {
        throw new UnsupportedOperationException("Unsupported operation setOOBInline()");
    }

    @Override
    public void setPerformancePreferences(int i, int i2, int i3) {
        throw new UnsupportedOperationException("Unsupported operation setPerformancePreferences()");
    }

    @Override
    public void setReceiveBufferSize(int i) throws SocketException {
        try {
            this.localSocket.setReceiveBufferSize(i);
        } catch (IOException e) {
            throw toSocketException(e);
        }
    }

    @Override
    public void setReuseAddress(boolean z) {
        throw new UnsupportedOperationException("Unsupported operation setReuseAddress()");
    }

    @Override
    public void setSendBufferSize(int i) throws SocketException {
        try {
            this.localSocket.setSendBufferSize(i);
        } catch (IOException e) {
            throw toSocketException(e);
        }
    }

    @Override
    public void setSoLinger(boolean z, int i) {
        throw new UnsupportedOperationException("Unsupported operation setSoLinger()");
    }

    @Override
    public void setSoTimeout(int i) throws SocketException {
        try {
            this.localSocket.setSoTimeout(i);
        } catch (IOException e) {
            throw toSocketException(e);
        }
    }

    @Override
    public void setTrafficClass(int i) {
        throw new UnsupportedOperationException("Unsupported operation setTrafficClass()");
    }

    @Override
    public synchronized void shutdownInput() throws IOException {
        this.localSocket.shutdownInput();
        this.inputShutdown = true;
    }

    @Override
    public synchronized void shutdownOutput() throws IOException {
        this.localSocket.shutdownOutput();
        this.outputShutdown = true;
    }

    private static SocketException toSocketException(Throwable th) {
        SocketException socketException = new SocketException();
        socketException.initCause(th);
        return socketException;
    }
}
