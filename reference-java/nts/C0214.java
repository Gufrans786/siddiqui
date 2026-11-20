package nts;

import ch.qos.logback.core.net.SyslogConstants;

public class C0214 extends C0418 {

    public C0472 f796 = new C0472();

    public C0263 f797 = new C0263(SyslogConstants.LOG_LOCAL4);

    public C0214() {
        this.f2150 = 48;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f796.mo3411(bArr, i);
        C0472 c0472 = this.f796;
        if (!c0472.f2145) {
            return iMo3411;
        }
        if (c0472.f2701.equals(C0458.f2608)) {
            iMo3411 = this.f797.m3943(bArr, iMo3411, new C0653());
            if (!this.f797.f2145) {
                return iMo3411;
            }
        } else if (this.f796.f2701.equals(C0458.f2619)) {
            iMo3411 = this.f797.m3943(bArr, iMo3411, new C0591());
            if (!this.f797.f2145) {
                return iMo3411;
            }
        } else {
            new C0414(224, C0177.m3555(860, 44, 37) + this.f796.f2701);
        }
        return m4678(bArr, iMo3411);
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        this.f796.mo3111(c0531);
        this.f797.mo3111(c0531);
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
