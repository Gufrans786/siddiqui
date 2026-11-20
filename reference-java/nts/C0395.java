package nts;

import ch.qos.logback.core.net.SyslogConstants;

public class C0395 extends C0418 {

    public C0260 f2064 = new C0260();

    public C0546 f2065 = new C0546();

    public C0351 f2066 = new C0351();

    public C0351 f2063 = new C0351();

    public C0395() {
        C0260 c0260 = this.f2064;
        c0260.f811.f2701 = C0458.f2628;
        c0260.f812.f2147 = false;
        this.f2066.f1869 = 20;
        this.f2063.f1869 = 1;
        this.f2150 = 48;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        if ((bArr[i] & 255) == 160) {
            C0418 c0418 = new C0418();
            c0418.f2150 = SyslogConstants.LOG_LOCAL4;
            i = c0418.mo3411(bArr, i);
            this.f2064.m4680(c0418.f2148);
        }
        if (m4677(bArr, i) == 161) {
            C0418 c0419 = new C0418();
            c0419.f2150 = 161;
            i = c0419.mo3411(bArr, i);
            this.f2065.m4680(c0419.f2148);
        }
        if (m4677(bArr, i) == 162) {
            C0418 c04110 = new C0418();
            c04110.f2150 = 162;
            i = c04110.mo3411(bArr, i);
            this.f2066.m4680(c04110.f2148);
        }
        if (m4677(bArr, i) == 163) {
            C0418 c04111 = new C0418();
            c04111.f2150 = 163;
            i = c04111.mo3411(bArr, i);
            this.f2063.m4680(c04111.f2148);
        }
        this.f2145 = true;
        return i;
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0260 c0260;
        C0530 c0531 = new C0530();
        C0260 c0261 = this.f2064;
        if (c0261 != null && !c0261.f811.f2701.equals(C0458.f2628)) {
            C0530 c0532 = new C0530();
            this.f2064.mo3111(c0532);
            c0532.f3091 = SyslogConstants.LOG_LOCAL4;
            c0531.m5397(c0532.m5388());
        }
        C0546 c0546 = this.f2065;
        if (c0546 != null && (c0260 = c0546.f3141) != null && !c0260.f811.f2701.equals(C0458.f2628)) {
            C0530 c0533 = new C0530();
            this.f2065.mo3111(c0533);
            c0533.f3091 = 161;
            c0531.m5397(c0533.m5388());
        }
        C0530 c0534 = new C0530();
        C0351 c0351 = this.f2066;
        c0534.m5395(c0351.f1869, c0351.f2150);
        c0534.f3091 = 162;
        c0531.m5397(c0534.m5388());
        C0530 c0535 = new C0530();
        C0351 c0352 = this.f2063;
        c0535.m5395(c0352.f1869, c0352.f2150);
        c0535.f3091 = 163;
        c0531.m5397(c0535.m5388());
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
