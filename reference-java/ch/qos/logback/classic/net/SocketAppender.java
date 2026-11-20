package ch.qos.logback.classic.net;

import ch.qos.logback.classic.spi.ILoggingEvent;
import ch.qos.logback.core.net.AbstractSocketAppender;
import ch.qos.logback.core.spi.PreSerializationTransformer;

public class SocketAppender extends AbstractSocketAppender<ILoggingEvent> {
    private static final PreSerializationTransformer<ILoggingEvent> pst = new LoggingEventPreSerializationTransformer();
    private boolean includeCallerData = false;

    @Override
    public PreSerializationTransformer<ILoggingEvent> getPST() {
        return pst;
    }

    @Override
    public void postProcessEvent(ILoggingEvent iLoggingEvent) {
        if (this.includeCallerData) {
            iLoggingEvent.getCallerData();
        }
    }

    public void setIncludeCallerData(boolean z) {
        this.includeCallerData = z;
    }
}
