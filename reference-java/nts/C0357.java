package nts;

public class C0357 {

    public int f1898 = 0;

    public int f1897 = 0;

    public int f1895 = 0;

    public int f1896 = 0;

    public byte[] f1894 = null;

    static {
        C0164.m3509(0, 24, 121);
    }

    public byte[] mo3261() {
        C0382 c0382 = new C0382();
        c0382.m4495(0);
        c0382.m4509((byte) this.f1897);
        c0382.m4509((byte) this.f1895);
        c0382.m4503(this.f1896);
        byte[] bArr = this.f1894;
        if (bArr != null) {
            c0382.m4500(bArr);
        }
        byte[] bArr2 = this.f1894;
        c0382.f1969.mo3839(bArr2 != null ? bArr2.length : 0, c0382.f1972, 0, 3);
        return c0382.m4502();
    }

    public void mo3260(byte[] bArr) {
        C0382 c0382 = new C0382(bArr);
        this.f1898 = c0382.m4491();
        this.f1897 = c0382.m4496() & 255;
        this.f1895 = c0382.m4496() & 255;
        this.f1896 = c0382.m4506();
        this.f1894 = c0382.m4484(this.f1898);
    }
}
