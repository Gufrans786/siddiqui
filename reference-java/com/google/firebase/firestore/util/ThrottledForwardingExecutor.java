package com.google.firebase.firestore.util;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.Semaphore;

class ThrottledForwardingExecutor implements Executor {
    private final Semaphore availableSlots;
    private final Executor executor;

    ThrottledForwardingExecutor(int i, Executor executor) {
        this.availableSlots = new Semaphore(i);
        this.executor = executor;
    }

    @Override
    public void execute(final Runnable runnable) {
        if (this.availableSlots.tryAcquire()) {
            try {
                this.executor.execute(new Runnable() {
                    @Override
                    public final void run() {
                        this.f$0.m894xc0e914ff(runnable);
                    }
                });
                return;
            } catch (RejectedExecutionException unused) {
                runnable.run();
                return;
            }
        }
        runnable.run();
    }

    void m894xc0e914ff(Runnable runnable) {
        runnable.run();
        this.availableSlots.release();
    }
}
