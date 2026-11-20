package nts;

public class C0507 extends C0418 {

    public C0230 f2851 = new C0230();

    public C0291 f2852 = new C0291();

    public C0302 f2853;

    public C0507() {
        this.f2853 = new C0302();
        this.f2150 = 48;
        this.f2853 = new C0302(null);
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f2851.mo3411(bArr, i);
        if (!this.f2851.f2145) {
            return iMo3411;
        }
        int iMo3412 = this.f2852.mo3411(bArr, iMo3411);
        if (!this.f2852.f2145) {
            return iMo3412;
        }
        int iMo3413 = this.f2853.mo3411(bArr, iMo3412);
        return !this.f2853.f2145 ? iMo3413 : m4678(bArr, iMo3413);
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        C0230 c0230 = this.f2851;
        c0531.m5395(c0230.f1869, c0230.f2150);
        this.f2852.mo3111(c0531);
        this.f2853.mo3111(c0531);
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
