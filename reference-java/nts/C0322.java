package nts;

public class C0322 extends C0418 {

    public C0175 f1731 = new C0175();

    public C0222 f1732 = new C0222();

    public C0446 f1733 = new C0446();

    public byte[] f1730 = null;

    public C0322() {
        this.f2150 = 48;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f1731.mo3411(bArr, i);
        if (!this.f1731.f2145) {
            return iMo3411;
        }
        int iMo3412 = this.f1732.mo3411(bArr, iMo3411);
        if (!this.f1732.f2145) {
            return iMo3412;
        }
        int iMo3413 = this.f1733.mo3411(bArr, iMo3412);
        return !this.f1733.f2145 ? iMo3413 : m4678(bArr, iMo3413);
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        byte[] bArr = this.f1730;
        if (bArr != null) {
            c0530.m5400(bArr);
            return;
        }
        C0530 c0531 = new C0530();
        this.f1731.mo3111(c0531);
        this.f1732.mo3111(c0531);
        C0446 c0446 = this.f1733;
        c0531.m5368(c0446.f2148, c0446.f2150);
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
