package im.zego.zpns.internal.util;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public class ExecutorProxy {
    private static ExecutorService executor = null;
    private static int threadCount = 2;

    public static ExecutorService getExecutor() {
        synchronized (ExecutorProxy.class) {
            if (executor == null) {
                executor = Executors.newScheduledThreadPool(threadCount);
            }
        }
        return executor;
    }

    public static void execute(Runnable runnable) {
        getExecutor().execute(runnable);
    }

    public static void execute(Runnable runnable, long j) {
        ((ScheduledExecutorService) getExecutor()).schedule(runnable, j, TimeUnit.SECONDS);
    }

    public static Future futureCallable(Callable callable) {
        return getExecutor().submit(callable);
    }

    public static void shutdown() {
        ExecutorService executorService = executor;
        if (executorService != null) {
            executorService.shutdown();
            executor = null;
        }
    }

    public static boolean status() {
        ExecutorService executorService = executor;
        return (executorService == null || executorService.isShutdown()) ? false : true;
    }
}
