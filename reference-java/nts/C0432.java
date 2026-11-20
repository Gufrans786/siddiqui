package nts;

import com.google.common.base.Ascii;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
import org.bouncycastle.crypto.tls.CipherSuite;

public class C0432 extends C0204 {

    public static final long[] f2239 = {0, 7200, 14400, 9312, 28800, 27808, 18624, 21728, 57600, 64800, 55616, 50528, 37248, 36256, 43456, 46560};

    public static void m4792(C0114 c0114, byte[] bArr) throws C0537 {
        int i = c0114.f178;
        if (i > 16 || i < 0) {
            throw new C0537(C0164.m3504(RNMBXStyleValue.InterpolationModeIdentity, 18, 91));
        }
        if (c0114.f179 != 2) {
            throw new C0537(C0164.m3504(121, 18, 47));
        }
        if (i > 0) {
            c0114.f181 += (long) (i * 8);
            m4793(c0114, c0114.f192);
        }
        m4797((int) (c0114.f191 >>> 32), c0114.f186, 0);
        m4797((int) c0114.f191, c0114.f186, 4);
        m4797((int) (c0114.f181 >>> 32), c0114.f186, 8);
        m4797((int) c0114.f181, c0114.f186, 12);
        for (int i2 = 0; i2 < 16; i2++) {
            byte[] bArr2 = c0114.f192;
            bArr2[i2] = (byte) (bArr2[i2] ^ c0114.f186[i2]);
        }
        m4793(c0114, c0114.f192);
        System.arraycopy(c0114.f180, 0, c0114.f186, 0, 16);
        C0422.m4684(c0114.f186, c0114.f190, c0114.f184);
        for (int i3 = 0; i3 < 16 && i3 < bArr.length; i3++) {
            bArr[i3] = (byte) (c0114.f186[i3] ^ c0114.f192[i3]);
        }
        c0114.f179 = 0;
    }

    public static void m4793(C0114 c0114, byte[] bArr) {
        byte b = (byte) (bArr[15] & Ascii.SI);
        long j = c0114.f182[b];
        long j2 = c0114.f185[b];
        for (int i = 15; i >= 0; i--) {
            byte b2 = bArr[i];
            byte b3 = (byte) (b2 & Ascii.SI);
            byte b4 = (byte) ((b2 & 255) >>> 4);
            if (i != 15) {
                int i2 = (int) (j & 15);
                long j3 = (j2 << 60) | (j >>> 4);
                long j4 = (j2 >>> 4) ^ (f2239[i2] << 48);
                j = j3 ^ c0114.f182[b3];
                j2 = j4 ^ c0114.f185[b3];
            }
            int i3 = (int) (j & 15);
            long j5 = (j >>> 4) | (j2 << 60);
            long j6 = (j2 >>> 4) ^ (f2239[i3] << 48);
            j = j5 ^ c0114.f182[b4];
            j2 = j6 ^ c0114.f185[b4];
        }
        m4797((int) (j2 >>> 32), bArr, 0);
        m4797((int) j2, bArr, 4);
        m4797((int) (j >>> 32), bArr, 8);
        m4797((int) j, bArr, 12);
    }

    public static void m4794(C0114 c0114) {
        c0114.f192 = new byte[16];
        c0114.f188 = new byte[16];
        c0114.f180 = new byte[16];
        c0114.f186 = new byte[16];
        c0114.f178 = 0;
        c0114.f179 = 0;
        c0114.f183 = true;
        c0114.f191 = 0L;
        c0114.f181 = 0L;
        c0114.f182 = new long[16];
        c0114.f185 = new long[16];
        c0114.f189 = null;
        c0114.f187 = -1;
        byte[] bArr = new byte[16];
        C0422.m4684(bArr, c0114.f190, c0114.f184);
        long jM4796 = (m4796(bArr, 0) << 32) | m4796(bArr, 4);
        long jM4797 = (m4796(bArr, 8) << 32) | m4796(bArr, 12);
        c0114.f182[8] = jM4797;
        c0114.f185[8] = jM4796;
        for (int i = 4; i > 0; i >>>= 1) {
            long j = (1 & jM4797) * (-520093696);
            jM4797 = (jM4797 >>> 1) | (jM4796 << 63);
            jM4796 = (jM4796 >>> 1) ^ (j << 32);
            c0114.f182[i] = jM4797;
            c0114.f185[i] = jM4796;
        }
        for (int i2 = 2; i2 <= 8; i2 *= 2) {
            long j2 = c0114.f182[i2];
            long j3 = c0114.f185[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                long[] jArr = c0114.f182;
                int i4 = i2 + i3;
                jArr[i4] = jArr[i3] ^ j2;
                long[] jArr2 = c0114.f185;
                jArr2[i4] = jArr2[i3] ^ j3;
            }
        }
    }

