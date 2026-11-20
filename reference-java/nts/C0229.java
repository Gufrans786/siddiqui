package nts;

public class C0229 extends C0357 {

    public int f823 = -1;

    public int f826 = -1;

    public int f828 = -1;

    public int f824 = -1;

    public int f825 = -1;

    public int f827 = -1;

    @Override
    public byte[] mo3261() {
        C0382 c0382 = new C0382();
        if (this.f823 != -1) {
            c0382.m4489(1);
            c0382.m4503(this.f823);
        }
        if (this.f826 != -1) {
            c0382.m4489(2);
            c0382.m4503(this.f826);
        }
        if (this.f828 != -1) {
            c0382.m4489(3);
            c0382.m4503(this.f828);
        }
        if (this.f824 != -1) {
            c0382.m4489(4);
            c0382.m4503(this.f824);
        }
        if (this.f825 != -1) {
            c0382.m4489(5);
            c0382.m4503(this.f825);
        }
        if (this.f827 != -1) {
            c0382.m4489(6);
            c0382.m4503(this.f827);
        }
        this.f1897 = 4;
        this.f1894 = c0382.m4502();
        return super.mo3261();
    }

    @Override
    public void mo3260(byte[] bArr) {
        super.mo3260(bArr);
        C0382 c0382 = new C0382(this.f1894);
        while (c0382.m4486() > 0) {
            switch (c0382.m4483()) {
                case 1:
                    this.f823 = c0382.m4506();
                    break;
                case 2:
                    this.f826 = c0382.m4506();
                    break;
                case 3:
                    this.f828 = c0382.m4506();
                    break;
                case 4:
                    this.f824 = c0382.m4506();
                    break;
                case 5:
                    this.f825 = c0382.m4506();
                    break;
                case 6:
                    this.f827 = c0382.m4506();
                    break;
                default:
                    c0382.m4506();
                    break;
            }
        }
    }
}
