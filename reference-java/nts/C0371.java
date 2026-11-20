package nts;

public class C0371 {

    public static C0310[] f1934;

    public static int[] f1935;

    public static int f1936;

    public static C0237 f1939;

    public static C0573[] f1942;

    public static int f1944;

    public static int f1948;

    public static C0293 f1947 = new C0293();

    public static C0310 f1937 = new C0310();

    public static C0139 f1938 = new C0139();

    public static final int[] f1941 = {1420278541, -595116691, 1916432554, -560775795, 1361693039, 1001465014, -2093622250};

    public static Boolean f1945 = false;

    public static Object f1946 = new Object();

    public static Object f1940 = new Object();

    public static Object f1943 = new Object();

    public static void m4461() throws C0537 {
        C0573[] c0573Arr = f1942;
        if (c0573Arr == null || c0573Arr.length == 0) {
            synchronized (f1940) {
                C0573[] c0573Arr2 = f1942;
                if (c0573Arr2 == null || c0573Arr2.length == 0) {
                    f1948 = 8;
                    f1944 = 4;
                    f1936 = 14;
                    f1942 = m4466(8, 4, 14);
                }
            }
        }
    }

    public static C0310[] m4462() throws C0537 {
        C0310[] c0310Arr = f1934;
        if (c0310Arr != null && c0310Arr.length != 0) {
            return c0310Arr;
        }
        C0310 c0310 = new C0310();
        C0429.m4757(c0310, f1937);
        C0310[] c0310Arr2 = new C0310[448];
        for (int i = 0; i < 448; i++) {
            c0310Arr2[i] = new C0310();
        }
        C0429.m4757(c0310Arr2[0], c0310);
        for (int i2 = 1; i2 <= 447; i2++) {
            int[] iArr = new int[16];
            int[] iArr2 = new int[16];
            int[] iArr3 = new int[16];
            int[] iArr4 = c0310.f1657;
            C0429.m4733(iArr3, iArr4, iArr4);
            int[] iArr5 = c0310.f1656;
            C0429.m4733(iArr, iArr5, iArr5);
            C0429.m4785(iArr2, iArr3, iArr);
            C0429.m4785(c0310.f1655, c0310.f1656, c0310.f1657);
            int[] iArr6 = c0310.f1653;
            int[] iArr7 = c0310.f1655;
            C0429.m4733(iArr6, iArr7, iArr7);
            C0429.m4715(c0310.f1655, c0310.f1653, iArr2);
            C0429.m4715(c0310.f1653, iArr, iArr3);
            int[] iArr8 = c0310.f1657;
            int[] iArr9 = c0310.f1654;
            C0429.m4733(iArr8, iArr9, iArr9);
            int[] iArr10 = c0310.f1654;
            int[] iArr11 = c0310.f1657;
            C0429.m4785(iArr10, iArr11, iArr11);
            C0429.m4715(iArr, c0310.f1654, iArr2);
            C0429.m4733(c0310.f1654, iArr2, iArr);
            C0429.m4733(c0310.f1657, iArr, c0310.f1655);
            C0429.m4733(c0310.f1656, iArr2, c0310.f1653);
            C0429.m4757(c0310Arr2[i2], c0310);
        }
        return c0310Arr2;
    }

    public static void m4463() throws C0537 {
        C0310[] c0310Arr = f1934;
        if (c0310Arr == null || c0310Arr.length == 0) {
            synchronized (f1943) {
                C0310[] c0310Arr2 = f1934;
                if (c0310Arr2 == null || c0310Arr2.length == 0) {
                    f1934 = m4462();
                }
            }
        }
    }

    public static void m4464() {
        if (f1939 == null) {
            int[] iArr = f1941;
            f1939 = new C0237(14, 30, iArr.length, iArr);
        }
    }

