package nts;

import java.io.IOException;
import kotlin.UShort;

public class C0150 {

    public C0662 f444;

    public AbstractC0256 f445;

    public byte[] f446;

    public C0150(C0662 c0662) {
        C0188 c0188 = new C0188();
        this.f444 = c0662;
        this.f446 = new byte[4096];
        this.f445 = c0188;
    }

    public final int m3408() throws IOException {
        int iM3825;
        int i;
        AbstractC0256 abstractC0256 = this.f445;
        byte[] bArr = this.f446;
        int length = bArr.length;
        C0188 c0188 = (C0188) abstractC0256;
        if (c0188.f1255.m4158()) {
            int i2 = c0188.f1248;
            int i3 = c0188.f1249;
            if (i2 < i3) {
                int i4 = c0188.f1250;
                if ((i3 + i4) - i2 >= 65535) {
                    int i5 = c0188.f1254 - 32768;
                    byte[] bArr2 = c0188.f1256;
                    System.arraycopy(bArr2, i5, bArr2, 0, i4 - i5);
                    for (int i6 = 0; i6 < 16384; i6++) {
                        short[] sArr = c0188.f656;
                        short s = sArr[i6];
                        int i7 = s & UShort.MAX_VALUE;
                        if (i7 != 65535) {
                            if (i7 < i5) {
                                sArr[i6] = -1;
                            } else {
                                sArr[i6] = (short) (s - ((short) i5));
                            }
                        }
                    }
                    int i8 = i5;
                    while (true) {
                        i = c0188.f1254;
                        if (i8 >= i) {
                            break;
                        }
                        short[] sArr2 = c0188.f658;
                        int i9 = sArr2[i8] & UShort.MAX_VALUE;
                        if (i9 == 65535 || i9 < i5) {
                            c0188.f658[i8 - i5] = -1;
                        } else {
                            sArr2[i8 - i5] = (short) (i9 - i5);
                        }
                        i8++;
                    }
                    c0188.f1254 = i - i5;
                    c0188.f1250 -= i5;
                }
                int iMin = Math.min(65535 - c0188.f1254, c0188.f1249 - c0188.f1248);
                System.arraycopy(c0188.f1253, c0188.f1248, c0188.f1256, c0188.f1250, iMin);
                c0188.f1250 += iMin;
                c0188.f1248 += iMin;
            }
            if (c0188.f1254 + 257 > c0188.f1250 || !c0188.m3624(true)) {
                int i10 = c0188.f1251;
                if (i10 == 1 || i10 == 3) {
                    c0188.m3624(false);
                    if (c0188.f1254 != c0188.f1250) {
                        c0188.f657.m5088(c0188.f1255, false);
                        c0188.f657.m5087();
                        iM3825 = c0188.m3825(bArr, 0, length);
                    } else {
                        c0188.f657.m5088(c0188.f1255, c0188.f1251 == 1);
                        c0188.f657.m5087();
                        if (c0188.f1251 == 1) {
                            c0188.f1255.m4161();
                        }
                        c0188.f1251 = c0188.f1251 != 1 ? 0 : 2;
                        iM3825 = c0188.m3825(bArr, 0, length);
                    }
                } else {
                    iM3825 = i10 == 2 ? c0188.m3825(bArr, 0, length) : 0;
                }
            } else {
                c0188.f657.m5088(c0188.f1255, false);
                c0188.f657.m5087();
                iM3825 = c0188.m3825(bArr, 0, length);
            }
        } else {
            iM3825 = c0188.m3825(bArr, 0, length);
        }
        byte[] bArr3 = this.f446;
        if (iM3825 > 0) {
            this.f444.m5878(bArr3, 0, iM3825);
        }
        return iM3825;
    }

    public void m3410(byte[] bArr, int i, int i2) throws IOException {
        while (i2 > 0) {
            int i3 = i2 < 1000 ? i2 : 1000;
            AbstractC0256 abstractC0256 = this.f445;
            abstractC0256.f1253 = bArr;
            abstractC0256.f1248 = i;
            i += i3;
            abstractC0256.f1249 = i;
            while (!this.f445.m3824()) {
                if (m3408() <= 0 && !this.f445.m3824()) {
                    throw new IOException(C0558.m5481("?\u0019\u0012\u0016\u0018\u0018_\n\u001eP\u0017\u0017\u0013\u0018\u0016\u0002\fH\u0002\u0004\u001d\u0019\u001b@A{wu|t2gs=zz~u{oa%gkl!km|xz!", 0, 24, 97));
                }
            }
            i2 -= i3;
        }
    }

    public void m3409(int i) throws IOException {
        this.f444.m5877((byte) i);
        this.f444.m5877((byte) (i >> 8));
    }
}
