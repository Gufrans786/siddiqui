package com.swmansion.worklets;

import com.facebook.react.bridge.queue.MessageQueueThread;
import com.facebook.react.bridge.queue.MessageQueueThreadImpl;
import com.facebook.react.bridge.queue.MessageQueueThreadPerfStats;
import com.facebook.react.bridge.queue.MessageQueueThreadSpec;
import com.facebook.react.bridge.queue.QueueThreadExceptionHandler;
import java.lang.reflect.Field;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;

public abstract class WorkletsMessageQueueThreadBase implements MessageQueueThread {
    protected final MessageQueueThreadImpl messageQueueThread = MessageQueueThreadImpl.create(MessageQueueThreadSpec.mainThreadSpec(), new QueueThreadExceptionHandler() {
        @Override
        public final void handleException(Exception exc) {
            WorkletsMessageQueueThreadBase.lambda$new$0(exc);
        }
    });

    static void lambda$new$0(Exception exc) {
        throw new RuntimeException(exc);
    }

    @Override
    public <T> Future<T> callOnQueue(Callable<T> callable) {
        return this.messageQueueThread.callOnQueue(callable);
    }

    @Override
    public boolean isOnThread() {
        return this.messageQueueThread.isOnThread();
    }

    @Override
    public void assertIsOnThread() {
        this.messageQueueThread.assertIsOnThread();
    }

    @Override
    public void assertIsOnThread(String str) {
        this.messageQueueThread.assertIsOnThread(str);
    }

    @Override
    public void quitSynchronous() {
        try {
            Field declaredField = this.messageQueueThread.getClass().getDeclaredField("mIsFinished");
            declaredField.setAccessible(true);
            declaredField.set(this.messageQueueThread, true);
            declaredField.setAccessible(false);
        } catch (IllegalAccessException | NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    @Override
    public MessageQueueThreadPerfStats getStats() {
        return this.messageQueueThread.getStats();
    }

    @Override
    public void resetPerfStats() {
        this.messageQueueThread.resetPerfStats();
    }
}
