package nts;

public class C0167 {

    public static int[] f540 = new int[19];

    public byte[] f541;

    public byte[] f542;

    public byte[] f543;

    public int f544;

    public int f545;

    public C0660 f546;

    public int f547;

    public byte[] f548;

    public int f549;

    public int f550;

    public int f551;

    public int f552;

    public C0167() {
        f540 = new int[]{16, 17, 18, 0, 8, 7, 9, 6, 10, 5, 11, 4, 12, 3, 13, 2, 14, 1, 15};
        this.f545 = 0;
    }

    public boolean m3514(C0328 c0328, byte[] bArr, C0660 c0660) throws ArrayIndexOutOfBoundsException {
        while (this.f551 < bArr.length) {
            if (this.f547 == 6) {
                int iM5875 = c0660.m5875(c0328);
                this.f544 = iM5875;
                if (iM5875 == -1) {
                    return false;
                }
                this.f547 = 7;
            }
            int i = this.f544;
            switch (i) {
                case 16:
                    byte b = bArr[this.f551 - 1];
                    int iM4344 = c0328.m4344(2) + 3;
                    if (iM4344 == 2) {
                        return false;
                    }
                    this.f547 = 6;
                    for (int i2 = 0; i2 < iM4344; i2++) {
                        int i3 = this.f551;
                        this.f551 = i3 + 1;
                        bArr[i3] = b;
                    }
                    break;
                    break;
                case 17:
                    int iM4345 = c0328.m4344(3) + 3;
                    if (iM4345 == 2) {
                        return false;
                    }
                    this.f547 = 6;
                    for (int i4 = 0; i4 < iM4345; i4++) {
                        int i5 = this.f551;
                        this.f551 = i5 + 1;
                        bArr[i5] = 0;
                    }
                    break;
                    break;
                case 18:
                    int iM4346 = c0328.m4344(7) + 11;
                    if (iM4346 == 10) {
                        return false;
                    }
                    this.f547 = 6;
                    for (int i6 = 0; i6 < iM4346; i6++) {
                        int i7 = this.f551;
                        this.f551 = i7 + 1;
                        bArr[i7] = 0;
                    }
                    break;
                    break;
                default:
                    int i8 = this.f551;
                    this.f551 = i8 + 1;
                    bArr[i8] = (byte) i;
                    this.f547 = 6;
                    break;
            }
        }
        return true;
    }

    public boolean m3513(C0328 c0328) throws C0414 {
        int iM4346;
        int iM4344;
        try {
            int i = this.f545;
            if (i == 0) {
                int iM4347 = c0328.m4346(5);
                if (iM4347 == -1) {
                    return false;
                }
                this.f552 = iM4347 + 257;
                this.f545 = 1;
            } else {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i != 4) {
                            }
                            return true;
                        }
                        if (!m3514(c0328, this.f541, this.f546)) {
                            return false;
                        }
                        byte[] bArr = new byte[this.f552];
                        this.f543 = bArr;
                        this.f548 = new byte[this.f549];
                        System.arraycopy(this.f541, 0, bArr, 0, bArr.length);
                        byte[] bArr2 = this.f541;
                        int length = this.f543.length;
                        byte[] bArr3 = this.f548;
                        System.arraycopy(bArr2, length, bArr3, 0, bArr3.length);
                        return true;
                    }
                    while (this.f551 < this.f550) {
                        iM4344 = c0328.m4344(3);
                        if (iM4344 == -1) {
                            return false;
                        }
                        byte[] bArr4 = this.f542;
                        int[] iArr = f540;
                        int i2 = this.f551;
                        bArr4[iArr[i2]] = (byte) iM4344;
                        this.f551 = i2 + 1;
                    }
                    this.f546 = new C0660(this.f542);
                    this.f551 = 0;
                    this.f545 = 4;
                    this.f547 = 6;
                    if (!m3514(c0328, this.f541, this.f546)) {
                        return false;
                    }
                    byte[] bArr5 = new byte[this.f552];
                    this.f543 = bArr5;
                    this.f548 = new byte[this.f549];
                    System.arraycopy(this.f541, 0, bArr5, 0, bArr5.length);
                    byte[] bArr6 = this.f541;
                    int length2 = this.f543.length;
                    byte[] bArr7 = this.f548;
                    System.arraycopy(bArr6, length2, bArr7, 0, bArr7.length);
                    return true;
                }
                iM4346 = c0328.m4346(4);
                if (iM4346 == -1) {
                    return false;
                }
                this.f550 = iM4346 + 4;
                this.f542 = new byte[19];
                this.f551 = 0;
                this.f545 = 3;
                while (this.f551 < this.f550) {
                    iM4344 = c0328.m4344(3);
                    if (iM4344 == -1) {
                        return false;
                    }
                    byte[] bArr8 = this.f542;
                    int[] iArr2 = f540;
                    int i3 = this.f551;
                    bArr8[iArr2[i3]] = (byte) iM4344;
                    this.f551 = i3 + 1;
                }
                this.f546 = new C0660(this.f542);
                this.f551 = 0;
                this.f545 = 4;
                this.f547 = 6;
                if (!m3514(c0328, this.f541, this.f546)) {
                    return false;
                }
                byte[] bArr9 = new byte[this.f552];
                this.f543 = bArr9;
                this.f548 = new byte[this.f549];
                System.arraycopy(this.f541, 0, bArr9, 0, bArr9.length);
                byte[] bArr10 = this.f541;
                int length3 = this.f543.length;
                byte[] bArr11 = this.f548;
                System.arraycopy(bArr10, length3, bArr11, 0, bArr11.length);
                return true;
            }
            int iM4348 = c0328.m4346(5);
            if (iM4348 == -1) {
                return false;
            }
            int i4 = iM4348 + 1;
            this.f549 = i4;
            this.f545 = 2;
            this.f541 = new byte[this.f552 + i4];
            iM4346 = c0328.m4346(4);
            if (iM4346 == -1) {
                return false;
            }
            this.f550 = iM4346 + 4;
            this.f542 = new byte[19];
            this.f551 = 0;
            this.f545 = 3;
            while (this.f551 < this.f550) {
                iM4344 = c0328.m4344(3);
                if (iM4344 == -1) {
                    return false;
                }
                byte[] bArr12 = this.f542;
                int[] iArr3 = f540;
                int i5 = this.f551;
                bArr12[iArr3[i5]] = (byte) iM4344;
                this.f551 = i5 + 1;
            }
            this.f546 = new C0660(this.f542);
            this.f551 = 0;
            this.f545 = 4;
            this.f547 = 6;
            if (!m3514(c0328, this.f541, this.f546)) {
                return false;
            }
            byte[] bArr13 = new byte[this.f552];
            this.f543 = bArr13;
            this.f548 = new byte[this.f549];
            System.arraycopy(this.f541, 0, bArr13, 0, bArr13.length);
            byte[] bArr14 = this.f541;
            int length4 = this.f543.length;
            byte[] bArr15 = this.f548;
            System.arraycopy(bArr14, length4, bArr15, 0, bArr15.length);
            return true;
        } catch (Exception e) {
            if (e instanceof C0414) {
                throw ((C0414) e);
            }
            throw new C0414(101, C0558.m5481("Fpsou&lj+l`dj.eirvtb", 0, 20, 23));
        }
    }
}
