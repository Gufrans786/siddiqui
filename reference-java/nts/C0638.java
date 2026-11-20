package nts;

import androidx.appcompat.app.AppCompatDelegate;
import ch.qos.logback.core.net.SyslogConstants;
import java.io.OutputStream;
import java.util.Vector;
import okhttp3.internal.ws.WebSocketProtocol;

public class C0638 {

    public static final String f3494 = C0164.m3497(10382, 24, 49);

    public C0639 f3511;

    public C0531 f3506 = new C0531();

    public C0531 f3497 = new C0531();

    public C0517 f3504 = null;

    public boolean f3495 = false;

    public int f3496 = 1;

    public int f3500 = 4096;

    public int f3510 = 0;

    public int f3498 = 100;

    public int f3499 = 2097152;

    public int f3503 = 65535;

    public int f3507 = 16384;

    public int f3508 = 65535;

    public int f3502 = 65535;

    public String f3505 = "";

    public int f3509 = 0;

    public long f3501 = 0;

    public C0638(C0639 c0639) {
        this.f3511 = null;
        this.f3511 = c0639;
        m5749();
    }

    public int m5739() {
        return this.f3499;
    }

    public boolean m5740() {
        return this.f3495;
    }

    public String m5741() {
        return this.f3505;
    }

    public void m5743() {
        C0639 c0639 = this.f3511;
        byte[] bArrM5718 = c0639.f1725.m5718(f3494);
        c0639.m4408(bArrM5718, 0, bArrM5718.length, 1, (OutputStream) null);
        C0229 c0229 = new C0229();
        c0229.f828 = this.f3498;
        c0229.f824 = this.f3499;
        m5756(c0229.mo3261());
        m5748(C0663.m5887(new StringBuilder().append(C0164.m3497(10406, 40, SyslogConstants.LOG_CLOCK)), c0229.f1897, ")."), C0517.f2968);
        C0618 c0618 = new C0618();
        c0618.f3379 = this.f3499;
        m5756(c0618.mo3261());
        m5748(C0663.m5887(new StringBuilder().append(C0164.m3497(10446, 44, 34)), c0618.f1897, ")."), C0517.f2968);
        this.f3508 += this.f3499;
        this.f3495 = true;
    }

    public int m5744() {
        return this.f3509;
    }

    public void m5745(int i) {
    }

    public void m5747(int i) {
        this.f3499 = i;
    }

    public void m5749() {
        this.f3504 = null;
        this.f3506.m5405();
        this.f3497.m5405();
        this.f3500 = 4096;
        this.f3510 = 0;
        this.f3498 = 100;
        this.f3503 = 65535;
        this.f3495 = false;
        this.f3496 = 1;
        this.f3508 = 65535;
    }

    public void m5753(String str) {
        this.f3505 = str;
    }

    public void m5742(int i) {
        this.f3507 = i;
    }

    public void m5746() {
        C0517 c0517 = this.f3504;
        if (c0517.f2977 != null) {
            if (c0517.f2971 != 6) {
                new C0357();
                int i = c0517.f2971;
                if (i == 6) {
                    throw new C0414(1, C0663.m5889(c0517, c0517.f2971, new StringBuilder().append(C0164.m3509(2813, 54, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR)), " ."));
                }
                if (i == 1 || i == 2 || i == 3 || i == 5 || i == 4) {
                    c0517.f2971 = 6;
                }
                C0323 c0323 = new C0323();
                c0323.f1896 = c0517.f2974;
                c0323.f1734 = 8;
                c0517.m5252(c0323);
            }
            c0517.f2971 = 0;
            c0517.f2972.m4169();
            c0517.f2976.clear();
        }
    }

    public void m5751(int i) {
        this.f3509 = i;
    }

    public void m5755(Vector vector, boolean z) {
        C0517 c0517 = new C0517(this);
        this.f3504 = c0517;
        c0517.f2974 = this.f3496;
        c0517.m5251(vector, z);
        this.f3496 += 2;
    }

    public void m5758(byte[] bArr, int i, int i2, boolean z) {
        C0517 c0517 = this.f3504;
        if (c0517.f2977 != null) {
            int i3 = c0517.f2971;
            if (i3 != 2 && i3 != 3 && i3 != 5 && i3 != 6) {
                C0243 c0243 = new C0243();
                if (z) {
                    c0243.f1895 |= 1;
                }
                c0243.f1897 = 0;
                c0243.f1896 = c0517.f2974;
                c0243.f900 = new byte[i2];
                if (i2 > 0) {
                    System.arraycopy(bArr, 0, c0243.f900, 0, i2);
                }
                byte[] bArrMo3261 = c0243.mo3261();
                c0517.f2977.m5748(C0663.m5887(new StringBuilder().append(C0164.m3509(2591, 26, WebSocketProtocol.PAYLOAD_SHORT)).append(c0517.m5246(c0243.f1897)).append("("), c0243.f1897, ")."), C0517.f2968);
                while (c0517.f2969 < c0243.f1898) {
                    c0517.f2977.f3511.mo5626();
                }
                boolean zM3792 = c0243.m3792();
                if (zM3792) {
                    c0517.f2977.m5757(bArrMo3261, 0, bArrMo3261.length, 1);
                } else {
                    c0517.f2977.m5757(bArrMo3261, 0, bArrMo3261.length, 2);
                }
                int i4 = c0517.f2969;
                int i5 = c0243.f1898;
                c0517.f2969 = i4 - i5;
                c0517.f2977.f3502 -= i5;
                if (zM3792) {
                    int i6 = c0517.f2971;
                    if (i6 == 1) {
                        c0517.f2971 = 5;
                        return;
                    } else {
                        if (i6 == 4) {
                            c0517.f2971 = 6;
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            throw new C0414(1, C0663.m5889(c0517, c0517.f2971, new StringBuilder().append(C0164.m3509(2542, 49, 84)), "."));
        }
    }

    public void m5748(String str, String str2) {
        this.f3511.mo5044(str, str2);
    }

    public void m5750() {
        m5749();
    }

    public void m5756(byte[] bArr) {
        if (this.f3509 > 0) {
            this.f3501 = System.currentTimeMillis() + ((long) (this.f3509 * 1000));
        }
        m5757(bArr, 0, bArr.length, 1);
    }

    public void m5757(byte[] bArr, int i, int i2, int i3) {
        if (this.f3509 > 0) {
            this.f3501 = System.currentTimeMillis() + ((long) (this.f3509 * 1000));
        }
        this.f3511.m3397(bArr, i, i2, i3, 65536);
    }

    public void m5752(int i, Object obj) {
        this.f3511.m5833(i, obj);
    }

    public void m5754(String str, String str2) {
        this.f3511.mo4950(str, str2);
    }
}
