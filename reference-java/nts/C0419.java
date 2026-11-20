package nts;

public class C0419 implements InterfaceC0452 {

    public int f2153 = 65521;

    public int f2152 = 1;

    public int f2151 = 0;

    public byte[] m4681() {
        long jMo4590 = mo4590();
        byte[] bArr = new byte[4];
        for (int i = 0; i < 4; i++) {
            bArr[i] = (byte) ((jMo4590 >> (24 - (i * 8))) & 255);
        }
        return bArr;
    }

    @Override
    public void mo4592(byte[] bArr, int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            int i4 = this.f2152 + (bArr[i3] & 255);
            int i5 = this.f2153;
            int i6 = i4 % i5;
            this.f2152 = i6;
            this.f2151 = (this.f2151 + i6) % i5;
        }
    }

    @Override
    public long mo4590() {
        return (((long) this.f2151) << 16) + ((long) this.f2152);
    }
}
