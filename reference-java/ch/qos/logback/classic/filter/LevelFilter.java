package ch.qos.logback.classic.filter;

import ch.qos.logback.classic.Level;
import ch.qos.logback.classic.spi.ILoggingEvent;
import ch.qos.logback.core.filter.AbstractMatcherFilter;
import ch.qos.logback.core.spi.FilterReply;

public class LevelFilter extends AbstractMatcherFilter<ILoggingEvent> {
    Level level;

    @Override
    public FilterReply decide(ILoggingEvent iLoggingEvent) {
        if (isStarted()) {
            return iLoggingEvent.getLevel().equals(this.level) ? this.onMatch : this.onMismatch;
        }
        return FilterReply.NEUTRAL;
    }

    public void setLevel(Level level) {
        this.level = level;
    }

    @Override
    public void start() {
        if (this.level != null) {
            super.start();
        }
    }
}
