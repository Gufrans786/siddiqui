package ch.qos.logback.classic.sift;

import ch.qos.logback.classic.ClassicConstants;
import ch.qos.logback.classic.spi.ILoggingEvent;
import ch.qos.logback.core.joran.spi.DefaultClass;
import ch.qos.logback.core.sift.Discriminator;
import ch.qos.logback.core.sift.SiftingAppenderBase;
import org.slf4j.Marker;

public class SiftingAppender extends SiftingAppenderBase<ILoggingEvent> {
    @Override
    public boolean eventMarksEndOfLife(ILoggingEvent iLoggingEvent) {
        Marker marker = iLoggingEvent.getMarker();
        if (marker == null) {
            return false;
        }
        return marker.contains(ClassicConstants.FINALIZE_SESSION_MARKER);
    }

    @Override
    public long getTimestamp(ILoggingEvent iLoggingEvent) {
        return iLoggingEvent.getTimeStamp();
    }

    @Override
    @DefaultClass(MDCBasedDiscriminator.class)
    public void setDiscriminator(Discriminator<ILoggingEvent> discriminator) {
        super.setDiscriminator(discriminator);
    }
}
