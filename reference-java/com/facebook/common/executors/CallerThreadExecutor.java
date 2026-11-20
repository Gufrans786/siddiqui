package com.facebook.common.executors;

import java.util.Collections;
import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.TimeUnit;

public class CallerThreadExecutor extends AbstractExecutorService {
    private static final CallerThreadExecutor sInstance = new CallerThreadExecutor();

    @Override
    public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
        return true;
    }

    @Override
    public boolean isShutdown() {
        return false;
    }

    @Override
    public boolean isTerminated() {
        return false;
    }

    @Override
    public void shutdown() {
    }

    public static CallerThreadExecutor getInstance() {
        return sInstance;
    }

    private CallerThreadExecutor() {
    }

    @Override
    public void execute(Runnable runnable) {
        runnable.run();
    }

    @Override
    public List<Runnable> shutdownNow() {
        shutdown();
        return Collections.emptyList();
    }
}
