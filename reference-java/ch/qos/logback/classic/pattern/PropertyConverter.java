package ch.qos.logback.classic.pattern;

import ch.qos.logback.classic.spi.ILoggingEvent;

public final class PropertyConverter extends ClassicConverter {
    String key;

    @Override
    public String convert(ILoggingEvent iLoggingEvent) {
        if (this.key == null) {
            return "Property_HAS_NO_KEY";
        }
        String str = iLoggingEvent.getLoggerContextVO().getPropertyMap().get(this.key);
        return str != null ? str : System.getProperty(this.key);
    }

    @Override
    public void start() {
        String firstOption = getFirstOption();
        if (firstOption != null) {
            this.key = firstOption;
            super.start();
        }
    }
}
