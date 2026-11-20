package io.grpc.okhttp;

import io.grpc.ServerCredentials;
import io.grpc.ServerProvider;
import java.net.InetSocketAddress;

public final class OkHttpServerProvider extends ServerProvider {
    @Override
    protected boolean isAvailable() {
        return true;
    }

    @Override
    protected int priority() {
        return 4;
    }

    @Override
    public OkHttpServerBuilder builderForPort(int i) {
        throw new UnsupportedOperationException("Use Grpc.newServerBuilderForPort() instead");
    }

    @Override
    protected ServerProvider.NewServerBuilderResult newServerBuilderForPort(int i, ServerCredentials serverCredentials) {
        OkHttpServerBuilder.HandshakerSocketFactoryResult handshakerSocketFactoryResultHandshakerSocketFactoryFrom = OkHttpServerBuilder.handshakerSocketFactoryFrom(serverCredentials);
        if (handshakerSocketFactoryResultHandshakerSocketFactoryFrom.error != null) {
            return ServerProvider.NewServerBuilderResult.error(handshakerSocketFactoryResultHandshakerSocketFactoryFrom.error);
        }
        return ServerProvider.NewServerBuilderResult.serverBuilder(new OkHttpServerBuilder(new InetSocketAddress(i), handshakerSocketFactoryResultHandshakerSocketFactoryFrom.factory));
    }
}
