package com.google.common.util.concurrent;

import com.google.errorprone.annotations.DoNotMock;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

@DoNotMock("Use TestingExecutors.sameThreadScheduledExecutor, or wrap a real Executor from java.util.concurrent.Executors with MoreExecutors.listeningDecorator")
@ElementTypesAreNonnullByDefault
public interface ListeningExecutorService extends ExecutorService {
    @Override
    <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> tasks) throws InterruptedException;

    @Override
    <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> tasks, long timeout, TimeUnit unit) throws InterruptedException;

    @Override
    ListenableFuture<?> submit(Runnable task);

    @Override
    <T> ListenableFuture<T> submit(Runnable task, @ParametricNullness T result);

    @Override
    <T> ListenableFuture<T> submit(Callable<T> task);
}
