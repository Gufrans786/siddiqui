package nts;

public class C0420 extends AbstractC0565 {
    public C0420() {
        this.f2150 = 48;
    }

    @Override
    public C0418 mo3222() {
        return new C0152();
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        for (int i = 0; i < this.f3176.size(); i++) {
            if (!(this.f3176.get(i) instanceof C0152)) {
                throw new C0414(222, C0177.m3555(765, 36, 19));
            }
            ((C0152) this.f3176.get(i)).mo3111(c0531);
        }
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
