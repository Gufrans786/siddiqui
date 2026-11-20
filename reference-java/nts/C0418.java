package nts;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.common.base.Ascii;

public class C0418 {

    public int f2150 = 5;

    public byte[] f2148 = new byte[0];

    public boolean f2143 = true;

    public boolean f2147 = true;

    public int f2141 = 0;

    public int f2142 = 0;

    public int f2146 = 0;

    public boolean f2149 = false;

    public boolean f2144 = false;

    public boolean f2145 = false;

    public int m4675(byte[] bArr, int i) {
        int i2 = 2;
        if (bArr.length - i < 2) {
            return i;
        }
        int i3 = i + 1;
        byte b = bArr[i];
        this.f2142 = b & 255;
        if ((b & Ascii.US) == 31) {
            throw new C0414(305, C0164.m3506(29, 20, 74));
        }
        int i4 = i + 2;
        int iM4677 = m4677(bArr, i3);
        int i5 = 0;
        boolean z = (this.f2142 & (-33)) == 0 && (iM4677 & (-33)) == 0;
        this.f2145 = z;
        if (z) {
            return i4;
        }
        if ((iM4677 & 128) > 0) {
            byte b2 = (byte) (iM4677 & (-129));
            boolean z2 = b2 == 0;
            this.f2149 = z2;
            if (z2) {
                this.f2144 = true;
                return i4;
            }
            if (b2 > 4) {
                throw new C0414(446, C0164.m3506(49, 15, 39));
            }
            this.f2146 = 0;
            if (i4 + b2 > bArr.length) {
                return i;
            }
            while (i5 < b2) {
                this.f2146 = (this.f2146 << 8) | m4677(bArr, i4);
                i2++;
                i5++;
                i4++;
            }
        } else {
            this.f2146 = iM4677;
        }
        this.f2144 = true;
        this.f2141 = i2;
        return i4;
    }

    public int mo3411(byte[] bArr, int i) throws C0414 {
        if (this.f2145) {
            return i;
        }
        if (!this.f2144) {
            i = m4675(bArr, i);
            if (!this.f2144) {
                return i;
            }
            if (!this.f2149 && this.f2146 == 0) {
                this.f2145 = true;
                return i;
            }
            if (this.f2143 && (this.f2142 & (-33)) != (this.f2150 & (-33))) {
                throw new C0414(222, C0164.m3506(64, 29, 104) + this.f2150 + C0164.m3506(93, 8, 15) + this.f2142);
            }
        }
        int iMo3110 = mo3110(bArr, i);
        if (this.f2145) {
            mo3155();
        }
        return iMo3110;
    }

    public int mo3110(byte[] bArr, int i) {
        if (this.f2149) {
            throw new C0414(TypedValues.TransitionType.TYPE_TO, C0164.m3506(13, 16, 105));
        }
        if (this.f2144) {
            int i2 = this.f2146;
            if (i + i2 <= bArr.length) {
                this.f2148 = C0259.m3865(bArr, i, i2);
                int i3 = i + this.f2146;
                this.f2145 = true;
                return m4678(bArr, i3);
            }
        }
        return i;
    }

    public int m4677(byte[] bArr, int i) {
        return bArr[i] & 255;
    }

    public void mo3155() {
    }

    public void mo3111(C0530 c0530) throws C0414 {
        c0530.m5379(this.f2148, this.f2150);
    }

    public void m4680(byte[] bArr) throws C0414 {
        mo3411(bArr, 0);
        if (!this.f2145) {
            throw new C0414(447, C0164.m3506(0, 13, 75));
        }
    }

    public void m4679() {
        this.f2150 = this.f2142;
    }

    public int m4678(byte[] bArr, int i) {
        if (this.f2149) {
            int i2 = i + 1;
            if (i2 >= bArr.length) {
                return i;
            }
            if ((bArr[i] & 255) != 0 || m4677(bArr, i2) != 0) {
                throw new C0414(446, C0164.m3506(101, 15, 115));
            }
            i += 2;
        }
        this.f2145 = true;
        return i;
    }

    public C0383 m4676() throws C0414 {
        C0530 c0530 = new C0530();
        mo3111(c0530);
        return c0530.m5388();
    }

    public byte[] mo3690() {
        C0530 c0530 = new C0530();
        mo3111(c0530);
        return c0530.m5388().f1974;
    }
}
