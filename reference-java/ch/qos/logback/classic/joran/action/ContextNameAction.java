package ch.qos.logback.classic.joran.action;

import ch.qos.logback.core.joran.action.Action;
import ch.qos.logback.core.joran.spi.InterpretationContext;
import org.xml.sax.Attributes;

public class ContextNameAction extends Action {
    @Override
    public void begin(InterpretationContext interpretationContext, String str, Attributes attributes) {
    }

    @Override
    public void body(InterpretationContext interpretationContext, String str) {
        String strSubst = interpretationContext.subst(str);
        addInfo("Setting logger context name as [" + strSubst + "]");
        try {
            this.context.setName(strSubst);
        } catch (IllegalStateException e) {
            addError("Failed to rename context [" + this.context.getName() + "] as [" + strSubst + "]", e);
        }
    }

    @Override
    public void end(InterpretationContext interpretationContext, String str) {
    }
}
