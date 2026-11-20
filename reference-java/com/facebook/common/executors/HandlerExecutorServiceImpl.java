package com.facebook.common.executors;

import android.os.Handler;
import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

public class HandlerExecutorServiceImpl extends AbstractExecutorService implements HandlerExecutorService {
    private final Handler mHandler;

    @Override
    public boolean isShutdown() {
        return false;
    }

    @Override
    public boolean isTerminated() {
        return false;
    }

    public HandlerExecutorServiceImpl(Handler handler) {
        this.mHandler = handler;
    }

    @Override
    public void shutdown() {
        throw new UnsupportedOperationException();
    }

    @Override
    public List<Runnable> shutdownNow() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
        throw new UnsupportedOperationException();
    }

    @Override
    public void execute(Runnable runnable) {
        this.mHandler.post(runnable);
    }

    @Override
    public <T> ScheduledFutureImpl<T> newTaskFor(Runnable runnable, @Nullable T t) {
        return new ScheduledFutureImpl<>(this.mHandler, runnable, t);
    }

    @Override
    public <T> ScheduledFutureImpl<T> newTaskFor(Callable<T> callable) {
        return new ScheduledFutureImpl<>(this.mHandler, callable);
    }

    @Override
    public ScheduledFuture<?> submit(Runnable runnable) {
        return submit(runnable, (Object) null);
    }

    @Override
    public <T> ScheduledFuture<T> submit(Runnable runnable, @Nullable T t) {
        runnable.getClass();
        ScheduledFutureImpl<T> scheduledFutureImplNewTaskFor = newTaskFor(runnable, (Object) t);
        execute(scheduledFutureImplNewTaskFor);
        return scheduledFutureImplNewTaskFor;
    }

    @Override
    public <T> ScheduledFuture<T> submit(Callable<T> callable) {
        callable.getClass();
        ScheduledFutureImpl<T> scheduledFutureImplNewTaskFor = newTaskFor((Callable) callable);
        execute(scheduledFutureImplNewTaskFor);
        return scheduledFutureImplNewTaskFor;
    }

    @Override
    public ScheduledFuture<?> schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        ScheduledFutureImpl scheduledFutureImplNewTaskFor = newTaskFor(runnable, (Object) null);
        this.mHandler.postDelayed(scheduledFutureImplNewTaskFor, timeUnit.toMillis(j));
        return scheduledFutureImplNewTaskFor;
    }

    @Override
    public <V> ScheduledFuture<V> schedule(Callable<V> callable, long j, TimeUnit timeUnit) {
        ScheduledFutureImpl scheduledFutureImplNewTaskFor = newTaskFor((Callable) callable);
        this.mHandler.postDelayed(scheduledFutureImplNewTaskFor, timeUnit.toMillis(j));
        return scheduledFutureImplNewTaskFor;
    }

    @Override
    public ScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override
    public ScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void quit() {
        this.mHandler.getLooper().quit();
    }

    @Override
    public boolean isHandlerThread() {
        return Thread.currentThread() == this.mHandler.getLooper().getThread();
    }
}
