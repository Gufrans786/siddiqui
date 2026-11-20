package nts;

public class C0319 extends C0418 {

    public C0211 f1704 = new C0211();

    public C0211 f1705 = new C0211();

    public C0319() {
        this.f2150 = 48;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f1704.mo3411(bArr, i);
        if (!this.f1704.f2145) {
            return iMo3411;
        }
        int iMo3412 = this.f1705.mo3411(bArr, iMo3411);
        return !this.f1705.f2145 ? iMo3412 : m4678(bArr, iMo3412);
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        this.f1704.mo3111(c0531);
        this.f1705.mo3111(c0531);
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
