package nts;

public class C0618 extends C0357 {

    public int f3379 = 0;

    @Override
    public byte[] mo3261() {
        C0382 c0382 = new C0382();
        c0382.m4503(this.f3379);
        this.f1897 = 8;
        this.f1894 = c0382.m4502();
        return super.mo3261();
    }

    @Override
    public void mo3260(byte[] bArr) {
        super.mo3260(bArr);
        this.f3379 = new C0382(this.f1894).m4506();
    }
}
