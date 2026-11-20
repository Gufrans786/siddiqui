package ch.qos.logback.core.spi;

import ch.qos.logback.core.Appender;
import ch.qos.logback.core.util.COWArrayList;
import java.util.Iterator;

public class AppenderAttachableImpl<E> implements AppenderAttachable<E> {
    static final long START = System.currentTimeMillis();
    private final COWArrayList<Appender<E>> appenderList = new COWArrayList<>(new Appender[0]);

    @Override
    public void addAppender(Appender<E> appender) {
        if (appender == null) {
            throw new IllegalArgumentException("Null argument disallowed");
        }
        this.appenderList.addIfAbsent(appender);
    }

    public int appendLoopOnAppenders(E e) {
        int i = 0;
        for (Appender<E> appender : this.appenderList.asTypedArray()) {
            appender.doAppend(e);
            i++;
        }
        return i;
    }

    @Override
    public void detachAndStopAllAppenders() {
        Iterator<Appender<E>> it = this.appenderList.iterator();
        while (it.hasNext()) {
            it.next().stop();
        }
        this.appenderList.clear();
    }

    @Override
    public boolean detachAppender(Appender<E> appender) {
        if (appender == null) {
            return false;
        }
        return this.appenderList.remove(appender);
    }

    @Override
    public boolean detachAppender(String str) {
        if (str == null) {
            return false;
        }
        for (Appender<E> appender : this.appenderList) {
            if (str.equals(appender.getName())) {
                return this.appenderList.remove(appender);
            }
        }
        return false;
    }

    @Override
    public Appender<E> getAppender(String str) {
        if (str == null) {
            return null;
        }
        for (Appender<E> appender : this.appenderList) {
            if (str.equals(appender.getName())) {
                return appender;
            }
        }
        return null;
    }

    @Override
    public boolean isAttached(Appender<E> appender) {
        if (appender == null) {
            return false;
        }
        Iterator<Appender<E>> it = this.appenderList.iterator();
        while (it.hasNext()) {
            if (it.next() == appender) {
                return true;
            }
        }
        return false;
    }

    @Override
    public Iterator<Appender<E>> iteratorForAppenders() {
        return this.appenderList.iterator();
    }
}
