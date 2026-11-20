package io.grpc.okhttp;

import io.grpc.ChannelCredentials;
import io.grpc.InternalServiceProviders;
import io.grpc.ManagedChannelProvider;
import java.net.SocketAddress;
import java.util.Collection;

public final class OkHttpChannelProvider extends ManagedChannelProvider {
    @Override
    public boolean isAvailable() {
        return true;
    }

    @Override
    public int priority() {
        return InternalServiceProviders.isAndroid(getClass().getClassLoader()) ? 8 : 3;
    }

    @Override
    public OkHttpChannelBuilder builderForAddress(String str, int i) {
        return OkHttpChannelBuilder.forAddress(str, i);
    }

    @Override
    public OkHttpChannelBuilder builderForTarget(String str) {
        return OkHttpChannelBuilder.forTarget(str);
    }

    @Override
    public ManagedChannelProvider.NewChannelBuilderResult newChannelBuilder(String str, ChannelCredentials channelCredentials) {
        OkHttpChannelBuilder.SslSocketFactoryResult sslSocketFactoryResultSslSocketFactoryFrom = OkHttpChannelBuilder.sslSocketFactoryFrom(channelCredentials);
        if (sslSocketFactoryResultSslSocketFactoryFrom.error != null) {
            return ManagedChannelProvider.NewChannelBuilderResult.error(sslSocketFactoryResultSslSocketFactoryFrom.error);
        }
        return ManagedChannelProvider.NewChannelBuilderResult.channelBuilder(new OkHttpChannelBuilder(str, channelCredentials, sslSocketFactoryResultSslSocketFactoryFrom.callCredentials, sslSocketFactoryResultSslSocketFactoryFrom.factory));
    }

    @Override
    protected Collection<Class<? extends SocketAddress>> getSupportedSocketAddressTypes() {
        return OkHttpChannelBuilder.getSupportedSocketAddressTypes();
    }
}
