package nts;

public class C0415 {

    public static byte[] f2137 = new byte[0];

    public String f2140 = C0558.m5481("+#Q/+$'", 0, 3, 101);

    public String f2139 = "";

    public byte[] f2138 = new byte[0];

    public void m4674(int i, byte[] bArr, byte[] bArr2, boolean z) throws C0537 {
        byte[] bArrM4228;
        int length;
        int length2 = bArr != null ? bArr.length : 0;
        if (bArr2 != null) {
            length2 += bArr2.length;
        }
        String str = this.f2140;
        String str2 = this.f2139;
        byte[] bArr3 = this.f2138;
        if (str.toLowerCase().indexOf(C0177.m3562(3, 4, 64)) >= 0) {
            bArrM4228 = C0308.m4228(i, str, C0259.m3858(str2), bArr3, length2);
        } else {
            AbstractC0317 abstractC0317M4217 = C0308.m4217(str);
            byte[] bArrM3858 = f2137;
            if (str2 != null && str2.length() > 0) {
                bArrM3858 = C0259.m3858(str2);
            }
            if (bArr3 == null) {
                bArr3 = f2137;
            }
            byte[] bArr4 = new byte[length2];
            byte[] bArrM4300 = f2137;
            int i2 = 0;
            while (i2 < length2) {
                abstractC0317M4217.mo3250();
                if (!z) {
                    int length3 = bArrM4300.length;
                    abstractC0317M4217.mo3412(bArrM4300, 0, length3);
                    System.arraycopy(bArrM4300, 0, bArrM4300, 0, length3);
                }
                int length4 = bArrM3858.length;
                abstractC0317M4217.mo3412(bArrM3858, 0, length4);
                System.arraycopy(bArrM3858, 0, bArrM3858, 0, length4);
                if (z) {
                    int length5 = bArrM4300.length;
                    abstractC0317M4217.mo3412(bArrM4300, 0, length5);
                    System.arraycopy(bArrM4300, 0, bArrM4300, 0, length5);
                }
                abstractC0317M4217.mo3122(bArr3, 0, bArr3.length);
                bArrM4300 = abstractC0317M4217.f1702;
                for (int i3 = 1; i3 < i; i3++) {
                    abstractC0317M4217.mo3250();
                    bArrM4300 = abstractC0317M4217.m4300(bArrM4300);
                }
                for (int i4 = 0; i2 < length2 && i4 < bArrM4300.length; i4++) {
                    bArr4[i2] = bArrM4300[i4];
                    i2++;
                }
            }
            bArrM4228 = bArr4;
        }
        if (bArr != null) {
            System.arraycopy(bArrM4228, 0, bArr, 0, bArr.length);
            length = bArr.length;
        } else {
            length = 0;
        }
        if (bArr2 != null) {
            System.arraycopy(bArrM4228, length, bArr2, 0, bArr2.length);
            int length6 = bArr2.length;
        }
    }
}
