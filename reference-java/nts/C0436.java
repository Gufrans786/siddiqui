package nts;

import java.util.Vector;

public class C0436 extends C0357 {

    public C0517 f2247;

    public int f2245 = 0;

    public int f2248 = 0;

    public byte[] f2249 = null;

    public Vector f2246 = new Vector();

    public C0436(C0517 c0517) {
        this.f2247 = c0517;
    }

    @Override
    public byte[] mo3261() {
        C0382 c0382 = new C0382();
        int i = this.f2245;
        if (i > 0) {
            c0382.m4487(i);
            this.f1895 |= 8;
        }
        c0382.m4503(this.f2248);
        c0382.m4500(this.f2249);
        int i2 = this.f2245;
        if (i2 > 0) {
            c0382.m4500(new byte[i2]);
        }
        this.f1897 = 5;
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
            this.f2245 = iM4496;
            i = (i - 1) - iM4496;
        }
        this.f2248 = c0382.m4506();
        byte[] bArrM4484 = c0382.m4484(i - 4);
        this.f2249 = bArrM4484;
        this.f2246 = C0133.m3257(bArrM4484, 0, bArrM4484.length - this.f2245, this.f2247);
    }
}
