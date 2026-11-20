package io.grpc.internal;

import io.grpc.NameResolver;
import io.grpc.NameResolverProvider;
import java.net.URI;

public class NameResolverFactoryToProviderFacade extends NameResolverProvider {
    private NameResolver.Factory factory;

    @Override
    protected boolean isAvailable() {
        return true;
    }

    @Override
    protected int priority() {
        return 5;
    }

    NameResolverFactoryToProviderFacade(NameResolver.Factory factory) {
        this.factory = factory;
    }

    @Override
    public NameResolver newNameResolver(URI uri, NameResolver.Args args) {
        return this.factory.newNameResolver(uri, args);
    }

    @Override
    public String getDefaultScheme() {
        return this.factory.getDefaultScheme();
    }
}
