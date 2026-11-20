package ch.qos.logback.classic.pattern;

import ch.qos.logback.classic.spi.ILoggingEvent;

public class LoggerConverter extends NamedConverter {
    @Override
    protected String getFullyQualifiedName(ILoggingEvent iLoggingEvent) {
        return iLoggingEvent.getLoggerName();
    }
}
