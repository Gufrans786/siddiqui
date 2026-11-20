package nts;

import ch.qos.logback.core.net.SyslogConstants;

public class C0412 extends C0418 {

    public C0203 f2128 = new C0203();

    public C0263 f2129 = new C0263(SyslogConstants.LOG_LOCAL4);

    public C0596 f2130 = new C0596();

    public boolean f2127 = false;

    public C0412() {
        this.f2150 = 48;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f2128.mo3411(bArr, i);
        C0203 c0203 = this.f2128;
        if (!c0203.f2145) {
            return iMo3411;
        }
        if (c0203.f2701.equals(C0458.f2640)) {
            iMo3411 = this.f2129.m3943(bArr, iMo3411, new C0426());
            if (!this.f2128.f2145) {
                return iMo3411;
            }
        } else if (this.f2128.f2701.equals(C0458.f2669)) {
            iMo3411 = this.f2129.m3943(bArr, iMo3411, new C0123());
            if (!this.f2128.f2145) {
                return iMo3411;
            }
        } else if (this.f2128.f2701.equals(C0458.f2601)) {
            iMo3411 = this.f2129.m3943(bArr, iMo3411, new C0539());
            if (!this.f2128.f2145) {
                return iMo3411;
            }
        } else {
            new C0414(224, C0177.m3551(76, 44, 39) + this.f2128.f2701);
        }
        if (iMo3411 < bArr.length) {
            if (!this.f2127) {
                if ((bArr[iMo3411] & 255) == 49) {
                    this.f2130.f2147 = true;
                } else {
                    this.f2130.f2147 = false;
                }
                this.f2127 = true;
            }
            C0596 c0596 = this.f2130;
            if (c0596.f2147) {
                iMo3411 = c0596.mo3411(bArr, iMo3411);
            }
        }
        return m4678(bArr, iMo3411);
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        c0531.m5384(this.f2128.f2701);
        this.f2129.mo3111(c0531);
        C0596 c0596 = this.f2130;
        if (c0596.f2147) {
            c0596.f2150 = 49;
            c0596.mo3111(c0531);
        }
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
