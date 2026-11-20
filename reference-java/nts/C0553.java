package nts;

public class C0553 extends AbstractC0565 {
    public C0553() {
        this.f2150 = 49;
    }

    @Override
    public C0418 mo3222() {
        return new C0418();
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        for (int i = 0; i < this.f3176.size(); i++) {
            if (!(this.f3176.get(i) instanceof C0418)) {
                throw new C0414(222, C0177.m3555(0, 46, 92));
            }
            ((C0418) this.f3176.get(i)).mo3111(c0531);
        }
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
