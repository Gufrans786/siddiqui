package ch.qos.logback.core.util;

public class FixedDelay implements DelayStrategy {
    private long nextDelay;
    private final long subsequentDelay;

    public FixedDelay(int i) {
        long j = i;
        this(j, j);
    }

    public FixedDelay(long j, long j2) {
        this.nextDelay = j;
        this.subsequentDelay = j2;
    }

    @Override
    public long nextDelay() {
        long j = this.nextDelay;
        this.nextDelay = this.subsequentDelay;
        return j;
    }
}
