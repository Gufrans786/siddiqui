package nts;

public class C0299 {

    public int f1606;

    public int f1608;

    public int f1609;

    public int f1610;

    public byte[] f1611 = new byte[33068];

    public int f1607 = 33048;

    public boolean m4158() {
        return this.f1608 == 0;
    }

    public void m4159() {
        byte[] bArr = this.f1611;
        byte[] bArr2 = new byte[bArr.length * 2];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        this.f1611 = bArr2;
        this.f1607 = bArr2.length - 20;
    }

    public void m4161() {
        if (this.f1608 == this.f1611.length) {
            m4159();
        }
        int i = this.f1606;
        if (i > 0) {
            byte[] bArr = this.f1611;
            int i2 = this.f1608;
            this.f1608 = i2 + 1;
            bArr[i2] = (byte) this.f1609;
        }
        if (i > 8) {
            byte[] bArr2 = this.f1611;
            int i3 = this.f1608;
            this.f1608 = i3 + 1;
            bArr2[i3] = (byte) (this.f1609 >> 8);
        }
        this.f1609 = 0;
        this.f1606 = 0;
    }

    public void m4162(int i, int i2) {
        int i3 = this.f1609;
        int i4 = this.f1606;
        this.f1609 = (i << i4) | i3;
        int i5 = i4 + i2;
        this.f1606 = i5;
        if (i5 >= 16) {
            if (this.f1608 > this.f1607) {
                m4159();
            }
            byte[] bArr = this.f1611;
            int i6 = this.f1608;
            int i7 = i6 + 1;
            this.f1608 = i7;
            int i8 = this.f1609;
            bArr[i6] = (byte) i8;
            this.f1608 = i6 + 2;
            bArr[i7] = (byte) (i8 >> 8);
            this.f1609 = i8 >>> 16;
            this.f1606 -= 16;
        }
    }

    public int m4160(byte[] bArr, int i, int i2) {
        int i3 = this.f1606;
        if (i3 >= 8) {
            byte[] bArr2 = this.f1611;
            int i4 = this.f1608;
            this.f1608 = i4 + 1;
            int i5 = this.f1609;
            bArr2[i4] = (byte) i5;
            this.f1609 = i5 >>> 8;
            this.f1606 = i3 - 8;
        }
        int iMin = Math.min(i2, this.f1608 - this.f1610);
        System.arraycopy(this.f1611, this.f1610, bArr, i, iMin);
        int i6 = this.f1610 + iMin;
        this.f1610 = i6;
        if (i6 == this.f1608) {
            this.f1608 = 0;
            this.f1610 = 0;
        }
        return iMin;
    }
}
