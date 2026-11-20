package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@ElementTypesAreNonnullByDefault
final class ForwardingFluentFuture<V> extends FluentFuture<V> {
    private final ListenableFuture<V> delegate;

    ForwardingFluentFuture(ListenableFuture<V> delegate) {
        this.delegate = (ListenableFuture) Preconditions.checkNotNull(delegate);
    }

    @Override
    public void addListener(Runnable listener, Executor executor) {
        this.delegate.addListener(listener, executor);
    }

    @Override
    public boolean cancel(boolean mayInterruptIfRunning) {
        return this.delegate.cancel(mayInterruptIfRunning);
    }

    @Override
    public boolean isCancelled() {
        return this.delegate.isCancelled();
    }

    @Override
    public boolean isDone() {
        return this.delegate.isDone();
    }

    @Override
    @ParametricNullness
    public V get() throws ExecutionException, InterruptedException {
        return this.delegate.get();
    }

    @Override
    @ParametricNullness
    public V get(long timeout, TimeUnit unit) throws ExecutionException, InterruptedException, TimeoutException {
        return this.delegate.get(timeout, unit);
    }

    @Override
    public String toString() {
        return this.delegate.toString();
    }
}
