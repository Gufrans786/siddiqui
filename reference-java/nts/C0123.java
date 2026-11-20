package nts;

import ch.qos.logback.core.net.SyslogConstants;

public class C0123 extends C0418 {

    public C0598 f243 = new C0598();

    public C0263 f244 = new C0263(SyslogConstants.LOG_LOCAL4);

    public C0123() {
        this.f2150 = 48;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f243.mo3411(bArr, i);
        C0598 c0598 = this.f243;
        if (!c0598.f2145) {
            return iMo3411;
        }
        if (c0598.f2701.equals(C0458.f2649)) {
            iMo3411 = this.f244.m3943(bArr, iMo3411, new C0101());
            if (!this.f244.f2145) {
                return iMo3411;
            }
        } else {
            new C0414(224, C0177.m3551(159, 44, 84) + this.f243.f2701);
        }
        return m4678(bArr, iMo3411);
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        c0531.m5384(this.f243.f2701);
        this.f244.mo3111(c0531);
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
