package nts;

import androidx.constraintlayout.core.motion.utils.TypedValues;

public abstract class AbstractC0527 extends AbstractC0613 {
    public AbstractC0527(byte[] bArr, int i, int i2, int i3, int i4, int i5) {
        super(bArr, i, i2, i3, i4, i5);
    }

    @Override
    public void mo5343(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
        System.arraycopy(this.f3364, 0, this.f3371, 0, this.f3372);
        while (i2 > 0) {
            int i4 = 0;
            while (i4 < this.f3372) {
                byte[] bArr3 = this.f3371;
                bArr3[i4] = (byte) (bArr[i] ^ bArr3[i4]);
                i4++;
                i++;
            }
            mo3119();
            System.arraycopy(this.f3371, 0, bArr2, i3, this.f3372);
            int i5 = this.f3372;
            i3 += i5;
            i2 -= i5;
        }
        System.arraycopy(this.f3371, 0, this.f3364, 0, this.f3372);
    }

    @Override
    public void mo5344(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
        while (i2 > 0) {
            if (this.f3370 == 0) {
                System.arraycopy(this.f3364, 0, this.f3371, 0, this.f3372);
                mo3119();
            }
            int i4 = this.f3370;
            int i5 = this.f3372 - i4;
            if (i5 > i2) {
                this.f3370 = i4 + i2;
                i5 = i2;
            } else {
                m5643(this.f3364);
                this.f3370 = 0;
            }
            int i6 = i4 + i5;
            while (i4 < i6) {
                bArr2[i3] = (byte) (bArr[i] ^ this.f3371[i4]);
                i4++;
                i3++;
                i++;
            }
            i2 -= i5;
        }
    }

    public abstract void mo3119() throws Exception;

    @Override
    public void mo5345(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
        System.arraycopy(this.f3364, 0, this.f3371, 0, this.f3372);
        byte[] bArr3 = new byte[this.f3372];
        while (i2 > 0) {
            System.arraycopy(this.f3371, 0, bArr3, 0, this.f3372);
            mo3119();
            byte[] bArr4 = this.f3371;
            int i4 = i + 1;
            byte b = (byte) (bArr[i] ^ bArr4[0]);
            int i5 = this.f3372 - 1;
            bArr4[i5] = b;
            bArr2[i3] = b;
            i2--;
            System.arraycopy(bArr3, 1, bArr4, 0, i5);
            i = i4;
            i3++;
        }
        System.arraycopy(this.f3371, 0, this.f3364, 0, this.f3372);
    }

    @Override
    public void mo5346(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
        System.arraycopy(this.f3364, 0, this.f3371, 0, this.f3372);
        while (i2 > 0) {
            mo3119();
            int iMin = Math.min(i2, this.f3372);
            int i4 = 0;
            while (i4 < iMin) {
                byte[] bArr3 = this.f3371;
                int i5 = i + 1;
                byte b = (byte) (bArr[i] ^ bArr3[i4]);
                bArr3[i4] = b;
                bArr2[i3] = b;
                i4++;
                i2--;
                i3++;
                i = i5;
            }
        }
        System.arraycopy(this.f3371, 0, this.f3364, 0, this.f3372);
    }

    @Override
    public void mo5347(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
        System.arraycopy(this.f3364, 0, this.f3371, 0, this.f3372);
        while (i2 > 0) {
            mo3119();
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
        mo3119();
        System.arraycopy(this.f3371, 0, bArr2, i3, i2);
    }

    @Override
    public void mo5348(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
        System.arraycopy(this.f3364, 0, this.f3371, 0, this.f3372);
        byte[] bArr3 = new byte[this.f3372];
        while (i2 > 0) {
            System.arraycopy(this.f3371, 0, bArr3, 0, this.f3372);
            mo3119();
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
            mo3119();
            System.arraycopy(this.f3371, 0, bArr2, i3, this.f3372);
            int i4 = this.f3372;
            i3 += i4;
            i2 -= i4;
        }
    }

    public void mo3660(byte[] bArr, byte[] bArr2, int i) throws C0537 {
    }

    @Override
    public byte[] mo3122(byte[] bArr, int i, int i2) throws Exception {
        byte[] bArr2;
        int i3;
        int i4;
        int i5;
        byte[] bArrM4227;
        byte b;
        if (i + i2 > bArr.length) {
            throw new Exception(C0642.m5846(183, 58, 77));
        }
        if (this.f3373) {
            byte[] bArr3 = new byte[i2];
            mo3691(bArr, i, i2, bArr3, 0);
            return bArr3;
        }
        int i6 = this.f3365;
        if (i6 != 5) {
            int i7 = i2;
            int i8 = i7 % this.f3372;
            if (i6 == 3) {
                bArr2 = bArr;
                i3 = i;
                i4 = i7;
            } else {
                if (i8 > 0 && this.f3369 == 1 && i6 != 4 && i6 != 6) {
                    throw new Exception(C0642.m5846(241, 70, 75));
                }
                if (this.f3369 == 1 || (i5 = this.f3372 - i8) <= 0) {
                    bArr2 = bArr;
                    i3 = i;
                    i4 = i7;
                } else {
                    int i9 = i7 + i5;
                    byte[] bArr4 = new byte[i9];
                    System.arraycopy(bArr, i, bArr4, 0, i7);
                    int i10 = this.f3369;
                    byte b2 = (i10 == 2 || (i10 != 3 && (i10 == 4 || i10 == 5))) ? (byte) i5 : (byte) 0;
                    if (this.f3369 != 5) {
                        bArrM4227 = null;
                    } else {
                        if (!C0320.f1715) {
                            throw new C0414(TypedValues.TransitionType.TYPE_TO, C0642.m5846(311, 23, 94));
                        }
                        bArrM4227 = C0308.m4227(this.f3372);
                    }
                    while (i7 < i9) {
                        if (i7 < i9 - 1) {
                            b = this.f3369 == 4 ? (byte) 0 : b2;
                            if (this.f3369 == 5) {
                                b = bArrM4227[i7 % this.f3372];
                            }
                        } else {
                            b = b2;
                        }
                        bArr4[i7] = b;
                        i7++;
                    }
                    i4 = i9;
                    bArr2 = bArr4;
                    i3 = 0;
                }
            }
            byte[] bArr5 = new byte[i4];
            m5642(bArr2, i3, i4, bArr5, 0);
            return bArr5;
        }
        byte[] bArr6 = new byte[i2 + this.f3368];
        int iM5641 = m5641(bArr, i, i2, bArr6, 0);
        int i11 = this.f3368;
        int i12 = this.f3372;
        if (i11 <= i12) {
            throw new Exception(C0642.m5846(129, 54, 94));
        }
        byte[] bArr7 = new byte[i12];
        mo5343(this.f3367, 0, i12, bArr7, 0);
        int i13 = this.f3368;
        while (true) {
            byte[] bArr8 = this.f3367;
            if (i13 >= bArr8.length) {
                int i14 = this.f3372;
                byte[] bArr9 = new byte[i14];
                mo5343(bArr8, i14, i14, bArr9, 0);
                byte[] bArr10 = new byte[this.f3368 + iM5641];
                System.arraycopy(bArr6, 0, bArr10, 0, iM5641);
                System.arraycopy(bArr9, 0, bArr10, iM5641, i14);
                System.arraycopy(bArr7, 0, bArr10, iM5641 + i14, this.f3368 - this.f3372);
                return bArr10;
            }
            bArr8[i13] = 0;
            i13++;
        }
    }
}
