package nts;

public class C0328 {

    public byte[] f1783;

    public int f1782 = 0;

    public int f1780 = 0;

    public int f1781 = 0;

    public int f1779 = 0;

    public int m4344(int i) {
        int iM4345 = m4345(i);
        if (iM4345 != -1) {
            m4349(i);
        }
        return iM4345;
    }

    public int m4345(int i) {
        int i2 = this.f1779;
        if (i2 < i) {
            int i3 = this.f1782;
            int i4 = this.f1780;
            if (i3 == i4) {
                return -1;
            }
            if (i3 == i4 - 1) {
                int i5 = i2 + 8;
                if (i5 < i) {
                    return -1;
                }
                int i6 = this.f1781;
                byte[] bArr = this.f1783;
                this.f1782 = i3 + 1;
                this.f1781 = ((bArr[i3] & 255) << i2) | i6;
                this.f1779 = i5;
            } else {
                int i7 = this.f1781;
                byte[] bArr2 = this.f1783;
                int i8 = i3 + 1;
                this.f1782 = i8;
                int i9 = bArr2[i3] & 255;
                this.f1782 = i3 + 2;
                this.f1781 = ((((bArr2[i8] & 255) << 8) | i9) << i2) | i7;
                this.f1779 = i2 + 16;
            }
        }
        return ((1 << i) - 1) & this.f1781;
    }

    public int m4346(int i) throws C0414 {
        int iM4345 = m4345(i);
        if (iM4345 != -1) {
            m4349(i);
        }
        return iM4345;
    }

    public void m4349(int i) {
        this.f1781 >>= i;
        this.f1779 -= i;
    }

    public boolean m4350() {
        return this.f1782 == this.f1780;
    }

    public int m4343() {
        return (this.f1780 - this.f1782) + (this.f1779 >> 3);
    }

    public void m4347() {
        int i = this.f1781;
        int i2 = this.f1779;
        this.f1781 = i >> (i2 & 7);
        this.f1779 = 65528 & i2;
    }

    public int m4348(byte[] bArr, int i, int i2) {
        int i3 = 0;
        while (true) {
            int i4 = this.f1779;
            if (i4 <= 0 || i2 <= 0) {
                break;
            }
            int i5 = this.f1781;
            bArr[i] = (byte) i5;
            this.f1781 = i5 >> 8;
            this.f1779 = i4 - 8;
            i2--;
            i3++;
            i++;
        }
        if (i2 == 0) {
            return i3;
        }
        int i6 = this.f1780;
        int i7 = this.f1782;
        int i8 = i6 - i7;
        if (i2 > i8) {
            i2 = i8;
        }
        System.arraycopy(this.f1783, i7, bArr, i, i2);
        int i9 = this.f1782 + i2;
        this.f1782 = i9;
        if (((i9 - this.f1780) & 1) != 0) {
            byte[] bArr2 = this.f1783;
            this.f1782 = i9 + 1;
            this.f1781 = bArr2[i9] & 255;
            this.f1779 = 8;
        }
        return i3 + i2;
    }
}
