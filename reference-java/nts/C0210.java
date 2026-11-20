package nts;

public class C0210 extends C0418 {

    public C0351 f787 = new C0351();

    public C0591 f788 = new C0591();

    public C0210() {
        this.f2150 = 48;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f787.mo3411(bArr, i);
        if (!this.f787.f2145) {
            return iMo3411;
        }
        int iMo3412 = this.f788.mo3411(bArr, iMo3411);
        return !this.f788.f2145 ? iMo3412 : m4678(bArr, iMo3412);
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        C0351 c0351 = this.f787;
        c0531.m5395(c0351.f1869, c0351.f2150);
        this.f788.mo3111(c0531);
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
