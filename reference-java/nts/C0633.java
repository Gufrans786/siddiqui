package nts;

import java.security.PublicKey;

public class C0633 implements PublicKey {

    public C0144 f3480;

    public byte[] f3481;

    public C0633(byte[] bArr, C0144 c0144) {
        this.f3480 = c0144;
        this.f3481 = bArr;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C0633) {
            return C0301.m4164(this.f3481, ((C0633) obj).f3481);
        }
        return false;
    }

    @Override
    public String getAlgorithm() {
        return C0335.f1796;
    }

    @Override
    public byte[] getEncoded() {
        C0358 c0358 = new C0358();
        c0358.f1899 = C0146.m3285(this.f3480.f328);
        c0358.f1900 = this.f3481;
        return c0358.mo3690();
    }

    @Override
    public String getFormat() {
        return "";
    }

    public int hashCode() {
        return super.hashCode();
    }
}
