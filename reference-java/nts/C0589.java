package nts;

import ch.qos.logback.classic.net.SyslogAppender;
import java.io.File;
import java.util.Vector;

public class C0589 extends C0283 implements InterfaceC0224 {
    @Override
    public C0590 mo3697(String str, byte[] bArr) {
        C0136 c0136 = null;
        for (int i = 0; i < this.f1480.size(); i++) {
            C0136 c0137 = (C0136) this.f1480.get(i);
            String strM4048 = C0283.m4048(c0137.f286);
            if (str.equals("*") || C0259.m3872(strM4048, str) || C0671.m5950(strM4048).equalsIgnoreCase(C0671.m5950(str)) || (c0136 == null && (strM4048.toLowerCase().indexOf(str.toLowerCase()) > -1 || C0671.m5950(strM4048).toLowerCase().indexOf(C0671.m5950(str.toLowerCase())) > -1))) {
                c0136 = c0137;
            }
            if (C0259.m3896(bArr, m4063(c0137.f286))) {
                c0136 = c0137;
            }
        }
        C0590 c0590 = new C0590();
        if (c0136 == null) {
            throw new C0414(272, C0128.m3231(286, 34, 106));
        }
        this.f1474 = C0283.m4048(c0136.f286);
        byte[] bArrM4063 = m4063(c0136.f286);
        c0590.m5573(bArrM4063);
        c0590.f3274 = m4059(c0136.f286);
        c0590.f3266 = m4055(c0136.f286);
        c0590.f3277 = m4058(c0136.f286);
        c0590.f3272 = m4053(c0136.f286);
        c0590.f3273 = C0671.m5959(c0136.f286.f793.f1731.f576.f714, true);
        c0590.f3264 = c0136.f291;
        c0590.f3265 = m4054(c0136.f286);
        C0671.m5921(c0136.f286.f793.f1731.f575);
        c0590.f3269 = m4060(c0136.f286);
        c0590.f3278 = C0671.m5918(c0136.f286.f793.f1732.f811.f2701);
        c0590.f3267 = this.f1474;
        c0590.f3270 = C0671.m5959(c0136.f286.f793.f1731.f585.f714, true);
        C0671.m5951(C0128.m3231(273, 3, 91), bArrM4063);
        c0590.f3268 = C0671.m5951(C0128.m3231(276, 4, 84), bArrM4063);
        c0590.f3271 = C0671.m5951(C0128.m3231(280, 6, 73), bArrM4063);
        m4056(c0136.f286);
        c0590.f3275 = c0136.f290;
        this.f1479 = c0590.f3279;
        return c0590;
    }

