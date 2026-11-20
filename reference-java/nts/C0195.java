package nts;

public class C0195 extends C0357 {

    public int f707 = 0;

    public int f708 = 0;

    @Override
    public byte[] mo3261() {
        C0382 c0382 = new C0382();
        c0382.m4503(this.f707);
        c0382.m4509((byte) this.f708);
        this.f1897 = 2;
        this.f1894 = c0382.m4502();
        return super.mo3261();
    }

    @Override
    public void mo3260(byte[] bArr) {
        super.mo3260(bArr);
        C0382 c0382 = new C0382(this.f1894);
        this.f707 = c0382.m4506();
        this.f708 = c0382.m4496() & 255;
    }
}
