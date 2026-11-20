package nts;

public class C0289 extends C0418 {

    public String f1501;

    public byte[] f1502;

    public C0289() {
        this.f2150 = 48;
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        c0531.m5370();
        c0531.m5396(C0458.f2650);
        c0531.m5396(this.f1501);
        C0530 c0532 = new C0530();
        c0532.m5370();
        c0532.m5397(c0531.m5388());
        c0532.m5386(this.f1502, 3);
        c0530.m5397(c0532.m5388());
    }
}
