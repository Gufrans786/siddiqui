package nts;

public class C0650 {

    public String f3636 = C0177.m3556(0, 4, 69);

    public void m5869(String str) throws Exception {
        if (str == null) {
            throw new C0304(C0177.m3556(4, 5, 65));
        }
        this.f3636 = str;
    }

    public byte[] m5870(byte[] bArr, int i) throws C0537 {
        if (bArr == null) {
            throw new C0304(C0177.m3556(9, 7, 75));
        }
        if (i >= 0) {
            byte[] bArr2 = new byte[i];
            AbstractC0317 abstractC0317M4217 = C0308.m4217(this.f3636);
            int i2 = abstractC0317M4217.f1703 / 8;
            int i3 = 0;
            for (int i4 = 0; i4 < i; i4 += i2) {
                byte[] bArr3 = new byte[bArr.length];
                int length = bArr.length;
                abstractC0317M4217.mo3412(bArr, 0, length);
                System.arraycopy(bArr, 0, bArr3, 0, length);
                abstractC0317M4217.mo3122(new byte[]{(byte) (i3 >> 24), (byte) (i3 >> 16), (byte) (i3 >> 8), (byte) i3}, 0, 4);
                byte[] bArr4 = abstractC0317M4217.f1702;
                int i5 = i - i4;
                if (i2 <= i5) {
                    System.arraycopy(bArr4, 0, bArr2, i4, i2);
                } else {
                    System.arraycopy(bArr4, 0, bArr2, i4, i5);
                }
                abstractC0317M4217.mo3250();
                i3++;
            }
            return bArr2;
        }
        throw new IndexOutOfBoundsException(C0177.m3556(16, 39, 2));
    }
}
