package nts;

import java.math.BigInteger;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;

public class C0309 implements ECPublicKey {

    public String f1650;

    public ECParameterSpec f1651;

    public ECPoint f1652;

    public C0309(BigInteger bigInteger, BigInteger bigInteger2, ECParameterSpec eCParameterSpec, String str) {
        this.f1652 = new ECPoint(bigInteger, bigInteger2);
        this.f1651 = eCParameterSpec;
        this.f1650 = str;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C0309)) {
            return false;
        }
        C0309 c0309 = (C0309) obj;
        return this.f1652.getAffineX().equals(c0309.f1652.getAffineX()) && this.f1652.getAffineY().equals(c0309.f1652.getAffineY()) && this.f1650.equals(c0309.f1650);
    }

    @Override
    public String getAlgorithm() {
        return C0335.f1794;
    }

    @Override
    public byte[] getEncoded() {
        C0158 c0158 = new C0158();
        c0158.m3444(this.f1650);
        c0158.f490 = C0158.m3426(this.f1652.getAffineX().toByteArray(), c0158.m3427());
        c0158.f487 = C0158.m3426(this.f1652.getAffineY().toByteArray(), c0158.m3427());
        byte[] bArrM3447 = c0158.m3447(false);
        C0289 c0289 = new C0289();
        c0289.f1501 = this.f1650;
        c0289.f1502 = bArrM3447;
        return c0289.mo3690();
    }

    @Override
    public String getFormat() {
        return "";
    }

    @Override
    public ECParameterSpec getParams() {
        return this.f1651;
    }

    @Override
    public ECPoint getW() {
        return this.f1652;
    }

    public int hashCode() {
        return super.hashCode();
    }
}
