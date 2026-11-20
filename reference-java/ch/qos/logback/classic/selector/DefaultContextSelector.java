package ch.qos.logback.classic.selector;

import ch.qos.logback.classic.LoggerContext;
import java.util.Arrays;
import java.util.List;

public class DefaultContextSelector implements ContextSelector {
    private LoggerContext defaultLoggerContext;

    public DefaultContextSelector(LoggerContext loggerContext) {
        this.defaultLoggerContext = loggerContext;
    }

    @Override
    public LoggerContext detachLoggerContext(String str) {
        return this.defaultLoggerContext;
    }

    @Override
    public List<String> getContextNames() {
        return Arrays.asList(this.defaultLoggerContext.getName());
    }

    @Override
    public LoggerContext getDefaultLoggerContext() {
        return this.defaultLoggerContext;
    }

    @Override
    public LoggerContext getLoggerContext() {
        return getDefaultLoggerContext();
    }

    @Override
    public LoggerContext getLoggerContext(String str) {
        if (this.defaultLoggerContext.getName().equals(str)) {
            return this.defaultLoggerContext;
        }
        return null;
    }
}
