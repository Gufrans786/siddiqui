package nts;

public class C0381 extends C0357 {

    public byte[] f1967 = null;

    @Override
    public byte[] mo3261() {
        C0382 c0382 = new C0382();
        c0382.m4500(this.f1967);
        this.f1897 = 6;
        this.f1894 = c0382.m4502();
        return super.mo3261();
    }

    @Override
    public void mo3260(byte[] bArr) {
        super.mo3260(bArr);
        this.f1967 = new C0382(this.f1894).m4504();
    }
}
