package nts;

import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class C0668 {

    public static final byte[] f3680 = {-90, -90, -90, -90, -90, -90, -90, -90};

    public Cipher f3681;

    public static void m5896(long j, byte[] bArr, int i) {
        for (int i2 = 7; i2 >= 0; i2--) {
            bArr[i + i2] = (byte) (255 & j);
            j >>>= 8;
        }
    }

    public byte[] m5897(byte[] bArr, byte[] bArr2, int i, int i2) throws Exception {
        if (C0320.f1718) {
            return m5899(bArr, null, bArr2, i, i2, true);
        }
        byte[] bArr3 = f3680;
        if (i2 < 16 || i2 % 8 != 0 || bArr3.length != 8) {
            throw new C0537(C0164.m3505(0, 15, 19));
        }
        C0109 c0109 = new C0109();
        c0109.f1686 = 1;
        c0109.f1690 = 2;
        c0109.mo3267(bArr);
        InterfaceC0126 interfaceC0126Mo4285 = c0109.mo4285();
        byte[] bArr4 = new byte[i2 + 8];
        byte[] bArr5 = new byte[16];
        int i3 = i2 / 8;
        System.arraycopy(bArr3, 0, bArr4, 0, 8);
        System.arraycopy(bArr2, i, bArr4, 8, i2);
        for (int i4 = 0; i4 <= 5; i4++) {
            for (int i5 = 1; i5 <= i3; i5++) {
                System.arraycopy(bArr4, 0, bArr5, 0, 8);
                int i6 = i5 * 8;
                System.arraycopy(bArr4, i6, bArr5, 8, 8);
                interfaceC0126Mo4285.mo3121(bArr5, 0, 16, bArr5, 0);
                m5896((i3 * i4) + i5, bArr4, 0);
                for (int i7 = 0; i7 < 8; i7++) {
                    bArr4[i7] = (byte) (bArr4[i7] ^ bArr5[i7]);
                }
                System.arraycopy(bArr5, 8, bArr4, i6, 8);
            }
        }
        return bArr4;
    }

    public byte[] m5898(byte[] bArr, byte[] bArr2, int i, int i2) throws Exception {
        if (C0320.f1718) {
            return m5899(bArr, null, bArr2, i, i2, false);
        }
        byte[] bArr3 = f3680;
        if (i2 < 16 || i2 % 8 != 0 || bArr3.length != 8) {
            throw new C0537(C0164.m3505(15, 15, 86));
        }
        C0109 c0109 = new C0109();
        c0109.f1686 = 1;
        c0109.f1690 = 2;
        c0109.mo3267(bArr);
        InterfaceC0126 interfaceC0126Mo4287 = c0109.mo4287();
        int i3 = i2 - 8;
        byte[] bArr4 = new byte[i3];
        byte[] bArr5 = new byte[8];
        byte[] bArr6 = new byte[16];
        int i4 = (i2 / 8) - 1;
        System.arraycopy(bArr2, i, bArr5, 0, 8);
        System.arraycopy(bArr2, i + 8, bArr4, 0, i3);
        for (int i5 = 5; i5 >= 0; i5--) {
            for (int i6 = i4; i6 > 0; i6--) {
                m5896((i4 * i5) + i6, bArr6, 0);
                for (int i7 = 0; i7 < 8; i7++) {
                    bArr6[i7] = (byte) (bArr6[i7] ^ bArr5[i7]);
                }
                int i8 = (i6 - 1) * 8;
                System.arraycopy(bArr4, i8, bArr6, 8, 8);
                interfaceC0126Mo4287.mo3121(bArr6, 0, 16, bArr6, 0);
                System.arraycopy(bArr6, 0, bArr5, 0, 8);
                System.arraycopy(bArr6, 8, bArr4, i8, 8);
            }
        }
        for (int i9 = 0; i9 < 8; i9++) {
            if (bArr3[i9] != bArr5[i9]) {
                throw new C0537(C0164.m3505(30, 23, 25));
            }
        }
        return bArr4;
    }

    public final byte[] m5899(byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2, boolean z) throws C0537 {
        if (bArr2 != null && bArr2.length != 0 && !Arrays.equals(f3680, bArr2)) {
            throw new C0414(C0164.m3505(53, 35, 25));
        }
        try {
            if (this.f3681 == null) {
                this.f3681 = Cipher.getInstance(C0164.m3505(88, 5, 52), C0164.m3505(93, 6, 21));
            }
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, C0164.m3505(99, 3, 41));
            if (z) {
                SecretKeySpec secretKeySpec2 = new SecretKeySpec(bArr3, i, i2, C0164.m3505(102, 3, 25));
                this.f3681.init(3, secretKeySpec);
                return this.f3681.wrap(secretKeySpec2);
            }
            if (i != 0 || bArr3.length != i2) {
                byte[] bArr4 = new byte[i2];
                System.arraycopy(bArr3, i, bArr4, 0, i2);
                bArr3 = bArr4;
            }
            this.f3681.init(4, secretKeySpec);
            return this.f3681.unwrap(bArr3, C0164.m3505(105, 3, 32), 3).getEncoded();
        } catch (Exception e) {
            throw new C0537(e.getMessage());
        }
    }
}
