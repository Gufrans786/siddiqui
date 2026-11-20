package nts;

public class C0359 extends AbstractC0565 {
    public C0359() {
        this.f2150 = 49;
    }

    @Override
    public C0418 mo3222() {
        return new C0272();
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        this.f2148 = C0259.m3865(bArr, i, this.f2146);
        return super.mo3110(bArr, i);
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        for (int i = 0; i < this.f3176.size(); i++) {
            if (!(this.f3176.get(i) instanceof C0272)) {
                throw new C0414(222, C0177.m3555(46, 46, 91));
            }
            ((C0272) this.f3176.get(i)).mo3111(c0531);
        }
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
