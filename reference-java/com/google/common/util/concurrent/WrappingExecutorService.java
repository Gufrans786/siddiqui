package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@ElementTypesAreNonnullByDefault
abstract class WrappingExecutorService implements ExecutorService {
    private final ExecutorService delegate;

    protected abstract <T> Callable<T> wrapTask(Callable<T> callable);

    protected WrappingExecutorService(ExecutorService delegate) {
        this.delegate = (ExecutorService) Preconditions.checkNotNull(delegate);
    }

    protected Runnable wrapTask(Runnable command) {
        final Callable callableWrapTask = wrapTask(Executors.callable(command, null));
        return new Runnable() {
            @Override
            public final void run() {
                WrappingExecutorService.lambda$wrapTask$0(callableWrapTask);
            }
        };
    }

    static void lambda$wrapTask$0(Callable callable) {
        try {
            callable.call();
        } catch (Exception e) {
            Platform.restoreInterruptIfIsInterruptedException(e);
            Throwables.throwIfUnchecked(e);
            throw new RuntimeException(e);
        }
    }

    private <T> ImmutableList<Callable<T>> wrapTasks(Collection<? extends Callable<T>> tasks) {
        ImmutableList.Builder builder = ImmutableList.builder();
        Iterator<? extends Callable<T>> it = tasks.iterator();
        while (it.hasNext()) {
            builder.add(wrapTask(it.next()));
        }
        return builder.build();
    }

    @Override
    public final void execute(Runnable command) {
        this.delegate.execute(wrapTask(command));
    }

    @Override
    public final <T> Future<T> submit(Callable<T> task) {
        return this.delegate.submit(wrapTask((Callable) Preconditions.checkNotNull(task)));
    }

    @Override
    public final Future<?> submit(Runnable task) {
        return this.delegate.submit(wrapTask(task));
    }

    @Override
    public final <T> Future<T> submit(Runnable task, @ParametricNullness T result) {
        return this.delegate.submit(wrapTask(task), result);
    }

    @Override
    public final <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> tasks) throws InterruptedException {
        return this.delegate.invokeAll(wrapTasks(tasks));
    }

    @Override
    public final <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> tasks, long timeout, TimeUnit unit) throws InterruptedException {
        return this.delegate.invokeAll(wrapTasks(tasks), timeout, unit);
    }

    @Override
    public final <T> T invokeAny(Collection<? extends Callable<T>> collection) throws ExecutionException, InterruptedException {
        return (T) this.delegate.invokeAny(wrapTasks(collection));
    }

    @Override
    public final <T> T invokeAny(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return (T) this.delegate.invokeAny(wrapTasks(collection), j, timeUnit);
    }

    @Override
    public final void shutdown() {
        this.delegate.shutdown();
    }

    @Override
    public final List<Runnable> shutdownNow() {
        return this.delegate.shutdownNow();
    }

    @Override
    public final boolean isShutdown() {
        return this.delegate.isShutdown();
    }

    @Override
    public final boolean isTerminated() {
        return this.delegate.isTerminated();
    }

    @Override
    public final boolean awaitTermination(long timeout, TimeUnit unit) throws InterruptedException {
        return this.delegate.awaitTermination(timeout, unit);
    }
}
