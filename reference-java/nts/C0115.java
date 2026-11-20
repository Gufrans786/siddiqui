package nts;

import java.math.BigInteger;

public class C0115 extends AbstractC0410 {

    public BigInteger f196 = null;

    public BigInteger f193 = null;

    public BigInteger f194 = null;

    public BigInteger f195 = null;

    public BigInteger f197 = null;

    public C0115() {
        this.f2120 = 2;
    }

    @Override
    public int mo3181() {
        BigInteger bigInteger = this.f193;
        if (bigInteger != null) {
            return bigInteger.bitLength();
        }
        return 0;
    }
}
