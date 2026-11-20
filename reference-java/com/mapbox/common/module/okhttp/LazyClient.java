package com.mapbox.common.module.okhttp;

import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import okhttp3.ConnectionPool;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;

class LazyClient {
    static final boolean $assertionsDisabled = false;
    private static final long DEFAULT_CONNECT_TIMEOUT_SEC = 30;
    private static final long DEFAULT_READ_TIMEOUT_SEC = 60;
    private static final ConnectionPool connectionPool = new ConnectionPool();
    private volatile OkHttpClient client;
    private final boolean disableHttp2;
    private byte maxRequestsPerHost = 0;
    private final SocketFactory socketFactory;

    LazyClient(SocketFactory socketFactory, boolean z) {
        this.socketFactory = socketFactory;
        this.disableHttp2 = z;
    }

    OkHttpClient get() {
        if (this.client == null) {
            synchronized (this) {
                if (this.client == null) {
                    this.client = buildOkHttpClient(this.socketFactory, this.disableHttp2);
                    if (this.maxRequestsPerHost != 0) {
                        this.client.dispatcher().setMaxRequestsPerHost(this.maxRequestsPerHost);
                    }
                }
            }
        }
        return this.client;
    }

    synchronized void setMaxRequestsPerHost(byte b) {
        this.maxRequestsPerHost = b;
        if (b != 0) {
            synchronized (this) {
                OkHttpClient okHttpClient = this.client;
                if (okHttpClient != null) {
                    okHttpClient.dispatcher().setMaxRequestsPerHost(b);
                }
            }
        }
    }

    private static OkHttpClient buildOkHttpClient(SocketFactory socketFactory, boolean z) {
        OkHttpClient.Builder builderConnectionPool = new OkHttpClient.Builder().eventListenerFactory(NetworkUsageListener.FACTORY).connectTimeout(DEFAULT_CONNECT_TIMEOUT_SEC, TimeUnit.SECONDS).readTimeout(60L, TimeUnit.SECONDS).connectionPool(connectionPool);
        if (socketFactory != null) {
            builderConnectionPool.socketFactory(socketFactory);
        }
        if (z) {
            builderConnectionPool.protocols(Arrays.asList(Protocol.HTTP_1_1));
        }
        return builderConnectionPool.build();
    }
}
