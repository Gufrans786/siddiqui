package nts;

import java.math.BigInteger;
import java.security.interfaces.ECPrivateKey;
import java.security.spec.ECParameterSpec;

public class C0269 implements ECPrivateKey {

    public String f1367;

    public BigInteger f1368;

    public ECParameterSpec f1369;

    public BigInteger f1370;

    public BigInteger f1371;

    public C0269(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, ECParameterSpec eCParameterSpec, String str) {
        this.f1371 = bigInteger;
        this.f1370 = bigInteger2;
        this.f1368 = bigInteger3;
        this.f1369 = eCParameterSpec;
        this.f1367 = str;
    }

    @Override
    public String getAlgorithm() {
        return C0335.f1794;
    }

    @Override
    public byte[] getEncoded() {
        C0340 c0340 = new C0340();
        c0340.f1832 = new C0158();
        c0340.f1832.m3444(this.f1367);
        c0340.f1832.f491 = C0158.m3426(this.f1371.toByteArray(), c0340.f1832.m3427());
        c0340.f1832.f490 = C0158.m3426(this.f1370.toByteArray(), c0340.f1832.m3427());
        c0340.f1832.f487 = C0158.m3426(this.f1368.toByteArray(), c0340.f1832.m3427());
        return c0340.mo3690();
    }

    @Override
    public String getFormat() {
        return "";
    }

    @Override
    public ECParameterSpec getParams() {
        return this.f1369;
    }

    @Override
    public BigInteger getS() {
        return this.f1371;
    }
}
