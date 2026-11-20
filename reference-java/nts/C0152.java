package nts;

import ch.qos.logback.core.net.SyslogConstants;
import com.google.common.base.Ascii;

public class C0152 extends C0418 {

    public String f455 = "";

    public int f456 = 0;

    public C0152() {
        this.f2150 = SyslogConstants.LOG_LOCAL4;
    }

    @Override
    public int mo3411(byte[] bArr, int i) {
        C0418 c0214;
        if (i < bArr.length) {
            int i2 = bArr[i] & Ascii.SI;
            this.f456 = i2;
            if (i2 == 0) {
                c0214 = new C0214();
            } else if (i2 == 1 || i2 == 2 || i2 == 6) {
                c0214 = new C0637();
            } else {
                c0214 = i2 != 7 ? null : new C0591();
            }
            this.f2150 = i2 | 128;
            c0214.f2150 = bArr[i] & 255;
            int iMo3411 = c0214.mo3411(bArr, i);
            if (c0214.f2145) {
                if (i2 == 0) {
                    C0214 c0215 = (C0214) c0214;
                    if (c0215.f796.f2701.equals(C0458.f2608)) {
                        byte[] bArr2 = c0215.f797.f1271.f2148;
                        int i3 = 0;
                        while (i3 < bArr2.length && bArr2[i3] != 0) {
                            i3++;
                        }
                        this.f455 = C0259.m3842(bArr2, 0, i3);
                    } else if (i2 == 7) {
                        this.f455 = C0259.m3882(c0214.f2148);
                    } else {
                        if (c0214.f2148.length == 4) {
                            throw new C0414(446, C0177.m3555(845, 15, 66));
                        }
                        this.f455 = (c0214.f2148[0] & 255) + "." + (c0214.f2148[1] & 255) + "." + (c0214.f2148[2] & 255) + "." + (c0214.f2148[3] & 255);
                    }
                } else if (i2 == 7) {
                    this.f455 = C0259.m3882(c0214.f2148);
                } else {
                    if (c0214.f2148.length == 4) {
                        throw new C0414(446, C0177.m3555(845, 15, 66));
                    }
                    this.f455 = (c0214.f2148[0] & 255) + "." + (c0214.f2148[1] & 255) + "." + (c0214.f2148[2] & 255) + "." + (c0214.f2148[3] & 255);
                }
                this.f2141 = c0214.f2141;
                this.f2146 = c0214.f2146;
                return m4678(bArr, iMo3411);
            }
        }
        return i;
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0530 c0531 = new C0530();
        int i = this.f2150;
        c0531.f3091 = i;
        int i2 = i & 15;
        this.f456 = i2;
        if (i2 == 1 || i2 == 2 || i2 == 6) {
            c0531.m5400(this.f455.getBytes());
        } else {
            if (i2 != 7) {
                throw new C0414(C0177.m3555(815, 15, 81) + this.f2150 + C0177.m3555(830, 15, 82));
            }
            String[] strArrM3852 = C0259.m3852(this.f455, ".");
            if (strArrM3852.length != 4) {
                throw new C0414(this.f455 + C0177.m3555(801, 14, 66));
            }
            c0531.m5400(new byte[]{(byte) (Integer.parseInt(strArrM3852[0]) & 255), (byte) (Integer.parseInt(strArrM3852[1]) & 255), (byte) (Integer.parseInt(strArrM3852[2]) & 255), (byte) (Integer.parseInt(strArrM3852[3]) & 255)});
        }
        c0530.m5397(c0531.m5388());
    }
}
