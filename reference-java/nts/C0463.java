package nts;

import com.google.common.primitives.SignedBytes;

public class C0463 extends C0218 {
    public static void m5111(C0218.C0219 c0219, byte[] bArr, int i, int i2, boolean z) throws C0537 {
        int i3;
        byte[] bArr2;
        byte[] bArr3 = c0219.f803;
        if (bArr3 == null || bArr3.length < 7 || bArr3.length > 13) {
            throw new C0537(C0164.m3512(0, 14, 2));
        }
        byte[] bArr4 = c0219.f802;
        if (bArr4 == null || bArr4.length != c0219.f800) {
            throw new C0537(C0164.m3512(14, 23, 57));
        }
        int length = bArr3.length;
        int i4 = 15 - length;
        boolean z2 = true;
        if (i4 < 4 && i2 >= (1 << (i4 * 8))) {
            throw new C0537(C0164.m3512(37, 22, 117));
        }
        byte[] bArr5 = new byte[16];
        bArr5[0] = (byte) ((14 - length) & 7);
        byte[] bArr6 = c0219.f803;
        System.arraycopy(bArr6, 0, bArr5, 1, bArr6.length);
        C0422 c0422 = new C0422();
        c0422.mo3267(c0219.f804);
        c0422.mo3994(bArr5);
        c0422.f1690 = 6;
        c0422.f1686 = 1;
        C0155 c0155 = new C0155(new C0422(), c0219.f804);
        c0155.mo3250();
        int i5 = c0422.f1689 / 8;
        if (!z) {
            InterfaceC0126 interfaceC0126Mo4287 = c0422.mo4287();
            byte[] bArr7 = new byte[i5];
            try {
                System.arraycopy(c0219.f802, 0, bArr7, 0, c0219.f800);
                interfaceC0126Mo4287.mo3121(bArr7, 0, i5, bArr7, 0);
                int iMo3121 = i + interfaceC0126Mo4287.mo3121(bArr, i, i2, bArr, i);
                int i6 = (i2 - iMo3121) + i;
                byte[] bArr8 = new byte[i5];
                System.arraycopy(bArr, iMo3121, bArr8, 0, i6);
                System.arraycopy(interfaceC0126Mo4287.mo3122(bArr8, 0, i5), 0, bArr, iMo3121, i6);
                byte[] bArrM5112 = m5112(c0219, c0155, bArr, i, i2);
                for (int i7 = 0; i7 < c0219.f800; i7++) {
                    if (bArrM5112[i7] != bArr7[i7]) {
                        z2 = false;
                    }
                }
                if (!z2) {
                    throw new C0537(C0164.m3512(59, 31, 91));
                }
                return;
            } catch (Exception e) {
                throw new C0537(e.toString());
            }
        }
        InterfaceC0126 interfaceC0126Mo4285 = c0422.mo4285();
        byte[] bArrM5113 = m5112(c0219, c0155, bArr, i, i2);
        try {
            interfaceC0126Mo4285.mo3121(bArrM5113, 0, bArrM5113.length, bArrM5113, 0);
            System.arraycopy(bArrM5113, 0, c0219.f802, 0, c0219.f800);
            int i8 = i;
            while (true) {
                i3 = i + i2;
                if (i8 >= i3 - i5) {
                    break;
                }
                try {
                    interfaceC0126Mo4285.mo3121(bArr, i8, bArrM5113.length, bArr, i8);
                    i8 += i5;
                } catch (Exception e2) {
                    throw new C0537(e2.toString());
                }
            }
            int i9 = i3 - i8;
            if (i9 > 0) {
                bArr2 = new byte[i5];
                System.arraycopy(bArr, i8, bArr2, 0, i9);
            } else {
                bArr2 = new byte[0];
            }
            try {
                System.arraycopy(interfaceC0126Mo4285.mo3122(bArr2, 0, bArr2.length), 0, bArr, i8, i9);
            } catch (Exception e3) {
                throw new C0537(e3.toString());
            }
        } catch (Exception e4) {
            throw new C0537(e4.toString());
        }
    }

    public static byte[] m5112(C0218.C0219 c0219, C0155 c0155, byte[] bArr, int i, int i2) throws C0537 {
        byte[] bArr2 = new byte[16];
        byte[] bArr3 = c0219.f801;
        boolean z = bArr3 != null && bArr3.length > 0;
        if (z) {
            bArr2[0] = (byte) (bArr2[0] | SignedBytes.MAX_POWER_OF_TWO);
        }
        int i3 = 2;
        byte b = (byte) (bArr2[0] | ((byte) ((((c0219.f800 - 2) / 2) & 7) << 3)));
        bArr2[0] = b;
        byte[] bArr4 = c0219.f803;
        bArr2[0] = (byte) (b | ((byte) ((14 - bArr4.length) & 7)));
        System.arraycopy(bArr4, 0, bArr2, 1, bArr4.length);
        int i4 = i2;
        int i5 = 1;
        while (i4 > 0) {
            bArr2[16 - i5] = (byte) (i4 & 255);
            i4 >>>= 8;
            i5++;
        }
        c0155.mo3412(bArr2, 0, 16);
        if (z) {
            byte[] bArr5 = c0219.f801;
            if (bArr5.length < 65280) {
                c0155.m3414((byte) (bArr5.length >> 8));
                c0155.m3414((byte) c0219.f801.length);
            } else {
                c0155.m3414((byte) -1);
                c0155.m3414((byte) -2);
                c0155.m3414((byte) (c0219.f801.length >> 24));
                c0155.m3414((byte) (c0219.f801.length >> 16));
                c0155.m3414((byte) (c0219.f801.length >> 8));
                c0155.m3414((byte) c0219.f801.length);
                i3 = 6;
            }
            byte[] bArr6 = c0219.f801;
            c0155.mo3121(bArr6, 0, bArr6.length, null, 0);
            int length = (i3 + c0219.f801.length) % 16;
            if (length != 0) {
                while (length != 16) {
                    c0155.m3414((byte) 0);
                    length++;
                }
            }
        }
        c0155.mo3122(bArr, i, i2);
        return c0155.f1702;
    }
}
