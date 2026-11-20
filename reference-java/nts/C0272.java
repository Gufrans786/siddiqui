package nts;

public class C0272 extends C0418 {

    public C0667 f1381 = new C0667();

    public C0553 f1382 = new C0553();

    public C0272() {
        this.f2150 = 48;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f1381.mo3411(bArr, i);
        if (!this.f1381.f2145) {
            return iMo3411;
        }
        int iMo3412 = this.f1382.mo3411(bArr, iMo3411);
        return !this.f1382.f2145 ? iMo3412 : m4678(bArr, iMo3412);
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        c0531.m5384(this.f1381.f2701);
        this.f1382.mo3111(c0531);
        c0531.m5370();
        c0530.m5397(c0531.m5388());
    }
}
