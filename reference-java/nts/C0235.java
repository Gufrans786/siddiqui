package nts;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import ch.qos.logback.core.net.SyslogConstants;
import com.google.common.base.Ascii;

public class C0235 extends AbstractC0317 {

    public static final int[] f836 = {1518500249, 1859775393, -1894007588, -899497514};

    public int[] f837 = new int[20];

    public int f838 = 0;

    public byte[] f841 = new byte[64];

    public int f843 = 0;

    public int f839 = 0;

    public boolean f840 = false;

    public int[] f842 = new int[80];

    public C0235() {
        this.f1703 = SyslogConstants.LOG_LOCAL4;
        mo3250();
    }

    public Object clone() throws CloneNotSupportedException {
        C0235 c0235 = new C0235();
        int i = 0;
        for (int i2 = 0; i2 < 20; i2++) {
            c0235.f837[i2] = this.f837[i2];
        }
        c0235.f838 = this.f838;
        int i3 = 0;
        while (true) {
            byte[] bArr = this.f841;
            if (i3 >= bArr.length) {
                break;
            }
            c0235.f841[i3] = bArr[i3];
            i3++;
        }
        c0235.f843 = this.f843;
        c0235.f839 = this.f839;
        c0235.f840 = this.f840;
        while (true) {
            int[] iArr = this.f842;
            if (i >= iArr.length) {
                return c0235;
            }
            c0235.f842[i] = iArr[i];
            i++;
        }
    }

