package ch.qos.logback.classic.android;

final class SystemClock implements Clock {
    SystemClock() {
    }

    @Override
    public long currentTimeMillis() {
        return System.currentTimeMillis();
    }
}
