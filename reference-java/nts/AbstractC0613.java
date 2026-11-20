package nts;

public abstract class AbstractC0613 implements InterfaceC0126 {

    public byte[] f3364;

    public int f3365;

    public int f3366;

    public byte[] f3367;

    public int f3368;

    public int f3369;

    public int f3370;

    public byte[] f3371;

    public int f3372;

    public boolean f3374 = false;

    public boolean f3373 = false;

    public AbstractC0613(byte[] bArr, int i, int i2, int i3, int i4, int i5) {
        this.f3371 = null;
        this.f3364 = null;
        this.f3367 = null;
        this.f3368 = 0;
        this.f3370 = 0;
        this.f3372 = i;
        this.f3366 = i5;
        this.f3365 = i3;
        this.f3369 = i4;
        this.f3364 = bArr != null ? (byte[]) bArr.clone() : null;
        int i6 = this.f3372;
        this.f3371 = new byte[i6];
        this.f3367 = new byte[i6 * 2];
        this.f3368 = 0;
        this.f3370 = 0;
    }

    public abstract void mo5343(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception;

    public abstract void mo5344(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception;

    public abstract void mo5345(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception;

    public abstract void mo5346(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception;

    public abstract void mo5347(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception;

    public int m5641(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
        int i4;
        int i5;
        int i6;
        int i7 = 0;
        while (true) {
            i4 = this.f3368;
            i5 = i4 + i2;
            i6 = i5 - i7;
            int i8 = this.f3372;
            if (i6 <= i8 * 2) {
                break;
            }
            i7 += i8;
        }
        if (i7 <= 0) {
            System.arraycopy(bArr, i, this.f3367, i4, i2);
            this.f3368 += i2;
            return i7;
        }
        byte[] bArr3 = new byte[i5];
        System.arraycopy(this.f3367, 0, bArr3, 0, i4);
        System.arraycopy(bArr, i, bArr3, this.f3368, i2);
        mo5343(bArr3, 0, i7, bArr2, i3);
        this.f3368 = i6;
        System.arraycopy(bArr3, i7, this.f3367, 0, i6);
        return i7;
    }

    public abstract void mo3691(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception;

    public abstract void mo5348(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception;

    @Override
    public boolean mo3223() {
        return this.f3374;
    }

    public abstract void mo5349(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception;

    @Override
    public int mo3121(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
        if (i + i2 > bArr.length) {
            throw new Exception(C0642.m5846(0, 64, 115));
        }
        if (i3 + i2 > bArr2.length) {
            throw new Exception(C0642.m5846(64, 65, 82));
        }
        if (this.f3373) {
            mo3691(bArr, i, i2, bArr2, i3);
            return i2;
        }
        int i4 = this.f3365;
        if (i4 != 4 && i4 != 3 && (i4 != 6 || this.f3369 != 1)) {
            int i5 = this.f3372;
            i2 = (i2 / i5) * i5;
        }
        return m5642(bArr, i, i2, bArr2, i3);
    }

    public int m5642(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
        int i4 = this.f3365;
        if (i4 == 2) {
            mo5349(bArr, i, i2, bArr2, i3);
            return i2;
        }
        if (i4 == 1) {
            mo5343(bArr, i, i2, bArr2, i3);
            return i2;
        }
        if (i4 == 3) {
            if (this.f3366 == 8) {
                mo5348(bArr, i, i2, bArr2, i3);
                return i2;
            }
            mo5347(bArr, i, i2, bArr2, i3);
            return i2;
        }
        if (i4 == 4) {
            if (this.f3366 == 8) {
                mo5345(bArr, i, i2, bArr2, i3);
                return i2;
            }
            mo5346(bArr, i, i2, bArr2, i3);
            return i2;
        }
        if (i4 == 5) {
            return m5641(bArr, i, i2, bArr2, i3);
        }
        if (i4 == 6) {
            mo5344(bArr, i, i2, bArr2, i3);
        }
        return i2;
    }

    public void m5643(byte[] bArr) {
        for (int length = bArr.length - 1; length >= 0; length--) {
            byte b = (byte) ((bArr[length] + 1) & 255);
            bArr[length] = b;
            if (b != 0) {
                return;
            }
        }
    }
}
