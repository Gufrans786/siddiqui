package nts;

public class C0340 extends C0418 {

    public C0158 f1832;

    public C0340() {
        this.f2150 = 48;
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        byte[] bArr;
        C0530 c0531 = new C0530();
        c0531.m5370();
        c0531.m5396(C0458.f2650);
        c0531.m5396(this.f1832.m3437());
        C0530 c0532 = new C0530();
        c0532.m5370();
        c0532.m5394(1);
        c0532.m5379(this.f1832.f491, 4);
        C0158 c0158 = this.f1832;
        byte[] bArr2 = c0158.f490;
        if (bArr2 != null && (bArr = c0158.f487) != null && bArr2.length > 0 && bArr.length > 0) {
            byte[] bArrM3447 = c0158.m3447(false);
            C0530 c0533 = new C0530();
            c0533.m5383(161);
            c0533.m5386(bArrM3447, 3);
            c0533.m5362();
            c0532.m5398(c0533);
        }
        C0530 c0534 = new C0530();
        c0534.m5370();
        c0534.m5394(0);
        c0534.m5397(c0531.m5388());
        c0534.m5379(c0532.m5376(), 4);
        c0530.m5397(c0534.m5388());
    }
}
