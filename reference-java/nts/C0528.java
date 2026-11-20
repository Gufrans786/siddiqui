package nts;

public class C0528 extends C0357 {

    public int f3075 = 0;

    public int f3076 = 0;

    public byte[] f3077 = null;

    @Override
    public byte[] mo3261() {
        C0382 c0382 = new C0382();
        c0382.m4503(this.f3075);
        c0382.m4503(this.f3076);
        byte[] bArr = this.f3077;
        if (bArr != null) {
            c0382.m4500(bArr);
        }
        this.f1897 = 7;
        this.f1894 = c0382.m4502();
        return super.mo3261();
    }

    @Override
    public void mo3260(byte[] bArr) {
        super.mo3260(bArr);
        C0382 c0382 = new C0382(this.f1894);
        this.f3075 = c0382.m4506();
        this.f3076 = c0382.m4506();
        if (c0382.m4486() > 0) {
            this.f3077 = c0382.m4504();
        }
    }
}
