package nts;

public class C0271 extends C0418 {

    public C0230 f1379 = new C0230();

    public C0094 f1380 = new C0094();

    public C0271() {
        this.f2150 = 48;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f1379.mo3411(bArr, i);
        if (!this.f1379.f2145) {
            return iMo3411;
        }
        int iMo3412 = this.f1380.mo3411(bArr, iMo3411);
        return !this.f1380.f2145 ? iMo3412 : m4678(bArr, iMo3412);
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        C0230 c0230 = this.f1379;
        c0531.m5395(c0230.f1869, c0230.f2150);
        this.f1380.mo3111(c0531);
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
