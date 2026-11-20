package nts;

import java.security.PrivateKey;

public class C0129 implements PrivateKey {

    public C0144 f252;

    public byte[] f253;

    public byte[] f254;

    public C0129(byte[] bArr, byte[] bArr2, String str, C0144 c0144) {
        this.f252 = c0144;
        this.f254 = bArr;
        this.f253 = bArr2;
    }

    @Override
    public String getAlgorithm() {
        return C0335.f1796;
    }

    @Override
    public byte[] getEncoded() {
        C0581 c0581 = new C0581();
        c0581.f3249 = C0146.m3285(this.f252.f328);
        c0581.f3250 = this.f254;
        c0581.f3251 = this.f253;
        return c0581.mo3690();
    }

    @Override
    public String getFormat() {
        return "";
    }
}
