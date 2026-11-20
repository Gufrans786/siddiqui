package nts;

public class C0199 extends C0418 {

    public byte[] f713 = null;

    public C0460 f714 = new C0460();

    @Override
    public int mo3411(byte[] bArr, int i) throws C0414 {
        if (this.f2145) {
            return i;
        }
        int iMo3411 = this.f714.mo3411(bArr, i);
        byte[] bArr2 = this.f713;
        if (bArr2 == null) {
            this.f713 = C0259.m3865(bArr, i, iMo3411 - i);
        } else {
            int i2 = iMo3411 - i;
            byte[] bArr3 = new byte[bArr2.length + i2];
            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
            System.arraycopy(bArr, i, bArr3, this.f713.length, i2);
            this.f713 = bArr3;
        }
        this.f2145 = this.f714.f2145;
        return iMo3411;
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        byte[] bArr = this.f713;
        if (bArr != null) {
            c0530.m5400(bArr);
        } else {
            this.f714.mo3111(c0530);
        }
    }
}
