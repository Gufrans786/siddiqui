package nts;

public class C0243 extends C0357 {

    public int f899 = 0;

    public byte[] f900 = null;

    public boolean m3792() {
        return (this.f1895 & 1) == 1;
    }

    @Override
    public byte[] mo3261() {
        C0382 c0382 = new C0382();
        int i = this.f899;
        if (i > 0) {
            c0382.m4509((byte) i);
            this.f1895 |= 8;
        }
        c0382.m4500(this.f900);
        int i2 = this.f899;
        if (i2 > 0) {
            c0382.m4500(new byte[i2]);
        }
        this.f1897 = 0;
        this.f1894 = c0382.m4502();
        return super.mo3261();
    }

    @Override
    public void mo3260(byte[] bArr) {
        super.mo3260(bArr);
        C0382 c0382 = new C0382(this.f1894);
        int i = this.f1898;
        if ((this.f1895 & 8) == 8) {
            int iM4496 = c0382.m4496() & 255;
            this.f899 = iM4496;
            i = (i - 1) - iM4496;
            if (iM4496 >= this.f1898) {
                throw new C0414(1, C0164.m3509(24, 50, 107) + this.f899 + C0164.m3509(74, 19, 66) + i + ".");
            }
        }
        this.f900 = c0382.m4484(i);
    }
}
