package nts;

public class C0323 extends C0357 {

    public int f1734 = 0;

    @Override
    public byte[] mo3261() {
        C0382 c0382 = new C0382();
        c0382.m4503(this.f1734);
        this.f1897 = 3;
        this.f1894 = c0382.m4502();
        return super.mo3261();
    }

    @Override
    public void mo3260(byte[] bArr) {
        super.mo3260(bArr);
        this.f1734 = new C0382(this.f1894).m4506();
    }
}
