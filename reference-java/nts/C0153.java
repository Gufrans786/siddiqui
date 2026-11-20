package nts;

public class C0153 extends C0418 {

    public C0216 f458 = new C0216();

    public C0591 f459 = new C0591();

    public C0351 f460 = new C0351();

    public boolean f457 = false;

    public C0153() {
        this.f2150 = 48;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f458.mo3411(bArr, i);
        if (!this.f458.f2145) {
            return iMo3411;
        }
        int iMo3412 = this.f459.mo3411(bArr, iMo3411);
        if (this.f459.f2145) {
            if (!this.f457) {
                if (iMo3412 < bArr.length) {
                    this.f460.f2147 = (bArr[iMo3412] & 255) == 2;
                    this.f457 = true;
                }
            }
            C0351 c0351 = this.f460;
            if (c0351.f2147) {
                iMo3412 = c0351.mo3411(bArr, iMo3412);
            }
            return m4678(bArr, iMo3412);
        }
        return iMo3412;
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        this.f458.mo3111(c0531);
        this.f459.mo3111(c0531);
        C0351 c0351 = this.f460;
        if (c0351.f2147) {
            c0531.m5395(c0351.f1869, c0351.f2150);
        }
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
