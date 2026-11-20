package com.google.firebase.crashlytics.internal.concurrency;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.mapbox.common.location.FailedTask;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class CrashlyticsWorker implements Executor {
    private final ExecutorService executor;
    private final Object tailLock = new Object();
    private Task<?> tail = Tasks.forResult(null);

    static void lambda$await$6() {
    }

    CrashlyticsWorker(ExecutorService executorService) {
        this.executor = executorService;
    }

    public ExecutorService getExecutor() {
        return this.executor;
    }

    public <T> Task<T> submit(final Callable<T> callable) {
        FailedTask failedTask;
        synchronized (this.tailLock) {
            failedTask = (Task<T>) this.tail.continueWithTask(this.executor, new Continuation() {
                @Override
                public final Object then(Task task) {
                    return Tasks.forResult(callable.call());
                }
            });
            this.tail = failedTask;
        }
        return failedTask;
    }

    public Task<Void> submit(final Runnable runnable) {
        Task taskContinueWithTask;
        synchronized (this.tailLock) {
            taskContinueWithTask = this.tail.continueWithTask(this.executor, new Continuation() {
                @Override
                public final Object then(Task task) {
                    return CrashlyticsWorker.lambda$submit$1(runnable, task);
                }
            });
            this.tail = taskContinueWithTask;
        }
        return taskContinueWithTask;
    }

    static Task lambda$submit$1(Runnable runnable, Task task) throws Exception {
        runnable.run();
        return Tasks.forResult(null);
    }

    public <T> Task<T> submitTask(final Callable<Task<T>> callable) {
        FailedTask failedTask;
        synchronized (this.tailLock) {
            failedTask = (Task<T>) this.tail.continueWithTask(this.executor, new Continuation() {
                @Override
                public final Object then(Task task) {
                    return CrashlyticsWorker.lambda$submitTask$2(callable, task);
                }
            });
            this.tail = failedTask;
        }
        return failedTask;
    }

    static Task lambda$submitTask$2(Callable callable, Task task) throws Exception {
        return (Task) callable.call();
    }

    public <T, R> Task<R> submitTask(final Callable<Task<T>> callable, Continuation<T, Task<R>> continuation) {
        FailedTask failedTask;
        synchronized (this.tailLock) {
            failedTask = (Task<R>) this.tail.continueWithTask(this.executor, new Continuation() {
                @Override
                public final Object then(Task task) {
                    return CrashlyticsWorker.lambda$submitTask$3(callable, task);
                }
            }).continueWithTask(this.executor, continuation);
            this.tail = failedTask;
        }
        return failedTask;
    }

    static Task lambda$submitTask$3(Callable callable, Task task) throws Exception {
        return (Task) callable.call();
    }

    public <T, R> Task<R> submitTaskOnSuccess(final Callable<Task<T>> callable, final SuccessContinuation<T, R> successContinuation) {
        FailedTask failedTask;
        synchronized (this.tailLock) {
            failedTask = (Task<R>) this.tail.continueWithTask(this.executor, new Continuation() {
                @Override
                public final Object then(Task task) {
                    return CrashlyticsWorker.lambda$submitTaskOnSuccess$4(callable, task);
                }
            }).continueWithTask(this.executor, new Continuation() {
                @Override
                public final Object then(Task task) {
                    return CrashlyticsWorker.lambda$submitTaskOnSuccess$5(successContinuation, task);
                }
            });
            this.tail = failedTask;
        }
        return failedTask;
    }

    static Task lambda$submitTaskOnSuccess$4(Callable callable, Task task) throws Exception {
        return (Task) callable.call();
    }

    static Task lambda$submitTaskOnSuccess$5(SuccessContinuation successContinuation, Task task) throws Exception {
        if (task.isSuccessful()) {
            return successContinuation.then(task.getResult());
        }
        if (task.getException() != null) {
            return Tasks.forException(task.getException());
        }
        return Tasks.forCanceled();
    }

    @Override
    public void execute(Runnable runnable) {
        this.executor.execute(runnable);
    }

    public void await() throws ExecutionException, InterruptedException, TimeoutException {
        Tasks.await(submit(new Runnable() {
            @Override
            public final void run() {
                CrashlyticsWorker.lambda$await$6();
            }
        }), 30L, TimeUnit.SECONDS);
        Thread.sleep(1L);
    }
}