    public final void m3710() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9 = 0;
        while (true) {
            if (i9 >= 16) {
                break;
            }
            int[] iArr = this.f842;
            byte[] bArr = this.f841;
            int i10 = i9 * 4;
            int i11 = (bArr[i10] << Ascii.CAN) & ViewCompat.MEASURED_STATE_MASK;
            iArr[i9] = i11;
            int i12 = ((bArr[i10 + 1] << 16) & 16711680) | i11;
            iArr[i9] = i12;
            int i13 = i12 | ((bArr[i10 + 2] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
            iArr[i9] = i13;
            iArr[i9] = i13 | (bArr[i10 + 3] & 255);
            i9++;
        }
        for (i = 16; i < 80; i++) {
            int[] iArr2 = this.f842;
            int i14 = ((iArr2[i - 3] ^ iArr2[i - 8]) ^ iArr2[i - 14]) ^ iArr2[i - 16];
            iArr2[i] = (i14 >>> 31) | (i14 << 1);
        }
        int[] iArr3 = this.f837;
        int i15 = iArr3[0];
        int i16 = iArr3[1];
        int i17 = iArr3[2];
        int i18 = iArr3[3];
        int i19 = iArr3[4];
        int i20 = 0;
        while (true) {
            i2 = 20;
            if (i20 >= 20) {
                break;
            }
            int i21 = f836[0] + ((i15 << 5) | (i15 >>> 27)) + ((i16 & i17) | ((~i16) & i18)) + i19 + this.f842[i20];
            i20++;
            int i22 = i15;
            i15 = i21;
            i19 = i18;
            i18 = i17;
            i17 = (i16 >>> 2) | (i16 << 30);
            i16 = i22;
        }
        while (true) {
            int i23 = i15;
            i3 = i19;
            i19 = i18;
            i18 = i17;
            i4 = i16;
            i16 = i23;
            i5 = 40;
            if (i2 >= 40) {
                break;
            }
            i15 = f836[1] + ((i16 << 5) | (i16 >>> 27)) + ((i4 ^ i18) ^ i19) + i3 + this.f842[i2];
            i17 = (i4 >>> 2) | (i4 << 30);
            i2++;
        }
        while (true) {
            int i24 = i3;
            i3 = i19;
            i19 = i18;
            i6 = i4;
            i4 = i16;
            i7 = i24;
            i8 = 60;
            if (i5 >= 60) {
                break;
            }
            i16 = f836[2] + ((i4 << 5) | (i4 >>> 27)) + (((i19 | i3) & i6) | (i19 & i3)) + i7 + this.f842[i5];
            i18 = (i6 >>> 2) | (i6 << 30);
            i5++;
        }
        while (i8 < 80) {
            int i25 = f836[3] + ((i4 << 5) | (i4 >>> 27)) + ((i6 ^ i19) ^ i3) + i7 + this.f842[i8];
            i8++;
            int i26 = i3;
            i3 = i19;
            i19 = (i6 >>> 2) | (i6 << 30);
            i6 = i4;
            i4 = i25;
            i7 = i26;
        }
        int[] iArr4 = this.f837;
        iArr4[0] = iArr4[0] + i4;
        iArr4[1] = iArr4[1] + i6;
        iArr4[2] = iArr4[2] + i19;
        iArr4[3] = iArr4[3] + i3;
        iArr4[4] = iArr4[4] + i7;
        this.f838 = 0;
    }

    @Override
    public byte[] mo3413() {
        if (!C0320.f1715) {
            throw new C0414(TypedValues.TransitionType.TYPE_TO, C0465.m5116(0, 19, 102));
        }
        if (!this.f840) {
            int i = this.f838;
            if (i <= 55) {
                byte[] bArr = this.f841;
                this.f838 = i + 1;
                bArr[i] = -128;
                while (true) {
                    int i2 = this.f838;
                    if (i2 >= 56) {
                        break;
                    }
                    byte[] bArr2 = this.f841;
                    this.f838 = i2 + 1;
                    bArr2[i2] = 0;
                }
            } else {
                byte[] bArr3 = this.f841;
                this.f838 = i + 1;
                bArr3[i] = -128;
                while (true) {
                    int i3 = this.f838;
                    if (i3 >= 64) {
                        break;
                    }
                    byte[] bArr4 = this.f841;
                    this.f838 = i3 + 1;
                    bArr4[i3] = 0;
                }
                m3710();
                while (true) {
                    int i4 = this.f838;
                    if (i4 >= 56) {
                        break;
                    }
                    byte[] bArr5 = this.f841;
                    this.f838 = i4 + 1;
                    bArr5[i4] = 0;
                }
            }
            byte[] bArr6 = this.f841;
            int i5 = this.f843;
            bArr6[56] = (byte) (i5 >>> 24);
            bArr6[57] = (byte) (i5 >>> 16);
            bArr6[58] = (byte) (i5 >>> 8);
            bArr6[59] = (byte) i5;
            int i6 = this.f839;
            bArr6[60] = (byte) (i6 >>> 24);
            bArr6[61] = (byte) (i6 >>> 16);
            bArr6[62] = (byte) (i6 >>> 8);
            bArr6[63] = (byte) i6;
            m3710();
            for (int i7 = 0; i7 < 64; i7++) {
                this.f841[i7] = 0;
            }
            this.f839 = 0;
            this.f843 = 0;
            this.f840 = true;
        }
        this.f1702 = new byte[20];
        for (int i8 = 0; i8 < 20; i8++) {
            this.f1702[i8] = (byte) (this.f837[i8 >>> 2] >>> ((3 - (i8 & 3)) * 8));
        }
        return this.f1702;
    }

    @Override
    public void mo3250() {
        this.f839 = 0;
        this.f843 = 0;
        this.f838 = 0;
        int[] iArr = this.f837;
        iArr[0] = 1732584193;
        iArr[1] = -271733879;
        iArr[2] = -1732584194;
        iArr[3] = 271733878;
        iArr[4] = -1009589776;
        this.f840 = false;
    }

    @Override
    public void mo3412(byte[] bArr, int i, int i2) {
        if (!C0320.f1715) {
            throw new C0414(TypedValues.TransitionType.TYPE_TO, C0465.m5116(19, 19, 24));
        }
        if (bArr == null) {
            throw new C0304(C0465.m5116(38, 4, 95));
        }
        while (i2 > 0) {
            int iMin = Math.min(i2, 64 - this.f838);
            System.arraycopy(bArr, i, this.f841, this.f838, iMin);
            i += iMin;
            i2 -= iMin;
            int i3 = this.f838 + iMin;
            this.f838 = i3;
            int i4 = this.f839;
            int i5 = (iMin * 8) + i4;
            if (i4 < 0 && i5 >= 0) {
                int i6 = this.f843 + 1;
                this.f843 = i6;
                if (i6 == 0) {
                    return;
                }
            }
            this.f839 = i5;
            if (i3 == 64) {
                m3710();
            }
        }
    }
}
