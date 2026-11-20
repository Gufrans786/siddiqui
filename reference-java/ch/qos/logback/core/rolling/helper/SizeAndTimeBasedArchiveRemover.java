package ch.qos.logback.core.rolling.helper;

public class SizeAndTimeBasedArchiveRemover extends TimeBasedArchiveRemover {
    public SizeAndTimeBasedArchiveRemover(FileNamePattern fileNamePattern, RollingCalendar rollingCalendar, FileProvider fileProvider) {
        super(fileNamePattern, rollingCalendar, fileProvider);
    }
}
