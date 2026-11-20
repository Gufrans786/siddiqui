package nts;

public class C0405 extends C0418 {

    public C0667 f2104 = new C0667();

    public C0418 f2105 = new C0418();

    public C0405() {
        this.f2150 = 48;
        this.f2105.f2143 = false;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f2104.mo3411(bArr, i);
        if (!this.f2104.f2145) {
            return iMo3411;
        }
        int iMo3412 = this.f2105.mo3411(bArr, iMo3411);
        C0418 c0418 = this.f2105;
        if (!c0418.f2145) {
            return iMo3412;
        }
        c0418.m4679();
        return m4678(bArr, iMo3412);
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        c0531.m5384(this.f2104.f2701);
        this.f2105.mo3111(c0531);
        c0531.m5370();
        c0530.m5397(c0531.m5388());
    }
}
