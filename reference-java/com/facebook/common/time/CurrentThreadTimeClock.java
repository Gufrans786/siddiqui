package com.facebook.common.time;

public class CurrentThreadTimeClock implements Clock {
    @Override
    public long now() {
        return android.os.SystemClock.currentThreadTimeMillis();
    }
}
