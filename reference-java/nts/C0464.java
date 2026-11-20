package nts;

public class C0464 extends C0418 {

    public C0624 f2671 = new C0624();

    public C0285 f2672 = new C0285();

    public C0446 f2673 = new C0446();

    public C0464() {
        this.f2150 = 48;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f2671.mo3411(bArr, i);
        if (!this.f2671.f2145) {
            return iMo3411;
        }
        int iMo3412 = this.f2672.mo3411(bArr, iMo3411);
        if (!this.f2672.f2145) {
            return iMo3412;
        }
        int iMo3413 = this.f2673.mo3411(bArr, iMo3412);
        return !this.f2673.f2145 ? iMo3413 : m4678(bArr, iMo3413);
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        this.f2671.mo3111(c0531);
        this.f2672.mo3111(c0531);
        C0446 c0446 = this.f2673;
        c0531.m5368(c0446.f2148, c0446.f2150);
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
