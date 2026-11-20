package nts;

public class C0216 extends C0418 {

    public C0260 f798 = new C0260();

    public C0416 f799 = new C0416();

    public C0216() {
        this.f2150 = 48;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f798.mo3411(bArr, i);
        if (!this.f798.f2145) {
            return iMo3411;
        }
        int iMo3412 = this.f799.mo3411(bArr, iMo3411);
        return !this.f799.f2145 ? iMo3412 : m4678(bArr, iMo3412);
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        this.f798.mo3111(c0531);
        C0416 c0416 = this.f799;
        c0531.m5379(c0416.f2148, c0416.f2150);
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