    public static void m4799(C0114 c0114, byte[] bArr) throws C0537 {
        int i;
        int i2;
        int i3 = c0114.f178;
        if (i3 > 16 || i3 < 0) {
            throw new C0537(C0164.m3504(31, 18, 17));
        }
        if (c0114.f179 == 0) {
            if (c0114.f183 && i3 == 12) {
                System.arraycopy(c0114.f186, 0, c0114.f188, 0, 12);
                byte[] bArr2 = c0114.f188;
                bArr2[12] = 0;
                bArr2[13] = 0;
                bArr2[14] = 0;
                bArr2[15] = 1;
            } else {
                int i4 = 0;
                while (true) {
                    i2 = c0114.f178;
                    if (i4 >= i2) {
                        break;
                    }
                    byte[] bArr3 = c0114.f192;
                    bArr3[i4] = (byte) (bArr3[i4] ^ c0114.f186[i4]);
                    i4++;
                }
                if (i2 > 0) {
                    c0114.f191 += (long) (i2 * 8);
                    m4793(c0114, c0114.f192);
                }
                for (int i5 = 0; i5 < 8; i5++) {
                    c0114.f186[i5] = 0;
                }
                m4797((int) (c0114.f191 >>> 32), c0114.f186, 8);
                m4797((int) c0114.f191, c0114.f186, 12);
                for (int i6 = 0; i6 < 16; i6++) {
                    byte[] bArr4 = c0114.f192;
                    bArr4[i6] = (byte) (bArr4[i6] ^ c0114.f186[i6]);
                }
                m4793(c0114, c0114.f192);
                System.arraycopy(c0114.f192, 0, c0114.f188, 0, 16);
                c0114.f192 = new byte[16];
            }
            System.arraycopy(c0114.f188, 0, c0114.f180, 0, 16);
            c0114.f186 = new byte[16];
            c0114.f178 = 0;
            c0114.f191 = 0L;
            c0114.f179 = 1;
        }
        if (c0114.f179 != 1 || c0114.f178 >= 16) {
            throw new C0537(C0164.m3504(49, 18, 44));
        }
        if (bArr == null) {
            bArr = new byte[0];
        }
        if (c0114.f178 == 0) {
            i = 0;
            while (i < (bArr.length & (-16))) {
                for (int i7 = 0; i7 < 16; i7++) {
                    byte[] bArr5 = c0114.f192;
                    bArr5[i7] = (byte) (bArr5[i7] ^ bArr[i + i7]);
                }
                m4793(c0114, c0114.f192);
                c0114.f191 += 128;
                i += 16;
            }
        } else {
            i = 0;
        }
        int i8 = i;
        while (i < bArr.length) {
            byte[] bArr6 = c0114.f192;
            int i9 = c0114.f178;
            bArr6[i9] = (byte) (bArr6[i9] ^ bArr[i8]);
            i8++;
            c0114.f178 = i9 + 1;
            if (c0114.f178 == 16) {
                m4793(c0114, bArr6);
                c0114.f178 = 0;
                c0114.f191 += 128;
            }
            i++;
        }
    }

    public static void m4795(C0114 c0114, byte[] bArr) throws C0537 {
        int i;
        if (c0114.f179 == 0) {
            int i2 = c0114.f178;
            if (i2 >= 0 && i2 < 16) {
                if (bArr == null) {
                    bArr = new byte[0];
                }
                if (bArr.length + c0114.f178 > 12) {
                    c0114.f183 = false;
                }
                if (c0114.f178 == 0) {
                    i = 0;
                    while (i < (bArr.length & (-16))) {
                        for (int i3 = 0; i3 < 16; i3++) {
                            byte[] bArr2 = c0114.f192;
                            bArr2[i3] = (byte) (bArr2[i3] ^ bArr[i + i3]);
                        }
                        m4793(c0114, c0114.f192);
                        c0114.f191 += 128;
                        i += 16;
                    }
                } else {
                    i = 0;
                }
                int i4 = i;
                while (i < bArr.length) {
                    byte[] bArr3 = c0114.f186;
                    int i5 = c0114.f178;
                    bArr3[i5] = bArr[i4];
                    i4++;
                    c0114.f178 = i5 + 1;
                    if (c0114.f178 == 16) {
                        for (int i6 = 0; i6 < 16; i6++) {
                            byte[] bArr4 = c0114.f192;
                            bArr4[i6] = (byte) (bArr4[i6] ^ c0114.f186[i6]);
                        }
                        m4793(c0114, c0114.f192);
                        c0114.f178 = 0;
                        c0114.f191 += 128;
                    }
                    i++;
                }
                return;
            }
            throw new C0537(C0164.m3504(13, 18, 27));
        }
        throw new C0537(C0164.m3504(0, 13, 51));
    }

