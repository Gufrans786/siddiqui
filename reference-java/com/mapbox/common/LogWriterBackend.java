package com.mapbox.common;

public interface LogWriterBackend {
    void writeLog(LoggingLevel loggingLevel, String str);
}
