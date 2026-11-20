package nts;

public class C0581 extends C0418 {

    public String f3249;

    public byte[] f3250;

    public byte[] f3251;

    public C0581() {
        this.f2150 = 48;
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        byte[] bArr = this.f3251;
        int i = (bArr == null || bArr.length <= 0) ? 0 : 1;
        C0530 c0531 = new C0530();
        c0531.m5393();
        c0531.m5394(i);
        c0531.m5393();
        c0531.m5396(this.f3249);
        c0531.m5363();
        c0531.m5383(4);
        c0531.m5379(this.f3250, 4);
        c0531.m5362();
        if (i != 0) {
            c0531.m5379(this.f3251, 129);
        }
        c0531.m5363();
        c0530.m5397(c0531.m5388());
    }
}
