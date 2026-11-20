package com.mapbox.common;

import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;

@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0002¨\u0006\u0005"}, d2 = {"asDispatcher", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "Lcom/mapbox/common/Scheduler;", "asExecutor", "Ljava/util/concurrent/Executor;", "common_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class SchedulerExecutorDispatcherKt {
    public static final Executor asExecutor(final Scheduler scheduler) {
        Intrinsics.checkNotNullParameter(scheduler, "<this>");
        return new Executor() {
            @Override
            public void execute(final Runnable command) {
                scheduler.schedule(new Task() {
                    @Override
                    public void run() {
                        Runnable runnable = command;
                        Intrinsics.checkNotNull(runnable);
                        runnable.run();
                    }
                }, new TaskOptions(0L, TaskPriority.DEFAULT));
            }
        };
    }

    public static final ExecutorCoroutineDispatcher asDispatcher(Scheduler scheduler) {
        Intrinsics.checkNotNullParameter(scheduler, "<this>");
        return new SchedulerExecutorDispatcher(asExecutor(scheduler));
    }
}
