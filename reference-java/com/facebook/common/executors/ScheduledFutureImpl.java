package com.facebook.common.executors;

import android.os.Handler;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.Nullable;

public class ScheduledFutureImpl<V> implements RunnableFuture<V>, ScheduledFuture<V> {
    private final Handler mHandler;
    private final FutureTask<V> mListenableFuture;

    public ScheduledFutureImpl(Handler handler, Callable<V> callable) {
        this.mHandler = handler;
        this.mListenableFuture = new FutureTask<>(callable);
    }

    public ScheduledFutureImpl(Handler handler, Runnable runnable, @Nullable V v) {
        this.mHandler = handler;
        this.mListenableFuture = new FutureTask<>(runnable, v);
    }

    @Override
    public long getDelay(TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int compareTo(Delayed delayed) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void run() {
        this.mListenableFuture.run();
    }

    @Override
    public boolean cancel(boolean z) {
        return this.mListenableFuture.cancel(z);
    }

    @Override
    public boolean isCancelled() {
        return this.mListenableFuture.isCancelled();
    }

    @Override
    public boolean isDone() {
        return this.mListenableFuture.isDone();
    }

    @Override
    public V get() throws ExecutionException, InterruptedException {
        return this.mListenableFuture.get();
    }

    @Override
    public V get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return this.mListenableFuture.get(j, timeUnit);
    }
}
