package nts;

import ch.qos.logback.core.net.SyslogConstants;

public class C0127 extends C0472 {

    public C0222 f250 = new C0222();

    public C0546 f251 = new C0546();

    public C0222 f249 = new C0222();

    public C0127() {
        this.f2150 = 48;
        this.f250.f811.f2701 = C0458.f2628;
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        if ((bArr[i] & 255) == 160) {
            C0418 c0418 = new C0418();
            c0418.f2150 = SyslogConstants.LOG_LOCAL4;
            i = c0418.mo3411(bArr, i);
            C0222 c0222 = new C0222();
            this.f250 = c0222;
            c0222.m4680(c0418.f2148);
        }
        if (m4677(bArr, i) == 161) {
            C0418 c0419 = new C0418();
            c0419.f2150 = 161;
            i = c0419.mo3411(bArr, i);
            C0546 c0546 = new C0546();
            this.f251 = c0546;
            c0546.m4680(c0419.f2148);
        }
        if (m4677(bArr, i) == 162) {
            C0418 c04110 = new C0418();
            c04110.f2150 = 162;
            i = c04110.mo3411(bArr, i);
            C0222 c0223 = new C0222();
            this.f249 = c0223;
            c0223.m4680(c04110.f2148);
        }
        this.f2145 = true;
        return i;
    }

    @Override
    public void mo3155() {
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        if (!this.f250.f811.f2701.equals(C0458.f2628)) {
            C0530 c0532 = new C0530();
            this.f250.mo3111(c0532);
            c0532.f3091 = SyslogConstants.LOG_LOCAL4;
            c0531.m5397(c0532.m5388());
        }
        if (!this.f251.f3141.f811.f2701.equals(C0458.f2628)) {
            C0530 c0533 = new C0530();
            this.f251.mo3111(c0533);
            c0533.f3091 = 161;
            c0531.m5397(c0533.m5388());
        }
        C0530 c0534 = new C0530();
        this.f249.mo3111(c0534);
        c0534.f3091 = 162;
        c0531.m5397(c0534.m5388());
        c0531.f3091 = this.f2150;
        c0530.m5397(c0531.m5388());
    }
}
