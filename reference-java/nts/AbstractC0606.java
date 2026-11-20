package nts;

public abstract class AbstractC0606 extends AbstractC0613 {
    public AbstractC0606(byte[] bArr, int i, int i2, int i3, int i4, int i5) {
        super(bArr, i, i2, i3, i4, i5);
    }

    @Override
    public void mo5343(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
        int i4;
        while (i2 > 0) {
            System.arraycopy(bArr, i, this.f3371, 0, this.f3372);
            mo3123();
            int i5 = 0;
            while (true) {
                i4 = this.f3372;
                if (i5 < i4) {
                    byte[] bArr3 = this.f3371;
                    byte b = bArr3[i5];
                    byte[] bArr4 = this.f3364;
                    bArr3[i5] = (byte) (b ^ bArr4[i5]);
                    bArr4[i5] = bArr[i];
                    i5++;
                    i++;
                }
            }
            System.arraycopy(this.f3371, 0, bArr2, i3, i4);
            int i6 = this.f3372;
            i3 += i6;
            i2 -= i6;
        }
    }

    @Override
    public void mo5344(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
        while (i2 > 0) {
            int i4 = 0;
            System.arraycopy(this.f3364, 0, this.f3371, 0, this.f3372);
            mo3123();
            int i5 = this.f3372;
            if (i2 < i5) {
                i5 = i2;
            }
            while (i4 < i5) {
                bArr2[i3] = (byte) (bArr[i] ^ this.f3371[i4]);
                i4++;
                i3++;
                i++;
            }
            i2 -= i5;
            m5643(this.f3364);
        }
    }

    public abstract void mo3123() throws Exception;

    @Override
    public void mo5345(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
        System.arraycopy(this.f3364, 0, this.f3371, 0, this.f3372);
        byte[] bArr3 = new byte[this.f3372];
        while (i2 > 0) {
            System.arraycopy(this.f3371, 0, bArr3, 0, this.f3372);
            mo3123();
            byte[] bArr4 = this.f3371;
            byte b = (byte) (bArr4[0] ^ bArr[i]);
            int i4 = this.f3372 - 1;
            bArr4[i4] = bArr[i];
            bArr2[i3] = b;
            i2--;
            System.arraycopy(bArr3, 1, bArr4, 0, i4);
            i3++;
            i++;
        }
        System.arraycopy(this.f3371, 0, this.f3364, 0, this.f3372);
    }

    @Override
    public void mo5346(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
        System.arraycopy(this.f3364, 0, this.f3371, 0, this.f3372);
        while (i2 > 0) {
            mo3123();
            int iMin = Math.min(i2, this.f3372);
            int i4 = 0;
            while (i4 < iMin) {
                byte[] bArr3 = this.f3371;
                byte b = bArr3[i4];
                byte b2 = bArr[i];
                i++;
                bArr3[i4] = b2;
                bArr2[i3] = (byte) (b ^ b2);
                i4++;
                i2--;
                i3++;
            }
        }
        System.arraycopy(this.f3371, 0, this.f3364, 0, this.f3372);
    }

    @Override
    public void mo5347(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
        System.arraycopy(this.f3364, 0, this.f3371, 0, this.f3372);
        while (i2 > 0) {
            mo3123();
            int iMin = Math.min(i2, this.f3372);
            int i4 = 0;
            while (i4 < iMin) {
                bArr2[i3] = (byte) (bArr[i] ^ this.f3371[i4]);
                i4++;
                i2--;
                i3++;
                i++;
            }
        }
        System.arraycopy(this.f3371, 0, this.f3364, 0, this.f3372);
    }

    @Override
    public void mo3691(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
        byte[] bArr3 = this.f3371;
        if (bArr3 == null || bArr3.length != i2) {
            this.f3371 = new byte[i2];
        }
        System.arraycopy(bArr, i, this.f3371, 0, i2);
        mo3123();
        System.arraycopy(this.f3371, 0, bArr2, i3, i2);
    }

    @Override
    public void mo5348(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
        System.arraycopy(this.f3364, 0, this.f3371, 0, this.f3372);
        byte[] bArr3 = new byte[this.f3372];
        while (i2 > 0) {
            System.arraycopy(this.f3371, 0, bArr3, 0, this.f3372);
            mo3123();
            byte[] bArr4 = this.f3371;
            int i4 = i + 1;
            bArr2[i3] = (byte) (bArr[i] ^ bArr4[0]);
            i2--;
            int i5 = this.f3372 - 1;
            bArr4[i5] = bArr4[0];
            System.arraycopy(bArr3, 1, bArr4, 0, i5);
            i3++;
            i = i4;
        }
        System.arraycopy(this.f3371, 0, this.f3364, 0, this.f3372);
    }

