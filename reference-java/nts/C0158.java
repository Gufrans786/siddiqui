package nts;

import okio.Utf8;

public class C0158 {

    public static final String f484 = C0642.m5840(0, 19, 95);

    public static final String f472 = C0642.m5840(19, 12, 22);

    public static final String f473 = C0642.m5840(31, 12, 70);

    public static final String f476 = C0642.m5840(43, 11, 54);

    public static final String f479 = C0642.m5840(54, 12, 48);

    public static final String f481 = C0642.m5840(66, 12, 57);

    public static final String f475 = C0642.m5840(78, 12, 63);

    public static final String f478 = C0642.m5840(90, 11, 0);

    public static final String f482 = C0642.m5840(101, 11, 127);

    public static final String f474 = C0642.m5840(112, 11, 77);

    public static final String f483 = C0642.m5840(123, 11, 26);

    public static final byte[] f480 = {9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

    public static final byte[] f477 = {5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

    public byte[] f491 = null;

    public byte[] f490 = null;

    public byte[] f487 = null;

    public C0253 f489 = null;

    public byte[] f485 = null;

    public byte[] f486 = null;

    public int f488 = 0;

    public static int m3423(int i) {
        if (i == 0) {
            return 32;
        }
        if (i == 1) {
            return 48;
        }
        if (i == 2) {
            return 66;
        }
        if (i == 3) {
            return 32;
        }
        if (i == 4) {
            return 57;
        }
        if (i == 5) {
            return 32;
        }
        if (i == 6) {
            return 56;
        }
        if (i == 10) {
            return 32;
        }
        if (i == 9) {
            return 28;
        }
        if (i == 8) {
            return 24;
        }
        return i == 7 ? 20 : -1;
    }

    public int m3427() {
        return m3423(this.f488);
    }

    public boolean m3428() {
        if (m3442() || m3430()) {
            byte[] bArr = this.f486;
            return bArr != null && bArr.length > 0;
        }
        byte[] bArr2 = this.f491;
        return bArr2 != null && bArr2.length > 0;
    }

    public int m3429() {
        switch (this.f488) {
            case 0:
                return 0;
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
            case 5:
                return 3;
            case 4:
            case 6:
                return 4;
            case 7:
                return 7;
            case 8:
                return 10;
            case 9:
                return 12;
            case 10:
                return 14;
            default:
                return -1;
        }
    }

    public boolean m3430() {
        int i = this.f488;
        return i == 4 || i == 6;
    }

    public boolean m3431() {
        return this.f488 == 3;
    }

    public boolean m3432() {
        byte[] bArr;
        if (m3442() || m3430()) {
            byte[] bArr2 = this.f485;
            return bArr2 != null && bArr2.length > 0;
        }
        byte[] bArr3 = this.f490;
        return bArr3 != null && (bArr = this.f487) != null && bArr3.length > 0 && bArr.length > 0;
    }

    public boolean m3433() {
        return this.f488 == 5;
    }

    public boolean m3434() {
        return this.f488 == 4;
    }

    public C0253 m3435() {
        int iM3429 = m3429();
        C0253 c0253 = this.f489;
        if (c0253 == null || c0253.m3814() != iM3429) {
            this.f489 = (C0253) C0253.f1189.get(Integer.valueOf(iM3429));
        }
        return this.f489;
    }

    public boolean m3436() {
        return this.f488 == 6;
    }

    public String m3437() {
        return m3420(this.f488);
    }

    public boolean m3439() {
        return m3431() || m3434();
    }

    public boolean m3440() {
        int i = this.f488;
        return i == 0 || i == 1 || i == 2 || i == 10 || i == 9 || i == 8 || i == 7;
    }

    public void m3441() {
        this.f491 = null;
        this.f490 = null;
        this.f487 = null;
        this.f485 = null;
        this.f486 = null;
        this.f489 = null;
        this.f488 = 0;
    }

    public boolean m3442() {
        int i = this.f488;
        return i == 3 || i == 5;
    }

    public void m3445(C0158 c0158, boolean z) {
        byte[] bArr;
        byte[] bArr2;
        this.f488 = c0158.f488;
        this.f489 = c0158.f489;
        byte[] bArr3 = c0158.f485;
        if (bArr3 != null) {
            this.f485 = C0259.m3845(bArr3);
        } else {
            this.f485 = null;
        }
        byte[] bArr4 = c0158.f490;
        if (bArr4 != null) {
            this.f490 = C0259.m3845(bArr4);
        } else {
            c0158.f490 = null;
        }
        byte[] bArr5 = c0158.f487;
        if (bArr5 != null) {
            this.f487 = C0259.m3845(bArr5);
        } else {
            c0158.f487 = null;
        }
        if (!z || (bArr2 = c0158.f491) == null) {
            this.f491 = null;
        } else {
            this.f491 = C0259.m3845(bArr2);
        }
        if (!z || (bArr = c0158.f486) == null) {
            this.f486 = null;
        } else {
            this.f486 = C0259.m3845(bArr);
        }
    }

    public static boolean m3417(C0158 c0158, boolean z) {
        boolean z2;
        C0184 c0184;
        C0184 c0185;
        boolean zM3941;
        byte[] bArr = c0158.f490;
        int length = bArr == null ? 0 : bArr.length;
        byte[] bArr2 = c0158.f487;
        int length2 = bArr2 == null ? 0 : bArr2.length;
        byte[] bArr3 = c0158.f491;
        int length3 = bArr3 == null ? 0 : bArr3.length;
        if (length3 == 0 && (length == 0 || length2 == 0)) {
            return false;
        }
        if (!z) {
            return true;
        }
        C0253 c0253M3435 = c0158.m3435();
        C0184 c0186 = new C0184();
        C0184 c0187 = new C0184();
        C0184 c0188 = new C0184();
        C0184 c0189 = new C0184();
        C0184 c01810 = new C0184();
        C0184 c01811 = new C0184();
        C0184 c01812 = new C0184();
        C0184 c01813 = new C0184();
        C0184 c01814 = new C0184();
        C0184 c01815 = new C0184();
        C0184 c01816 = new C0184();
        try {
            int i = length;
            int i2 = length2;
            C0184.m3593(c0253M3435.f1239, 0, c0253M3435.f1239.length, c0188);
            byte[] bArr4 = c0253M3435.f1226;
            C0184.m3593(bArr4, 0, bArr4.length, c01813);
            C0253.m3802(c0253M3435.f1235, c0188, c0186);
            C0253.m3802(c0253M3435.f1227, c0188, c0187);
            C0253.m3802(c0253M3435.f1233, c0188, c0189);
            C0253.m3802(c0253M3435.f1225, c0188, c01810);
            if (i > 0) {
                C0253.m3802(c0158.f490, c0188, c01815);
            }
            if (i2 > 0) {
                C0253.m3802(c0158.f487, c0188, c01816);
            }
            if (length3 > 0) {
                byte[] bArr5 = c0158.f491;
                C0184.m3593(bArr5, 0, bArr5.length, c01814);
            }
            if (i <= 0 || i2 <= 0) {
                c01813 = c01813;
                c01814 = c01814;
                z2 = false;
                c0184 = c01816;
                c0185 = c01815;
                zM3941 = false;
            } else {
                try {
                    if (c0253M3435.f1231 == 24577) {
                        if (C0261.m3911(c01815, c0188, c0188) != -1 || C0261.m3911(c01816, c0188, c0188) != -1) {
                            return false;
                        }
                    } else if (C0261.m3911(c01815, c0188, c0188) != -1 || C0261.m3911(c01816, c0188, c0188) != -1) {
                        return false;
                    }
                    if (c0253M3435.f1231 == 24577) {
                        c0184 = c01816;
                        zM3941 = C0261.m3922(c01815, c0184, c0186, c0187, c0188, c0253M3435.f1237);
                        c0185 = c01815;
                    } else {
                        c0184 = c01816;
                        zM3941 = C0261.m3941(c01815, c0184, c0186, c0187, c0188, c0253M3435.f1237);
                        c0185 = c01815;
                    }
                    z2 = false;
                    if (!zM3941) {
                        return false;
                    }
                } catch (Exception unused) {
                    return false;
                }
            }
            if (length3 <= 0) {
                return zM3941;
            }
            boolean zM3577 = C0184.m3577(c01813, c01814);
            if (!zM3577) {
                return z2;
            }
            if (i <= 0 || i2 <= 0) {
                return zM3577;
            }
            if (c0253M3435.f1231 == 24577) {
                C0184 c01817 = c0184;
                C0261.m3933(c0189, c01810, c0188, c0186, c01814, c0253M3435.f1237, c01811, c01812);
                if (C0261.m3911(c0185, c01811, c0188) != 0 || C0261.m3911(c01817, c01812, c0188) != 0) {
                    return false;
                }
            } else {
                C0184 c01818 = c0184;
                C0261.m3934(c0189, c01810, c0186, c0187, c0188, c01814, c0253M3435.f1237, c0189, c01812);
                if (C0261.m3911(c0185, c01811, c0188) != 0 || C0261.m3911(c01818, c01812, c0188) != 0) {
                    return false;
                }
            }
            return true;
        } catch (Exception unused2) {
            return false;
        }
    }

    public boolean m3438(boolean z) {
        if (this.f488 == -1) {
            return false;
        }
        try {
            if (!m3442() && !m3430()) {
                return m3417(this, z);
            }
            return m3422(this, z);
        } catch (Exception unused) {
            return false;
        }
    }

    public static void m3418(byte[] bArr, byte[] bArr2) throws C0537 {
        if (bArr2.length == 56) {
            C0429.m4730(bArr, f477, bArr2);
            return;
        }
        throw new C0537(C0642.m5840(268, 24, 4));
    }

    public static int m3419(String str) {
        if (str.equals(f484)) {
            return 0;
        }
        if (str.equals(f472)) {
            return 1;
        }
        if (str.equals(f473)) {
            return 2;
        }
        if (str.equals(f474)) {
            return 3;
        }
        if (str.equals(f483)) {
            return 4;
        }
        if (str.equals(f478)) {
            return 5;
        }
        if (str.equals(f482)) {
            return 6;
        }
        if (str.equals(f475)) {
            return 10;
        }
        if (str.equals(f481)) {
            return 9;
        }
        if (str.equals(f479)) {
            return 8;
        }
        return str.equals(f476) ? 7 : -1;
    }

    public byte[] m3447(boolean z) {
        try {
            C0253 c0253M3435 = m3435();
            int iM3812 = c0253M3435.m3812();
            this.f490 = m3426(this.f490, iM3812);
            byte[] bArrM3426 = m3426(this.f487, iM3812);
            this.f487 = bArrM3426;
            return C0253.m3806(this.f490, bArrM3426, c0253M3435, z, false);
        } catch (Exception e) {
            throw new C0414(e);
        }
    }

    public void m3446(byte[] bArr) {
        int length = bArr.length;
        C0253 c0253M3435 = m3435();
        int iM3812 = c0253M3435.m3812();
        byte[][] bArr2 = {new byte[iM3812]};
        byte[][] bArr3 = {new byte[iM3812]};
        try {
            C0253.m3803(bArr, 0, length, c0253M3435, bArr2, bArr3);
            this.f490 = bArr2[0];
            this.f487 = bArr3[0];
        } catch (Exception e) {
            throw new C0414(e);
        }
    }

    public static String m3420(int i) {
        if (i == 0) {
            return f484;
        }
        if (i == 1) {
            return f472;
        }
        if (i == 2) {
            return f473;
        }
        if (i == 3) {
            return f474;
        }
        if (i == 4) {
            return f483;
        }
        if (i == 5) {
            return f478;
        }
        if (i == 6) {
            return f482;
        }
        if (i == 10) {
            return f475;
        }
        if (i == 9) {
            return f481;
        }
        if (i == 8) {
            return f479;
        }
        return i == 7 ? f476 : "";
    }

    public void m3444(String str) {
        this.f488 = m3419(str);
    }

    public void m3443() {
        if (!m3428() || m3432()) {
            return;
        }
        try {
            if (m3440()) {
                m3424(this);
                return;
            }
            this.f485 = new byte[m3427()];
            if (m3431()) {
                m3425(this.f486, this.f485);
                return;
            }
            if (m3434()) {
                m3421(this.f486, this.f485);
            } else if (m3433()) {
                m3416(this.f486, this.f485);
            } else if (m3436()) {
                m3418(this.f486, this.f485);
            }
        } catch (C0537 e) {
            throw new C0414(e);
        }
    }

    public static boolean m3422(C0158 c0158, boolean z) {
        byte[] bArr = c0158.f485;
        byte[] bArr2 = c0158.f486;
        boolean z2 = true;
        Boolean boolValueOf = Boolean.valueOf(bArr != null && bArr.length > 0);
        Boolean boolValueOf2 = Boolean.valueOf(bArr2 != null && bArr2.length > 0);
        if (!boolValueOf.booleanValue() && !boolValueOf2.booleanValue()) {
            return false;
        }
        int iM3427 = c0158.m3427();
        boolean z3 = !boolValueOf.booleanValue() || bArr.length == iM3427;
        if (!boolValueOf2.booleanValue()) {
            z2 = z3;
        } else if (!z3 || bArr2.length != iM3427) {
            z2 = false;
        }
        if (z2 && z) {
            try {
                if (boolValueOf.booleanValue() && boolValueOf2.booleanValue()) {
                    byte[] bArr3 = new byte[c0158.m3427()];
                    if (c0158.m3431()) {
                        m3425(bArr2, bArr3);
                    } else if (c0158.m3434()) {
                        m3421(bArr2, bArr3);
                    } else if (c0158.m3433()) {
                        m3416(bArr2, bArr3);
                    } else {
                        if (c0158.m3436()) {
                            m3418(bArr2, bArr3);
                        }
                        return false;
                    }
                    return C0259.m3896(c0158.f485, bArr3);
                }
            } catch (Exception unused) {
            }
        }
        return z2;
    }

    public static byte[] m3426(byte[] bArr, int i) {
        if (bArr != null && bArr.length != i) {
            if (bArr.length < i) {
                C0301 c0301 = new C0301();
                while (c0301.f1615 + bArr.length < i) {
                    c0301.m4177((byte) 0);
                }
                c0301.m4180(bArr);
                return c0301.m4182();
            }
            while (bArr.length > 0 && bArr[0] == 0 && bArr.length > i) {
                bArr = C0308.m4218(bArr);
            }
        }
        return bArr;
    }

    public static void m3424(C0158 c0158) throws C0537 {
        int iM3801;
        if (c0158.m3428()) {
            C0253 c0253M3435 = c0158.m3435();
            C0184 c0184 = new C0184();
            C0184 c0185 = new C0184();
            C0184 c0186 = new C0184();
            C0184 c0187 = new C0184();
            C0184 c0188 = new C0184();
            C0184 c0189 = new C0184();
            C0184 c01810 = new C0184();
            C0184 c01811 = new C0184();
            byte[] bArr = c0253M3435.f1239;
            C0184.m3593(bArr, 0, bArr.length, c0187);
            C0253.m3802(c0253M3435.f1235, c0187, c0184);
            C0253.m3802(c0253M3435.f1227, c0187, c0185);
            C0253.m3802(c0253M3435.f1233, c0187, c0188);
            C0253.m3802(c0253M3435.f1225, c0187, c0189);
            byte[] bArr2 = c0158.f491;
            C0184.m3593(bArr2, 0, bArr2.length, c0186);
            if (c0253M3435.f1231 == 24577) {
                iM3801 = (C0253.m3801(c0253M3435.f1239) + 7) >>> 3;
                C0261.m3933(c0188, c0189, c0187, c0184, c0186, c0253M3435.f1237, c01810, c01811);
            } else {
                int iM3802 = (C0253.m3801(c0253M3435.f1239) + 6) >>> 3;
                C0261.m3934(c0188, c0189, c0184, c0185, c0187, c0186, c0253M3435.f1237, c01810, c01811);
                c01810 = c01810;
                c01811 = c01811;
                iM3801 = iM3802;
            }
            c0158.f490 = C0261.m3942(c01810, iM3801);
            c0158.f487 = C0261.m3942(c01811, iM3801);
            return;
        }
        throw new C0537(C0642.m5840(175, 15, 75));
    }

    public static void m3416(byte[] bArr, byte[] bArr2) throws C0537 {
        if (bArr2.length == 32) {
            C0429.m4774(bArr, f480, bArr2);
            return;
        }
        throw new C0537(C0642.m5840(244, 24, 121));
    }

    public static void m3421(byte[] bArr, byte[] bArr2) throws C0537 {
        if (bArr.length == 57 && bArr2.length == 57) {
            C0310 c0310 = new C0310();
            int[] iArr = new int[14];
            C0631 c0631 = new C0631();
            c0631.f1703 = 912;
            byte[] bArrM4301 = c0631.m4301(bArr, 0, 57);
            bArrM4301[0] = (byte) (bArrM4301[0] & 252);
            bArrM4301[55] = (byte) (bArrM4301[55] | 128);
            C0429.m4722(iArr, bArrM4301);
            C0429.m4758(c0310, iArr);
            C0429.m4772(bArr2, c0310);
            return;
        }
        throw new C0537(C0642.m5840(190, 24, 84));
    }

    public static void m3425(byte[] bArr, byte[] bArr2) throws C0537 {
        if (bArr.length == 32 && bArr2.length == 32) {
            C0198 c0198 = new C0198();
            byte[] bArrM4301 = C0308.m4217(C0642.m5840(238, 6, 123)).m4301(bArr, 0, bArr.length);
            bArrM4301[0] = (byte) (bArrM4301[0] & 248);
            bArrM4301[31] = (byte) ((bArrM4301[31] & Utf8.REPLACEMENT_BYTE) | 64);
            C0429.m4726(c0198, bArrM4301);
            C0429.m4771(bArr2, c0198);
            return;
        }
        throw new C0537(C0642.m5840(214, 24, 78));
    }
}
