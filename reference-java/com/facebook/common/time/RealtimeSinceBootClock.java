package com.facebook.common.time;

import java.util.concurrent.TimeUnit;

public class RealtimeSinceBootClock implements MonotonicClock {
    private static final RealtimeSinceBootClock INSTANCE = new RealtimeSinceBootClock();

    private RealtimeSinceBootClock() {
    }

    public static RealtimeSinceBootClock get() {
        return INSTANCE;
    }

    @Override
    public long now() {
        return android.os.SystemClock.elapsedRealtime();
    }

    @Override
    public long nowNanos() {
        return TimeUnit.MILLISECONDS.toNanos(now());
    }
}
