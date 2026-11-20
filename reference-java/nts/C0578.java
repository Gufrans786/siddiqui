package nts;

import ch.qos.logback.core.net.SyslogConstants;
import java.util.Vector;

public class C0578 {

    public String f3237;

    public C0433 f3238;

    public C0538 f3239;

    public Vector f3241 = new Vector();

    public Vector f3240 = new Vector();

    public C0578() {
        byte[] bArr = C0320.f1706;
        this.f3238 = null;
        this.f3239 = null;
        this.f3237 = "";
    }

    public void m5554(byte[] bArr, String str) throws C0414 {
        int iM5389;
        byte[] bArrM4300;
        byte[] bArrM5556;
        C0530 c0530;
        int i;
        int i2;
        C0433 c0433;
        C0530 c0530M5365;
        int iM53810;
        byte[] bArrM5373;
        int i3;
        C0530 c0531;
        C0530 c0530M5366;
        C0222 c0222;
        int i4;
        if (bArr == null || bArr.length == 0) {
            return;
        }
        this.f3237 = str;
        C0530 c0532 = new C0530(bArr);
        c0532.m5366();
        if (c0532.m5382() < 2) {
            throw new C0414(447, C0164.m3495(18202, 13, 90));
        }
        c0532.m5365(0).m5366();
        if (c0532.m5365(0).m5382() != 2) {
            throw new C0414(447, C0164.m3495(18215, 13, 66));
        }
        C0222 c0223 = new C0222();
        c0223.m4680(c0532.m5365(0).m5365(0).f3099);
        if (!c0223.f811.f2701.equals(C0164.m3495(18228, 21, 2))) {
            throw new C0414(C0164.m3495(18249, 53, 14));
        }
        c0532.m5365(0).m5365(1).m5366();
        byte[] bArrM5374 = c0532.m5365(0).m5365(1).m5373();
        c0532.m5365(1).m5366();
        if (c0532.m5365(1).m5382() != 3) {
            throw new C0414(447, C0164.m3495(18302, 13, 42));
        }
        C0222 c0224 = new C0222();
        c0224.m4680(c0532.m5365(1).m5365(0).f3099);
        String str2 = c0224.f811.f2701;
        C0222 c0225 = new C0222();
        c0225.m4680(c0532.m5365(1).m5365(1).f3099);
        c0532.m5365(1).m5365(2).m5366();
        byte[] bArrM5375 = c0532.m5365(1).m5365(2).m5373();
        byte[] bArr2 = c0532.m5365(0).f3099;
        C0222 c0226 = new C0222();
        if (!c0225.f811.f2701.equals(C0164.m3495(18668, 21, 62))) {
            throw new C0414(C0164.m3495(18689, 38, 37));
        }
        C0530 c0533 = new C0530(c0225.f812.mo3690());
        c0533.m5378();
        byte[] bArrM5376 = c0533.m5365(0).m5373();
        int iM53811 = c0533.m5365(1).m5389();
        try {
            if (c0533.m5382() != 3) {
                if (c0533.m5382() == 4) {
                    iM5389 = c0533.m5365(2).m5389();
                    c0226.m4680(c0533.m5365(3).f3099);
                }
                if (str2.equals(C0164.m3495(18727, 19, 64))) {
                    throw new C0414(C0164.m3495(18746, 16, 77) + str2 + C0164.m3495(18762, 19, 11));
                }
                AbstractC0403 abstractC0403M4223 = C0308.m4223(C0164.m3495(18781, 10, 93));
                abstractC0403M4223.mo4637(m5555(C0164.m3495(18791, 15, SyslogConstants.LOG_CLOCK), bArrM5376, iM53811, iM5389, c0226.f811.f2701));
                bArrM4300 = abstractC0403M4223.m4300(bArr2);
                if (C0259.m3896(bArrM5375, bArrM4300)) {
                    throw new C0414(C0164.m3495(18315, 49, 48));
                }
                bArrM5556 = m5556(bArrM5374, C0164.m3495(18364, 16, 106), c0223.f812);
                if (bArrM5556 != null) {
                    throw new C0414(C0164.m3495(18380, 17, 70));
                }
                c0530 = new C0530(bArrM5556);
                c0530.m5366();
                c0530.m5365(0).m5389();
                C0259.m3882(c0530.m5365(2).m5373());
                C0259.m3882(c0530.m5365(3).m5373());
                c0530.m5365(4).m5366();
                i2 = 0;
                while (i2 < c0530.m5365(i).m5382()) {
                    c0530.m5365(i).m5365(i2).m5366();
                    c0530M5365 = c0530.m5365(i).m5365(i2);
                    iM53810 = c0530M5365.m5365(0).m5389();
                    C0259.m3853(c0530M5365.m5365(1).m5373());
                    C0259.m3882(c0530M5365.m5365(2).m5373());
                    C0259.m3882(c0530M5365.m5365(3).m5373());
                    bArrM5373 = c0530M5365.m5365(4).m5373();
                    if (c0530M5365.m5382() == 6) {
                        C0259.m3853(c0530M5365.m5365(5).m5373());
                    }
                    if (iM53810 != 1 || iM53810 == 3) {
                        i3 = 4;
                        c0531 = new C0530(bArrM5373);
                        c0531.m5366();
                        c0531.m5365(0).m5366();
                        c0530M5366 = c0531.m5365(0);
                        c0222 = new C0222();
                        c0222.m4680(c0530M5366.m5365(0).f3099);
                        if (c0222.f811.f2701.equals(C0164.m3495(18561, 21, 27))) {
                            throw new C0414(C0164.m3495(18582, 53, 78));
                        }
                        byte[] bArrM5557 = m5556(c0530M5366.m5365(1).m5373(), C0164.m3495(18635, 22, 25), c0222.f812);
                        C0593 c0593 = new C0593();
                        c0593.m4680(bArrM5557);
                        String str3 = c0593.f3283.f811.f2701;
                        this.f3240.add(C0259.m3892(C0259.m3878(c0593.mo3690(), C0164.m3495(18657, 11, 55))));
                        c0531.m5365(1).m5366();
                        for (i4 = 0; i4 < c0531.m5365(1).m5382(); i4++) {
                            C0213 c0213 = new C0213();
                            c0213.m4680(c0531.m5365(1).m5365(i4).f3099);
                            this.f3241.add(c0213);
                        }
                    } else {
                        i3 = 4;
                        if (iM53810 != 2 && iM53810 != 4) {
                            throw new C0414(C0164.m3495(18402, 64, 87));
                        }
                        C0530 c0534 = new C0530(bArrM5373);
                        c0534.m5366();
                        C0222 c0227 = new C0222();
                        c0227.m4680(c0534.m5365(0).f3099);
                        if (!c0227.f811.f2701.equals(C0164.m3495(18466, 21, 78))) {
                            throw new C0414(C0164.m3495(18487, 53, 27));
                        }
                        C0530 c0535 = new C0530(m5556(c0534.m5365(1).m5373(), C0164.m3495(18540, 21, 88), c0227.f812));
                        c0535.m5378();
                        c0535.m5365(0).m5380();
                        c0535.m5365(1).m5373();
                    }
                    i2++;
                }
                if (this.f3241.size() == 0) {
                    c0433 = null;
                } else {
                    c0433 = new C0433((C0213) this.f3241.get(0));
                }
                this.f3238 = c0433;
                if (c0433 != null) {
                    throw new C0414(C0164.m3495(18397, 5, 14));
                }
                C0538 c0538 = new C0538();
                this.f3239 = c0538;
                C0671.m5907(c0538, (String) this.f3240.get(0));
                return;
            }
            c0226.m4680(c0533.m5365(2).f3099);
            if (str2.equals(C0164.m3495(18727, 19, 64))) {
                throw new C0414(C0164.m3495(18746, 16, 77) + str2 + C0164.m3495(18762, 19, 11));
            }
            AbstractC0403 abstractC0403M4224 = C0308.m4223(C0164.m3495(18781, 10, 93));
            abstractC0403M4224.mo4637(m5555(C0164.m3495(18791, 15, SyslogConstants.LOG_CLOCK), bArrM5376, iM53811, iM5389, c0226.f811.f2701));
            bArrM4300 = abstractC0403M4224.m4300(bArr2);
            if (C0259.m3896(bArrM5375, bArrM4300)) {
                throw new C0414(C0164.m3495(18315, 49, 48));
            }
            bArrM5556 = m5556(bArrM5374, C0164.m3495(18364, 16, 106), c0223.f812);
            if (bArrM5556 != null) {
                throw new C0414(C0164.m3495(18380, 17, 70));
            }
            c0530 = new C0530(bArrM5556);
            c0530.m5366();
            c0530.m5365(0).m5389();
            C0259.m3882(c0530.m5365(2).m5373());
            C0259.m3882(c0530.m5365(3).m5373());
            c0530.m5365(4).m5366();
            i2 = 0;
            for (i = 4; i2 < c0530.m5365(i).m5382(); i = i3) {
                c0530.m5365(i).m5365(i2).m5366();
                c0530M5365 = c0530.m5365(i).m5365(i2);
                iM53810 = c0530M5365.m5365(0).m5389();
                C0259.m3853(c0530M5365.m5365(1).m5373());
                C0259.m3882(c0530M5365.m5365(2).m5373());
                C0259.m3882(c0530M5365.m5365(3).m5373());
                bArrM5373 = c0530M5365.m5365(4).m5373();
                if (c0530M5365.m5382() == 6) {
                    C0259.m3853(c0530M5365.m5365(5).m5373());
                }
                if (iM53810 != 1) {
                }
                i3 = 4;
                c0531 = new C0530(bArrM5373);
                c0531.m5366();
                c0531.m5365(0).m5366();
                c0530M5366 = c0531.m5365(0);
                c0222 = new C0222();
                c0222.m4680(c0530M5366.m5365(0).f3099);
                if (c0222.f811.f2701.equals(C0164.m3495(18561, 21, 27))) {
                    throw new C0414(C0164.m3495(18582, 53, 78));
                }
                byte[] bArrM5558 = m5556(c0530M5366.m5365(1).m5373(), C0164.m3495(18635, 22, 25), c0222.f812);
                C0593 c0594 = new C0593();
                c0594.m4680(bArrM5558);
                String str4 = c0594.f3283.f811.f2701;
                this.f3240.add(C0259.m3892(C0259.m3878(c0594.mo3690(), C0164.m3495(18657, 11, 55))));
                c0531.m5365(1).m5366();
                while (i4 < c0531.m5365(1).m5382()) {
                    C0213 c0214 = new C0213();
                    c0214.m4680(c0531.m5365(1).m5365(i4).f3099);
                    this.f3241.add(c0214);
                }
                i2++;
            }
            if (this.f3241.size() == 0) {
                c0433 = null;
            } else {
                c0433 = new C0433((C0213) this.f3241.get(0));
            }
            this.f3238 = c0433;
            if (c0433 != null) {
                throw new C0414(C0164.m3495(18397, 5, 14));
            }
            C0538 c0539 = new C0538();
            this.f3239 = c0539;
            C0671.m5907(c0539, (String) this.f3240.get(0));
            return;
        } catch (Exception unused) {
            bArrM4300 = null;
        }
        iM5389 = 0;
    }

