package nts;

public class C0417 extends AbstractC0565 {
    public C0417() {
        this.f2150 = 48;
    }

    @Override
    public C0418 mo3222() {
        return new C0134();
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        for (int i = 0; i < this.f3176.size(); i++) {
            if (!(this.f3176.get(i) instanceof C0134)) {
                throw new C0414(222, C0558.m5481("l@J^\u001cK_SYUSG]ZX\u0017M[XD^\rGA\u0000qPJRDRBS|cZhilvrdfvg;uYSG\u0005RFJ@LJ^DCA\u000eTBA]G\u0014^X\u0019wORXNoLhmfKkbhu'", 46, 41, 38));
            }
            ((C0272) this.f3176.get(i)).mo3111(c0531);
        }
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
