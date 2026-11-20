package ch.qos.logback.classic.net;

import ch.qos.logback.classic.ClassicConstants;
import ch.qos.logback.classic.PatternLayout;
import ch.qos.logback.classic.boolex.OnErrorEvaluator;
import ch.qos.logback.classic.spi.ILoggingEvent;
import ch.qos.logback.core.Layout;
import ch.qos.logback.core.boolex.EventEvaluator;
import ch.qos.logback.core.helpers.CyclicBuffer;
import ch.qos.logback.core.net.SMTPAppenderBase;
import ch.qos.logback.core.pattern.PatternLayoutBase;
import org.slf4j.Marker;

public class SMTPAppender extends SMTPAppenderBase<ILoggingEvent> {
    static final String DEFAULT_SUBJECT_PATTERN = "%logger{20} - %m";
    private boolean includeCallerData = false;

    public SMTPAppender() {
    }

    public SMTPAppender(EventEvaluator<ILoggingEvent> eventEvaluator) {
        this.eventEvaluator = eventEvaluator;
    }

    @Override
    public boolean eventMarksEndOfLife(ILoggingEvent iLoggingEvent) {
        Marker marker = iLoggingEvent.getMarker();
        if (marker == null) {
            return false;
        }
        return marker.contains(ClassicConstants.FINALIZE_SESSION_MARKER);
    }

    @Override
    protected void fillBuffer(CyclicBuffer<ILoggingEvent> cyclicBuffer, StringBuffer stringBuffer) {
        int length = cyclicBuffer.length();
        for (int i = 0; i < length; i++) {
            stringBuffer.append(this.layout.doLayout((E) cyclicBuffer.get()));
        }
    }

    public boolean isIncludeCallerData() {
        return this.includeCallerData;
    }

    @Override
    public PatternLayoutBase<ILoggingEvent> makeNewToPatternLayout2(String str) {
        PatternLayout patternLayout = new PatternLayout();
        patternLayout.setPattern(str + "%nopex");
        return patternLayout;
    }

    @Override
    protected Layout<ILoggingEvent> makeSubjectLayout(String str) {
        if (str == null) {
            str = DEFAULT_SUBJECT_PATTERN;
        }
        PatternLayout patternLayout = new PatternLayout();
        patternLayout.setContext(getContext());
        patternLayout.setPattern(str);
        patternLayout.setPostCompileProcessor(null);
        patternLayout.start();
        return patternLayout;
    }

    public void setIncludeCallerData(boolean z) {
        this.includeCallerData = z;
    }

    @Override
    public void start() {
        if (this.eventEvaluator == null) {
            OnErrorEvaluator onErrorEvaluator = new OnErrorEvaluator();
            onErrorEvaluator.setContext(getContext());
            onErrorEvaluator.setName("onError");
            onErrorEvaluator.start();
            this.eventEvaluator = onErrorEvaluator;
        }
        super.start();
    }

    @Override
    public void subAppend(CyclicBuffer<ILoggingEvent> cyclicBuffer, ILoggingEvent iLoggingEvent) {
        if (this.includeCallerData) {
            iLoggingEvent.getCallerData();
        }
        iLoggingEvent.prepareForDeferredProcessing();
        cyclicBuffer.add(iLoggingEvent);
    }
}
