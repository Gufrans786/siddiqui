package nts;

public class C0182 extends AbstractC0565 {
    public C0182() {
        this.f2150 = 49;
    }

    @Override
    public C0418 mo3222() {
        return new C0405();
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        for (int i = 0; i < this.f3176.size(); i++) {
            if (!(this.f3176.get(i) instanceof C0405)) {
                throw new C0414(222, C0177.m3555(92, 37, 73));
            }
            ((C0405) this.f3176.get(i)).mo3111(c0531);
        }
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
