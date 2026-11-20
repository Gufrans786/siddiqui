package nts;

import androidx.appcompat.app.AppCompatDelegate;
import com.google.common.base.Ascii;

public class C0378 {

    public static byte[] f1958;

    public C0299 f1959 = null;

    public short[] f1960;

    public byte[] f1961;

    public short[] f1962;

    public byte f1963;

    static {
        byte[] bArr = new byte[16];
        f1958 = bArr;
        bArr[0] = 0;
        bArr[1] = 8;
        bArr[2] = 4;
        bArr[3] = Ascii.FF;
        for (int i = 0; i < 4; i++) {
            byte[] bArr2 = f1958;
            bArr2[i + 4] = (byte) ((bArr2[i] + 2) & 15);
            bArr2[i + 8] = (byte) ((bArr2[i] + 1) & 15);
            bArr2[i + 12] = (byte) ((bArr2[i] + 3) & 15);
        }
    }

    public C0378(int i, int i2) {
        this.f1963 = (byte) i2;
        this.f1962 = new short[i];
        this.f1960 = new short[i];
        this.f1961 = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            this.f1962[i3] = 0;
            this.f1960[i3] = 0;
            this.f1961[i3] = 0;
        }
    }

    public static short m4472(int i) throws RuntimeException {
        byte[] bArr = f1958;
        return (short) ((bArr[i >> 12] & Ascii.SI) | (bArr[i & 15] << Ascii.FF) | (bArr[(i >> 4) & 15] << 8) | (bArr[(i >> 8) & 15] << 4));
    }

    public void m4475() throws C0414 {
        short[] sArr;
        try {
            m4474(this.f1962).m5408(this.f1961, 0);
            m4477(this.f1961, m4478(this.f1961));
        } catch (C0414 e) {
            if (e.f2136 != 132) {
                throw e;
            }
            int i = 0;
            while (true) {
                sArr = this.f1962;
                if (i >= sArr.length || sArr[i] != 0) {
                    break;
                } else {
                    i++;
                }
            }
            if (i != sArr.length) {
                this.f1961[i] = 1;
            } else {
                this.f1961[0] = 1;
            }
        }
    }

    public int m4473() {
        int length = this.f1961.length;
        do {
            length--;
            if (this.f1961[length] != 0) {
                break;
            }
        } while (length > 0);
        return length + 1;
    }

    public void m4476(int i) {
        this.f1959.m4162(this.f1960[i], this.f1961[i]);
    }

    public final C0536 m4474(short[] sArr) throws C0414 {
        C0431 c0431 = new C0431(sArr, sArr.length);
        while (c0431.f2237 > 1) {
            C0536 c0536 = new C0536(c0431.m4790(), c0431.m4790());
            int i = c0431.f2237;
            if (i != c0431.f2238.length) {
                c0431.f2237 = i + 1;
                int i2 = c0431.f2237 - 1;
                while (i2 > 0) {
                    C0536[] c0536Arr = c0431.f2238;
                    int i3 = (i2 - 1) / 2;
                    if (c0536Arr[i3].f3110 <= c0536.f3110) {
                        break;
                    }
                    c0536Arr[i2] = c0536Arr[i3];
                    i2 = i3;
                }
                c0431.f2238[i2] = c0536;
            } else {
                throw new C0414(199, C0177.m3567(54, 14, 85));
            }
        }
        return c0431.m4790();
    }

    public final short[] m4478(byte[] bArr) throws C0414 {
        byte b;
        int i;
        byte b2;
        byte[] bArr2 = new byte[this.f1963 + 100];
        int i2 = 0;
        while (true) {
            b = this.f1963;
            if (i2 >= b + 100) {
                break;
            }
            bArr2[i2] = 0;
            i2++;
        }
        short[] sArr = new short[b + 1];
        for (int i3 = 0; i3 <= this.f1963; i3++) {
            sArr[i3] = 0;
        }
        boolean z = false;
        for (int i4 = 0; i4 < bArr.length; i4++) {
            byte b3 = bArr[i4];
            byte b4 = this.f1963;
            if (b3 > b4) {
                bArr2[b3] = (byte) (bArr2[b3] + 1);
                bArr[i4] = b4;
                z = true;
            }
            byte b5 = bArr[i4];
            sArr[b5] = (short) (sArr[b5] + 1);
        }
        if (z) {
            int i5 = this.f1963 + 99;
            int i6 = 0;
            int i7 = 0;
            while (true) {
                int i8 = this.f1963;
                if (i5 >= i8 + 1) {
                    if (i6 % 2 == 0) {
                        int i9 = i6 / 2;
                        byte b6 = bArr2[i5];
                        i7 += b6 + i9;
                        i6 = i9 + b6;
                        i5--;
                    } else {
                        throw new C0414(199, C0177.m3567(92, 16, 82));
                    }
                } else {
                    while (true) {
                        i8--;
                        if (sArr[i8] != 0) {
                            while (true) {
                                sArr[i8] = (short) (sArr[i8] - 1);
                                i = i8 + 1;
                                sArr[i] = (short) (sArr[i] + 1);
                                b2 = this.f1963;
                                i7 -= 1 << (b2 - i8);
                                if (i7 <= 0 || i >= b2) {
                                    break;
                                }
                                i8 = i;
                            }
                            if (i7 <= 0) {
                                break;
                            }
                            i8 = i;
                        }
                    }
                    if (i7 < 0) {
                        short s = (short) (i7 / 2);
                        sArr[b2] = (short) (sArr[b2] + s);
                        int i10 = b2 - 1;
                        sArr[i10] = (short) (sArr[i10] - s);
                    }
                    try {
                        short[] sArr2 = this.f1962;
                        C0431 c0431 = new C0431(sArr2, sArr2.length);
                        for (int i11 = this.f1963; i11 >= 1; i11--) {
                            for (int i12 = 0; i12 < sArr[i11]; i12++) {
                                bArr[c0431.m4790().f3109] = (byte) i11;
                            }
                        }
                        break;
                    } catch (C0414 e) {
                        if (e.f2136 == 132) {
                            throw new C0414(199, C0177.m3567(68, 24, 41));
                        }
                        throw e;
                    }
                }
            }
        }
        return sArr;
    }

    public final void m4477(byte[] bArr, short[] sArr) throws C0414 {
        sArr[0] = 0;
        int[] iArr = new int[this.f1963 + 1];
        int i = 0;
        for (int i2 = 1; i2 <= this.f1963; i2++) {
            iArr[i2] = i;
            i += sArr[i2] << (16 - i2);
        }
        if (i == 65536) {
            for (int i3 = 0; i3 < bArr.length; i3++) {
                byte b = bArr[i3];
                if (b != 0) {
                    this.f1960[i3] = m4472(iArr[b]);
                    byte b2 = bArr[i3];
                    iArr[b2] = iArr[b2] + (1 << (16 - b2));
                }
            }
            return;
        }
        throw new C0414(199, C0177.m3567(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 19, 67));
    }
}
