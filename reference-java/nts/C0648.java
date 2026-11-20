package nts;

public class C0648 extends AbstractC0095 {

    public C0158 f3629 = new C0158();

    public C0387 f3627 = new C0387();

    public C0387 f3628 = new C0387();

    @Override
    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public boolean m5856() {
        return !this.f3629.m3428();
    }

    public void m5857() {
        this.f3629.m3441();
        this.f3627.m4541();
        this.f3628.m4541();
        m5861(0);
    }

    public int m5858() {
        return this.f3629.f488;
    }

    public boolean m5859() {
        return (this.f3629.m3432() || this.f3629.m3428()) ? false : true;
    }

    public void m5860() {
        this.f3627.m4532();
        this.f3628.m4532();
    }

    public void m5861(int i) {
        this.f3629.f488 = i;
    }

    public void m5862(C0158 c0158, boolean z) {
        this.f3629.m3445(c0158, z);
    }

    public void m5863(C0648 c0648) {
        this.f3629.m3445(c0648.f3629, false);
    }
}
