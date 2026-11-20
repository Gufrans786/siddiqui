package com.swmansion.worklets;

public class WorkletsMessageQueueThread extends WorkletsMessageQueueThreadBase {
    @Override
    public boolean runOnQueue(Runnable runnable) {
        return this.messageQueueThread.runOnQueue(runnable);
    }

    @Override
    public boolean isIdle() {
        return this.messageQueueThread.isIdle();
    }
}
