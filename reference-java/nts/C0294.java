package nts;

public class C0294 extends C0418 {

    public C0230 f1528 = new C0230();

    public C0630 f1530 = new C0630();

    public C0350 f1531 = new C0350();

    public C0513 f1527 = new C0513();

    public C0424 f1529 = new C0424();

    public C0294() {
        this.f2150 = 48;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        int iMo3411 = this.f1528.mo3411(bArr, i);
        C0230 c0230 = this.f1528;
        if (!c0230.f2145) {
            return iMo3411;
        }
        int i2 = c0230.f1869;
        if (i2 == 0) {
            iMo3411 = this.f1530.mo3411(bArr, iMo3411);
            if (!this.f1530.f2145) {
                return iMo3411;
            }
        } else if (i2 == 2) {
            iMo3411 = this.f1531.mo3411(bArr, iMo3411);
            if (!this.f1531.f2145) {
                return iMo3411;
            }
        }
        int iMo3412 = this.f1527.mo3411(bArr, iMo3411);
        if (!this.f1527.f2145) {
            return iMo3412;
        }
        int iMo3413 = this.f1529.mo3411(bArr, iMo3412);
        return !this.f1529.f2145 ? iMo3413 : m4678(bArr, iMo3413);
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        C0230 c0230 = this.f1528;
        c0531.m5395(c0230.f1869, c0230.f2150);
        int i = this.f1528.f1869;
        if (i == 0) {
            this.f1530.mo3111(c0531);
        } else if (i == 2) {
            C0350 c0350 = this.f1531;
            c0531.m5379(c0350.f2148, c0350.f2150);
        }
        this.f1527.mo3111(c0531);
        C0424 c0424 = this.f1529;
        c0531.m5379(c0424.f2148, c0424.f2150);
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
