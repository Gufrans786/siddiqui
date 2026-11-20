package ch.qos.logback.classic.layout;

import ch.qos.logback.classic.pattern.ThrowableProxyConverter;
import ch.qos.logback.classic.spi.ILoggingEvent;
import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.LayoutBase;
import ch.qos.logback.core.util.CachingDateFormatter;

public class TTLLLayout extends LayoutBase<ILoggingEvent> {
    CachingDateFormatter cachingDateFormatter = new CachingDateFormatter("HH:mm:ss.SSS");
    ThrowableProxyConverter tpc = new ThrowableProxyConverter();

    @Override
    public String doLayout(ILoggingEvent iLoggingEvent) {
        if (!isStarted()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.cachingDateFormatter.format(iLoggingEvent.getTimeStamp()));
        sb.append(" [");
        sb.append(iLoggingEvent.getThreadName());
        sb.append("] ");
        sb.append(iLoggingEvent.getLevel().toString());
        sb.append(" ");
        sb.append(iLoggingEvent.getLoggerName());
        sb.append(" - ");
        sb.append(iLoggingEvent.getFormattedMessage());
        sb.append(CoreConstants.LINE_SEPARATOR);
        if (iLoggingEvent.getThrowableProxy() != null) {
            sb.append(this.tpc.convert(iLoggingEvent));
        }
        return sb.toString();
    }

    @Override
    public void start() {
        this.tpc.start();
        super.start();
    }
}
