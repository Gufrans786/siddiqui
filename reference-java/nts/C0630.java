package nts;

public class C0630 extends C0418 {

    public C0199 f3478 = new C0199();

    public C0251 f3479 = new C0251();

    public C0630() {
        this.f2150 = 48;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f3478.mo3411(bArr, i);
        if (!this.f3478.f2145) {
            return iMo3411;
        }
        int iMo3412 = this.f3479.mo3411(bArr, iMo3411);
        return !this.f3479.f2145 ? iMo3412 : m4678(bArr, iMo3412);
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        this.f3478.mo3111(c0531);
        this.f3479.mo3111(c0531);
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
