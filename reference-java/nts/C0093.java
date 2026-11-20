package nts;

public class C0093 extends C0418 {

    public C0472 f73 = new C0472();

    public C0418 f74 = new C0418();

    public C0591 f75 = new C0591();

    public boolean f72 = false;

    public C0093() {
        this.f2150 = 48;
        this.f74.f2150 = 1;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f73.mo3411(bArr, i);
        if (this.f73.f2145) {
            if (!this.f72) {
                if (iMo3411 < bArr.length) {
                    if ((bArr[iMo3411] & 255) == 1) {
                        this.f74.f2147 = true;
                    } else {
                        this.f74.f2147 = false;
                    }
                    this.f72 = true;
                }
            }
            C0418 c0418 = this.f74;
            if (c0418.f2147) {
                iMo3411 = c0418.mo3411(bArr, iMo3411);
            }
            int iMo3412 = this.f75.mo3411(bArr, iMo3411);
            return !this.f75.f2145 ? iMo3412 : m4678(bArr, iMo3412);
        }
        return iMo3411;
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        this.f73.mo3111(c0531);
        C0418 c0418 = this.f74;
        if (c0418.f2147) {
            c0418.mo3111(c0531);
        }
        this.f75.mo3111(c0531);
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
