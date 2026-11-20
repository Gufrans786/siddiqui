package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.google.common.collect.ForwardingObject;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@ElementTypesAreNonnullByDefault
public abstract class ForwardingFuture<V> extends ForwardingObject implements Future<V> {
    @Override
    public abstract Future<? extends V> delegate();

    protected ForwardingFuture() {
    }

    @Override
    public boolean cancel(boolean mayInterruptIfRunning) {
        return delegate().cancel(mayInterruptIfRunning);
    }

    @Override
    public boolean isCancelled() {
        return delegate().isCancelled();
    }

    @Override
    public boolean isDone() {
        return delegate().isDone();
    }

    @Override
    @ParametricNullness
    public V get() throws ExecutionException, InterruptedException {
        return delegate().get();
    }

    @Override
    @ParametricNullness
    public V get(long timeout, TimeUnit unit) throws ExecutionException, InterruptedException, TimeoutException {
        return delegate().get(timeout, unit);
    }

    public static abstract class SimpleForwardingFuture<V> extends ForwardingFuture<V> {
        private final Future<V> delegate;

        protected SimpleForwardingFuture(Future<V> delegate) {
            this.delegate = (Future) Preconditions.checkNotNull(delegate);
        }

        @Override
        public final Future<V> delegate() {
            return this.delegate;
        }
    }
}
