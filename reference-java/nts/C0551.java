package nts;

import androidx.core.view.MotionEventCompat;
import kotlin.UShort;

public class C0551 extends AbstractC0444 {
    public C0551() {
        this.f1687 = new C0509[]{new C0509(128, 128, 0)};
        this.f1684 = new C0509[]{new C0509(64, 64, 0)};
        this.f1689 = 64;
        this.f1685 = 64;
        this.f1691 = 128;
        this.f1690 = 1;
        this.f1686 = 1;
    }

    public static void m5434(byte[] bArr, short[] sArr) {
        for (int i = 0; i < sArr.length; i++) {
            if (i < bArr.length / 2) {
                sArr[i] = m5437(bArr, i * 2);
            } else {
                sArr[i] = (short) ((((sArr[(i + 1) % 8 != 0 ? i - 7 : i - 15] & UShort.MAX_VALUE) << 9) | ((sArr[(i + 2) % 8 < 2 ? i - 14 : i - 6] & UShort.MAX_VALUE) >>> 7)) & 65535);
            }
        }
    }

    public static short m5436(short s, short s2) {
        short s3 = (short) (((s & UShort.MAX_VALUE) - 1) & 65535);
        short s4 = (short) (((s2 & UShort.MAX_VALUE) - 1) & 65535);
        int i = s3 & UShort.MAX_VALUE;
        int i2 = s4 & UShort.MAX_VALUE;
        int i3 = (i * i2) + i + i2 + 1;
        int i4 = ((short) (i3 & 65535)) & UShort.MAX_VALUE;
        int i5 = ((short) ((i3 >>> 16) & 65535)) & UShort.MAX_VALUE;
        return (short) (((i4 - i5) + (i4 > i5 ? 0 : 1)) & 65535);
    }

    public static short m5437(byte[] bArr, int i) {
        return (short) ((bArr[i + 1] & 255) | ((bArr[i] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK));
    }

    @Override
    public void mo3115() {
        mo3994(C0308.m4227(this.f1689 / 8));
    }

    @Override
    public void mo3116() throws C0537 {
        super.mo3267(C0308.m4227(this.f1691 / 8));
    }

    public static void m5438(short s, byte[] bArr, int i) {
        bArr[i] = (byte) (s >>> 8);
        bArr[i + 1] = (byte) s;
    }

    @Override
    public InterfaceC0126 mo3118(byte[] bArr, byte[] bArr2) {
        return new C0300(bArr, bArr2, this.f1690, this.f1686, this.f1685);
    }

    public static void m5439(byte[] bArr, short[] sArr) {
        short sM5437 = m5437(bArr, 0);
        short sM5438 = m5437(bArr, 2);
        short sM5439 = m5437(bArr, 4);
        short sM54310 = m5437(bArr, 6);
        int i = 8;
        int i2 = 0;
        while (i > 0) {
            short sM5436 = m5436(sM5437, sArr[i2]);
            short s = (short) ((sM5438 + sArr[i2 + 1]) & 65535);
            short s2 = (short) ((sM5439 + sArr[i2 + 2]) & 65535);
            short sM54311 = m5436(sM54310, sArr[i2 + 3]);
            int i3 = i2 + 5;
            short sM54312 = m5436((short) (sM5436 ^ s2), sArr[i2 + 4]);
            i2 += 6;
            short sM54313 = m5436((short) (((s ^ sM54311) + sM54312) & 65535), sArr[i3]);
            short s3 = (short) (65535 & (sM54312 + sM54313));
            sM5437 = (short) (sM5436 ^ sM54313);
            sM54310 = (short) (sM54311 ^ s3);
            short s4 = (short) (s2 ^ sM54313);
            i--;
            sM5439 = (short) (s ^ s3);
            sM5438 = s4;
        }
        m5438(m5436(sM5437, sArr[i2]), bArr, 0);
        m5438((short) ((sM5439 + sArr[i2 + 1]) & 65535), bArr, 2);
        m5438((short) ((sM5438 + sArr[i2 + 2]) & 65535), bArr, 4);
        m5438(m5436(sM54310, sArr[i2 + 3]), bArr, 6);
    }

    @Override
    public InterfaceC0126 mo3117(byte[] bArr, byte[] bArr2) {
        return new C0597(bArr, bArr2, this.f1690, this.f1686, this.f1685);
    }

    @Override
    public void mo3267(byte[] bArr) throws C0537 {
        super.mo3267(bArr);
    }

    public static short m5435(short s) {
        int i = s & UShort.MAX_VALUE;
        int i2 = 1;
        if (i <= 1) {
            return s;
        }
        int i3 = 0;
        int i4 = 65537;
        while (true) {
            int i5 = i4 % i;
            int i6 = i4 / i;
            if (i5 == 0) {
                break;
            }
            int i7 = i3 - (i6 * i2);
            i3 = i2;
            i2 = i7;
            i4 = i;
            i = i5;
        }
        if (i2 < 0) {
            i2 += 65537;
        }
        return (short) (i2 & 65535);
    }
}
