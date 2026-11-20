package nts;

public class C0228 extends C0418 {

    public C0230 f820 = new C0230();

    public C0302 f821 = new C0302();

    public C0153 f822 = new C0153();

    public boolean f819 = false;

    public C0228() {
        this.f2150 = 48;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f820.mo3411(bArr, i);
        if (!this.f820.f2145) {
            return iMo3411;
        }
        int iMo3412 = this.f821.mo3411(bArr, iMo3411);
        if (this.f821.f2145) {
            if (!this.f819) {
                if (iMo3412 < bArr.length) {
                    if ((bArr[iMo3412] & 255) == 48) {
                        this.f822.f2147 = true;
                    }
                    this.f819 = true;
                }
            }
            C0153 c0153 = this.f822;
            if (c0153.f2147) {
                iMo3412 = c0153.mo3411(bArr, iMo3412);
            }
            return m4678(bArr, iMo3412);
        }
        return iMo3412;
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        C0230 c0230 = this.f820;
        c0531.m5395(c0230.f1869, c0230.f2150);
        this.f821.mo3111(c0531);
        C0153 c0153 = this.f822;
        if (c0153.f2147) {
            c0153.mo3111(c0531);
        }
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
