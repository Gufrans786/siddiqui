package nts;

public class C0251 extends C0211 {

    public byte[] f915 = null;

    @Override
    public int mo3110(byte[] bArr, int i) {
        int i2 = this.f2146;
        if (i2 > 0) {
            this.f915 = C0259.m3865(bArr, i, i2);
        }
        return super.mo3110(bArr, i);
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        byte[] bArr = this.f915;
        if (bArr != null) {
            c0530.m5379(bArr, this.f2150);
        } else {
            c0530.m5401(this.f2148, this.f2150);
        }
    }
}
