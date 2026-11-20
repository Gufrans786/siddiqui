package nts;

public class C0607 extends C0418 {

    public C0247 f3331 = new C0247();

    public C0247 f3332 = new C0247();

    public C0607() {
        this.f2150 = 48;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f3331.mo3411(bArr, i);
        if (!this.f3331.f2145) {
            return iMo3411;
        }
        int iMo3412 = this.f3332.mo3411(bArr, iMo3411);
        return !this.f3332.f2145 ? iMo3412 : m4678(bArr, iMo3412);
    }

    @Override
    public void mo3111(C0530 c0530) {
        C0530 c0531 = new C0530();
        C0247 c0247 = this.f3331;
        c0531.m5379(C0259.m3858(c0247.f902), c0247.f2150);
        C0247 c0248 = this.f3332;
        c0531.m5379(C0259.m3858(c0248.f902), c0248.f2150);
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
