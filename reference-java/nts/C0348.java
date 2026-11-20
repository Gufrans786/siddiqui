package nts;

import ch.qos.logback.core.net.SyslogConstants;

public class C0348 extends C0418 {

    public C0230 f1855 = new C0230();

    public C0211 f1859 = new C0211();

    public C0211 f1861 = new C0211();

    public C0211 f1854 = new C0211();

    public C0211 f1857 = new C0211();

    public C0211 f1862 = new C0211();

    public C0211 f1853 = new C0211();

    public C0211 f1863 = new C0211();

    public C0211 f1860 = new C0211();

    public C0417 f1856 = new C0417();

    public boolean f1858 = false;

    public C0348() {
        this.f2150 = 48;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f1855.mo3411(bArr, i);
        if (!this.f1855.f2145) {
            return iMo3411;
        }
        int iMo3412 = this.f1859.mo3411(bArr, iMo3411);
        if (!this.f1859.f2145) {
            return iMo3412;
        }
        int iMo3413 = this.f1861.mo3411(bArr, iMo3412);
        if (!this.f1861.f2145) {
            return iMo3413;
        }
        int iMo3414 = this.f1854.mo3411(bArr, iMo3413);
        if (!this.f1854.f2145) {
            return iMo3414;
        }
        int iMo3415 = this.f1857.mo3411(bArr, iMo3414);
        if (!this.f1857.f2145) {
            return iMo3415;
        }
        int iMo3416 = this.f1862.mo3411(bArr, iMo3415);
        if (!this.f1862.f2145) {
            return iMo3416;
        }
        int iMo3417 = this.f1853.mo3411(bArr, iMo3416);
        if (!this.f1853.f2145) {
            return iMo3417;
        }
        int iMo3418 = this.f1863.mo3411(bArr, iMo3417);
        if (!this.f1863.f2145) {
            return iMo3418;
        }
        int iMo3419 = this.f1860.mo3411(bArr, iMo3418);
        if (!this.f1860.f2145) {
            return iMo3419;
        }
        if (!this.f1858) {
            if (iMo3419 >= bArr.length) {
                return m4678(bArr, iMo3419);
            }
            if ((bArr[iMo3419] & 255) == 48) {
                this.f1856.f2147 = true;
            }
            this.f1858 = true;
        }
        C0417 c0417 = this.f1856;
        if (c0417.f2147) {
            iMo3419 = c0417.mo3411(bArr, iMo3419);
        }
        return m4678(bArr, iMo3419);
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        C0230 c0230 = this.f1855;
        c0531.m5395(c0230.f1869, c0230.f2150);
        this.f1859.mo3111(c0531);
        this.f1861.mo3111(c0531);
        this.f1854.mo3111(c0531);
        this.f1857.mo3111(c0531);
        this.f1862.mo3111(c0531);
        this.f1853.mo3111(c0531);
        this.f1863.mo3111(c0531);
        this.f1860.mo3111(c0531);
        C0417 c0417 = this.f1856;
        if (c0417.f2147) {
            c0417.f2150 = SyslogConstants.LOG_LOCAL4;
            c0417.mo3111(c0531);
        }
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
