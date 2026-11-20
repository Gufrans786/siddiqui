package nts;

public class C0277 {

    public String f1404 = C0558.m5481("\b\u0000r||m\u0007\u001c\u001amk", 0, 3, 70);

    public String f1403 = "";

    public byte[] f1402 = new byte[0];

    public byte[] m3995(int i, int i2) throws Exception {
        byte[] bArr = new byte[64];
        for (int i3 = 0; i3 < 64; i3++) {
            bArr[i3] = 1;
        }
        return m3997(i, bArr, i2);
    }

    public byte[] m3996(int i, int i2) throws Exception {
        byte[] bArr = new byte[64];
        for (int i3 = 0; i3 < 64; i3++) {
            bArr[i3] = 2;
        }
        return m3997(i, bArr, i2);
    }

    public final byte[] m3997(int i, byte[] bArr, int i2) throws Exception {
        byte[] bArr2;
        byte[] bArr3;
        byte[] bArr4;
        AbstractC0317 abstractC0317M4217 = C0308.m4217(this.f1404);
        char c = '\b';
        int i3 = abstractC0317M4217.f1703 / 8;
        byte[] bArr5 = this.f1402;
        int i4 = 64;
        if (bArr5 != null && bArr5.length != 0) {
            int iCeil = ((int) Math.ceil(((double) bArr5.length) / 64.0d)) * 64;
            bArr2 = new byte[iCeil];
            for (int i5 = 0; i5 < iCeil; i5++) {
                byte[] bArr6 = this.f1402;
                bArr2[i5] = bArr6[i5 % bArr6.length];
            }
        } else {
            bArr2 = C0320.f1706;
        }
        int i6 = 1;
        if (this.f1403.length() == 0) {
            bArr3 = C0320.f1706;
        } else {
            bArr3 = new byte[(this.f1403.length() + 1) * 2];
            byte[] bytes = this.f1403.getBytes(C0177.m3552(3, 8, 34));
            System.arraycopy(bytes, 0, bArr3, 0, bytes.length);
        }
        if (bArr3 != null && bArr3.length != 0) {
            int iCeil2 = ((int) Math.ceil(((double) bArr3.length) / 64.0d)) * 64;
            bArr4 = new byte[iCeil2];
            for (int i7 = 0; i7 < iCeil2; i7++) {
                bArr4[i7] = bArr3[i7 % bArr3.length];
            }
        } else {
            bArr4 = C0320.f1706;
        }
        C0301 c0301 = new C0301();
        c0301.m4180(bArr2);
        c0301.m4180(bArr4);
        byte[] bArrM4182 = c0301.m4182();
        int iCeil3 = (int) Math.ceil(((double) i2) / ((double) i3));
        byte[] bArr7 = C0320.f1706;
        int i8 = 0;
        while (i8 < iCeil3) {
            abstractC0317M4217.mo3250();
            int length = bArr.length;
            abstractC0317M4217.mo3412(bArr, 0, length);
            System.arraycopy(bArr, 0, bArr, 0, length);
            abstractC0317M4217.mo3122(bArrM4182, 0, bArrM4182.length);
            byte[] bArrM4300 = abstractC0317M4217.f1702;
            for (int i9 = i6; i9 < i; i9++) {
                abstractC0317M4217.mo3250();
                bArrM4300 = abstractC0317M4217.m4300(bArrM4300);
            }
            byte[] bArr8 = new byte[i4];
            int i10 = 0;
            while (i10 < i4) {
                bArr8[i10] = bArrM4300[i10 % bArrM4300.length];
                i10++;
                c = c;
            }
            char c2 = c;
            int i11 = 0;
            while (i11 < bArrM4182.length / i4) {
                int i12 = i6;
                for (int i13 = 63; i13 >= 0; i13--) {
                    int i14 = (i11 * 64) + i13;
                    int i15 = (bArrM4182[i14] & 255) + (bArr8[i13] & 255) + i12;
                    bArrM4182[i14] = (byte) i15;
                    i12 = i15 >> 8;
                }
                i11++;
                i4 = 64;
                i6 = 1;
            }
            byte[] bArrM3845 = C0259.m3845(bArr7);
            bArr7 = new byte[bArrM3845.length + bArrM4300.length];
            System.arraycopy(bArrM3845, 0, bArr7, 0, bArrM3845.length);
            System.arraycopy(bArrM4300, 0, bArr7, bArrM3845.length, bArrM4300.length);
            i8++;
            c = c2;
            i4 = 64;
            i6 = 1;
        }
        C0301 c0302 = new C0301();
        c0302.m4180(bArr7);
        return c0302.m4176(0, i2);
    }
}
