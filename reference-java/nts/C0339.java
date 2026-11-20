package nts;

import ch.qos.logback.core.net.SyslogConstants;

public class C0339 extends C0418 {

    public boolean f1824;

    public C0375 f1825;

    public C0230 f1826;

    public C0107 f1827;

    public C0461 f1828;

    public C0302 f1829;

    public C0657 f1830;

    public boolean f1831;

    public C0339() {
        this.f1826 = new C0230();
        this.f1828 = new C0461();
        this.f1829 = new C0302();
        this.f1825 = new C0375();
        this.f1827 = new C0107();
        this.f1830 = new C0657();
        this.f1824 = false;
        this.f1831 = false;
        this.f2150 = 48;
        this.f1825.f2150 = SyslogConstants.LOG_LOCAL4;
        this.f1827.f2147 = false;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f1826.mo3411(bArr, i);
        if (!this.f1826.f2145) {
            return iMo3411;
        }
        int iMo3412 = this.f1828.mo3411(bArr, iMo3411);
        if (!this.f1828.f2145) {
            return iMo3412;
        }
        int iMo3413 = this.f1829.mo3411(bArr, iMo3412);
        if (this.f1829.f2145) {
            if (!this.f1824) {
                if (iMo3413 < bArr.length) {
                    if ((bArr[iMo3413] & 255) == 160) {
                        this.f1825.f2147 = true;
                    } else {
                        this.f1825.f2147 = false;
                    }
                    this.f1824 = true;
                }
            }
            C0375 c0375 = this.f1825;
            if (c0375.f2147) {
                iMo3413 = c0375.mo3411(bArr, iMo3413);
                if (!this.f1825.f2145) {
                    return iMo3413;
                }
            }
            if (!this.f1831) {
                if (iMo3413 >= bArr.length) {
                    return iMo3413;
                }
                if ((bArr[iMo3413] & 255) == 161) {
                    this.f1827.f2147 = true;
                } else {
                    this.f1827.f2147 = false;
                }
                this.f1831 = true;
            }
            C0107 c0107 = this.f1827;
            if (c0107.f2147) {
                iMo3413 = c0107.mo3411(bArr, iMo3413);
                if (!this.f1827.f2145) {
                    return iMo3413;
                }
            }
            int iMo3414 = this.f1830.mo3411(bArr, iMo3413);
            return !this.f1830.f2145 ? iMo3414 : m4678(bArr, iMo3414);
        }
        return iMo3413;
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        C0230 c0230 = this.f1826;
        c0230.f1869 = 1;
        c0531.m5395(c0230.f1869, c0230.f2150);
        this.f1828.mo3111(c0531);
        this.f1829.mo3111(c0531);
        C0375 c0375 = this.f1825;
        if (c0375.f2147) {
            c0375.f2150 = SyslogConstants.LOG_LOCAL4;
            c0375.mo3111(c0531);
        }
        C0107 c0107 = this.f1827;
        if (c0107.f2147) {
            c0107.f2150 = 161;
            c0531.m5379(c0107.f2148, c0107.f2150);
        }
        this.f1830.mo3111(c0531);
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }

    public C0339(InterfaceC0559 interfaceC0559) {
        this.f1826 = new C0230();
        this.f1828 = new C0461();
        this.f1829 = new C0302();
        this.f1825 = new C0375();
        this.f1827 = new C0107();
        this.f1830 = new C0657();
        this.f1824 = false;
        this.f1831 = false;
        this.f1829 = new C0302(interfaceC0559);
        this.f2150 = 48;
        this.f1825.f2150 = SyslogConstants.LOG_LOCAL4;
        this.f1827.f2147 = false;
    }
}
