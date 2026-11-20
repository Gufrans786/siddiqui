package nts;

public class C0470 extends C0418 {

    public C0211 f2696 = new C0211();

    public C0211 f2697 = new C0211();

    public C0211 f2698 = new C0211();

    public C0470() {
        this.f2150 = 48;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f2696.mo3411(bArr, i);
        if (!this.f2696.f2145) {
            return iMo3411;
        }
        int iMo3412 = this.f2697.mo3411(bArr, iMo3411);
        if (!this.f2697.f2145) {
            return iMo3412;
        }
        int iMo3413 = this.f2698.mo3411(bArr, iMo3412);
        return !this.f2698.f2145 ? iMo3413 : m4678(bArr, iMo3413);
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        this.f2696.mo3111(c0531);
        this.f2697.mo3111(c0531);
        this.f2698.mo3111(c0531);
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
