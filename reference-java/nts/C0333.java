package nts;

import ch.qos.logback.core.net.SyslogConstants;

public class C0333 extends C0173 {
    public C0333() {
        this.f1703 = 256;
        this.f570 = SyslogConstants.LOG_LOCAL1;
        mo3250();
    }

    @Override
    public Object clone() throws CloneNotSupportedException {
        C0333 c0333 = new C0333();
        m3535(c0333);
        return c0333;
    }
}
