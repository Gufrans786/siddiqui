package nts;

import ch.qos.logback.core.net.SyslogConstants;

public class C0593 extends C0418 {

    public C0230 f3281 = new C0230();

    public C0370 f3283 = new C0370();

    public C0278 f3284 = new C0278();

    public C0359 f3280 = new C0359();

    public byte[] f3282 = null;

    public boolean f3285 = false;

    public C0593() {
        this.f2150 = 48;
        C0359 c0359 = this.f3280;
        c0359.f2147 = false;
        c0359.f2150 = SyslogConstants.LOG_LOCAL4;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int i2 = this.f2146 + i;
        int iMo3411 = this.f3281.mo3411(bArr, i);
        if (!this.f3281.f2145) {
            return iMo3411;
        }
        int iMo3412 = this.f3283.mo3411(bArr, iMo3411);
        if (!this.f3283.f2145) {
            return iMo3412;
        }
        int iMo3413 = this.f3284.mo3411(bArr, iMo3412);
        if (this.f3284.f2145) {
            if (iMo3413 == i2) {
                return m4678(bArr, iMo3413);
            }
            if (!this.f3285) {
                if (iMo3413 < bArr.length) {
                    if ((bArr[iMo3413] & 255) == 160) {
                        this.f3280.f2147 = true;
                    }
                    this.f3285 = true;
                }
            }
            C0359 c0359 = this.f3280;
            if (c0359.f2147) {
                iMo3413 = c0359.mo3411(bArr, iMo3413);
            }
            if (iMo3413 >= i2 || i2 > bArr.length) {
                i2 = iMo3413;
            } else {
                this.f3282 = C0259.m3865(bArr, iMo3413, i2 - iMo3413);
            }
            return m4678(bArr, i2);
        }
        return iMo3413;
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        C0230 c0230 = this.f3281;
        c0531.m5395(c0230.f1869, c0230.f2150);
        this.f3283.mo3111(c0531);
        C0278 c0278 = this.f3284;
        c0531.m5379(c0278.f2148, c0278.f2150);
        C0359 c0359 = this.f3280;
        if (c0359.f2147) {
            c0359.f2150 = SyslogConstants.LOG_LOCAL4;
            c0359.mo3111(c0531);
        }
        byte[] bArr = this.f3282;
        if (bArr != null) {
            c0531.m5400(bArr);
        }
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
