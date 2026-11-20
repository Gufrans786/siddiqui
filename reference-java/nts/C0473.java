package nts;

public class C0473 extends AbstractC0095 {

    public int f2707;

    public C0387 f2709 = new C0387();

    public C0387 f2702 = new C0387();

    public C0387 f2703 = new C0387();

    public C0387 f2706 = new C0387();

    public C0387 f2712 = new C0387();

    public C0387 f2704 = new C0387();

    public C0387 f2705 = new C0387();

    public C0387 f2708 = new C0387();

    public C0387 f2710 = new C0387();

    public C0387 f2711 = new C0387();

    public C0473() {
        m5142();
        this.f2707 = 0;
    }

    @Override
    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public void m5142() {
        this.f2709.m4541();
        this.f2702.m4541();
        this.f2703.m4541();
        this.f2706.m4541();
        this.f2712.m4541();
        this.f2704.m4541();
        this.f2705.m4541();
        this.f2708.m4541();
        this.f2710.m4541();
        this.f2711.m4541();
    }

    public boolean m5143() {
        return this.f2702.m4533() <= 0 && this.f2709.m4533() <= 0 && this.f2703.m4533() <= 0 && this.f2706.m4533() <= 0 && this.f2712.m4533() <= 0 && this.f2704.m4533() <= 0 && this.f2705.m4533() <= 0 && this.f2708.m4533() <= 0;
    }

    public void m5144(C0145 c0145) {
        if (this.f2709.m4533() > 0) {
            c0145.f336 = this.f2709.m4554();
        }
        if (this.f2702.m4533() > 0) {
            c0145.f334 = this.f2702.m4554();
        }
        if (this.f2708.m4533() > 0) {
            c0145.f335 = this.f2708.m4554();
        }
        if (this.f2703.m4533() > 0) {
            c0145.f331 = this.f2703.m4554();
        }
        if (this.f2706.m4533() > 0) {
            c0145.f333 = this.f2706.m4554();
        }
        if (this.f2712.m4533() > 0) {
            c0145.f329 = this.f2712.m4554();
        }
        if (this.f2704.m4533() > 0) {
            c0145.f330 = this.f2704.m4554();
        }
        if (this.f2705.m4533() > 0) {
            c0145.f332 = this.f2705.m4554();
        }
        C0308.m4241(c0145);
    }
}
