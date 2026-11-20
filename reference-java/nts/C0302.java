package nts;

import ch.qos.logback.core.net.SyslogConstants;

public class C0302 extends C0418 {

    public C0361 f1617 = new C0361();

    public C0263 f1618 = new C0263(SyslogConstants.LOG_LOCAL4);

    public C0302() {
        this.f2150 = 48;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f1617.mo3411(bArr, i);
        C0361 c0361 = this.f1617;
        if (c0361.f2145) {
            int i2 = c0361.f2141 + c0361.f2146;
            if (this.f2149) {
                int i3 = iMo3411 + 1;
                if (i3 < bArr.length) {
                    if (m4677(bArr, iMo3411) == 0 && m4677(bArr, i3) == 0) {
                        this.f1618.f2147 = false;
                    }
                }
            } else if (i2 >= this.f2146) {
                this.f1618.f2147 = false;
            }
            if (this.f1618.f2147) {
                if (this.f1617.f2701.equals(C0458.f2606)) {
                    iMo3411 = this.f1618.m3943(bArr, iMo3411, new C0262());
                } else if (this.f1617.f2701.equals(C0458.f2639)) {
                    iMo3411 = this.f1618.m3943(bArr, iMo3411, new C0339(null));
                } else if (this.f1617.f2701.equals(C0458.f2613)) {
                    iMo3411 = this.f1618.m3943(bArr, iMo3411, new C0226(null));
                } else if (this.f1617.f2701.equals(C0458.f2663)) {
                    iMo3411 = this.f1618.m3943(bArr, iMo3411, new C0507());
                } else if (this.f1617.f2701.equals(C0458.f2602)) {
                    iMo3411 = this.f1618.m3943(bArr, iMo3411, new C0271());
                } else {
                    if (!this.f1617.f2701.equals(C0458.f2609)) {
                        throw new C0414(224, C0177.m3555(298, 44, 61) + this.f1617.f2701);
                    }
                    iMo3411 = this.f1618.m3943(bArr, iMo3411, new C0154());
                }
            }
            C0263 c0263 = this.f1618;
            return (!c0263.f2147 || c0263.f2145) ? m4678(bArr, iMo3411) : iMo3411;
        }
        return iMo3411;
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        c0531.m5384(this.f1617.f2701);
        C0263 c0263 = this.f1618;
        if (c0263.f2147) {
            c0263.mo3111(c0531);
        }
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }

    public C0302(InterfaceC0559 interfaceC0559) {
        this.f2150 = 48;
    }
}
