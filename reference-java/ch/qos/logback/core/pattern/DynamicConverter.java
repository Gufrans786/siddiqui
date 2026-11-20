package ch.qos.logback.core.pattern;

import ch.qos.logback.core.Context;
import ch.qos.logback.core.spi.ContextAware;
import ch.qos.logback.core.spi.ContextAwareBase;
import ch.qos.logback.core.spi.LifeCycle;
import ch.qos.logback.core.status.Status;
import java.util.List;

public abstract class DynamicConverter<E> extends FormattingConverter<E> implements LifeCycle, ContextAware {
    private List<String> optionList;
    ContextAwareBase cab = new ContextAwareBase(this);
    protected boolean started = false;

    @Override
    public void addError(String str) {
        this.cab.addError(str);
    }

    @Override
    public void addError(String str, Throwable th) {
        this.cab.addError(str, th);
    }

    @Override
    public void addInfo(String str) {
        this.cab.addInfo(str);
    }

    @Override
    public void addInfo(String str, Throwable th) {
        this.cab.addInfo(str, th);
    }

    @Override
    public void addStatus(Status status) {
        this.cab.addStatus(status);
    }

    @Override
    public void addWarn(String str) {
        this.cab.addWarn(str);
    }

    @Override
    public void addWarn(String str, Throwable th) {
        this.cab.addWarn(str, th);
    }

    @Override
    public Context getContext() {
        return this.cab.getContext();
    }

    public String getFirstOption() {
        List<String> list = this.optionList;
        if (list == null || list.size() == 0) {
            return null;
        }
        return this.optionList.get(0);
    }

    protected List<String> getOptionList() {
        return this.optionList;
    }

    @Override
    public boolean isStarted() {
        return this.started;
    }

    @Override
    public void setContext(Context context) {
        this.cab.setContext(context);
    }

    public void setOptionList(List<String> list) {
        this.optionList = list;
    }

    public void start() {
        this.started = true;
    }

    public void stop() {
        this.started = false;
    }
}
