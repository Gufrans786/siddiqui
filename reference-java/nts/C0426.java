package nts;

public class C0426 extends C0418 {

    public C0374 f2189 = new C0374();

    public C0591 f2190 = new C0591();

    public C0426() {
        this.f2150 = 48;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f2189.mo3411(bArr, i);
        if (!this.f2189.f2145) {
            return iMo3411;
        }
        int iMo3412 = this.f2190.mo3411(bArr, iMo3411);
        return !this.f2190.f2145 ? iMo3412 : m4678(bArr, iMo3412);
    }

    @Override
    public void mo3111(C0530 c0530) {
        C0530 c0531 = new C0530();
        this.f2189.mo3111(c0531);
        this.f2190.mo3111(c0531);
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