    public static void m4465() throws C0537 {
        if (f1945.booleanValue()) {
            return;
        }
        synchronized (f1946) {
            if (!f1945.booleanValue()) {
                C0429.m4754(f1947);
                C0310 c0310 = f1937;
                C0293 c0293 = f1947;
                C0429.m4781(c0310.f1657, c0293.f1526);
                C0429.m4781(c0310.f1656, c0293.f1525);
                C0429.m4711(c0310.f1654);
                C0429.m4781(c0310.f1655, c0293.f1526);
                C0429.m4781(c0310.f1653, c0293.f1525);
                C0429.m4744(f1938, f1937);
                f1945 = true;
            }
        }
    }

    public static C0573[] m4466(int i, int i2, int i3) throws C0537 {
        int i4;
        int i5;
        if (i < 1 || i2 < 1 || i3 < 1 || (i4 = i * i2 * i3) < 446) {
            return null;
        }
        C0139 c0139 = new C0139();
        C0139 c01310 = new C0139();
        C0305 c0305 = new C0305();
        int[] iArr = new int[16];
        if (f1939 == null) {
            m4464();
        }
        C0429.m4725(c0139, f1938);
        int i6 = i2 - 1;
        C0305[] c0305Arr = new C0305[i6];
        for (int i7 = 0; i7 < i6; i7++) {
            c0305Arr[i7] = new C0305();
        }
        int i8 = i << i6;
        int[][] iArr2 = new int[i8][];
        int[][] iArr3 = new int[i8][];
        C0573[] c0573Arr = new C0573[i8];
        int i9 = 1;
        for (int i10 = 0; i10 < i8; i10++) {
            c0573Arr[i10] = new C0573();
        }
        for (int i11 = 0; i11 < i8; i11++) {
            iArr2[i11] = new int[16];
            iArr3[i11] = new int[16];
        }
        int[] iArr4 = new int[28];
        int i12 = i4 / 32;
        int i13 = i12 + 1;
        if (i13 >= 14) {
            int[] iArr5 = new int[i13];
            for (int i14 = 0; i14 < i13; i14++) {
                iArr5[i14] = -1;
            }
            iArr5[i12] = (int) ((((long) iArr5[i12]) & 4294967295L) + (((long) (1 << (i4 % 32))) & 4294967295L));
            C0429.m4778(iArr5, i13, 0, f1939);
            int i15 = iArr5[0];
            int i16 = (i15 & 1) * 14;
            int i17 = ((~i15) & 1) * 14;
            for (int i18 = 0; i18 <= 13; i18++) {
                iArr4[i16 + i18] = iArr5[i18];
            }
            C0237 c0237 = f1939;
            C0429.m4721(iArr4, i17, iArr5, 14, c0237.f848, c0237.f847, -1);
            C0237 c0238 = f1939;
            int i19 = c0238.f849;
            if (i19 > 0) {
                int i20 = (i17 + c0238.f850) - 1;
                iArr4[i20] = (int) ((((long) iArr4[i20]) & 4294967295L) + (((long) (1 << i19)) & 4294967295L));
            }
            f1935 = iArr4;
            int i21 = 0;
            while (true) {
                int i22 = i - 1;
                if (i21 > i22) {
                    break;
                }
                for (int i23 = 0; i23 <= i6; i23++) {
                    if (i23 > 0) {
                        C0429.m4755(c0305, c0139);
                        C0429.m4743(c01310, c0305);
                    } else {
                        C0429.m4725(c01310, c0139);
                    }
                    if (i23 == i6 && i21 == i22) {
                        break;
                    }
                    C0429.m4742(c0139);
                    if (i23 < i6) {
                        C0429.m4755(c0305Arr[i23], c0139);
                    }
                    for (int i24 = 0; i24 <= i3 - 2; i24++) {
                        C0429.m4742(c0139);
                    }
                }
                int i25 = 0;
                while (true) {
                    int i26 = (i25 >>> 1) ^ i25;
                    i5 = i21 + 1;
                    int i27 = ((i5 << i6) - 1) ^ i26;
                    C0429.m4755(c0305, c01310);
                    int i28 = i21;
                    C0429.m4767(c0573Arr[i27], c0305.f1627);
                    C0429.m4781(iArr2[i27], c0305.f1626);
                    if (i25 >= (i9 << i6) - 1) {
                        break;
                    }
                    i25++;
                    int i29 = ((i25 >>> 1) ^ i25) ^ i26;
                    int i30 = i9;
                    int i31 = 0;
                    while (i29 > i30) {
                        i29 >>>= 1;
                        i31++;
                    }
                    if ((i26 & (i30 << i31)) > 0) {
                        C0429.m4743(c01310, c0305Arr[i31]);
                    } else {
                        C0305 c0306 = c0305Arr[i31];
                        int[] iArr6 = new int[16];
                        C0429.m4733(iArr6, c01310.f313, c0306.f1626);
                        System.arraycopy(iArr6, 0, c01310.f313, 0, 16);
                        C0573 c0573 = c0306.f1627;
                        int[] iArr7 = new int[16];
                        int[] iArr8 = new int[16];
                        C0429.m4715(iArr8, c01310.f315, c01310.f316);
                        C0429.m4733(iArr7, c0573.f3190, iArr8);
                        C0429.m4785(iArr8, c01310.f316, c01310.f315);
                        C0429.m4733(c01310.f315, c0573.f3191, iArr8);
                        C0429.m4733(iArr8, c01310.f312, c01310.f314);
                        C0429.m4733(c01310.f316, c0573.f3189, iArr8);
                        C0429.m4785(c01310.f312, iArr7, c01310.f315);
                        C0429.m4715(c01310.f314, c01310.f315, iArr7);
                        C0429.m4785(c01310.f315, c01310.f316, c01310.f313);
                        C0429.m4715(iArr7, c01310.f313, c01310.f316);
                        C0429.m4733(c01310.f313, iArr7, c01310.f315);
                        C0429.m4733(c01310.f316, c01310.f315, c01310.f314);
                        C0429.m4733(c01310.f315, iArr7, c01310.f312);
                    }
                    i21 = i28;
                    i9 = 1;
                }
                i21 = i5;
            }
            int[] iArr9 = new int[16];
            if (i8 != 0) {
                if (i8 == 1) {
                    C0429.m4732(iArr3[0], iArr2[0]);
                } else {
                    C0429.m4781(iArr3[1], iArr2[0]);
                    int i32 = 1;
                    while (i32 <= i8 - 2) {
                        int i33 = i32 + 1;
                        C0429.m4733(iArr3[i33], iArr3[i32], iArr2[i32]);
                        i32 = i33;
                    }
                    int i34 = 0;
                    int i35 = i8 - 1;
                    C0429.m4733(iArr3[0], iArr3[i35], iArr2[i35]);
                    C0429.m4732(iArr9, iArr3[0]);
                    int i36 = 16;
                    System.arraycopy(iArr9, 0, iArr3[0], 0, 16);
                    while (i35 >= 1) {
                        C0429.m4733(iArr9, iArr3[i35], iArr3[i34]);
                        System.arraycopy(iArr9, i34, iArr3[i35], i34, i36);
                        C0429.m4733(iArr9, iArr3[i34], iArr2[i35]);
                        System.arraycopy(iArr9, i34, iArr3[i34], i34, i36);
                        i35--;
                        i34 = 0;
                        i36 = 16;
                    }
                }
            }
            for (int i37 = 0; i37 <= i8 - 1; i37++) {
                C0429.m4733(iArr, c0573Arr[i37].f3191, iArr3[i37]);
                C0429.m4706(iArr);
                System.arraycopy(iArr, 0, c0573Arr[i37].f3191, 0, 16);
                C0429.m4733(iArr, c0573Arr[i37].f3190, iArr3[i37]);
                C0429.m4706(iArr);
                System.arraycopy(iArr, 0, c0573Arr[i37].f3190, 0, 16);
                C0429.m4733(iArr, c0573Arr[i37].f3189, iArr3[i37]);
                C0429.m4706(iArr);
                System.arraycopy(iArr, 0, c0573Arr[i37].f3189, 0, 16);
            }
            if (C0429.m4720(iArr3[0]) == 0) {
                return c0573Arr;
            }
            throw new C0537(C0642.m5854(18, 18, 76));
        }
        throw new C0537(C0642.m5854(0, 18, 53));
    }
}
