package nts;

import ch.qos.logback.core.net.SyslogConstants;

public class C0175 extends C0418 {

    public C0263 f577 = new C0263(SyslogConstants.LOG_LOCAL4);

    public C0251 f582 = new C0251();

    public C0222 f584 = new C0222();

    public C0199 f576 = new C0199();

    public C0607 f580 = new C0607();

    public C0199 f585 = new C0199();

    public C0511 f575 = new C0511();

    public C0107 f586 = new C0107();

    public C0107 f583 = new C0107();

    public C0107 f579 = new C0107();

    public boolean f581 = false;

    public boolean f574 = false;

    public boolean f578 = false;

    public C0175() {
        this.f2150 = 48;
        C0107 c0107 = this.f586;
        c0107.f2150 = 161;
        C0107 c0108 = this.f583;
        c0108.f2150 = 162;
        C0107 c0109 = this.f579;
        c0109.f2150 = 163;
        c0107.f2147 = false;
        c0108.f2147 = false;
        c0109.f2147 = false;
        this.f577.f1271 = new C0230();
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        if (i >= bArr.length) {
            return i;
        }
        if ((bArr[i] & 255) == 160) {
            i = this.f577.mo3411(bArr, i);
        } else {
            C0263 c0263 = this.f577;
            if (!c0263.f2145) {
                c0263.f2147 = false;
            }
        }
        int iMo3411 = this.f582.mo3411(bArr, i);
        if (!this.f582.f2145) {
            return iMo3411;
        }
        int iMo3412 = this.f584.mo3411(bArr, iMo3411);
        if (!this.f584.f2145) {
            return iMo3412;
        }
        int iMo3413 = this.f576.mo3411(bArr, iMo3412);
        if (!this.f576.f2145) {
            return iMo3413;
        }
        int iMo3414 = this.f580.mo3411(bArr, iMo3413);
        if (!this.f580.f2145) {
            return iMo3414;
        }
        int iMo3415 = this.f585.mo3411(bArr, iMo3414);
        if (!this.f585.f2145) {
            return iMo3415;
        }
        int iMo3416 = this.f575.mo3411(bArr, iMo3415);
        if (this.f575.f2145) {
            if (!this.f581) {
                if (iMo3416 < bArr.length) {
                    if ((bArr[iMo3416] & 255) == 161) {
                        this.f586.f2147 = true;
                    }
                    this.f581 = true;
                }
            }
            C0107 c0107 = this.f586;
            if (c0107.f2147) {
                iMo3416 = c0107.mo3411(bArr, iMo3416);
            }
            if (!this.f574) {
                if (iMo3416 >= bArr.length) {
                    return iMo3416;
                }
                if ((bArr[iMo3416] & 255) == 162) {
                    this.f583.f2147 = true;
                }
                this.f574 = true;
            }
            C0107 c0108 = this.f583;
            if (c0108.f2147) {
                iMo3416 = c0108.mo3411(bArr, iMo3416);
            }
            if (!this.f578) {
                if (iMo3416 >= bArr.length) {
                    return iMo3416;
                }
                if ((bArr[iMo3416] & 255) == 163) {
                    this.f579.f2147 = true;
                }
                this.f578 = true;
            }
            C0107 c0109 = this.f579;
            if (c0109.f2147) {
                iMo3416 = c0109.mo3411(bArr, iMo3416);
            }
            return m4678(bArr, iMo3416);
        }
        return iMo3416;
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        C0263 c0263 = this.f577;
        if (c0263.f2147) {
            c0263.mo3111(c0531);
        }
        this.f582.mo3111(c0531);
        this.f584.mo3111(c0531);
        this.f576.mo3111(c0531);
        this.f580.mo3111(c0531);
        this.f585.mo3111(c0531);
        this.f575.mo3111(c0531);
        c0531.f3091 = this.f2150;
        C0107 c0107 = this.f586;
        if (c0107.f2147) {
            c0107.f2150 = 161;
            c0531.m5379(c0107.f2148, c0107.f2150);
        }
        C0107 c0108 = this.f583;
        if (c0108.f2147) {
            c0108.f2150 = 162;
            c0531.m5379(c0108.f2148, c0108.f2150);
        }
        C0107 c0109 = this.f579;
        if (c0109.f2147) {
            c0109.f2150 = 163;
            c0531.m5379(c0109.f2148, c0109.f2150);
        }
        c0530.m5397(c0531.m5388());
    }
}
