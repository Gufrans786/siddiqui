package nts;

public class C0134 extends C0418 {

    public C0351 f280 = new C0351();

    public C0351 f281 = new C0351();

    public C0351 f282 = new C0351();

    public C0134() {
        this.f2150 = 48;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f280.mo3411(bArr, i);
        if (!this.f280.f2145) {
            return iMo3411;
        }
        int iMo3412 = this.f281.mo3411(bArr, iMo3411);
        if (!this.f281.f2145) {
            return iMo3412;
        }
        int iMo3413 = this.f282.mo3411(bArr, iMo3412);
        return !this.f282.f2145 ? iMo3413 : m4678(bArr, iMo3413);
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        C0351 c0351 = this.f280;
        c0531.m5395(c0351.f1869, c0351.f2150);
        C0351 c0352 = this.f281;
        c0531.m5395(c0352.f1869, c0352.f2150);
        C0351 c0353 = this.f282;
        c0531.m5395(c0353.f1869, c0353.f2150);
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
