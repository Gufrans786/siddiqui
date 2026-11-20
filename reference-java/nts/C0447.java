package nts;

import com.google.common.base.Ascii;
import kotlin.UShort;

public class C0447 {

    public byte[] f2546 = {16, 17, Ascii.DC2, 0, 8, 7, 9, 6, 10, 5, Ascii.VT, 4, Ascii.FF, 3, Ascii.CR, 2, Ascii.SO, 1, Ascii.SI};

    public C0388 f2545 = new C0388(286, 15);

    public C0388 f2542 = new C0388(30, 15);

    public C0378 f2544 = new C0378(19, 7);

    public byte[] f2540 = new byte[16384];

    public short[] f2541 = new short[16384];

    public int f2543 = 0;

    public boolean m5084(int i) {
        byte[] bArr = this.f2540;
        int i2 = this.f2543;
        bArr[i2] = (byte) i;
        this.f2541[i2] = 0;
        this.f2543 = i2 + 1;
        short[] sArr = this.f2545.f1962;
        sArr[i] = (short) (sArr[i] + 1);
        return this.f2543 == 16384;
    }

    public final int m5085(int i) {
        if (i == 255) {
            return 285;
        }
        int i2 = 257;
        while (i >= 8) {
            i2 += 4;
            i >>= 1;
        }
        return i2 + i;
    }

    public final int m5086(int i) {
        int i2;
        int i3 = i - 1;
        if (i3 > 511) {
            i3 >>= 8;
            i2 = 16;
        } else {
            i2 = 0;
        }
        if (i3 > 31) {
            i2 += 8;
            i3 >>= 4;
        }
        if (i3 > 7) {
            i2 += 4;
            i3 >>= 2;
        }
        if (i3 > 3) {
            i2 += 2;
            i3 >>= 1;
        }
        return i2 + i3;
    }

    public void m5087() {
        this.f2545 = new C0388(286, 15);
        this.f2542 = new C0388(30, 15);
        this.f2544 = new C0378(19, 7);
        for (int i = 0; i < 16384; i++) {
            this.f2540[i] = 0;
            this.f2541[i] = 0;
        }
        this.f2543 = 0;
    }

    public boolean m5089(int i, int i2) {
        byte[] bArr = this.f2540;
        int i3 = this.f2543;
        int i4 = i - 3;
        bArr[i3] = (byte) i4;
        this.f2541[i3] = (short) i2;
        this.f2543 = i3 + 1;
        short[] sArr = this.f2545.f1962;
        int iM5085 = m5085(i4);
        sArr[iM5085] = (short) (sArr[iM5085] + 1);
        short[] sArr2 = this.f2542.f1962;
        int iM5086 = m5086(i2);
        sArr2[iM5086] = (short) (sArr2[iM5086] + 1);
        return this.f2543 == 16384;
    }

    public void m5088(C0299 c0299, boolean z) throws C0414 {
        C0388 c0388 = this.f2545;
        short[] sArr = c0388.f1962;
        sArr[256] = (short) (sArr[256] + 1);
        c0388.m4475();
        this.f2542.m4475();
        this.f2545.m4572();
        this.f2542.m4572();
        this.f2545.m4575(this.f2544);
        this.f2542.m4575(this.f2544);
        this.f2544.m4475();
        int i = 4;
        for (int i2 = 18; i2 > i; i2--) {
            if (this.f2544.f1961[this.f2546[i2]] != 0) {
                i = i2 + 1;
            }
        }
        c0299.m4162(z ? 1 : 0, 1);
        c0299.m4162(2, 2);
        c0299.m4162(this.f2545.m4473() - 257, 5);
        c0299.m4162(this.f2542.m4473() - 1, 5);
        c0299.m4162(i - 4, 4);
        for (int i3 = 0; i3 < i; i3++) {
            c0299.m4162(this.f2544.f1961[this.f2546[i3]], 3);
        }
        this.f2545.m4574(c0299, this.f2544);
        this.f2542.m4574(c0299, this.f2544);
        this.f2545.f1959 = c0299;
        this.f2542.f1959 = c0299;
        for (int i4 = 0; i4 < this.f2543; i4++) {
            short s = this.f2541[i4];
            if (s == 0) {
                this.f2545.m4476(this.f2540[i4] & 255);
            } else {
                int i5 = this.f2540[i4] & 255;
                int i6 = s & UShort.MAX_VALUE;
                int iM5085 = m5085(i5);
                int iM5086 = m5086(i6);
                this.f2545.m4476(iM5085);
                if (iM5085 >= 261 && iM5085 <= 284) {
                    int i7 = (iM5085 - 261) / 4;
                    c0299.m4162(i5 & ((1 << i7) - 1), i7);
                }
                this.f2542.m4476(iM5086);
                if (iM5086 >= 4) {
                    int i8 = (iM5086 - 2) / 2;
                    c0299.m4162((i6 - 1) & ((1 << i8) - 1), i8);
                }
            }
        }
        this.f2545.m4476(256);
    }
}
