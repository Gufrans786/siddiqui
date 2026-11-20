package ch.qos.logback.classic.filter;

import ch.qos.logback.classic.Level;
import ch.qos.logback.classic.spi.ILoggingEvent;
import ch.qos.logback.core.filter.Filter;
import ch.qos.logback.core.spi.FilterReply;

public class ThresholdFilter extends Filter<ILoggingEvent> {
    Level level;

    @Override
    public FilterReply decide(ILoggingEvent iLoggingEvent) {
        if (isStarted() && !iLoggingEvent.getLevel().isGreaterOrEqual(this.level)) {
            return FilterReply.DENY;
        }
        return FilterReply.NEUTRAL;
    }

    public void setLevel(String str) {
        this.level = Level.toLevel(str);
    }

    @Override
    public void start() {
        if (this.level != null) {
            super.start();
        }
    }
}