    @Override
    public void mo3700(int i, byte[] bArr, String str) throws Throwable {
        String strM3853;
        int iIndexOf;
        int iIndexOf2;
        byte b;
        if (i == 11) {
            String strM3854 = C0259.m3853(bArr);
            File file = new File(strM3854);
            if (!file.exists()) {
                throw new C0414(303, C0128.m3231(0, 21, 50) + file.getName() + ").");
            }
            try {
                bArr = C0671.m5919(strM3854);
            } catch (Exception unused) {
                throw new C0414(305, C0128.m3231(21, 21, 101) + file.getName() + ").");
            }
        }
        byte[] bArrM3902 = C0259.m3902(C0128.m3231(42, 21, 51));
        byte[] bArrM3903 = C0259.m3902(C0128.m3231(63, 19, 40));
        int length = bArrM3902.length;
        if (bArr != null && bArrM3902.length >= length && bArr.length >= length) {
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    int length2 = bArrM3902.length;
                    while (length2 < bArr.length && ((b = bArr[length2]) == 13 || b == 10)) {
                        length2++;
                    }
                    int length3 = (bArr.length - 1) - (bArrM3903.length - 1);
                    if (length3 < 0) {
                        length3 = -1;
                        break;
                    }
                    byte b2 = bArrM3903[0];
                    loop7: while (true) {
                        if (length3 <= -1) {
                            length3 = -1;
                            break;
                        }
                        if (bArr[length3] == b2) {
                            int i3 = 1;
                            while (true) {
                                if (i3 >= bArrM3903.length) {
                                    break loop7;
                                } else if (bArr[length3 + i3] != bArrM3903[i3]) {
                                    break;
                                } else {
                                    i3++;
                                }
                            }
                        }
                        length3--;
                    }
                    if (length3 < 0) {
                        throw new C0414(0, C0128.m3231(82, 50, 26));
                    }
                    int i4 = length3 - 1;
                    while (i4 >= 0) {
                        byte b3 = bArr[i4];
                        if (b3 != 13 && b3 != 10) {
                            break;
                        } else {
                            i4--;
                        }
                    }
                    bArr = C0259.m3877(C0259.m3865(bArr, length2, (i4 - length2) + 1));
                } else if (bArrM3902[i2] == bArr[i2]) {
                    i2++;
                } else if (C0259.m3881(bArr) && (iIndexOf = (strM3853 = C0259.m3853(bArr)).indexOf(C0128.m3231(132, 35, 10))) >= 0 && (iIndexOf2 = strM3853.indexOf(C0128.m3231(167, 33, 22), iIndexOf)) > iIndexOf) {
                    try {
                        bArr = C0259.m3876(strM3853.substring(C0128.m3231(200, 35, 127).length() + iIndexOf, iIndexOf2).replace("\r", "").replace("\n", "").replace(SyslogAppender.DEFAULT_STACKTRACE_PATTERN, "").replace(" ", ""));
                    } catch (Exception unused2) {
                    }
                }
            }
        } else if (C0259.m3881(bArr)) {
            bArr = C0259.m3876(strM3853.substring(C0128.m3231(200, 35, 127).length() + iIndexOf, iIndexOf2).replace("\r", "").replace("\n", "").replace(SyslogAppender.DEFAULT_STACKTRACE_PATTERN, "").replace(" ", ""));
        }
        C0302 c0302 = new C0302();
        c0302.m4680(bArr);
        C0418 c0418 = c0302.f1618.f1271;
        if (!(c0418 instanceof C0339)) {
            throw new C0414(271, C0128.m3231(235, 38, 56));
        }
        C0339 c0339 = (C0339) c0418;
        for (int i5 = 0; i5 < c0339.f1825.m5510(); i5++) {
            C0136 c0136 = new C0136();
            c0136.f286 = (C0213) c0339.f1825.m5511(i5);
            c0136.f291 = C0283.m4048(c0136.f286);
            this.f1480.add(c0136);
        }
        Vector vector = this.f1480;
        if (vector.size() <= 1) {
            return;
        }
        Vector vector2 = new Vector();
        C0136 c0136M5572 = (C0136) vector.get(0);
        vector.removeElementAt(0);
        vector2.add(c0136M5572);
        while (true) {
            c0136M5572 = m5572(c0136M5572, vector, true);
            if (c0136M5572 == null) {
                break;
            } else {
                vector2.insertElementAt(c0136M5572, 0);
            }
        }
        C0136 c0136M5573 = (C0136) vector2.get(0);
        while (true) {
            c0136M5573 = m5572(c0136M5573, vector, false);
            if (c0136M5573 == null) {
                break;
            } else {
                vector2.add(c0136M5573);
            }
        }
        vector.clear();
        for (int i6 = 0; i6 < vector2.size(); i6++) {
            vector.add(vector2.get(i6));
        }
    }

    public final C0136 m5572(C0136 c0136, Vector vector, boolean z) {
        String strM4048 = C0283.m4048(c0136.f286);
        String strM4053 = m4053(c0136.f286);
        int i = 0;
        if (z) {
            while (i < vector.size()) {
                C0136 c0137 = (C0136) vector.get(i);
                if (strM4053.equals(C0283.m4048(c0137.f286))) {
                    vector.removeElementAt(i);
                    return c0137;
                }
                i++;
            }
            return null;
        }
        while (i < vector.size()) {
            C0136 c0138 = (C0136) vector.get(i);
            if (strM4048.equals(m4053(c0138.f286))) {
                vector.removeElementAt(i);
                return c0138;
            }
            i++;
        }
        return null;
    }
}
