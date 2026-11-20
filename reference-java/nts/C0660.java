package nts;

import androidx.core.app.FrameMetricsAggregator;

public class C0660 {

    public short[] f3671;

    public C0660(byte[] bArr) throws C0414 {
        int i;
        int i2;
        int[] iArr = new int[16];
        for (int i3 = 0; i3 < 16; i3++) {
            iArr[i3] = 0;
        }
        int[] iArr2 = new int[16];
        for (int i4 = 0; i4 < 16; i4++) {
            iArr2[i4] = 0;
        }
        for (byte b : bArr) {
            if (b > 0) {
                iArr[b] = iArr[b] + 1;
            }
        }
        int i5 = 512;
        int i6 = 0;
        int i7 = 1;
        while (true) {
            i2 = 15;
            if (i7 > 15) {
                break;
            }
            iArr2[i7] = i6;
            int i8 = 16 - i7;
            int i9 = (iArr[i7] << i8) + i6;
            if (i7 >= 10) {
                i5 += ((i9 & 130944) - (i6 & 130944)) >> i8;
            }
            i7++;
            i6 = i9;
        }
        if ((i6 & 32767) != 0) {
            throw new C0414(101, C0558.m5481("Xu}}?rxrtfyc7rzz,~)ikj-ys\"", 0, 26, 1));
        }
        this.f3671 = new short[i5];
        int i10 = 512;
        for (i = 10; i2 >= i; i = 10) {
            int i11 = i6 & 130944;
            i6 -= iArr[i2] << (16 - i2);
            for (int i12 = i6 & 130944; i12 < i11; i12 += 128) {
                this.f3671[C0378.m4472(i12)] = (short) (((-i10) << 4) | i2);
                i10 += 1 << (i2 - 9);
            }
            i2--;
        }
        for (int i13 = 0; i13 < bArr.length; i13++) {
            byte b2 = bArr[i13];
            if (b2 != 0) {
                int i14 = iArr2[b2];
                int iM4472 = C0378.m4472(i14);
                if (b2 <= 9) {
                    do {
                        this.f3671[iM4472] = (short) ((i13 << 4) | b2);
                        iM4472 += 1 << b2;
                    } while (iM4472 < 512);
                } else {
                    short s = this.f3671[iM4472 & FrameMetricsAggregator.EVERY_DURATION];
                    int i15 = 1 << (s & 15);
                    int i16 = -(s >> 4);
                    do {
                        this.f3671[(iM4472 >> 9) | i16] = (short) ((i13 << 4) | b2);
                        iM4472 += 1 << b2;
                    } while (iM4472 < i15);
                }
                iArr2[b2] = i14 + (1 << (16 - b2));
            }
        }
    }

    public int m5875(C0328 c0328) {
        int i;
        int iM4345 = c0328.m4345(9);
        if (iM4345 < 0) {
            int i2 = c0328.f1779;
            short s = this.f3671[c0328.m4345(i2)];
            if (s < 0 || (i = s & 15) > i2) {
                return -1;
            }
            c0328.m4349(i);
            return s >> 4;
        }
        short s2 = this.f3671[iM4345];
        if (s2 >= 0) {
            c0328.m4349(s2 & 15);
            return s2 >> 4;
        }
        int i3 = -(s2 >> 4);
        int iM4346 = c0328.m4345(s2 & 15);
        if (iM4346 >= 0) {
            short s3 = this.f3671[(iM4346 >> 9) | i3];
            c0328.m4349(s3 & 15);
            return s3 >> 4;
        }
        int i4 = c0328.f1779;
        short s4 = this.f3671[(c0328.m4345(i4) >> 9) | i3];
        int i5 = s4 & 15;
        if (i5 > i4) {
            return -1;
        }
        c0328.m4349(i5);
        return s4 >> 4;
    }
}
