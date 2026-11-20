package com.google.common.util.concurrent;

import java.util.concurrent.Callable;

@ElementTypesAreNonnullByDefault
public abstract class ForwardingListeningExecutorService extends ForwardingExecutorService implements ListeningExecutorService {
    @Override
    public abstract ListeningExecutorService delegate();

    protected ForwardingListeningExecutorService() {
    }

    @Override
    public <T> ListenableFuture<T> submit(Callable<T> task) {
        return delegate().submit((Callable) task);
    }

    @Override
    public ListenableFuture<?> submit(Runnable task) {
        return delegate().submit(task);
    }

    @Override
    public <T> ListenableFuture<T> submit(Runnable task, @ParametricNullness T result) {
        return delegate().submit(task, (Object) result);
    }
}
