package nts;

import ch.qos.logback.core.net.SyslogConstants;

public class C0541 extends C0418 {

    public C0230 f3119 = new C0230();

    public C0630 f3122 = new C0630();

    public C0350 f3124 = new C0350();

    public C0260 f3118 = new C0260();

    public C0359 f3121 = new C0359();

    public C0222 f3125 = new C0260();

    public C0215 f3117 = new C0215();

    public C0107 f3126 = new C0107();

    public boolean f3123 = false;

    public boolean f3120 = false;

    public C0541() {
        this.f2150 = 48;
        C0359 c0359 = this.f3121;
        c0359.f2147 = false;
        C0107 c0107 = this.f3126;
        c0107.f2147 = false;
        c0359.f2150 = SyslogConstants.LOG_LOCAL4;
        c0107.f2150 = 161;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411;
        int iMo3412 = this.f3119.mo3411(bArr, i);
        C0230 c0230 = this.f3119;
        if (!c0230.f2145) {
            return iMo3412;
        }
        int i2 = c0230.f1869;
        if (i2 == 1) {
            iMo3411 = this.f3122.mo3411(bArr, iMo3412);
            if (!this.f3122.f2145) {
                return iMo3411;
            }
        } else {
            if (i2 != 3) {
                throw new C0414(446, C0177.m3555(664, 28, 93));
            }
            iMo3411 = this.f3124.mo3411(bArr, iMo3412);
            if (!this.f3124.f2145) {
                return iMo3411;
            }
        }
        int iMo3413 = this.f3118.mo3411(bArr, iMo3411);
        if (this.f3118.f2145) {
            if (!this.f3123) {
                if (iMo3413 < bArr.length) {
                    if ((bArr[iMo3413] & 255) == 160) {
                        this.f3121.f2147 = true;
                    } else {
                        this.f3121.f2147 = false;
                    }
                    this.f3123 = true;
                }
            }
            C0359 c0359 = this.f3121;
            if (c0359.f2147) {
                iMo3413 = c0359.mo3411(bArr, iMo3413);
            }
            int iMo3414 = this.f3125.mo3411(bArr, iMo3413);
            if (!this.f3125.f2145) {
                return iMo3414;
            }
            int iMo3415 = this.f3117.mo3411(bArr, iMo3414);
            if (!this.f3117.f2145) {
                return iMo3415;
            }
            if (iMo3415 < bArr.length) {
                if (!this.f3120) {
                    if ((bArr[iMo3415] & 160) == 160) {
                        this.f3126.f2147 = true;
                    } else {
                        this.f3126.f2147 = false;
                    }
                    this.f3120 = true;
                }
                C0107 c0107 = this.f3126;
                if (c0107.f2147) {
                    iMo3415 = c0107.mo3411(bArr, iMo3415);
                }
            }
            return m4678(bArr, iMo3415);
        }
        return iMo3413;
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        C0230 c0230 = this.f3119;
        c0531.m5395(c0230.f1869, c0230.f2150);
        int i = this.f3119.f1869;
        if (i == 1) {
            this.f3122.mo3111(c0531);
        } else if (i == 3) {
            C0350 c0350 = this.f3124;
            c0350.f2150 = 128;
            c0531.m5379(c0350.f2148, c0350.f2150);
        }
        this.f3118.mo3111(c0531);
        C0359 c0359 = this.f3121;
        if (c0359.f2147) {
            c0359.f2150 = SyslogConstants.LOG_LOCAL4;
            c0359.mo3111(c0531);
        }
        this.f3125.mo3111(c0531);
        C0215 c0215 = this.f3117;
        c0531.m5379(c0215.f2148, c0215.f2150);
        C0107 c0107 = this.f3126;
        if (c0107.f2147) {
            c0107.f2150 = 161;
            c0531.m5379(c0107.f2148, c0107.f2150);
        }
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
