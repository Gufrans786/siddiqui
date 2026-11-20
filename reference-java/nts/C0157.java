package nts;

public class C0157 {

    public byte[] f470;

    public int f471;

    public C0157(C0382 c0382) {
        this.f471 = 0;
        this.f470 = C0212.f791;
        this.f471 = c0382.m4483();
        this.f470 = c0382.m4484(c0382.m4483());
    }

    public byte[] m3415() {
        C0497 c0497 = new C0497();
        c0497.m4489(this.f471);
        byte[] bArr = this.f470;
        int length = bArr == null ? 0 : bArr.length;
        c0497.m4489(length);
        if (length > 0) {
            c0497.m4500(this.f470);
        }
        return c0497.m4502();
    }

    public C0157() {
        this.f471 = 0;
        this.f470 = C0212.f791;
        this.f471 = 0;
    }

    public C0157(int i, byte[] bArr) {
        this.f471 = 0;
        byte[] bArr2 = C0212.f791;
        this.f471 = i;
        this.f470 = bArr;
    }
}
