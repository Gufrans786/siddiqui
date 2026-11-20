package ch.qos.logback.classic.pattern;

import ch.qos.logback.classic.spi.ILoggingEvent;
import ch.qos.logback.classic.spi.StackTraceElementProxy;
import ch.qos.logback.classic.spi.ThrowableProxyUtil;

public class ExtendedThrowableProxyConverter extends ThrowableProxyConverter {
    @Override
    protected void extraData(StringBuilder sb, StackTraceElementProxy stackTraceElementProxy) {
        ThrowableProxyUtil.subjoinPackagingData(sb, stackTraceElementProxy);
    }

    protected void prepareLoggingEvent(ILoggingEvent iLoggingEvent) {
    }
}