    public final byte[] m5556(byte[] bArr, String str, C0418 c0418) {
        int i;
        byte[] bArr2;
        int i2;
        int iM5389;
        byte[] bArrM5373;
        C0222 c0222 = new C0222();
        C0530 c0530 = new C0530(c0418.mo3690());
        c0530.m5378();
        int iM53810 = 32;
        if (c0530.m5365(0).m5365(0).m5380().equals(C0164.m3495(18806, 21, 75))) {
            byte[] bArrM5374 = c0530.m5365(0).m5365(1).m5365(0).m5373();
            int iM53811 = c0530.m5365(0).m5365(1).m5365(1).m5389();
            if (c0530.m5365(0).m5365(1).m5382() == 3) {
                c0222.m4680(c0530.m5365(0).m5365(1).m5365(2).f3099);
            } else if (c0530.m5365(0).m5365(1).m5382() == 4) {
                iM53810 = c0530.m5365(0).m5365(1).m5365(2).m5389();
                c0222.m4680(c0530.m5365(0).m5365(1).m5365(3).f3099);
            }
            bArr2 = bArrM5374;
            i2 = iM53810;
            i = iM53811;
        } else {
            i = 0;
            bArr2 = null;
            i2 = 32;
        }
        if (c0530.m5365(1).m5365(0).m5380().equals(C0164.m3495(18827, 23, 48))) {
            bArrM5373 = c0530.m5365(1).m5365(1).m5365(0).m5373();
            iM5389 = c0530.m5365(1).m5365(1).m5365(1).m5389();
        } else {
            iM5389 = 12;
            bArrM5373 = null;
        }
        byte[] bArrM5555 = m5555(str, bArr2, i, i2, c0222.f811.f2701);
        try {
            AbstractC0373 abstractC0373 = (AbstractC0373) C0308.m4220(C0164.m3495(18850, 7, 25));
            abstractC0373.m4469(iM5389 * 8);
            byte[] bArr3 = new byte[iM5389];
            System.arraycopy(bArr, bArr.length - iM5389, bArr3, 0, iM5389);
            return abstractC0373.mo3657(bArrM5555, bArrM5373, null, bArr3).mo3122(bArr, 0, bArr.length - iM5389);
        } catch (Exception unused) {
            return null;
        }
    }

    public final byte[] m5555(String str, byte[] bArr, int i, int i2, String str2) {
        byte[] bArrM5553 = m5553(this.f3237);
        byte[] bArrM5554 = m5553(str);
        byte[] bArr2 = new byte[bArrM5553.length + bArrM5554.length];
        System.arraycopy(bArrM5553, 0, bArr2, 0, bArrM5553.length);
        System.arraycopy(bArrM5554, 0, bArr2, bArrM5553.length, bArrM5554.length);
        try {
            if (str2.equals(C0164.m3495(18857, 19, 65))) {
                return C0308.m4228(i, C0164.m3495(18876, 10, 31), bArr2, bArr, i2);
            }
            if (str2.equals(C0164.m3495(18886, 23, 13))) {
                return C0308.m4228(i, C0164.m3495(18909, 12, 78), bArr2, bArr, i2);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] m5553(String str) {
        if (str.length() > 0) {
            byte[] bArr = new byte[(str.length() + 1) * 2];
            for (int i = 0; i != str.length(); i++) {
                int i2 = i * 2;
                bArr[i2] = (byte) (str.charAt(i) >>> '\b');
                bArr[i2 + 1] = (byte) str.charAt(i);
            }
            return bArr;
        }
        return new byte[0];
    }
}
