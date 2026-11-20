package nts;

import org.bouncycastle.crypto.tls.CipherSuite;

public class C0351 extends C0418 {

    public int f1869;

    public C0351() {
        this.f2150 = 2;
    }

    @Override
    public void mo3155() {
        if (this.f2146 > 4) {
            throw new C0414(446, C0164.m3506(CipherSuite.TLS_RSA_PSK_WITH_3DES_EDE_CBC_SHA, 15, 29));
        }
        this.f1869 = (this.f2148[0] & 128) != 0 ? -1 : 0;
        for (int i = 0; i < this.f2146; i++) {
            this.f1869 = (this.f1869 << 8) | (this.f2148[i] & 255);
        }
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        c0530.m5395(this.f1869, this.f2150);
    }
}
