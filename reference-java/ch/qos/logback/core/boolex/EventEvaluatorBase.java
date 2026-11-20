package ch.qos.logback.core.boolex;

import ch.qos.logback.core.spi.ContextAwareBase;

public abstract class EventEvaluatorBase<E> extends ContextAwareBase implements EventEvaluator<E> {
    String name;
    boolean started;

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public boolean isStarted() {
        return this.started;
    }

    @Override
    public void setName(String str) {
        if (this.name != null) {
            throw new IllegalStateException("name has been already set");
        }
        this.name = str;
    }

    @Override
    public void start() {
        this.started = true;
    }

    @Override
    public void stop() {
        this.started = false;
    }
}
