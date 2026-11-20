package nts;

import ch.qos.logback.core.net.SyslogConstants;

public class C0094 extends C0418 {

    public C0361 f76 = new C0361();

    public C0286 f77 = new C0286();

    public C0226 f78;

    public C0094() {
        this.f2150 = 48;
        C0226 c0226 = new C0226();
        this.f78 = c0226;
        c0226.f2150 = 128;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f76.mo3411(bArr, i);
        if (!this.f76.f2145) {
            return iMo3411;
        }
        int iMo3412 = this.f77.mo3411(bArr, iMo3411);
        if (!this.f77.f2145) {
            return iMo3412;
        }
        int iMo3413 = this.f78.mo3411(bArr, iMo3412);
        return !this.f78.f2145 ? iMo3413 : m4678(bArr, iMo3413);
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        c0531.m5384(this.f76.f2701);
        this.f77.mo3111(c0531);
        this.f78.mo3111(c0531);
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }

    public C0094(InterfaceC0559 interfaceC0559) {
        this.f2150 = 48;
        C0226 c0226 = new C0226(interfaceC0559);
        this.f78 = c0226;
        c0226.f2150 = SyslogConstants.LOG_LOCAL4;
    }
}
