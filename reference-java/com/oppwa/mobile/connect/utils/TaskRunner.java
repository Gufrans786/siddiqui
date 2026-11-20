package com.oppwa.mobile.connect.utils;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public class TaskRunner {
    private final Handler a = new Handler(Looper.getMainLooper());
    private final Executor b = Executors.newCachedThreadPool();

    public static class RunnableTask<T> implements Runnable {
        private final Handler a;
        private final BaseTask<T> b;

        public RunnableTask(Handler handler, BaseTask<T> baseTask) {
            this.a = handler;
            this.b = baseTask;
        }

        @Override
        public void run() {
            try {
                this.a.post(new RunnableTaskForHandler(this.b, this.b.call()));
            } catch (Exception e) {
                this.b.onError(e);
            }
        }
    }

    public static class RunnableTaskForHandler<T> implements Runnable {
        private final BaseTask<T> a;
        private final T b;

        public RunnableTaskForHandler(BaseTask<T> baseTask, T t) {
            this.a = baseTask;
            this.b = t;
        }

        @Override
        public void run() {
            this.a.onPostExecute(this.b);
        }
    }

    public <R> void executeAsync(BaseTask<R> baseTask) {
        try {
            this.b.execute(new RunnableTask(this.a, baseTask));
        } catch (Exception e) {
            baseTask.onError(e);
        }
    }
}