    public static void m4800(C0114 c0114, byte[] bArr, byte[] bArr2, boolean z) throws C0537 {
        int i;
        byte b;
        int i2 = c0114.f178;
        if (i2 <= 16 && i2 >= 0) {
            if (c0114.f179 == 1) {
                if (i2 > 0) {
                    c0114.f191 += (long) (i2 * 8);
                    m4793(c0114, c0114.f192);
                }
                m4798(c0114);
                System.arraycopy(c0114.f188, 0, c0114.f186, 0, 16);
                C0422.m4684(c0114.f186, c0114.f190, c0114.f184);
                c0114.f178 = 0;
                c0114.f179 = 2;
            }
            if (c0114.f179 == 2) {
                if (bArr == null) {
                    bArr = new byte[0];
                }
                if (c0114.f178 != 0) {
                    i = 0;
                } else if (z) {
                    i = 0;
                    while (i < (bArr.length & (-16))) {
                        for (int i3 = 0; i3 < 16; i3++) {
                            int i4 = i + i3;
                            bArr2[i4] = (byte) (bArr[i4] ^ c0114.f186[i3]);
                            byte[] bArr3 = c0114.f192;
                            bArr3[i3] = (byte) (bArr2[i4] ^ bArr3[i3]);
                        }
                        c0114.f181 += 128;
                        m4793(c0114, c0114.f192);
                        m4798(c0114);
                        System.arraycopy(c0114.f188, 0, c0114.f186, 0, 16);
                        C0422.m4684(c0114.f186, c0114.f190, c0114.f184);
                        i += 16;
                    }
                } else {
                    i = 0;
                    while (i < (bArr.length & (-16))) {
                        for (int i5 = 0; i5 < 16; i5++) {
                            byte[] bArr4 = c0114.f192;
                            int i6 = i + i5;
                            bArr4[i5] = (byte) (bArr4[i5] ^ bArr2[i6]);
                            bArr[i6] = (byte) (bArr2[i6] ^ c0114.f186[i5]);
                        }
                        c0114.f181 += 128;
                        m4793(c0114, c0114.f192);
                        m4798(c0114);
                        System.arraycopy(c0114.f188, 0, c0114.f186, 0, 16);
                        C0422.m4684(c0114.f186, c0114.f190, c0114.f184);
                        i += 16;
                    }
                }
                while (i < bArr.length) {
                    if (c0114.f178 == 16) {
                        c0114.f181 += 128;
                        m4793(c0114, c0114.f192);
                        m4798(c0114);
                        System.arraycopy(c0114.f188, 0, c0114.f186, 0, 16);
                        C0422.m4684(c0114.f186, c0114.f190, c0114.f184);
                        c0114.f178 = 0;
                    }
                    if (z) {
                        b = (byte) (bArr[i] ^ c0114.f186[c0114.f178]);
                        bArr2[i] = b;
                    } else {
                        b = bArr2[i];
                        bArr[i] = (byte) (c0114.f186[c0114.f178] ^ b);
                    }
                    byte[] bArr5 = c0114.f192;
                    int i7 = c0114.f178;
                    c0114.f178 = i7 + 1;
                    bArr5[i7] = (byte) (b ^ bArr5[i7]);
                    i++;
                }
                return;
            }
            throw new C0537(C0164.m3504(85, 18, 10));
        }
        throw new C0537(C0164.m3504(67, 18, 64));
    }

    public static long m4796(byte[] bArr, int i) {
        return (((long) bArr[i + 3]) & 255) | (((long) (bArr[i] << Ascii.CAN)) & 4278190080L) | (((long) (bArr[i + 1] << 16)) & 16711680) | (((long) (bArr[i + 2] << 8)) & 65280);
    }

    public static void m4797(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i >>> 24);
        bArr[i2 + 1] = (byte) (i >>> 16);
        bArr[i2 + 2] = (byte) (i >>> 8);
        bArr[i2 + 3] = (byte) i;
    }

    public static void m4798(C0114 c0114) throws C0537 {
        int i = c0114.f187;
        if (i != 0) {
            c0114.f187 = i - 1;
            for (int i2 = 15; i2 >= 12; i2--) {
                byte[] bArr = c0114.f188;
                byte b = (byte) (bArr[i2] + 1);
                bArr[i2] = b;
                if ((b & 255) != 0) {
                    return;
                }
            }
            return;
        }
        throw new C0537(C0164.m3504(CipherSuite.TLS_PSK_WITH_3DES_EDE_CBC_SHA, 16, 119));
    }
}
