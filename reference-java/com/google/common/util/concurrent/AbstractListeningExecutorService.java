package com.google.common.util.concurrent;

import com.google.errorprone.annotations.CheckReturnValue;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;

@ElementTypesAreNonnullByDefault
@CheckReturnValue
public abstract class AbstractListeningExecutorService extends AbstractExecutorService implements ListeningExecutorService {
    @Override
    protected final <T> RunnableFuture<T> newTaskFor(Runnable runnable, @ParametricNullness T value) {
        return TrustedListenableFutureTask.create(runnable, value);
    }

    @Override
    protected final <T> RunnableFuture<T> newTaskFor(Callable<T> callable) {
        return TrustedListenableFutureTask.create(callable);
    }

    @Override
    public ListenableFuture<?> submit(Runnable task) {
        return (ListenableFuture) super.submit(task);
    }

    @Override
    public <T> ListenableFuture<T> submit(Runnable task, @ParametricNullness T result) {
        return (ListenableFuture) super.submit(task, (Object) result);
    }

    @Override
    public <T> ListenableFuture<T> submit(Callable<T> task) {
        return (ListenableFuture) super.submit((Callable) task);
    }
}
