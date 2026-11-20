package nts;

public class C0624 extends C0418 {

    public C0230 f3452 = new C0230();

    public C0322 f3453 = new C0322();

    public C0107 f3454 = new C0107();

    public C0624() {
        this.f2150 = 48;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f3452.mo3411(bArr, i);
        if (!this.f3452.f2145) {
            return iMo3411;
        }
        int iMo3412 = this.f3453.mo3411(bArr, iMo3411);
        if (!this.f3453.f2145) {
            return iMo3412;
        }
        int iMo3413 = this.f3454.mo3411(bArr, iMo3412);
        return !this.f3454.f2145 ? iMo3413 : m4678(bArr, iMo3413);
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        C0230 c0230 = this.f3452;
        c0531.m5395(c0230.f1869, c0230.f2150);
        this.f3453.mo3111(c0531);
        C0107 c0107 = this.f3454;
        c0531.m5379(c0107.f2148, c0107.f2150);
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
