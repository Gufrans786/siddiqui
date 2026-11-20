package com.google.common.util.concurrent;

import java.util.Collections;
import java.util.List;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;

@ElementTypesAreNonnullByDefault
final class DirectExecutorService extends AbstractListeningExecutorService {
    private final Object lock = new Object();
    private int runningTasks = 0;
    private boolean shutdown = false;

    DirectExecutorService() {
    }

    @Override
    public void execute(Runnable command) {
        startTask();
        try {
            command.run();
        } finally {
            endTask();
        }
    }

    @Override
    public boolean isShutdown() {
        boolean z;
        synchronized (this.lock) {
            z = this.shutdown;
        }
        return z;
    }

    @Override
    public void shutdown() {
        synchronized (this.lock) {
            this.shutdown = true;
            if (this.runningTasks == 0) {
                this.lock.notifyAll();
            }
        }
    }

    @Override
    public List<Runnable> shutdownNow() {
        shutdown();
        return Collections.emptyList();
    }

    @Override
    public boolean isTerminated() {
        boolean z;
        synchronized (this.lock) {
            z = this.shutdown && this.runningTasks == 0;
        }
        return z;
    }

    @Override
    public boolean awaitTermination(long timeout, TimeUnit unit) throws InterruptedException {
        long nanos = unit.toNanos(timeout);
        synchronized (this.lock) {
            while (true) {
                if (this.shutdown && this.runningTasks == 0) {
                    return true;
                }
                if (nanos <= 0) {
                    return false;
                }
                long jNanoTime = System.nanoTime();
                TimeUnit.NANOSECONDS.timedWait(this.lock, nanos);
                nanos -= System.nanoTime() - jNanoTime;
            }
        }
    }

    private void startTask() {
        synchronized (this.lock) {
            if (this.shutdown) {
                throw new RejectedExecutionException("Executor already shutdown");
            }
            this.runningTasks++;
        }
    }

    private void endTask() {
        synchronized (this.lock) {
            int i = this.runningTasks - 1;
            this.runningTasks = i;
            if (i == 0) {
                this.lock.notifyAll();
            }
        }
    }
}
