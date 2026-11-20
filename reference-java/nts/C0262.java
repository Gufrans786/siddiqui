package nts;

public class C0262 extends C0418 {

    public C0230 f1268 = new C0230();

    public C0467 f1269 = new C0467();

    public C0094 f1270;

    public C0262() {
        this.f2150 = 48;
        this.f1270 = new C0094(null);
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f1268.mo3411(bArr, i);
        if (!this.f1268.f2145) {
            return iMo3411;
        }
        int iMo3412 = this.f1269.mo3411(bArr, iMo3411);
        if (!this.f1269.f2145) {
            return iMo3412;
        }
        int iMo3413 = this.f1270.mo3411(bArr, iMo3412);
        return !this.f1270.f2145 ? iMo3413 : m4678(bArr, iMo3413);
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        C0230 c0230 = this.f1268;
        c0531.m5395(c0230.f1869, c0230.f2150);
        this.f1269.mo3111(c0531);
        this.f1270.mo3111(c0531);
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