    @Override
    public void mo5349(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
        while (i2 > 0) {
            System.arraycopy(bArr, i, this.f3371, 0, this.f3372);
            i += this.f3372;
            mo3123();
            System.arraycopy(this.f3371, 0, bArr2, i3, this.f3372);
            int i4 = this.f3372;
            i3 += i4;
            i2 -= i4;
        }
    }

    public void mo3663(byte[] bArr, byte[] bArr2, byte[] bArr3, int i) throws C0537 {
    }

    @Override
    public byte[] mo3122(byte[] bArr, int i, int i2) throws Exception {
        int i3;
        if (i + i2 > bArr.length) {
            throw new Exception(C0642.m5846(390, 58, 102));
        }
        if (this.f3373) {
            byte[] bArr2 = new byte[i2];
            mo3691(bArr, i, i2, bArr2, 0);
            return bArr2;
        }
        int i4 = this.f3365;
        if (i4 != 5) {
            if (i4 != 3 && ((i4 != 4 || this.f3369 != 1) && i2 % this.f3372 != 0)) {
                throw new Exception(C0642.m5846(448, 44, 38));
            }
            byte[] bArr3 = new byte[i2];
            m5642(bArr, i, i2, bArr3, 0);
            if (this.f3365 != 3) {
                int i5 = this.f3369;
                if (i5 != 2) {
                    if (i5 == 3) {
                        i3 = 0;
                        while (i2 > i3) {
                            int i6 = i3 + 1;
                            if (bArr3[i2 - i6] != 0) {
                                break;
                            }
                            i3 = i6;
                        }
                    } else if (i5 == 4 || i5 == 5) {
                        i3 = bArr3[i2 - 1];
                    } else {
                        i3 = 0;
                    }
                } else {
                    i3 = bArr3[i2 - 1];
                }
                if (i3 < 0 || i3 > i2) {
                    throw new C0537(C0642.m5846(492, 69, 93));
                }
                if (i3 > 0) {
                    int i7 = i2 - i3;
                    byte[] bArr4 = new byte[i7];
                    System.arraycopy(bArr3, 0, bArr4, 0, i7);
                    return bArr4;
                }
            }
            return bArr3;
        }
        byte[] bArr5 = new byte[this.f3368 + i2];
        int iM5641 = m5641(bArr, i, i2, bArr5, 0);
        int i8 = this.f3368;
        int i9 = this.f3372;
        if (i8 <= i9) {
            throw new Exception(C0642.m5846(334, 56, 5));
        }
        byte[] bArr6 = new byte[i9];
        System.arraycopy(this.f3364, 0, bArr6, 0, i9);
        byte[] bArr7 = this.f3367;
        int i10 = this.f3372;
        System.arraycopy(bArr7, i10, this.f3364, 0, this.f3368 - i10);
        int i11 = this.f3368 - this.f3372;
        while (true) {
            int i12 = this.f3372;
            if (i11 >= i12) {
                byte[] bArr8 = new byte[i12];
                mo5343(this.f3367, 0, i12, bArr8, 0);
                System.arraycopy(bArr6, 0, this.f3364, 0, this.f3372);
                int i13 = this.f3372;
                byte[] bArr9 = new byte[i13];
                System.arraycopy(this.f3367, i13, bArr9, 0, this.f3368 - i13);
                int i14 = this.f3368;
                int i15 = this.f3372;
                int i16 = i14 - i15;
                System.arraycopy(bArr8, i16, bArr9, i16, (i15 * 2) - i14);
                int i17 = this.f3372;
                byte[] bArr10 = new byte[i17];
                mo5343(bArr9, 0, i17, bArr10, 0);
                byte[] bArr11 = new byte[this.f3368 + iM5641];
                System.arraycopy(bArr5, 0, bArr11, 0, iM5641);
                System.arraycopy(bArr10, 0, bArr11, iM5641, i17);
                System.arraycopy(bArr8, 0, bArr11, iM5641 + i17, this.f3368 - this.f3372);
                return bArr11;
            }
            this.f3364[i11] = 0;
            i11++;
        }
    }
}
