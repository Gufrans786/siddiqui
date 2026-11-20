package nts;

import java.util.Vector;

public class C0545 extends C0357 {

    public byte[] f3138 = null;

    public Vector f3139 = new Vector();

    public C0517 f3140;

    public C0545(C0517 c0517) {
        this.f3140 = c0517;
    }

    @Override
    public byte[] mo3261() {
        C0382 c0382 = new C0382();
        c0382.m4500(this.f3138);
        this.f1897 = 9;
        this.f1894 = c0382.m4502();
        return super.mo3261();
    }

    @Override
    public void mo3260(byte[] bArr) {
        super.mo3260(bArr);
        byte[] bArrM4504 = new C0382(this.f1894).m4504();
        this.f3138 = bArrM4504;
        this.f3139 = C0133.m3257(bArrM4504, 0, this.f1898, this.f3140);
    }
}
