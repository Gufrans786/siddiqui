package com.google.common.util.concurrent;

import java.util.concurrent.Executor;

@ElementTypesAreNonnullByDefault
enum DirectExecutor implements Executor {
    INSTANCE;

    @Override
    public void execute(Runnable command) {
        command.run();
    }

    @Override
    public String toString() {
        return "MoreExecutors.directExecutor()";
    }
}
