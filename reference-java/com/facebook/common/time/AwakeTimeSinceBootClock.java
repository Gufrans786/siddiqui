package com.facebook.common.time;

public class AwakeTimeSinceBootClock implements MonotonicNanoClock {
    private static final AwakeTimeSinceBootClock INSTANCE = new AwakeTimeSinceBootClock();

    private AwakeTimeSinceBootClock() {
    }

    public static AwakeTimeSinceBootClock get() {
        return INSTANCE;
    }

    @Override
    public long nowNanos() {
        return System.nanoTime();
    }
}
